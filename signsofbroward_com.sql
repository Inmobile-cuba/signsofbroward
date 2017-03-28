-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-03-2017 a las 18:48:48
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `signsofbroward.com`
--
CREATE DATABASE IF NOT EXISTS `signsofbroward.com` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `signsofbroward.com`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobcommentmeta`
--

CREATE TABLE IF NOT EXISTS `sobcommentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobcomments`
--

CREATE TABLE IF NOT EXISTS `sobcomments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sobcomments`
--

INSERT INTO `sobcomments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-03-25 02:28:23', '2017-03-25 02:28:23', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobhuge_itportfolio_images`
--

CREATE TABLE IF NOT EXISTS `sobhuge_itportfolio_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `portfolio_id` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `image_url` text COLLATE utf8mb4_unicode_520_ci,
  `sl_url` text COLLATE utf8mb4_unicode_520_ci,
  `sl_type` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_target` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(4) unsigned DEFAULT NULL,
  `published_in_sl_width` tinyint(4) unsigned DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `sobhuge_itportfolio_images`
--

INSERT INTO `sobhuge_itportfolio_images` (`id`, `name`, `portfolio_id`, `description`, `image_url`, `sl_url`, `sl_type`, `link_target`, `ordering`, `published`, `published_in_sl_width`, `category`) VALUES
(1, 'Cutthroat & Cavalier', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/1.jpg;http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/1.1.jpg;http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/1.2.jpg;', 'http://huge-it.com/wordpress-plugins-portfolio-gallery-demo/#plugin_demo_wrapper', 'image', 'on', 0, 1, NULL, ''),
(2, 'Nespresso', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'https://vimeo.com/76602135;http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/9.1.jpg;http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/9.2.jpg;', 'http://huge-it.com/wordpress-portfolio-gallery-demo-2-full-height-block/#plugin_demo_wrapper', 'video', 'on', 1, 1, NULL, ''),
(3, 'Nexus', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/3.jpg;http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/3.1.jpg;http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/3.2.jpg:https://www.youtube.com/watch?v=YMQdfGFK5XQ;', 'http://huge-it.com/wordpress-portfolio-gallery-demo-3-gallery-content-popup/#plugin_demo_wrapper', 'image', 'on', 2, 1, NULL, ''),
(4, 'De7igner', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><h7>Dolor sit amet</h7><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/4.jpg;http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/4.1.jpg;http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/4.2.jpg;', 'http://huge-it.com/wordpress-portfolio-gallery-demo-4-full-width-block/#plugin_demo_wrapper', 'image', 'on', 3, 1, NULL, ''),
(5, 'Autumn / Winter Collection', '1', '<h6>Lorem Ipsum</h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/2.jpg;', 'http://huge-it.com/wordpress-portfolio-gallery-demo-5-faq-toggle-updown/#plugin_demo_wrapper', 'image', 'on', 4, 1, NULL, ''),
(6, 'Retro Headphones', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/6.jpg;https://vimeo.com/80514062;http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/6.1.jpg;http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/6.2.jpg;', 'http://huge-it.com/wordpress-portfolio-gallery-demo-6-content-slider/#plugin_demo_wrapper', 'image', 'on', 5, 1, NULL, ''),
(7, 'Take Fight', '1', '<h6>Lorem Ipsum</h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident , sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/7.jpg;http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/7.2.jpg;https://www.youtube.com/watch?v=SP3Dgr9S4pM;http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/7.3.jpg;', 'http://huge-it.com/wordpress-portfolio-gallery-demo-7-lightbox-gallery/#plugin_demo_wrapper', 'image', 'on', 6, 1, NULL, ''),
(8, 'The Optic', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/8.jpg;http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/8.1.jpg;http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/8.3.jpg;', 'http://huge-it.com/wordpress-plugins/', 'image', 'on', 7, 1, NULL, ''),
(9, 'Cone Music', '1', '<ul><li>lorem ipsumdolor sit amet</li><li>lorem ipsum dolor sit amet</li></ul><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/5.jpg;http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/5.1.jpg;http://signsofbroward.com/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/5.2.jpg;', 'http://huge-it.com/portfolio-gallery/', 'image', 'on', 8, 1, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobhuge_itportfolio_portfolios`
--

CREATE TABLE IF NOT EXISTS `sobhuge_itportfolio_portfolios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sl_height` int(11) unsigned DEFAULT NULL,
  `sl_width` int(11) unsigned DEFAULT NULL,
  `pause_on_hover` text COLLATE utf8mb4_unicode_520_ci,
  `portfolio_list_effects_s` text COLLATE utf8mb4_unicode_520_ci,
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `param` text COLLATE utf8mb4_unicode_520_ci,
  `sl_position` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` text COLLATE utf8mb4_unicode_520_ci,
  `categories` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ht_show_sorting` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'off',
  `ht_show_filtering` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'off',
  `autoslide` varchar(5) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'on',
  `show_loading` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'on',
  `loading_icon_type` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sobhuge_itportfolio_portfolios`
--

INSERT INTO `sobhuge_itportfolio_portfolios` (`id`, `name`, `sl_height`, `sl_width`, `pause_on_hover`, `portfolio_list_effects_s`, `description`, `param`, `sl_position`, `ordering`, `published`, `categories`, `ht_show_sorting`, `ht_show_filtering`, `autoslide`, `show_loading`, `loading_icon_type`) VALUES
(1, 'My First Portfolio', 375, 600, 'on', '6', '4000', '1000', 'off', 1, '300', 'My_First_Category,My_Second_Category,My_Third_Category,', 'on', '', 'on', 'on', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soblinks`
--

CREATE TABLE IF NOT EXISTS `soblinks` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soboptions`
--

CREATE TABLE IF NOT EXISTS `soboptions` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=157 ;

--
-- Volcado de datos para la tabla `soboptions`
--

INSERT INTO `soboptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://signsofbroward.com', 'yes'),
(2, 'home', 'http://signsofbroward.com', 'yes'),
(3, 'blogname', 'Signs of Broward', 'yes'),
(4, 'blogdescription', ' bringing brands to life, in Broward and beyond', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'inmobile.cuba@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:268:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:23:"index.php/pf_contact/?$";s:30:"index.php?post_type=pf_contact";s:53:"index.php/pf_contact/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=pf_contact&feed=$matches[1]";s:48:"index.php/pf_contact/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=pf_contact&feed=$matches[1]";s:40:"index.php/pf_contact/page/([0-9]{1,})/?$";s:48:"index.php?post_type=pf_contact&paged=$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:51:"index.php/download-view/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:61:"index.php/download-view/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:81:"index.php/download-view/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:76:"index.php/download-view/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:76:"index.php/download-view/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"index.php/download-view/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"index.php/download-view/([^/]+)/embed/?$";s:47:"index.php?dslc_downloads=$matches[1]&embed=true";s:44:"index.php/download-view/([^/]+)/trackback/?$";s:41:"index.php?dslc_downloads=$matches[1]&tb=1";s:52:"index.php/download-view/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?dslc_downloads=$matches[1]&paged=$matches[2]";s:59:"index.php/download-view/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?dslc_downloads=$matches[1]&cpage=$matches[2]";s:48:"index.php/download-view/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?dslc_downloads=$matches[1]&page=$matches[2]";s:40:"index.php/download-view/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"index.php/download-view/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"index.php/download-view/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"index.php/download-view/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"index.php/download-view/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"index.php/download-view/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:69:"index.php/dslc_downloads_cat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?dslc_downloads_cats=$matches[1]&feed=$matches[2]";s:64:"index.php/dslc_downloads_cat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?dslc_downloads_cats=$matches[1]&feed=$matches[2]";s:45:"index.php/dslc_downloads_cat/([^/]+)/embed/?$";s:52:"index.php?dslc_downloads_cats=$matches[1]&embed=true";s:57:"index.php/dslc_downloads_cat/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?dslc_downloads_cats=$matches[1]&paged=$matches[2]";s:39:"index.php/dslc_downloads_cat/([^/]+)/?$";s:41:"index.php?dslc_downloads_cats=$matches[1]";s:69:"index.php/dslc_downloads_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?dslc_downloads_tags=$matches[1]&feed=$matches[2]";s:64:"index.php/dslc_downloads_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?dslc_downloads_tags=$matches[1]&feed=$matches[2]";s:45:"index.php/dslc_downloads_tag/([^/]+)/embed/?$";s:52:"index.php?dslc_downloads_tags=$matches[1]&embed=true";s:57:"index.php/dslc_downloads_tag/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?dslc_downloads_tags=$matches[1]&paged=$matches[2]";s:39:"index.php/dslc_downloads_tag/([^/]+)/?$";s:41:"index.php?dslc_downloads_tags=$matches[1]";s:50:"index.php/gallery-view/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:60:"index.php/gallery-view/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:80:"index.php/gallery-view/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"index.php/gallery-view/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"index.php/gallery-view/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:56:"index.php/gallery-view/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"index.php/gallery-view/([^/]+)/embed/?$";s:47:"index.php?dslc_galleries=$matches[1]&embed=true";s:43:"index.php/gallery-view/([^/]+)/trackback/?$";s:41:"index.php?dslc_galleries=$matches[1]&tb=1";s:51:"index.php/gallery-view/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?dslc_galleries=$matches[1]&paged=$matches[2]";s:58:"index.php/gallery-view/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?dslc_galleries=$matches[1]&cpage=$matches[2]";s:47:"index.php/gallery-view/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?dslc_galleries=$matches[1]&page=$matches[2]";s:39:"index.php/gallery-view/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"index.php/gallery-view/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"index.php/gallery-view/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"index.php/gallery-view/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"index.php/gallery-view/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"index.php/gallery-view/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:70:"index.php/dslc_galleries_cats/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?dslc_galleries_cats=$matches[1]&feed=$matches[2]";s:65:"index.php/dslc_galleries_cats/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?dslc_galleries_cats=$matches[1]&feed=$matches[2]";s:46:"index.php/dslc_galleries_cats/([^/]+)/embed/?$";s:52:"index.php?dslc_galleries_cats=$matches[1]&embed=true";s:58:"index.php/dslc_galleries_cats/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?dslc_galleries_cats=$matches[1]&paged=$matches[2]";s:40:"index.php/dslc_galleries_cats/([^/]+)/?$";s:41:"index.php?dslc_galleries_cats=$matches[1]";s:50:"index.php/partner-view/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:60:"index.php/partner-view/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:80:"index.php/partner-view/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"index.php/partner-view/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"index.php/partner-view/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:56:"index.php/partner-view/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"index.php/partner-view/([^/]+)/embed/?$";s:46:"index.php?dslc_partners=$matches[1]&embed=true";s:43:"index.php/partner-view/([^/]+)/trackback/?$";s:40:"index.php?dslc_partners=$matches[1]&tb=1";s:51:"index.php/partner-view/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?dslc_partners=$matches[1]&paged=$matches[2]";s:58:"index.php/partner-view/([^/]+)/comment-page-([0-9]{1,})/?$";s:53:"index.php?dslc_partners=$matches[1]&cpage=$matches[2]";s:47:"index.php/partner-view/([^/]+)(?:/([0-9]+))?/?$";s:52:"index.php?dslc_partners=$matches[1]&page=$matches[2]";s:39:"index.php/partner-view/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"index.php/partner-view/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"index.php/partner-view/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"index.php/partner-view/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"index.php/partner-view/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"index.php/partner-view/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:69:"index.php/dslc_partners_cats/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?dslc_partners_cats=$matches[1]&feed=$matches[2]";s:64:"index.php/dslc_partners_cats/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?dslc_partners_cats=$matches[1]&feed=$matches[2]";s:45:"index.php/dslc_partners_cats/([^/]+)/embed/?$";s:51:"index.php?dslc_partners_cats=$matches[1]&embed=true";s:57:"index.php/dslc_partners_cats/([^/]+)/page/?([0-9]{1,})/?$";s:58:"index.php?dslc_partners_cats=$matches[1]&paged=$matches[2]";s:39:"index.php/dslc_partners_cats/([^/]+)/?$";s:40:"index.php?dslc_partners_cats=$matches[1]";s:50:"index.php/project-view/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:60:"index.php/project-view/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:80:"index.php/project-view/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"index.php/project-view/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"index.php/project-view/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:56:"index.php/project-view/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"index.php/project-view/([^/]+)/embed/?$";s:46:"index.php?dslc_projects=$matches[1]&embed=true";s:43:"index.php/project-view/([^/]+)/trackback/?$";s:40:"index.php?dslc_projects=$matches[1]&tb=1";s:51:"index.php/project-view/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?dslc_projects=$matches[1]&paged=$matches[2]";s:58:"index.php/project-view/([^/]+)/comment-page-([0-9]{1,})/?$";s:53:"index.php?dslc_projects=$matches[1]&cpage=$matches[2]";s:47:"index.php/project-view/([^/]+)(?:/([0-9]+))?/?$";s:52:"index.php?dslc_projects=$matches[1]&page=$matches[2]";s:39:"index.php/project-view/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"index.php/project-view/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"index.php/project-view/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"index.php/project-view/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"index.php/project-view/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"index.php/project-view/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:69:"index.php/dslc_projects_cats/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?dslc_projects_cats=$matches[1]&feed=$matches[2]";s:64:"index.php/dslc_projects_cats/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?dslc_projects_cats=$matches[1]&feed=$matches[2]";s:45:"index.php/dslc_projects_cats/([^/]+)/embed/?$";s:51:"index.php?dslc_projects_cats=$matches[1]&embed=true";s:57:"index.php/dslc_projects_cats/([^/]+)/page/?([0-9]{1,})/?$";s:58:"index.php?dslc_projects_cats=$matches[1]&paged=$matches[2]";s:39:"index.php/dslc_projects_cats/([^/]+)/?$";s:40:"index.php?dslc_projects_cats=$matches[1]";s:48:"index.php/staff-view/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:58:"index.php/staff-view/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:78:"index.php/staff-view/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"index.php/staff-view/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"index.php/staff-view/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:54:"index.php/staff-view/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"index.php/staff-view/([^/]+)/embed/?$";s:43:"index.php?dslc_staff=$matches[1]&embed=true";s:41:"index.php/staff-view/([^/]+)/trackback/?$";s:37:"index.php?dslc_staff=$matches[1]&tb=1";s:49:"index.php/staff-view/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?dslc_staff=$matches[1]&paged=$matches[2]";s:56:"index.php/staff-view/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?dslc_staff=$matches[1]&cpage=$matches[2]";s:45:"index.php/staff-view/([^/]+)(?:/([0-9]+))?/?$";s:49:"index.php?dslc_staff=$matches[1]&page=$matches[2]";s:37:"index.php/staff-view/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/staff-view/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/staff-view/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/staff-view/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/staff-view/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/staff-view/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:66:"index.php/dslc_staff_cats/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?dslc_staff_cats=$matches[1]&feed=$matches[2]";s:61:"index.php/dslc_staff_cats/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?dslc_staff_cats=$matches[1]&feed=$matches[2]";s:42:"index.php/dslc_staff_cats/([^/]+)/embed/?$";s:48:"index.php?dslc_staff_cats=$matches[1]&embed=true";s:54:"index.php/dslc_staff_cats/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?dslc_staff_cats=$matches[1]&paged=$matches[2]";s:36:"index.php/dslc_staff_cats/([^/]+)/?$";s:37:"index.php?dslc_staff_cats=$matches[1]";s:54:"index.php/testimonial-view/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:64:"index.php/testimonial-view/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:84:"index.php/testimonial-view/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:79:"index.php/testimonial-view/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:79:"index.php/testimonial-view/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:60:"index.php/testimonial-view/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:43:"index.php/testimonial-view/([^/]+)/embed/?$";s:50:"index.php?dslc_testimonials=$matches[1]&embed=true";s:47:"index.php/testimonial-view/([^/]+)/trackback/?$";s:44:"index.php?dslc_testimonials=$matches[1]&tb=1";s:55:"index.php/testimonial-view/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?dslc_testimonials=$matches[1]&paged=$matches[2]";s:62:"index.php/testimonial-view/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?dslc_testimonials=$matches[1]&cpage=$matches[2]";s:51:"index.php/testimonial-view/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?dslc_testimonials=$matches[1]&page=$matches[2]";s:43:"index.php/testimonial-view/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"index.php/testimonial-view/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"index.php/testimonial-view/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"index.php/testimonial-view/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"index.php/testimonial-view/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"index.php/testimonial-view/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:73:"index.php/dslc_testimonials_cats/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:61:"index.php?dslc_testimonials_cats=$matches[1]&feed=$matches[2]";s:68:"index.php/dslc_testimonials_cats/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:61:"index.php?dslc_testimonials_cats=$matches[1]&feed=$matches[2]";s:49:"index.php/dslc_testimonials_cats/([^/]+)/embed/?$";s:55:"index.php?dslc_testimonials_cats=$matches[1]&embed=true";s:61:"index.php/dslc_testimonials_cats/([^/]+)/page/?([0-9]{1,})/?$";s:62:"index.php?dslc_testimonials_cats=$matches[1]&paged=$matches[2]";s:43:"index.php/dslc_testimonials_cats/([^/]+)/?$";s:44:"index.php?dslc_testimonials_cats=$matches[1]";s:48:"index.php/pf_contact/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:58:"index.php/pf_contact/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:78:"index.php/pf_contact/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"index.php/pf_contact/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"index.php/pf_contact/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:54:"index.php/pf_contact/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"index.php/pf_contact/([^/]+)/embed/?$";s:43:"index.php?pf_contact=$matches[1]&embed=true";s:41:"index.php/pf_contact/([^/]+)/trackback/?$";s:37:"index.php?pf_contact=$matches[1]&tb=1";s:61:"index.php/pf_contact/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?pf_contact=$matches[1]&feed=$matches[2]";s:56:"index.php/pf_contact/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?pf_contact=$matches[1]&feed=$matches[2]";s:49:"index.php/pf_contact/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?pf_contact=$matches[1]&paged=$matches[2]";s:56:"index.php/pf_contact/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?pf_contact=$matches[1]&cpage=$matches[2]";s:45:"index.php/pf_contact/([^/]+)(?:/([0-9]+))?/?$";s:49:"index.php?pf_contact=$matches[1]&page=$matches[2]";s:37:"index.php/pf_contact/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/pf_contact/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/pf_contact/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/pf_contact/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/pf_contact/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/pf_contact/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:52:"index.php/dslc_templates/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:62:"index.php/dslc_templates/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:82:"index.php/dslc_templates/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:77:"index.php/dslc_templates/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:77:"index.php/dslc_templates/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:58:"index.php/dslc_templates/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:41:"index.php/dslc_templates/([^/]+)/embed/?$";s:47:"index.php?dslc_templates=$matches[1]&embed=true";s:45:"index.php/dslc_templates/([^/]+)/trackback/?$";s:41:"index.php?dslc_templates=$matches[1]&tb=1";s:53:"index.php/dslc_templates/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?dslc_templates=$matches[1]&paged=$matches[2]";s:60:"index.php/dslc_templates/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?dslc_templates=$matches[1]&cpage=$matches[2]";s:49:"index.php/dslc_templates/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?dslc_templates=$matches[1]&page=$matches[2]";s:41:"index.php/dslc_templates/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"index.php/dslc_templates/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"index.php/dslc_templates/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"index.php/dslc_templates/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"index.php/dslc_templates/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"index.php/dslc_templates/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:37:"index.php/comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:47:"live-composer-page-builder/ds-live-composer.php";i:1;s:23:"ml-slider/ml-slider.php";i:2;s:29:"pirate-forms/pirate-forms.php";i:3;s:39:"portfolio-gallery/portfolio-gallery.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:75:"C:\\wamp\\www\\signsofbroward/wp-content/themes/innovation-lite/front-page.php";i:2;s:70:"C:\\wamp\\www\\signsofbroward/wp-content/themes/innovation-lite/style.css";i:3;s:0:"";}', 'no'),
(40, 'template', 'innovation-lite', 'yes'),
(41, 'stylesheet', 'innovation-lite', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'sobuser_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:19:"metaslider_widget-3";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}s:9:"sidebar-6";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1490495305;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1490496185;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1490497454;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1490410182;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(109, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"4.7.2";s:12:"last_checked";i:1490455590;}', 'no'),
(113, '_site_transient_update_themes', 'O:8:"stdClass":2:{s:12:"last_checked";i:1490455611;s:7:"checked";a:10:{s:13:"education-hub";s:5:"1.9.4";s:15:"innovation-lite";s:3:"1.9";s:13:"interior-lite";s:3:"2.4";s:5:"resto";s:5:"1.0.2";s:10:"skt-coffee";s:3:"2.0";s:8:"snowfall";s:3:"1.3";s:11:"travel-lite";s:3:"2.1";s:13:"twentyfifteen";s:3:"1.7";s:15:"twentyseventeen";s:3:"1.1";s:13:"twentysixteen";s:3:"1.3";}}', 'no'),
(114, '_transient_timeout_plugin_slugs', '1490496410', 'no'),
(115, '_transient_plugin_slugs', 'a:6:{i:0;s:19:"akismet/akismet.php";i:1;s:29:"pirate-forms/pirate-forms.php";i:2;s:9:"hello.php";i:3;s:23:"ml-slider/ml-slider.php";i:4;s:47:"live-composer-page-builder/ds-live-composer.php";i:5;s:39:"portfolio-gallery/portfolio-gallery.php";}', 'no'),
(118, 'can_compress_scripts', '1', 'no'),
(122, 'portfolio_gallery_admin_image_hover_preview', 'on', 'yes'),
(123, 'portfolio_gallery_version', '2.2.0', 'yes'),
(124, 'recently_activated', 'a:0:{}', 'yes'),
(125, 'widget_portfolio_gallery_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(128, 'widget_pirate_forms_contact_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(129, 'pirate_forms_settings_array', 'a:32:{s:20:"pirateformsopt_email";s:28:"wordpress@signsofbroward.com";s:31:"pirateformsopt_email_recipients";s:23:"inmobile.cuba@gmail.com";s:20:"pirateformsopt_store";s:3:"yes";s:20:"pirateformsopt_nonce";s:3:"yes";s:28:"pirateformsopt_confirm_email";s:0:"";s:28:"pirateformsopt_thank_you_url";s:0:"";s:6:"action";s:4:"save";s:12:"proper_nonce";s:10:"9b2883f677";s:25:"pirateformsopt_name_field";s:3:"req";s:26:"pirateformsopt_email_field";s:3:"req";s:28:"pirateformsopt_subject_field";s:3:"req";s:28:"pirateformsopt_message_field";s:3:"req";s:32:"pirateformsopt_recaptcha_sitekey";s:0:"";s:34:"pirateformsopt_recaptcha_secretkey";s:0:"";s:31:"pirateformsopt_attachment_field";s:3:"yes";s:25:"pirateformsopt_label_name";s:9:"Your Name";s:26:"pirateformsopt_label_email";s:10:"Your Email";s:28:"pirateformsopt_label_subject";s:7:"Subject";s:28:"pirateformsopt_label_message";s:12:"Your message";s:31:"pirateformsopt_label_submit_btn";s:12:"Send Message";s:29:"pirateformsopt_label_err_name";s:15:"Enter your name";s:30:"pirateformsopt_label_err_email";s:19:"Enter a valid email";s:32:"pirateformsopt_label_err_subject";s:22:"Please enter a subject";s:35:"pirateformsopt_label_err_no_content";s:30:"Enter your question or comment";s:27:"pirateformsopt_label_submit";s:41:"Thanks, your email was sent successfully!";s:24:"pirateformsopt_smtp_host";s:0:"";s:24:"pirateformsopt_smtp_port";s:0:"";s:38:"pirateformsopt_use_smtp_authentication";s:3:"yes";s:28:"pirateformsopt_smtp_username";s:0:"";s:28:"pirateformsopt_smtp_password";s:0:"";s:30:"pirateformsopt_recaptcha_field";s:0:"";s:23:"pirateformsopt_use_smtp";s:0:"";}', 'yes'),
(132, 'dslc_version', 'a:1:{i:0;s:5:"1.2.5";}', 'yes'),
(134, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1490455599;s:8:"response";N;s:12:"translations";N;s:9:"no_update";N;}', 'no'),
(135, 'widget_metaslider_widget', 'a:2:{i:3;a:2:{s:9:"slider_id";s:2:"27";s:5:"title";s:5:"Works";}s:12:"_multiwidget";i:1;}', 'yes'),
(136, 'current_theme', 'Innovation Lite', 'yes'),
(137, 'theme_mods_innovation-lite', 'a:2:{i:0;b:0;s:18:"custom_css_post_id";i:-1;}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(141, 'innovation', 'a:22:{s:3:"sl1";s:34:"http://facebook.com/adriel.alfaro1";s:3:"sl2";s:0:"";s:3:"sl3";s:0:"";s:3:"sl4";s:0:"";s:3:"sl5";s:0:"";s:14:"featured-link1";s:45:"http://signsofbroward.com/index.php/services/";s:15:"featured-title1";s:8:"Services";s:21:"featured-description1";s:123:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua";s:15:"featured-title2";s:5:"Quote";s:21:"featured-description2";s:123:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua";s:15:"featured-title3";s:9:"Portfolio";s:21:"featured-description3";s:123:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua";s:15:"featured-title4";s:5:"About";s:21:"featured-description4";s:123:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua";s:21:"portfolioboxes-image4";s:74:"http://signsofbroward.com/wp-content/themes/innovation-lite/images/pf4.png";s:21:"portfolioboxes-title4";s:0:"";s:27:"portfolioboxes-description4";s:0:"";s:13:"heading_text1";s:62:"Sings of broward is a company you can use for bla blablablabla";s:12:"heading_des1";s:89:"It is Amazing!  &lt;em&gt;Over 60 million people&lt;/em&gt; have chosen Sings of broward.";s:14:"featured-link2";s:42:"http://signsofbroward.com/index.php/quote/";s:14:"featured-link3";s:46:"http://signsofbroward.com/index.php/portfolio/";s:14:"featured-link4";s:42:"http://signsofbroward.com/index.php/about/";}', 'yes'),
(143, 'dslc_editor_messages', 'a:2:{s:8:"messages";a:5:{s:9:"message_1";a:4:{s:4:"text";s:139:"Our WooCommerce integration add-on is almost ready for realese. Price growths with every update. <strong>Buy it today to save 30%!</strong>";s:4:"link";s:147:"https://livecomposerplugin.com/downloads/woocommerce-page-builder/?utm_source=editing-sreen&utm_medium=editor-messages&utm_campaign=woo-integration";s:4:"icon";s:23:"dslc-icon-shopping-cart";s:5:"color";s:0:"";}s:9:"message_2";a:4:{s:4:"text";s:108:"Extend the page builder with our official extensions bundle. Save $10 with <strong>10USDOFF</strong> coupon.";s:4:"link";s:147:"https://livecomposerplugin.com/downloads/bundle-buy-all-extensions/?utm_source=editing-sreen&utm_medium=editor-messages&utm_campaign=all-extensions";s:4:"icon";s:15:"dslc-icon-cubes";s:5:"color";s:0:"";}s:9:"message_3";a:4:{s:4:"text";s:116:"Live Composer developers recommend WP Engine for their best-in-class architecture to keep WordPress fast and secure.";s:4:"link";s:66:"http://www.shareasale.com/r.cfm?B=779590&U=871461&M=41388&urllink=";s:4:"icon";s:18:"dslc-icon-codepen ";s:5:"color";s:0:"";}s:9:"message_4";a:4:{s:4:"text";s:126:"Do you need high-quality website content fast? Get $20 free joining bonus at Contentmart.com USE CODE: <strong>JOIN20</strong>";s:4:"link";s:66:"http://www.shareasale.com/r.cfm?B=965751&U=871461&M=65777&urllink=";s:4:"icon";s:16:"dslc-icon-pencil";s:5:"color";s:0:"";}s:9:"message_5";a:4:{s:4:"text";s:143:"LinkFool! We build natural links, each month, to help our customers grow their SEO rankings without fear of being banned by the search engines.";s:4:"link";s:66:"http://www.shareasale.com/r.cfm?B=381388&U=871461&M=35654&urllink=";s:4:"icon";s:14:"dslc-icon-link";s:5:"color";s:0:"";}}s:8:"can_hide";i:0;}', 'yes'),
(144, 'theme_mods_zerif-lite', 'a:5:{s:28:"zerif_contactus_button_label";s:12:"Send Message";s:21:"zerif_contactus_email";s:23:"inmobile.cuba@gmail.com";s:30:"zerif_contactus_recaptcha_show";i:1;s:23:"zerif_contactus_sitekey";s:0:"";s:25:"zerif_contactus_secretkey";s:0:"";}', 'yes'),
(151, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1490498801', 'no'),
(152, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> A feed could not be found at http://wordpress.org/news/feed/. A feed with an invalid mime type may fall victim to this error, or SimplePie was unable to auto-discover it.. Use force_feed() if you are certain this URL is a real feed.</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: No working transports found</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(153, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}', 'no'),
(154, 'ml-slider_children', 'a:0:{}', 'yes'),
(155, '_site_transient_timeout_theme_roots', '1490459894', 'no'),
(156, '_site_transient_theme_roots', 'a:10:{s:13:"education-hub";s:7:"/themes";s:15:"innovation-lite";s:7:"/themes";s:13:"interior-lite";s:7:"/themes";s:5:"resto";s:7:"/themes";s:10:"skt-coffee";s:7:"/themes";s:8:"snowfall";s:7:"/themes";s:11:"travel-lite";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobpostmeta`
--

CREATE TABLE IF NOT EXISTS `sobpostmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=67 ;

--
-- Volcado de datos para la tabla `sobpostmeta`
--

INSERT INTO `sobpostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(10, 8, '_wp_trash_meta_status', 'publish'),
(11, 8, '_wp_trash_meta_time', '1490410381'),
(12, 9, '_wp_trash_meta_status', 'publish'),
(13, 9, '_wp_trash_meta_time', '1490410615'),
(14, 10, '_wp_trash_meta_status', 'publish'),
(15, 10, '_wp_trash_meta_time', '1490410687'),
(16, 11, '_wp_trash_meta_status', 'publish'),
(17, 11, '_wp_trash_meta_time', '1490410811'),
(18, 12, '_wp_trash_meta_status', 'publish'),
(19, 12, '_wp_trash_meta_time', '1490410874'),
(20, 13, '_wp_trash_meta_status', 'publish'),
(21, 13, '_wp_trash_meta_time', '1490410938'),
(22, 14, '_wp_trash_meta_status', 'publish'),
(23, 14, '_wp_trash_meta_time', '1490411016'),
(24, 15, '_edit_last', '1'),
(25, 15, '_edit_lock', '1490411465:1'),
(26, 16, '_wp_attached_file', '2017/03/cubaidea-img-58881598ad69f.jpeg'),
(27, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:550;s:4:"file";s:39:"2017/03/cubaidea-img-58881598ad69f.jpeg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"cubaidea-img-58881598ad69f-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"cubaidea-img-58881598ad69f-300x206.jpeg";s:5:"width";i:300;s:6:"height";i:206;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:39:"cubaidea-img-58881598ad69f-768x528.jpeg";s:5:"width";i:768;s:6:"height";i:528;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:39:"cubaidea-img-58881598ad69f-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(28, 15, 'dslc_code', '[{"element_type":"row","columns_spacing":"spacing","custom_class":"","show_on":"desktop tablet phone","section_instance_id":"f09ef31e807","custom_id":"","type":"wrapper","bg_color":"","bg_image_thumb":"disabled","bg_image":"","bg_image_repeat":"repeat","bg_image_position":"left top","bg_image_attachment":"scroll","bg_image_size":"auto","bg_video":"","bg_video_overlay_color":"#000000","bg_video_overlay_opacity":"0","border_color":"","border_width":"0","border_style":"solid","border":"top right bottom left","margin_h":"0","margin_b":"0","padding":"80","padding_h":"0","content":[{"element_type":"module_area","last":"yes","first":"no","size":"12","content":[{"css_show_on":"desktop tablet phone","custom_text":"This is just some placeholder text. Click to edit it.","image":"16","link_type":"none","custom_text_state":"disabled","css_align":"center","css_border_width":"4","css_border_trbl":"top right bottom left","css_border_radius":"0","css_margin_top":"0","css_margin_bottom":"0","css_padding_vertical":"0","css_padding_horizontal":"0","css_force_width":"auto","css_ct_text_align":"center","css_ct_font_size":"13","css_ct_font_weight":"400","css_ct_line_height":"22","css_ct_margin_top":"20","css_res_t":"disabled","css_res_t_align":"center","css_res_t_margin_bottom":"0","css_res_t_padding_vertical":"0","css_res_t_padding_horizontal":"0","css_res_t_ct_font_size":"13","css_res_t_ct_line_height":"22","css_res_t_ct_margin_top":"20","css_res_p":"disabled","css_res_p__align":"center","css_res_p_margin_bottom":"0","css_res_p_padding_vertical":"0","css_res_p_padding_horizontal":"0","css_res_p_ct_font_size":"13","css_res_p_ct_line_height":"22","css_res_p_ct_margin_top":"20","css_anim":"none","css_anim_delay":"0","css_anim_duration":"650","css_anim_easing":"ease","css_load_preset":"none","module_instance_id":"47c9851ed0b","post_id":15,"dslc_m_size":"12","module_id":"DSLC_Image","element_type":"module","last":"yes"},{"css_show_on":"desktop tablet phone","content":"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","css_custom":"enabled","css_min_height":"0","css_margin_top":"26","css_margin_right":"0","css_margin_bottom":"0","css_margin_left":"0","css_main_padding_vertical":"0","css_main_padding_horizontal":"0","css_main_bg_img_repeat":"repeat","css_main_bg_img_attch":"scroll","css_main_bg_img_pos":"top left","css_main_border_width":"0","css_main_border_trbl":"top right bottom left","css_main_border_radius_top":"0","css_main_border_radius_bottom":"0","css_main_font_size":"20","css_main_font_weight":"400","css_main_font_family":"Open Sans","css_main_font_style":"normal","css_main_letter_spacing":"0","css_main_line_height":"22","css_main_margin_bottom":"25","css_main_text_align":"justify","css_h1_font_size":"25","css_h1_font_weight":"400","css_h1_font_family":"Open Sans","css_h1_font_style":"normal","css_h1_letter_spacing":"0","css_h1_line_height":"35","css_h1_margin_bottom":"15","css_h1_padding_vertical":"0","css_h1_padding_horizontal":"0","css_h1_text_align":"left","css_h1_border_width":"0","css_h1_border_trbl":"top right bottom left","css_h1_border_radius_top":"0","css_h1_border_radius_bottom":"0","css_h2_font_size":"23","css_h2_font_weight":"400","css_h2_font_family":"Open Sans","css_h2_font_style":"normal","css_h2_letter_spacing":"0","css_h2_line_height":"33","css_h2_margin_bottom":"15","css_h2_padding_vertical":"0","css_h2_padding_horizontal":"0","css_h2_text_align":"left","css_h2_border_width":"0","css_h2_border_trbl":"top right bottom left","css_h2_border_radius_top":"0","css_h2_border_radius_bottom":"0","css_h3_font_size":"21","css_h3_font_weight":"400","css_h3_font_family":"Open Sans","css_h3_font_style":"normal","css_h3_letter_spacing":"0","css_h3_line_height":"31","css_h3_margin_bottom":"15","css_h3_padding_vertical":"0","css_h3_padding_horizontal":"0","css_h3_text_align":"left","css_h3_border_width":"0","css_h3_border_trbl":"top right bottom left","css_h3_border_radius_top":"0","css_h3_border_radius_bottom":"0","css_h4_font_size":"19","css_h4_font_weight":"400","css_h4_font_family":"Open Sans","css_h4_font_style":"normal","css_h4_letter_spacing":"0","css_h4_line_height":"29","css_h4_margin_bottom":"15","css_h4_padding_vertical":"0","css_h4_padding_horizontal":"0","css_h4_text_align":"left","css_h4_border_width":"0","css_h4_border_trbl":"top right bottom left","css_h4_border_radius_top":"0","css_h4_border_radius_bottom":"0","css_h5_font_size":"17","css_h5_font_weight":"400","css_h5_font_family":"Open Sans","css_h5_font_style":"normal","css_h5_letter_spacing":"0","css_h5_line_height":"27","css_h5_margin_bottom":"15","css_h5_padding_vertical":"0","css_h5_padding_horizontal":"0","css_h5_text_align":"left","css_h5_border_width":"0","css_h5_border_trbl":"top right bottom left","css_h5_border_radius_top":"0","css_h5_border_radius_bottom":"0","css_h6_font_size":"15","css_h6_font_weight":"400","css_h6_font_family":"Open Sans","css_h6_font_style":"normal","css_h6_letter_spacing":"0","css_h6_line_height":"25","css_h6_margin_bottom":"15","css_h6_padding_vertical":"0","css_h6_padding_horizontal":"0","css_h6_text_align":"left","css_h6_border_width":"0","css_h6_border_trbl":"top right bottom left","css_h6_border_radius_top":"0","css_h6_border_radius_bottom":"0","css_li_font_size":"13","css_li_font_weight":"400","css_li_font_family":"Open Sans","css_li_line_height":"22","css_ul_margin_bottom":"25","css_ul_margin_left":"25","css_ul_style":"disc","css_ol_style":"decimal","css_ul_li_margin_bottom":"10","css_li_border_width":"0","css_li_border_trbl":"top right bottom left","css_li_border_radius_top":"0","css_li_border_radius_bottom":"0","css_li_padding_vertical":"0","css_li_padding_horizontal":"0","css_inputs_color":"#4d4d4d","css_inputs_font_size":"13","css_inputs_font_weight":"500","css_inputs_font_family":"Open Sans","css_inputs_line_height":"23","css_inputs_margin_bottom":"15","css_inputs_padding_vertical":"10","css_inputs_padding_horizontal":"15","css_inputs_bg_color":"#fff","css_inputs_border_color":"#ddd","css_inputs_border_width":"1","css_inputs_border_trbl":"top right bottom left","css_inputs_border_radius":"0","css_blockquote_font_size":"13","css_blockquote_font_weight":"400","css_blockquote_font_family":"Open Sans","css_blockquote_line_height":"22","css_blockquote_margin_bottom":"0","css_blockquote_margin_left":"0","css_blockquote_padding_vertical":"0","css_blockquote_padding_horizontal":"0","css_blockquote_text_align":"left","css_blockquote_bg_img_repeat":"repeat","css_blockquote_bg_img_attch":"scroll","css_blockquote_bg_img_pos":"top left","css_blockquote_border_width":"0","css_blockquote_border_trbl":"top right bottom left","css_blockquote_border_radius_top":"0","css_blockquote_border_radius_bottom":"0","css_button_bg_color":"#5890e5","css_button_bg_color_hover":"#5890e5","css_button_border_color":"#5890e5","css_button_border_color_hover":"#5890e5","css_button_border_width":"0","css_button_border_trbl":"top right bottom left","css_button_border_radius":"3","css_button_color":"#fff","css_button_color_hover":"#fff","css_button_font_size":"13","css_button_font_weight":"500","css_button_font_family":"Open Sans","css_button_line_height":"13","css_button_padding_vertical":"10","css_button_padding_horizontal":"15","css_res_t":"disabled","css_res_t_margin_bottom":"0","css_res_t_main_padding_vertical":"0","css_res_t_main_padding_horizontal":"0","css_res_t_main_font_size":"13","css_res_t_main_line_height":"22","css_res_t_main_text_align":"left","css_res_t_h1_font_size":"13","css_res_t_h1_line_height":"13","css_res_t_h1_margin_bottom":"15","css_res_t_h1_text_align":"left","css_res_t_h2_font_size":"13","css_res_t_h2_line_height":"13","css_res_t_h2_margin_bottom":"15","css_res_t_h2_text_align":"left","css_res_t_h3_font_size":"13","css_res_t_h3_line_height":"13","css_res_t_h3_margin_bottom":"15","css_res_t_h3_text_align":"left","css_res_t_h4_font_size":"13","css_res_t_h4_line_height":"13","css_res_t_h4_margin_bottom":"15","css_res_t_h4_text_align":"left","css_res_t_h5_font_size":"13","css_res_t_h5_line_height":"13","css_res_t_h5_margin_bottom":"15","css_res_t_h5_text_align":"left","css_res_t_h6_font_size":"13","css_res_t_h6_line_height":"13","css_res_t_h6_margin_bottom":"15","css_res_t_h6_text_align":"left","css_res_t_li_font_size":"13","css_res_t_li_line_height":"22","css_res_t_ul_margin_bottom":"25","css_res_t_ul_margin_left":"25","css_res_t_ul_li_margin_bottom":"10","css_res_t_li_padding_vertical":"0","css_res_t_li_padding_horizontal":"0","css_res_t_blockquote_font_size":"13","css_res_t_blockquote_line_height":"22","css_res_t_blockquote_margin_bottom":"0","css_res_t_blockquote_margin_left":"0","css_res_t_blockquote_padding_vertical":"0","css_res_t_blockquote_padding_horizontal":"0","css_res_t_blockquote_text_align":"left","css_res_p":"disabled","css_res_ph_margin_bottom":"0","css_res_ph_main_padding_vertical":"0","css_res_ph_main_padding_horizontal":"0","css_res_ph_main_font_size":"13","css_res_ph_main_line_height":"22","css_res_p_main_text_align":"left","css_res_ph_h1_font_size":"13","css_res_ph_h1_line_height":"13","css_res_ph_h1_margin_bottom":"15","css_res_p_h1_text_align":"left","css_res_ph_h2_font_size":"13","css_res_ph_h2_line_height":"13","css_res_p_h2_margin_bottom":"15","css_res_p_h2_text_align":"left","css_res_ph_h3_font_size":"13","css_res_ph_h3_line_height":"13","css_res_p_h3_margin_bottom":"15","css_res_p_h3_text_align":"left","css_res_ph_h4_font_size":"13","css_res_ph_h4_line_height":"13","css_res_p_h4_margin_bottom":"15","css_res_p_h4_text_align":"left","css_res_ph_h5_font_size":"13","css_res_ph_h5_line_height":"13","css_res_p_h5_margin_bottom":"15","css_res_p_h5_text_align":"left","css_res_ph_h6_font_size":"13","css_res_ph_h6_line_height":"13","css_res_p_h6_margin_bottom":"15","css_res_p_h6_text_align":"left","css_res_p_li_font_size":"13","css_res_p_li_line_height":"22","css_res_p_ul_margin_bottom":"25","css_res_p_ul_margin_left":"25","css_res_p_ul_li_margin_bottom":"10","css_res_p_li_padding_vertical":"0","css_res_p_li_padding_horizontal":"0","css_res_p_blockquote_font_size":"13","css_res_p_blockquote_line_height":"22","css_res_p_blockquote_margin_bottom":"0","css_res_p_blockquote_margin_left":"0","css_res_p_blockquote_padding_vertical":"0","css_res_p_blockquote_padding_horizontal":"0","css_res_p_blockquote_text_align":"left","css_anim":"none","css_anim_delay":"0","css_anim_duration":"650","css_anim_easing":"ease","css_load_preset":"none","module_instance_id":"7a004338f65","post_id":15,"dslc_m_size":"12","module_id":"DSLC_Text_Simple","element_type":"module","last":"yes"}]}]}]'),
(29, 15, 'dslc_content_for_search', '<img src="http://signsofbroward.com/wp-content/uploads/2017/03/cubaidea-img-58881598ad69f.jpeg" alt="" title="">\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n'),
(30, 15, '_wp_page_template', 'default'),
(31, 18, '_edit_last', '1'),
(32, 18, '_edit_lock', '1490411558:1'),
(33, 18, '_wp_page_template', 'default'),
(34, 21, '_edit_last', '1'),
(35, 21, '_wp_page_template', 'default'),
(36, 21, '_edit_lock', '1490411799:1'),
(37, 23, '_edit_last', '1'),
(38, 23, '_edit_lock', '1490411849:1'),
(39, 23, '_wp_page_template', 'default'),
(40, 25, '_wp_trash_meta_status', 'publish'),
(41, 25, '_wp_trash_meta_time', '1490412079'),
(42, 26, '_wp_trash_meta_status', 'publish'),
(43, 26, '_wp_trash_meta_time', '1490412128'),
(44, 27, 'ml-slider_settings', 'a:35:{s:4:"type";s:4:"flex";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:3:"700";s:6:"height";s:3:"300";s:3:"spw";i:7;s:3:"sph";i:5;s:5:"delay";s:4:"3000";s:6:"sDelay";i:30;s:7:"opacity";d:0.6999999999999999555910790149937383830547332763671875;s:10:"titleSpeed";i:500;s:6:"effect";s:4:"fade";s:10:"navigation";s:4:"true";s:5:"links";s:4:"true";s:10:"hoverPause";s:4:"true";s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:3:"600";s:8:"prevText";s:1:"<";s:8:"nextText";s:1:">";s:6:"slices";i:15;s:6:"center";s:5:"false";s:9:"smartCrop";s:4:"true";s:12:"carouselMode";s:4:"true";s:14:"carouselMargin";s:1:"5";s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:9:"fullWidth";s:5:"false";s:10:"noConflict";s:4:"true";s:12:"smoothHeight";s:5:"false";}'),
(45, 16, 'ml-slider_type', 'image'),
(46, 16, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:90:"C:wampwwwsignsofbroward/wp-content/uploads/2017/03/cubaidea-img-58881598ad69f-700x300.jpeg";s:4:"file";s:39:"cubaidea-img-58881598ad69f-700x300.jpeg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}'),
(47, 28, '_wp_attached_file', '2017/03/4.jpg'),
(48, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:300;s:4:"file";s:13:"2017/03/4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"4-300x113.jpg";s:5:"width";i:300;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"4-768x288.jpg";s:5:"width";i:768;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:13:"4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(49, 29, '_wp_attached_file', '2017/03/5.jpg'),
(50, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:300;s:4:"file";s:13:"2017/03/5.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"5-300x113.jpg";s:5:"width";i:300;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"5-768x288.jpg";s:5:"width";i:768;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:13:"5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(51, 30, '_wp_attached_file', '2017/03/6.jpg'),
(52, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:300;s:4:"file";s:13:"2017/03/6.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"6-300x113.jpg";s:5:"width";i:300;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"6-768x288.jpg";s:5:"width";i:768;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:13:"6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(53, 28, 'ml-slider_type', 'image'),
(54, 29, 'ml-slider_type', 'image'),
(55, 30, 'ml-slider_type', 'image'),
(56, 28, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:64:"C:wampwwwsignsofbroward/wp-content/uploads/2017/03/4-700x300.jpg";s:4:"file";s:13:"4-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}'),
(57, 29, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:64:"C:wampwwwsignsofbroward/wp-content/uploads/2017/03/5-700x300.jpg";s:4:"file";s:13:"5-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}'),
(58, 30, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:64:"C:wampwwwsignsofbroward/wp-content/uploads/2017/03/6-700x300.jpg";s:4:"file";s:13:"6-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}'),
(59, 16, 'ml-slider_crop_position', 'center-center'),
(60, 16, '_wp_attachment_image_alt', ''),
(61, 28, 'ml-slider_crop_position', 'center-center'),
(62, 28, '_wp_attachment_image_alt', ''),
(63, 29, 'ml-slider_crop_position', 'center-center'),
(64, 29, '_wp_attachment_image_alt', ''),
(65, 30, 'ml-slider_crop_position', 'center-center'),
(66, 30, '_wp_attachment_image_alt', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobposts`
--

CREATE TABLE IF NOT EXISTS `sobposts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `sobposts`
--

INSERT INTO `sobposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-03-25 02:28:23', '2017-03-25 02:28:23', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-03-25 02:28:23', '2017-03-25 02:28:23', '', 0, 'http://signsofbroward.com/?p=1', 0, 'post', '', 1),
(2, 1, '2017-03-25 02:28:23', '2017-03-25 02:28:23', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://signsofbroward.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-03-25 02:28:23', '2017-03-25 02:28:23', '', 0, 'http://signsofbroward.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-03-25 02:28:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-03-25 02:28:29', '0000-00-00 00:00:00', '', 0, 'http://signsofbroward.com/?p=3', 0, 'post', '', 0),
(8, 1, '2017-03-25 02:53:01', '2017-03-25 02:53:01', '{\n    "innovation[sl1]": {\n        "value": "http://facebook.com/adriel.alfaro1",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[sl2]": {\n        "value": "",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[sl3]": {\n        "value": "",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[sl4]": {\n        "value": "",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[sl5]": {\n        "value": "",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '03a09cf2-7350-4217-8fcf-6e40a5818c22', '', '', '2017-03-25 02:53:01', '2017-03-25 02:53:01', '', 0, 'http://signsofbroward.com/?p=8', 0, 'customize_changeset', '', 0),
(9, 1, '2017-03-25 02:56:55', '2017-03-25 02:56:55', '{\n    "innovation[featured-link1]": {\n        "value": "#",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[featured-title1]": {\n        "value": "Services",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[featured-description1]": {\n        "value": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[featured-title2]": {\n        "value": "Quote",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[featured-description2]": {\n        "value": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[featured-title3]": {\n        "value": "Portfolio",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[featured-description3]": {\n        "value": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[featured-title4]": {\n        "value": "About",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[featured-description4]": {\n        "value": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ab15409f-5432-4c7b-9133-38d783d8fbe2', '', '', '2017-03-25 02:56:55', '2017-03-25 02:56:55', '', 0, 'http://signsofbroward.com/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2017-03-25 02:58:06', '2017-03-25 02:58:06', '{\n    "innovation[portfolioboxes-image4]": {\n        "value": "http://signsofbroward.com/wp-content/themes/innovation-lite/images/pf4.png",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[portfolioboxes-title4]": {\n        "value": "",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[portfolioboxes-description4]": {\n        "value": "",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cb61a675-962a-42d3-bccb-88e923473a01', '', '', '2017-03-25 02:58:06', '2017-03-25 02:58:06', '', 0, 'http://signsofbroward.com/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2017-03-25 03:00:11', '2017-03-25 03:00:11', '{\n    "innovation[heading_text1]": {\n        "value": "Sings of broward is a company you can use for bla blablablabla",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[heading_des1]": {\n        "value": "It is Amazing!  <em>Over 60 million people</em> have chosen Sings of broward.",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f1cd15d2-0170-44af-b1bc-a1688146068a', '', '', '2017-03-25 03:00:11', '2017-03-25 03:00:11', '', 0, 'http://signsofbroward.com/?p=11', 0, 'customize_changeset', '', 0),
(12, 1, '2017-03-25 03:01:14', '2017-03-25 03:01:14', '{\n    "blogdescription": {\n        "value": " bringing brands to life, in Broward and beyond",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ae2e3941-32c6-40ab-82c2-9a3bcf474bde', '', '', '2017-03-25 03:01:14', '2017-03-25 03:01:14', '', 0, 'http://signsofbroward.com/index.php/2017/03/25/ae2e3941-32c6-40ab-82c2-9a3bcf474bde/', 0, 'customize_changeset', '', 0),
(13, 1, '2017-03-25 03:02:17', '2017-03-25 03:02:17', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1\n    },\n    "page_on_front": {\n        "value": "2",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '41da642e-45b8-44cf-9272-b518583d1eec', '', '', '2017-03-25 03:02:17', '2017-03-25 03:02:17', '', 0, 'http://signsofbroward.com/?p=13', 0, 'customize_changeset', '', 0),
(14, 1, '2017-03-25 03:03:36', '2017-03-25 03:03:36', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "metaslider_widget-3"\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_metaslider_widget[3]": {\n        "value": [\n\n        ],\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b89d59f7-542c-43ca-a7b2-ef20d45f5972', '', '', '2017-03-25 03:03:36', '2017-03-25 03:03:36', '', 0, 'http://signsofbroward.com/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2017-03-25 03:04:28', '2017-03-25 03:04:28', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-03-25 03:11:05', '2017-03-25 03:11:05', '', 0, 'http://signsofbroward.com/?page_id=15', 0, 'page', '', 0),
(16, 1, '2017-03-25 03:07:30', '2017-03-25 03:07:30', '', 'cubaidea-img-58881598ad69f', '', 'inherit', 'open', 'closed', '', 'cubaidea-img-58881598ad69f', '', '', '2017-03-25 15:32:04', '2017-03-25 15:32:04', '', 0, 'http://signsofbroward.com/wp-content/uploads/2017/03/cubaidea-img-58881598ad69f.jpeg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2017-03-25 03:11:05', '2017-03-25 03:11:05', '', 'About', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-03-25 03:11:05', '2017-03-25 03:11:05', '', 15, 'http://signsofbroward.com/index.php/2017/03/25/15-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-03-25 03:12:21', '2017-03-25 03:12:21', '<h2><strong>Our work</strong></h2>\r\n[huge_it_portfolio id="1"]', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2017-03-25 03:13:31', '2017-03-25 03:13:31', '', 0, 'http://signsofbroward.com/?page_id=18', 0, 'page', '', 0),
(19, 1, '2017-03-25 03:12:21', '2017-03-25 03:12:21', '<h2><strong>Our work</strong></h2>\r\n[huge_it_portfolio id="1"]', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2017-03-25 03:12:21', '2017-03-25 03:12:21', '', 18, 'http://signsofbroward.com/index.php/2017/03/25/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2017-03-25 03:13:27', '2017-03-25 03:13:27', '<h2><strong>Our work</strong></h2>\n[huge_it_[huge_it_portfolio id="1"]', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '18-autosave-v1', '', '', '2017-03-25 03:13:27', '2017-03-25 03:13:27', '', 18, 'http://signsofbroward.com/index.php/2017/03/25/18-autosave-v1/', 0, 'revision', '', 0),
(21, 1, '2017-03-25 03:18:04', '2017-03-25 03:18:04', '<strong><code>[pirate_forms]</code></strong>', 'Quote', '', 'publish', 'closed', 'closed', '', 'quote', '', '', '2017-03-25 03:18:04', '2017-03-25 03:18:04', '', 0, 'http://signsofbroward.com/?page_id=21', 0, 'page', '', 0),
(22, 1, '2017-03-25 03:18:04', '2017-03-25 03:18:04', '<strong><code>[pirate_forms]</code></strong>', 'Quote', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-03-25 03:18:04', '2017-03-25 03:18:04', '', 21, 'http://signsofbroward.com/index.php/2017/03/25/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-03-25 03:19:34', '2017-03-25 03:19:34', 'Acá ponemos los serviciossss', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2017-03-25 03:19:34', '2017-03-25 03:19:34', '', 0, 'http://signsofbroward.com/?page_id=23', 0, 'page', '', 0),
(24, 1, '2017-03-25 03:19:34', '2017-03-25 03:19:34', 'Acá ponemos los serviciossss', 'Services', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-03-25 03:19:34', '2017-03-25 03:19:34', '', 23, 'http://signsofbroward.com/index.php/2017/03/25/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2017-03-25 03:21:19', '2017-03-25 03:21:19', '{\n    "innovation[featured-link1]": {\n        "value": "http://signsofbroward.com/index.php/services/",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd2c65579-e136-487e-ab07-d8d054760796', '', '', '2017-03-25 03:21:19', '2017-03-25 03:21:19', '', 0, 'http://signsofbroward.com/index.php/2017/03/25/d2c65579-e136-487e-ab07-d8d054760796/', 0, 'customize_changeset', '', 0),
(26, 1, '2017-03-25 03:22:07', '2017-03-25 03:22:07', '{\n    "innovation[featured-link2]": {\n        "value": "http://signsofbroward.com/index.php/quote/",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[featured-link3]": {\n        "value": "http://signsofbroward.com/index.php/portfolio/",\n        "type": "option",\n        "user_id": 1\n    },\n    "innovation[featured-link4]": {\n        "value": "http://signsofbroward.com/index.php/about/",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '10ed7357-b393-420f-836a-441d35478fc8', '', '', '2017-03-25 03:22:07', '2017-03-25 03:22:07', '', 0, 'http://signsofbroward.com/?p=26', 0, 'customize_changeset', '', 0),
(27, 1, '2017-03-25 15:28:51', '2017-03-25 15:28:51', '', 'Sidebar', '', 'publish', 'closed', 'closed', '', 'new-slider', '', '', '2017-03-25 15:32:04', '2017-03-25 15:32:04', '', 0, 'http://signsofbroward.com/?post_type=ml-slider&#038;p=27', 0, 'ml-slider', '', 0),
(28, 1, '2017-03-25 15:30:49', '2017-03-25 15:30:49', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2017-03-25 15:32:04', '2017-03-25 15:32:04', '', 0, 'http://signsofbroward.com/wp-content/uploads/2017/03/4.jpg', 1, 'attachment', 'image/jpeg', 0),
(29, 1, '2017-03-25 15:30:51', '2017-03-25 15:30:51', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2017-03-25 15:32:04', '2017-03-25 15:32:04', '', 0, 'http://signsofbroward.com/wp-content/uploads/2017/03/5.jpg', 2, 'attachment', 'image/jpeg', 0),
(30, 1, '2017-03-25 15:30:54', '2017-03-25 15:30:54', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2017-03-25 15:32:04', '2017-03-25 15:32:04', '', 0, 'http://signsofbroward.com/wp-content/uploads/2017/03/6.jpg', 3, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobtermmeta`
--

CREATE TABLE IF NOT EXISTS `sobtermmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobterms`
--

CREATE TABLE IF NOT EXISTS `sobterms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `sobterms`
--

INSERT INTO `sobterms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, '27', '27', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobterm_relationships`
--

CREATE TABLE IF NOT EXISTS `sobterm_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `sobterm_relationships`
--

INSERT INTO `sobterm_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobterm_taxonomy`
--

CREATE TABLE IF NOT EXISTS `sobterm_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `sobterm_taxonomy`
--

INSERT INTO `sobterm_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'ml-slider', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobusermeta`
--

CREATE TABLE IF NOT EXISTS `sobusermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `sobusermeta`
--

INSERT INTO `sobusermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'inmobile'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'sobcapabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'sobuser_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"3e78bd2d5786bea868830396e652bd6e1f393b70a8c1b098180f453e49475bf6";a:4:{s:10:"expiration";i:1491618507;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1490408907;}}'),
(16, 1, 'sobdashboard_quick_press_last_post_id', '3'),
(17, 1, 'sobuser-settings', 'libraryContent=browse'),
(18, 1, 'sobuser-settings-time', '1490411450');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobusers`
--

CREATE TABLE IF NOT EXISTS `sobusers` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sobusers`
--

INSERT INTO `sobusers` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'inmobile', '$P$BGf7Ly7xpfBAtb6uflWf58i.bHYiXc/', 'inmobile', 'inmobile.cuba@gmail.com', '', '2017-03-25 02:28:22', '', 0, 'inmobile');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
