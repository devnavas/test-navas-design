-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 05/10/2021 às 16:55
-- Versão do servidor: 5.6.35
-- Versão do PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Banco de dados: `base`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/base/wordpress', 'yes'),
(2, 'home', 'http://localhost/base/wordpress', 'yes'),
(3, 'blogname', 'Navas Design ', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'eric@navas.design', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', '', 'yes'),
(15, 'mailserver_login', '', 'yes'),
(16, 'mailserver_pass', '', 'yes'),
(17, 'mailserver_port', '0', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:111:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:48:\"categoria/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:43:\"categoria/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:24:\"categoria/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:36:\"categoria/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:18:\"categoria/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:60:\"yst_prominent_words/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:55:\"yst_prominent_words/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:36:\"yst_prominent_words/([^/]+)/embed/?$\";s:52:\"index.php?yst_prominent_words=$matches[1]&embed=true\";s:48:\"yst_prominent_words/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?yst_prominent_words=$matches[1]&paged=$matches[2]\";s:30:\"yst_prominent_words/([^/]+)/?$\";s:41:\"index.php?yst_prominent_words=$matches[1]\";s:32:\"manual/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"manual/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"manual/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"manual/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"manual/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"manual/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"manual/(.+?)/embed/?$\";s:39:\"index.php?manual=$matches[1]&embed=true\";s:25:\"manual/(.+?)/trackback/?$\";s:33:\"index.php?manual=$matches[1]&tb=1\";s:33:\"manual/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?manual=$matches[1]&paged=$matches[2]\";s:40:\"manual/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?manual=$matches[1]&cpage=$matches[2]\";s:29:\"manual/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?manual=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:39:\"admin-columns-pro/admin-columns-pro.php\";i:1;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:2;s:81:\"duracelltomi-google-tag-manager/duracelltomi-google-tag-manager-for-wordpress.php\";i:3;s:53:\"simple-custom-post-order/simple-custom-post-order.php\";i:4;s:27:\"wp-super-cache/wp-cache.php\";i:5;s:24:\"yoast/wp-seo-premium.php\";}', 'yes'),
(34, 'category_base', '/categoria', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'navas', 'yes'),
(41, 'stylesheet', 'navas', 'yes'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '49752', 'yes'),
(49, 'uploads_use_yearmonth_folders', '', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '300', 'yes'),
(59, 'thumbnail_size_h', '300', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '600', 'yes'),
(62, 'medium_size_h', '600', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1400', 'yes'),
(65, 'large_size_h', '1400', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:5:{s:20:\"worker/functions.php\";s:13:\"mwp_uninstall\";s:29:\"wp-analytify/wp-analytify.php\";s:22:\"wp_analytify_uninstall\";s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";a:2:{i:0;s:15:\"GADWP_Uninstall\";i:1;s:9:\"uninstall\";}s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:18:\"scporder_uninstall\";s:27:\"wp-super-cache/wp-cache.php\";s:22:\"wpsupercache_uninstall\";}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '0', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:3:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:76:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:20:\"manage_admin_columns\";b:1;s:11:\"edit_manual\";b:1;s:11:\"read_manual\";b:1;s:13:\"delete_manual\";b:1;s:12:\"edit_manuale\";b:1;s:19:\"edit_others_manuale\";b:1;s:15:\"publish_manuale\";b:1;s:20:\"read_private_manuale\";b:1;s:12:\"edit_manuals\";b:1;s:19:\"edit_others_manuals\";b:1;s:15:\"publish_manuals\";b:1;s:20:\"read_private_manuals\";b:1;s:22:\"edit_published_manuals\";b:1;s:24:\"delete_published_manuals\";b:1;}}s:7:\"cliente\";a:2:{s:4:\"name\";s:7:\"Cliente\";s:12:\"capabilities\";a:15:{s:4:\"read\";b:1;s:10:\"edit_files\";b:1;s:12:\"upload_files\";b:1;s:19:\"remove_upload_files\";b:1;s:12:\"delete_posts\";b:1;s:10:\"edit_pages\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:17:\"edit_others_posts\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:17:\"manage_categories\";b:1;}}s:11:\"manual_role\";a:2:{s:4:\"name\";s:11:\"manual role\";s:12:\"capabilities\";a:8:{i:0;s:4:\"read\";s:11:\"edit_manual\";b:1;s:11:\"read_manual\";b:1;s:13:\"delete_manual\";b:1;s:12:\"edit_manuale\";b:1;s:18:\"edit_others_manual\";b:1;s:14:\"publish_manual\";b:1;s:19:\"read_private_manual\";b:1;}}}', 'yes'),
(93, 'WPLANG', 'pt_BR', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'cron', 'a:12:{i:1633446293;a:1:{s:11:\"wp_cache_gc\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1633446716;a:2:{s:41:\"wpseo-premium-prominent-words-recalculate\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633447777;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1633452244;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633453953;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633455594;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1633455678;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633455973;a:1:{s:22:\"analytify_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633465776;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633466775;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1633639575;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(116, 'theme_mods_twentysixteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1464889276;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(117, 'current_theme', '', 'yes'),
(118, 'theme_mods_navas', 'a:2:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(119, 'theme_switched', '', 'yes'),
(130, 'recently_activated', 'a:0:{}', 'yes'),
(131, 'acf_version', '5.9.1', 'yes'),
(144, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:6:\"manual\";s:5:\"email\";s:25:\"eric@navas.design\";s:7:\"version\";s:5:\"4.5.3\";s:9:\"timestamp\";i:1467806275;}', 'yes'),
(164, 'db_upgraded', '', 'yes'),
(193, 'mwp_openssl_parameters', 'a:2:{s:4:\"time\";i:1511806553;s:7:\"working\";b:1;}', 'yes'),
(194, 'mwp_incremental_update_active', '', 'yes'),
(195, 'mwp_recovering', '', 'yes'),
(196, 'mwp_core_autoupdate', '', 'yes'),
(197, 'mwp_container_parameters', 'a:0:{}', 'yes'),
(198, 'mwp_container_site_parameters', 'a:0:{}', 'yes'),
(199, 'mwp_maintenace_mode', 'a:0:{}', 'yes'),
(201, 'worker_migration_version', '2', 'yes'),
(202, '_worker_nossl_key', '', 'yes'),
(203, '_worker_public_key', '', 'yes'),
(205, 'mwp_worker_configuration', 'a:9:{s:10:\"master_url\";s:21:\"https://managewp.com/\";s:15:\"master_cron_url\";s:75:\"https://managewp.com/wp-content/plugins/master/mwp-notifications-handle.php\";s:20:\"noti_cache_life_time\";s:5:\"86400\";s:27:\"noti_treshold_spam_comments\";s:2:\"10\";s:30:\"noti_treshold_pending_comments\";s:1:\"0\";s:31:\"noti_treshold_approved_comments\";s:1:\"0\";s:19:\"noti_treshold_posts\";s:1:\"0\";s:20:\"noti_treshold_drafts\";s:1:\"0\";s:8:\"key_name\";s:8:\"managewp\";}', 'yes'),
(206, 'mmb_worker_activation_time', '1505927315', 'yes'),
(208, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(209, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(210, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(211, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(213, 'user_hit_count', 'a:1:{s:10:\"2017-11-27\";i:1;}', 'yes'),
(231, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(399, 'wp_page_for_privacy_policy', '0', 'yes'),
(400, 'show_comments_cookies_opt_in', '1', 'yes'),
(401, 'admin_email_lifespan', '1635602694', 'yes'),
(405, 'recovery_keys', 'a:0:{}', 'yes'),
(447, 'wpa_current_version', '2.1.2', 'yes'),
(452, 'analytify_logs_setup', '1', 'yes'),
(468, 'analytify_dashboard_widget_date', 'a:2:{i:0;s:10:\"2020-02-11\";i:1;s:10:\"2020-02-18\";}', 'no'),
(506, 'googlesitekit_new_site_posts', '0', 'yes'),
(507, 'googlesitekit_db_version', '1.3.0', 'yes'),
(513, 'wpseo', 'a:26:{s:14:\"blocking_files\";a:0:{}s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:5:\"5.0.1\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:12:\"website_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";b:0;s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:20:\"enable_setting_pages\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1582038713;s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;}', 'yes'),
(514, 'wpseo_permalinks', 'a:9:{s:15:\"cleanpermalinks\";b:0;s:24:\"cleanpermalink-extravars\";s:0:\"\";s:29:\"cleanpermalink-googlecampaign\";b:0;s:31:\"cleanpermalink-googlesitesearch\";b:0;s:15:\"cleanreplytocom\";b:0;s:10:\"cleanslugs\";b:1;s:18:\"redirectattachment\";b:0;s:17:\"stripcategorybase\";b:0;s:13:\"trailingslash\";b:0;}', 'yes'),
(515, 'wpseo_titles', 'a:53:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:15:\"usemetakeywords\";b:0;s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:40:\"%%name%%, Autor em %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:66:\"Você pesquisou por %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:44:\"Página não encontrada %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:18:\"metakey-home-wpseo\";s:0:\"\";s:20:\"metakey-author-wpseo\";s:0:\"\";s:22:\"noindex-subpages-wpseo\";b:0;s:20:\"noindex-author-wpseo\";b:0;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"metakey-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:16:\"hideeditbox-post\";b:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"metakey-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:16:\"hideeditbox-page\";b:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"metakey-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:22:\"hideeditbox-attachment\";b:0;s:18:\"title-tax-category\";s:53:\"Arquivos %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:20:\"metakey-tax-category\";s:0:\"\";s:24:\"hideeditbox-tax-category\";b:0;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"Arquivos %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:20:\"metakey-tax-post_tag\";s:0:\"\";s:24:\"hideeditbox-tax-post_tag\";b:0;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"Arquivos %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:23:\"metakey-tax-post_format\";s:0:\"\";s:27:\"hideeditbox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;}', 'yes'),
(516, 'wpseo_social', 'a:20:{s:9:\"fb_admins\";a:0:{}s:12:\"fbconnectkey\";s:32:\"97ff48c55bef35c9d7d1b0c0d4b1e6ce\";s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:7:\"summary\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(517, 'wpseo_rss', 'a:2:{s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:54:\"O post %%POSTLINK%% apareceu primeiro em %%BLOGLINK%%.\";}', 'yes'),
(518, 'wpseo_internallinks', 'a:10:{s:20:\"breadcrumbs-404crumb\";s:33:\"Erro 404: Página não encontrada\";s:23:\"breadcrumbs-blog-remove\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:13:\"Arquivos para\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:7:\"Início\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:19:\"Você pesquisou por\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:23:\"post_types-post-maintax\";i:0;}', 'yes'),
(519, 'wpseo_xml', 'a:13:{s:22:\"disable_author_sitemap\";b:1;s:22:\"disable_author_noposts\";b:1;s:16:\"enablexmlsitemap\";b:1;s:16:\"entries-per-page\";i:1000;s:14:\"excluded-posts\";s:0:\"\";s:38:\"user_role-administrator-not_in_sitemap\";b:0;s:32:\"user_role-cliente-not_in_sitemap\";b:0;s:30:\"post_types-post-not_in_sitemap\";b:0;s:30:\"post_types-page-not_in_sitemap\";b:0;s:36:\"post_types-attachment-not_in_sitemap\";b:1;s:34:\"taxonomies-category-not_in_sitemap\";b:0;s:34:\"taxonomies-post_tag-not_in_sitemap\";b:0;s:37:\"taxonomies-post_format-not_in_sitemap\";b:0;}', 'yes'),
(520, 'wpseo_flush_rewrite', '1', 'yes'),
(522, 'yoast-seo-premium_license', 'a:3:{s:3:\"key\";s:0:\"\";s:6:\"status\";s:0:\"\";s:11:\"expiry_date\";s:0:\"\";}', 'yes'),
(523, 'wpseo_current_version', '16', 'no'),
(524, 'wpseo_premium_version', '5.0.1', 'yes'),
(528, 'exactmetrics_over_time', 'a:3:{s:17:\"installed_version\";s:5:\"6.0.1\";s:14:\"installed_date\";i:1582038726;s:13:\"installed_pro\";b:0;}', 'yes'),
(529, 'exactmetrics_db_version', '1.0.0', 'yes'),
(530, 'exactmetrics_current_version', '6.0.1', 'yes'),
(531, 'exactmetrics_settings', 'a:17:{s:22:\"enable_affiliate_links\";b:1;s:15:\"affiliate_links\";a:2:{i:0;a:2:{s:4:\"path\";s:4:\"/go/\";s:5:\"label\";s:9:\"affiliate\";}i:1;a:2:{s:4:\"path\";s:11:\"/recommend/\";s:5:\"label\";s:9:\"affiliate\";}}s:12:\"demographics\";i:1;s:12:\"ignore_users\";a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}s:19:\"dashboards_disabled\";i:0;s:13:\"anonymize_ips\";i:0;s:19:\"extensions_of_files\";s:34:\"doc,pdf,ppt,zip,xls,docx,pptx,xlsx\";s:18:\"subdomain_tracking\";s:0:\"\";s:16:\"link_attribution\";b:1;s:16:\"tag_links_in_rss\";b:1;s:12:\"allow_anchor\";i:0;s:16:\"add_allow_linker\";i:0;s:11:\"custom_code\";s:0:\"\";s:13:\"save_settings\";a:1:{i:0;s:13:\"administrator\";}s:12:\"view_reports\";a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}s:11:\"events_mode\";s:2:\"js\";s:13:\"tracking_mode\";s:9:\"analytics\";}', 'yes'),
(532, 'exactmetrics_review', 'a:2:{s:4:\"time\";i:1582038727;s:9:\"dismissed\";b:0;}', 'yes'),
(540, 'widget_gadwp-frontwidget-report', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(541, '_amn_exact-metrics_to_check', '1620309897', 'yes'),
(542, 'gadwp_redeemed_code', '4/wgGerhZATc56DneUj7nZ4u11wRtDLMF_nPpi7er5tarMrilfxZztNHI', 'yes'),
(675, 'wpseo_sitemap_1_cache_validator', '5v8hK', 'no'),
(676, 'wpseo_sitemap_post_cache_validator', '4Nyti', 'no'),
(754, 'wpseo_sitemap_page_cache_validator', '6vY3B', 'no'),
(755, 'fresh_site', '0', 'yes'),
(760, 'wpseo_sitemap_manual_cache_validator', '6yOZl', 'no'),
(894, 'wpseo_sitemap_category_cache_validator', '6vMCV', 'no'),
(898, 'controle_de_cache_versao', '', 'no'),
(899, '_controle_de_cache_versao', 'field_605b99b27f9fa', 'no'),
(931, '_site_transient_timeout_browser_8d0140d53e63fb1adef89d4becc4ff87', '1633551498', 'no'),
(932, '_site_transient_browser_8d0140d53e63fb1adef89d4becc4ff87', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"94.0.4606.61\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(933, '_site_transient_timeout_php_check_2a66e80e16cbcc170ac3ebd5af4c772f', '1633551499', 'no'),
(934, '_site_transient_php_check_2a66e80e16cbcc170ac3ebd5af4c772f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(943, '_transient_timeout_ac-deprecated-message-count', '1633551566', 'no'),
(944, '_transient_ac-deprecated-message-count', '0', 'no'),
(945, 'cpac-install-timestamp', '1632946767', 'no'),
(948, '_transient_timeout__cpac_renewal_check', '1633551570', 'no'),
(949, '_transient__cpac_renewal_check', '1', 'no'),
(950, 'scporder_install', '1', 'yes'),
(951, 'simple-rate-time', '1790778845', 'yes'),
(952, 'scporder_notice', '1', 'yes'),
(957, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(958, 'disallowed_keys', '', 'no'),
(959, 'comment_previously_approved', '', 'yes'),
(960, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(961, 'auto_update_core_dev', 'enabled', 'yes'),
(962, 'auto_update_core_minor', 'enabled', 'yes'),
(963, 'auto_update_core_major', 'unset', 'yes'),
(964, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(965, 'finished_updating_comment_type', '1', 'yes'),
(969, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:26:\"Requisição HTTPS falhou.\";}}', 'yes'),
(970, 'can_compress_scripts', '1', 'no'),
(981, 'wp_super_cache_index_detected', '3', 'no'),
(987, 'cpac_options_post__default', 'a:13:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:7:\"Título\";s:6:\"author\";s:5:\"Autor\";s:10:\"categories\";s:10:\"Categorias\";s:4:\"tags\";s:4:\"Tags\";s:8:\"comments\";s:119:\"<span class=\"vers comment-grey-bubble\" title=\"Comentários\"><span class=\"screen-reader-text\">Comentários</span></span>\";s:4:\"date\";s:4:\"Data\";s:11:\"wpseo-links\";s:242:\"<span class=\"yoast-linked-to yoast-column-header-has-tooltip\" data-label=\"Number of internal links in this post. See &quot;Yoast Columns&quot; text in the help tab for more info.\"><span class=\"screen-reader-text\"># links in post</span></span>\";s:11:\"wpseo-score\";s:217:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"SEO score\"><span class=\"yoast-column-seo-score yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">SEO score</span></span></span>\";s:23:\"wpseo-score-readability\";s:235:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"Readability score\"><span class=\"yoast-column-readability yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">Readability score</span></span></span>\";s:11:\"wpseo-title\";s:11:\"Título SEO\";s:14:\"wpseo-metadesc\";s:10:\"Meta-Desc.\";s:13:\"wpseo-focuskw\";s:7:\"PC Foco\";}', 'yes'),
(988, 'ac_sorting_post_default', 'a:8:{s:5:\"title\";s:5:\"title\";s:6:\"parent\";s:6:\"parent\";s:8:\"comments\";s:13:\"comment_count\";s:4:\"date\";a:2:{i:0;s:4:\"date\";i:1;b:1;}s:11:\"wpseo-links\";s:11:\"wpseo-links\";s:12:\"wpseo-linked\";s:12:\"wpseo-linked\";s:14:\"wpseo-metadesc\";s:14:\"wpseo-metadesc\";s:13:\"wpseo-focuskw\";s:13:\"wpseo-focuskw\";}', 'yes'),
(993, 'category_children', 'a:0:{}', 'yes'),
(1001, 'cpac_options_page__default', 'a:11:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:7:\"Título\";s:6:\"author\";s:5:\"Autor\";s:8:\"comments\";s:119:\"<span class=\"vers comment-grey-bubble\" title=\"Comentários\"><span class=\"screen-reader-text\">Comentários</span></span>\";s:4:\"date\";s:4:\"Data\";s:11:\"wpseo-links\";s:242:\"<span class=\"yoast-linked-to yoast-column-header-has-tooltip\" data-label=\"Number of internal links in this post. See &quot;Yoast Columns&quot; text in the help tab for more info.\"><span class=\"screen-reader-text\"># links in post</span></span>\";s:11:\"wpseo-score\";s:217:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"SEO score\"><span class=\"yoast-column-seo-score yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">SEO score</span></span></span>\";s:23:\"wpseo-score-readability\";s:235:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"Readability score\"><span class=\"yoast-column-readability yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">Readability score</span></span></span>\";s:11:\"wpseo-title\";s:11:\"Título SEO\";s:14:\"wpseo-metadesc\";s:10:\"Meta-Desc.\";s:13:\"wpseo-focuskw\";s:7:\"PC Foco\";}', 'yes'),
(1002, 'ac_sorting_page_default', 'a:8:{s:5:\"title\";s:5:\"title\";s:6:\"parent\";s:6:\"parent\";s:8:\"comments\";s:13:\"comment_count\";s:4:\"date\";a:2:{i:0;s:4:\"date\";i:1;b:1;}s:11:\"wpseo-links\";s:11:\"wpseo-links\";s:12:\"wpseo-linked\";s:12:\"wpseo-linked\";s:14:\"wpseo-metadesc\";s:14:\"wpseo-metadesc\";s:13:\"wpseo-focuskw\";s:13:\"wpseo-focuskw\";}', 'yes'),
(1005, 'cpac_options_manual__default', 'a:9:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:7:\"Título\";s:4:\"date\";s:4:\"Data\";s:11:\"wpseo-links\";s:242:\"<span class=\"yoast-linked-to yoast-column-header-has-tooltip\" data-label=\"Number of internal links in this post. See &quot;Yoast Columns&quot; text in the help tab for more info.\"><span class=\"screen-reader-text\"># links in post</span></span>\";s:11:\"wpseo-score\";s:217:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"SEO score\"><span class=\"yoast-column-seo-score yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">SEO score</span></span></span>\";s:23:\"wpseo-score-readability\";s:235:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"Readability score\"><span class=\"yoast-column-readability yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">Readability score</span></span></span>\";s:11:\"wpseo-title\";s:11:\"Título SEO\";s:14:\"wpseo-metadesc\";s:10:\"Meta-Desc.\";s:13:\"wpseo-focuskw\";s:7:\"PC Foco\";}', 'yes'),
(1006, 'ac_sorting_manual_default', 'a:8:{s:5:\"title\";s:5:\"title\";s:6:\"parent\";s:6:\"parent\";s:8:\"comments\";s:13:\"comment_count\";s:4:\"date\";a:2:{i:0;s:4:\"date\";i:1;b:1;}s:11:\"wpseo-links\";s:11:\"wpseo-links\";s:12:\"wpseo-linked\";s:12:\"wpseo-linked\";s:14:\"wpseo-metadesc\";s:14:\"wpseo-metadesc\";s:13:\"wpseo-focuskw\";s:13:\"wpseo-focuskw\";}', 'yes'),
(1035, 'recovery_mode_email_last_sent', '1633100749', 'yes'),
(1036, 'cpac_options_wp-users__default', 'a:6:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:8:\"username\";s:16:\"Nome de usuário\";s:4:\"name\";s:4:\"Nome\";s:5:\"email\";s:6:\"E-mail\";s:4:\"role\";s:8:\"Função\";s:5:\"posts\";s:5:\"Posts\";}', 'yes'),
(1037, 'ac_sorting_wp-users_default', 'a:2:{s:8:\"username\";s:5:\"login\";s:5:\"email\";s:5:\"email\";}', 'yes'),
(1043, 'wpseo_sitemap_author_cache_validator', '5v8hL', 'no'),
(1057, 'wpsupercache_start', '1633013228', 'yes'),
(1058, 'wpsupercache_count', '0', 'yes'),
(1059, 'ossdl_off_blog_url', 'http://localhost/base/wordpress', 'yes'),
(1060, 'ossdl_off_cdn_url', 'http://localhost/base/wordpress', 'yes'),
(1061, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
(1062, 'ossdl_off_exclude', '.php', 'yes'),
(1063, 'ossdl_cname', '', 'yes'),
(1065, 'wpsupercache_gc_time', '1633445693', 'yes'),
(1073, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":5,\"critical\":2}', 'yes'),
(1137, 'supercache_stats', 'a:3:{s:9:\"generated\";i:1633108767;s:10:\"supercache\";a:5:{s:7:\"expired\";i:0;s:6:\"cached\";i:0;s:5:\"fsize\";i:0;s:11:\"cached_list\";a:0:{}s:12:\"expired_list\";a:0:{}}s:7:\"wpcache\";a:5:{s:7:\"expired\";i:0;s:6:\"cached\";i:0;s:5:\"fsize\";i:0;s:11:\"cached_list\";a:0:{}s:12:\"expired_list\";a:0:{}}}', 'yes'),
(1159, 'cpac_options_modelo__default', 'a:9:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:7:\"Título\";s:4:\"date\";s:4:\"Data\";s:11:\"wpseo-links\";s:242:\"<span class=\"yoast-linked-to yoast-column-header-has-tooltip\" data-label=\"Number of internal links in this post. See &quot;Yoast Columns&quot; text in the help tab for more info.\"><span class=\"screen-reader-text\"># links in post</span></span>\";s:11:\"wpseo-score\";s:217:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"SEO score\"><span class=\"yoast-column-seo-score yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">SEO score</span></span></span>\";s:23:\"wpseo-score-readability\";s:235:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"Readability score\"><span class=\"yoast-column-readability yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">Readability score</span></span></span>\";s:11:\"wpseo-title\";s:11:\"Título SEO\";s:14:\"wpseo-metadesc\";s:10:\"Meta-Desc.\";s:13:\"wpseo-focuskw\";s:7:\"PC Foco\";}', 'yes'),
(1160, 'ac_sorting_modelo_default', 'a:8:{s:5:\"title\";s:5:\"title\";s:6:\"parent\";s:6:\"parent\";s:8:\"comments\";s:13:\"comment_count\";s:4:\"date\";a:2:{i:0;s:4:\"date\";i:1;b:1;}s:11:\"wpseo-links\";s:11:\"wpseo-links\";s:12:\"wpseo-linked\";s:12:\"wpseo-linked\";s:14:\"wpseo-metadesc\";s:14:\"wpseo-metadesc\";s:13:\"wpseo-focuskw\";s:13:\"wpseo-focuskw\";}', 'yes'),
(1173, '_transient_timeout_ca2825d9f114548-update-request-failed', '1633456425', 'no'),
(1174, '_transient_ca2825d9f114548-update-request-failed', 'failed', 'no'),
(1175, '_site_transient_timeout_admin-columns-pro_acppluginupdate', '1633449269', 'no'),
(1176, '_site_transient_admin-columns-pro_acppluginupdate', 'O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"0\";s:4:\"slug\";s:17:\"admin-columns-pro\";s:11:\"new_version\";s:3:\"5.6\";s:8:\"icon_svg\";s:82:\"https://www.admincolumns.com/wp-content/plugins/acp-plugins/assets/images/icon.svg\";s:3:\"url\";s:28:\"https://www.admincolumns.com\";s:7:\"package\";b:0;}', 'no'),
(1177, '_site_transient_timeout_theme_roots', '1633447427', 'no'),
(1178, '_site_transient_theme_roots', 'a:1:{s:5:\"navas\";s:7:\"/themes\";}', 'no'),
(1179, '_transient_timeout_wpseo-dashboard-totals', '1633532028', 'no'),
(1180, '_transient_wpseo-dashboard-totals', 'a:1:{i:1;a:0:{}}', 'no'),
(1181, '_site_transient_timeout_cpupdate_cac-pro_plugindetails', '1633532071', 'no'),
(1182, '_site_transient_cpupdate_cac-pro_plugindetails', '-1', 'no'),
(1183, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1633456440', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1184, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:5170;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4767;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2732;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2604;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2014;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1868;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1855;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1528;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1520;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1508;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1503;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1501;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1474;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1312;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1285;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1285;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1240;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1162;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1131;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1069;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:974;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:939;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:916;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:903;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:888;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:841;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:825;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:819;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:817;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:800;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:762;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:755;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:734;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:730;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:729;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:728;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:717;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:689;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:673;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:671;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:668;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:666;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:665;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:663;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:654;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:650;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:602;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:600;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:594;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:593;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:578;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:576;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:569;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:569;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:565;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:560;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:556;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:553;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:552;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:551;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:551;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:539;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:535;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:524;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:515;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:511;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:501;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:500;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:500;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:489;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:487;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:474;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:473;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:470;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:469;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:469;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:453;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:450;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:446;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:444;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:434;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:427;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:423;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:421;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:412;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:412;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:407;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:402;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:402;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:391;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:390;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:385;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:384;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:381;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:380;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:377;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:373;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:372;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:360;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:360;}}', 'no'),
(1192, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1633445697;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(1193, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1633445699;s:7:\"checked\";a:1:{s:5:\"navas\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1194, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1633445700;s:8:\"response\";a:0:{}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:15:\"acf-to-rest-api\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"3.3.2\";s:7:\"updated\";s:19:\"2020-02-20 01:01:48\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/translation/plugin/acf-to-rest-api/3.3.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"wp-super-cache\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"1.7.4\";s:7:\"updated\";s:19:\"2021-05-21 14:29:01\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/wp-super-cache/1.7.4/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:6:{s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/acf-to-rest-api\";s:4:\"slug\";s:15:\"acf-to-rest-api\";s:6:\"plugin\";s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";s:11:\"new_version\";s:5:\"3.3.2\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/acf-to-rest-api/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/acf-to-rest-api.3.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/acf-to-rest-api/assets/icon-256x256.jpg?rev=1752896\";s:2:\"1x\";s:68:\"https://ps.w.org/acf-to-rest-api/assets/icon-128x128.jpg?rev=1752896\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/acf-to-rest-api/assets/banner-1544x500.jpg?rev=1752896\";s:2:\"1x\";s:70:\"https://ps.w.org/acf-to-rest-api/assets/banner-772x250.jpg?rev=1752896\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:5:\"2.5.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:81:\"duracelltomi-google-tag-manager/duracelltomi-google-tag-manager-for-wordpress.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:45:\"w.org/plugins/duracelltomi-google-tag-manager\";s:4:\"slug\";s:31:\"duracelltomi-google-tag-manager\";s:6:\"plugin\";s:81:\"duracelltomi-google-tag-manager/duracelltomi-google-tag-manager-for-wordpress.php\";s:11:\"new_version\";s:6:\"1.13.1\";s:3:\"url\";s:62:\"https://wordpress.org/plugins/duracelltomi-google-tag-manager/\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/plugin/duracelltomi-google-tag-manager.1.13.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:84:\"https://ps.w.org/duracelltomi-google-tag-manager/assets/icon-256x256.png?rev=1708451\";s:2:\"1x\";s:84:\"https://ps.w.org/duracelltomi-google-tag-manager/assets/icon-128x128.png?rev=1708451\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/duracelltomi-google-tag-manager/assets/banner-1544x500.png?rev=1708451\";s:2:\"1x\";s:86:\"https://ps.w.org/duracelltomi-google-tag-manager/assets/banner-772x250.png?rev=1708451\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.4.0\";}s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:48:\"w.org/plugins/jwt-authentication-for-wp-rest-api\";s:4:\"slug\";s:34:\"jwt-authentication-for-wp-rest-api\";s:6:\"plugin\";s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:11:\"new_version\";s:5:\"1.2.6\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/jwt-authentication-for-wp-rest-api/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/jwt-authentication-for-wp-rest-api.1.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=1238484\";s:3:\"svg\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=1238484\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/banner-772x250.jpg?rev=1238480\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.2\";}s:53:\"simple-custom-post-order/simple-custom-post-order.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:38:\"w.org/plugins/simple-custom-post-order\";s:4:\"slug\";s:24:\"simple-custom-post-order\";s:6:\"plugin\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:11:\"new_version\";s:5:\"2.5.6\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/simple-custom-post-order/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/simple-custom-post-order.2.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=1859717\";s:2:\"1x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=1859717\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/simple-custom-post-order/assets/banner-772x250.jpg?rev=1859717\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:27:\"wp-super-cache/wp-cache.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wp-super-cache\";s:4:\"slug\";s:14:\"wp-super-cache\";s:6:\"plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:11:\"new_version\";s:5:\"1.7.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-super-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-super-cache.1.7.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";}}s:7:\"checked\";a:8:{s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";s:5:\"3.3.2\";s:39:\"admin-columns-pro/admin-columns-pro.php\";s:5:\"4.0.4\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:5:\"2.5.1\";s:81:\"duracelltomi-google-tag-manager/duracelltomi-google-tag-manager-for-wordpress.php\";s:6:\"1.13.1\";s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:5:\"1.2.6\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:5:\"2.5.6\";s:27:\"wp-super-cache/wp-cache.php\";s:5:\"1.7.4\";s:24:\"yoast/wp-seo-premium.php\";s:5:\"5.0.1\";}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1585060360:1'),
(4, 2, '_edit_last', '1'),
(5, 5, '_edit_last', '1'),
(6, 5, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(7, 5, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:1;}'),
(8, 5, 'position', 'normal'),
(9, 5, 'layout', 'no_box'),
(10, 5, 'hide_on_screen', 'a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:13:\"custom_fields\";i:4;s:10:\"discussion\";i:5;s:8:\"comments\";i:6;s:9:\"revisions\";i:7;s:4:\"slug\";i:8;s:6:\"author\";i:9;s:6:\"format\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}'),
(11, 5, '_edit_lock', '1464972179:1'),
(12, 6, '_edit_lock', '1585060373:1'),
(13, 6, '_edit_last', '1'),
(14, 7, '_edit_last', '1'),
(15, 7, '_yoast_wpseo_content_score', '30'),
(16, 7, '_yoast_wpseo_focuskeywords', '[]'),
(17, 7, '_edit_lock', '1632949813:1'),
(22, 13, '_edit_last', '1'),
(23, 13, '_edit_lock', '1598561041:1'),
(24, 16, '_wp_attached_file', 'Captura-de-Tela-2020-08-27-às-17.48.00.png'),
(25, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2880;s:6:\"height\";i:1494;s:4:\"file\";s:44:\"Captura-de-Tela-2020-08-27-às-17.48.00.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"Captura-de-Tela-2020-08-27-às-17.48.00-600x311.png\";s:5:\"width\";i:600;s:6:\"height\";i:311;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:53:\"Captura-de-Tela-2020-08-27-às-17.48.00-1400x726.png\";s:5:\"width\";i:1400;s:6:\"height\";i:726;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Captura-de-Tela-2020-08-27-às-17.48.00-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:53:\"Captura-de-Tela-2020-08-27-às-17.48.00-1536x797.png\";s:5:\"width\";i:1536;s:6:\"height\";i:797;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:54:\"Captura-de-Tela-2020-08-27-às-17.48.00-2048x1062.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1062;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 17, '_edit_lock', '1617281944:1'),
(43, 7, '_yoast_wpseo_meta-robots-noindex', '1'),
(44, 7, '_yoast_wpseo_meta-robots-nofollow', '1'),
(45, 24, '_edit_lock', '1633012555:1'),
(46, 25, '_edit_lock', '1633012618:1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2016-06-02 14:39:52', '2016-06-02 17:39:52', '', 'Home', '', 'publish', 'closed', 'open', '', 'home', '', '', '2016-06-03 14:23:42', '2016-06-03 17:23:42', '', 0, 'http://localhost/base/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-06-03 12:40:01', '2016-06-03 15:40:01', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-03 12:40:01', '2016-06-03 15:40:01', '', 2, 'http://localhost/base/wordpress/blog/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2016-06-03 13:44:23', '2016-06-03 16:44:23', '', 'Tudo', '', 'publish', 'closed', 'closed', '', 'acf_tudo', '', '', '2016-06-03 13:44:23', '2016-06-03 16:44:23', '', 0, 'http://localhost/base/wordpress/?post_type=acf&#038;p=5', 0, 'acf', '', 0),
(6, 1, '2017-03-30 10:06:13', '2017-03-30 13:06:13', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Tudo', 'tudo', 'publish', 'closed', 'closed', '', 'group_58dd02c5c838b', '', '', '2020-03-24 11:35:16', '2020-03-24 14:35:16', '', 0, 'http://localhost/base/wordpress/?post_type=acf-field-group&#038;p=6', 0, 'acf-field-group', '', 0),
(7, 1, '2020-08-27 15:33:56', '2020-08-27 18:33:56', '', 'Manual', '', 'publish', 'closed', 'closed', '', 'manual', '', '', '2021-09-29 18:10:58', '2021-09-29 21:10:58', '', 0, 'http://localhost/base/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-08-27 15:33:56', '2020-08-27 18:33:56', '', 'Manual', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-08-27 15:33:56', '2020-08-27 18:33:56', '', 7, 'http://localhost/base/wordpress/7-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-08-27 17:45:45', '2020-08-27 20:45:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"manual\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Manual', 'manual', 'publish', 'closed', 'closed', '', 'group_5f481b2ba6d2a', '', '', '2020-08-27 17:46:18', '2020-08-27 20:46:18', '', 0, 'http://localhost/base/wordpress/?post_type=acf-field-group&#038;p=13', 0, 'acf-field-group', '', 0),
(14, 1, '2020-08-27 17:45:45', '2020-08-27 20:45:45', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:114:\"O resumo aparece no item da home do manual. É importante descrever brevemente do que se trata o item em questão.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:2;s:9:\"new_lines\";s:2:\"br\";}', 'Resumo', 'resumo', 'publish', 'closed', 'closed', '', 'field_5f481b417173a', '', '', '2020-08-27 17:45:45', '2020-08-27 20:45:45', '', 13, 'http://localhost/base/wordpress/?post_type=acf-field&p=14', 0, 'acf-field', '', 0),
(15, 1, '2020-08-27 17:45:45', '2020-08-27 20:45:45', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Descrição', 'descricao', 'publish', 'closed', 'closed', '', 'field_5f481b3071739', '', '', '2020-08-27 17:46:18', '2020-08-27 20:46:18', '', 13, 'http://localhost/base/wordpress/?post_type=acf-field&#038;p=15', 1, 'acf-field', '', 0),
(16, 1, '2020-08-27 17:48:11', '2020-08-27 20:48:11', '', 'Captura de Tela 2020-08-27 às 17.48.00', '', 'inherit', 'closed', 'closed', '', 'captura-de-tela-2020-08-27-as-17-48-00', '', '', '2020-08-27 17:48:11', '2020-08-27 20:48:11', '', 0, 'http://localhost/base/wordpress/wp-content/uploads/Captura-de-Tela-2020-08-27-às-17.48.00.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2021-04-01 09:58:06', '2021-04-01 12:58:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"controle_de_cache\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Controle de Cache', 'controle-de-cache', 'publish', 'closed', 'closed', '', 'group_605b99a3713d3', '', '', '2021-04-01 09:58:06', '2021-04-01 12:58:06', '', 0, 'http://localhost/base/wordpress/?p=17', 0, 'acf-field-group', '', 0),
(18, 1, '2021-04-01 09:58:05', '2021-04-01 12:58:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:119:\"Insira a versão para forçar a limpeza de cache dos usuários. Não utilizar caracteres especiais, acentos e espaços.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:5:\"Ex: 1\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Versão', 'versao', 'publish', 'closed', 'closed', '', 'field_605b99b27f9fa', '', '', '2021-04-01 09:58:05', '2021-04-01 12:58:05', '', 17, 'http://localhost/base/wordpress/?post_type=acf-field&p=18', 0, 'acf-field', '', 0),
(22, 1, '2021-09-30 10:59:56', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2021-09-30 10:59:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/base/wordpress/?p=22', 0, 'post', '', 0),
(23, 1, '2021-09-30 11:34:36', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2021-09-30 11:34:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/base/wordpress/?p=23', 0, 'post', '', 0),
(24, 1, '2021-09-30 11:34:42', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2021-09-30 11:34:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/base/wordpress/?p=24', 0, 'post', '', 0),
(25, 1, '2021-09-30 11:35:56', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2021-09-30 11:35:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/base/wordpress/?p=25', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(17, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Navas Design'),
(2, 1, 'first_name', 'Navas Design'),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '22'),
(16, 1, 'manageedit-pagecolumnshidden', 'a:2:{i:0;s:6:\"author\";i:1;s:8:\"comments\";}'),
(17, 1, 'edit_page_per_page', '20'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o&editor=tinymce'),
(19, 1, 'wp_user-settings-time', '1633108512'),
(36, 1, 'manageedit-acfcolumnshidden', 'a:0:{}'),
(37, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:49:\"dashboard_suporte_widget,wpseo-dashboard-overview\";s:4:\"side\";s:22:\"dashboard_obvio_widget\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(38, 1, 'syntax_highlighting', 'true'),
(39, 1, 'locale', ''),
(45, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:564:\"Percebemos que você já está usando o Yoast SEO há algum tempo; esperamos que esteja gostando! Nós adoraríamos se você pudesse <a href=\"https://yoa.st/rate-yoast-seo?utm_content=5.0.1\">nos classificar com 5 estrelas no WordPress.org</a>!\n\nSe estiver enfrentando problemas, <a href=\"https://yoa.st/bugreport?utm_content=5.0.1\">envie um relatório de erro</a> e faremos tudo o que pudermos para ajudar você.\n\n\n\n<a class=\"button\" href=\"http://localhost/base/wordpress/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Não mostre mais essa notificação</a>\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8000000000000000444089209850062616169452667236328125;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:14:\"manage_options\";s:16:\"capability_check\";s:3:\"all\";}}i:1;a:2:{s:7:\"message\";s:195:\"Não deixe escapar seus erros de rastreamento: <a href=\"http://localhost/base/wordpress/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">conecte-se com o Google Search Console aqui</a>.\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:14:\"manage_options\";s:16:\"capability_check\";s:3:\"all\";}}}'),
(46, 1, 'closedpostboxes_post', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(47, 1, 'metaboxhidden_post', 'a:5:{i:0;s:11:\"categorydiv\";i:1;s:16:\"tagsdiv-post_tag\";i:2;s:13:\"trackbacksdiv\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";}'),
(48, 1, 'closedpostboxes_manual', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(49, 1, 'metaboxhidden_manual', 'a:2:{i:0;s:13:\"pageparentdiv\";i:1;s:7:\"slugdiv\";}'),
(50, 1, 'meta-box-order_manual', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:23:\"submitdiv,pageparentdiv\";s:6:\"normal\";s:42:\"acf-group_5f481b2ba6d2a,wpseo_meta,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(51, 1, 'screen_layout_manual', '2'),
(52, 1, '_yoast_wpseo_profile_updated', '1605909579'),
(53, 1, 'wpseo_title', ''),
(54, 1, 'wpseo_metadesc', ''),
(55, 1, 'wpseo_metakey', ''),
(56, 1, 'wpseo_excludeauthorsitemap', ''),
(57, 1, 'wpseo_content_analysis_disable', ''),
(58, 1, 'wpseo_keyword_analysis_disable', ''),
(59, 1, 'googleplus', ''),
(60, 1, 'twitter', ''),
(61, 1, 'facebook', ''),
(62, 1, 'cpac_current_model1', 'post'),
(64, 1, 'cpac-hide-install-addons-notice1', '1'),
(65, 1, 'session_tokens', 'a:1:{s:64:\"67b275ad593d8b3117dacf446af75baba3d6ae374fe99386580bf818af0e4a7e\";a:4:{s:10:\"expiration\";i:1633530113;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36\";s:5:\"login\";i:1633357313;}}'),
(66, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(67, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(87, 1, 'meta-box-order_post', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:48:\"submitdiv,authordiv,categorydiv,tagsdiv-post_tag\";s:6:\"normal\";s:85:\"postexcerpt,wpseo_meta,acf-group_58dd02c5c838b,trackbacksdiv,commentstatusdiv,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(88, 1, 'screen_layout_post', '2');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BsMWUMfhWjHSufBpwCQmpyS8fXZuh..', 'admin', 'eric@navas.design', '', '2016-06-02 17:39:52', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Fazendo dump de dados para tabela `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(1, 0, NULL),
(7, 0, NULL),
(12, 0, NULL),
(18, 0, NULL);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices de tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Índices de tabela `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Índices de tabela `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1195;
--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;