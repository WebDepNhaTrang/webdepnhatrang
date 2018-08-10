-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th8 10, 2018 lúc 09:31 AM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_webdepnhatrang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `text_btn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_btn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `image`, `title`, `content`, `text_btn`, `link_btn`, `order`, `created_at`, `updated_at`) VALUES
(1, 'banners/August2018/aX8IDdzNGfBf6BgitKmH.jpg', 'Banner Demo 1', 'Dữ liệu đang được cập nhật', 'Nút 1', '#', 1, '2018-08-06 00:05:03', '2018-08-06 00:05:03'),
(2, 'banners/August2018/5OStuyVWsVcuh7LfYFLL.jpg', 'Banner Demo 2', 'Dữ liệu đang được cập nhật', 'Nút 1', '#', 2, '2018-08-06 00:05:16', '2018-08-06 00:05:16'),
(3, 'banners/August2018/Mi6ivfyi8tEkt0YgLNJw.jpg', 'Banner Demo 3', 'Dữ liệu đang được cập nhật', 'Nút 3', '#', 3, '2018-08-06 00:05:39', '2018-08-06 00:05:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Tin Tức', 'news-category', '2018-07-18 02:22:40', '2018-08-09 02:49:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '', 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '', 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12),
(57, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 7, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, NULL, 4),
(59, 7, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, NULL, 2),
(60, 7, 'content', 'text', 'Content', 0, 1, 1, 1, 1, 1, NULL, 3),
(61, 7, 'text_btn', 'text', 'Text Button', 0, 1, 1, 1, 1, 1, NULL, 5),
(62, 7, 'link_btn', 'text', 'Link Button', 0, 1, 1, 1, 1, 1, NULL, 6),
(63, 7, 'order', 'number', 'Order', 0, 1, 1, 1, 1, 1, NULL, 7),
(64, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 8),
(65, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 9),
(66, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(67, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 2),
(68, 9, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:services,slug\"}}', 3),
(69, 9, 'excerpt', 'rich_text_box', 'Excerpt', 0, 1, 1, 1, 1, 1, NULL, 4),
(70, 9, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, NULL, 5),
(71, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 6),
(72, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, NULL, 7),
(73, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(74, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(75, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(76, 10, 'business', 'text', 'Business', 0, 1, 1, 1, 1, 1, NULL, 3),
(77, 10, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, NULL, 4),
(78, 10, 'external_link', 'text', 'External Link', 0, 1, 1, 1, 1, 1, NULL, 5),
(79, 10, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 6),
(80, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 7),
(81, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-07-18 02:22:39', '2018-07-18 02:22:39'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-07-18 02:22:39', '2018-07-18 02:22:39'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-07-18 02:22:39', '2018-07-18 02:22:39'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(7, 'banners', 'banners', 'Banner', 'Banners', 'voyager-photos', 'App\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-05 21:17:41', '2018-08-05 21:17:41'),
(9, 'services', 'services', 'Service', 'Services', 'voyager-shop', 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-06 01:53:03', '2018-08-06 01:53:03'),
(10, 'projects', 'projects', 'Project', 'Projects', 'voyager-backpack', 'App\\Project', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-09 02:15:40', '2018-08-09 02:15:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(2, 'frontend', '2018-07-18 20:03:55', '2018-07-18 20:04:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-07-18 02:22:40', '2018-07-18 02:22:40', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2018-07-18 02:22:40', '2018-08-05 21:19:12', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 5, '2018-07-18 02:22:40', '2018-08-05 21:19:12', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2018-07-18 02:22:40', '2018-08-05 21:19:12', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2018-07-18 02:22:40', '2018-08-05 21:19:12', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-07-18 02:22:40', '2018-08-05 21:18:45', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-07-18 02:22:40', '2018-08-05 21:18:45', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-07-18 02:22:40', '2018-08-05 21:18:45', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-07-18 02:22:40', '2018-08-05 21:18:45', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 3, '2018-07-18 02:22:40', '2018-08-05 21:19:12', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 22, 5, '2018-07-18 02:22:40', '2018-08-09 02:15:53', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 22, 4, '2018-07-18 02:22:41', '2018-08-09 02:15:53', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, 22, 6, '2018-07-18 02:22:41', '2018-08-09 02:15:53', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-07-18 02:22:41', '2018-08-05 21:18:45', 'voyager.hooks', NULL),
(15, 2, 'Trang Chủ', '', '_self', NULL, '#000000', NULL, 1, '2018-07-18 20:04:34', '2018-08-09 02:43:27', 'frontend.pages.home', NULL),
(16, 2, 'Giới Thiệu', '', '_self', NULL, '#000000', NULL, 2, '2018-07-18 20:04:48', '2018-08-09 02:43:27', 'frontend.pages.about', NULL),
(17, 2, 'Dự Án', '', '_self', NULL, '#000000', NULL, 4, '2018-07-18 20:05:05', '2018-08-09 02:43:27', 'frontend.pages.project', 'null'),
(18, 2, 'Dịch Vụ', '', '_self', NULL, '#000000', NULL, 3, '2018-07-18 20:05:14', '2018-08-09 02:43:27', 'frontend.pages.service', 'null'),
(19, 2, 'Tin Tức', '', '_self', NULL, '#000000', NULL, 5, '2018-07-18 20:05:23', '2018-08-09 02:43:27', 'frontend.pages.news', 'null'),
(20, 2, 'Liên Hệ', '', '_self', NULL, '#000000', NULL, 6, '2018-07-18 20:05:30', '2018-08-09 02:43:27', 'frontend.pages.contact', 'null'),
(21, 1, 'Banners', '', '_self', 'voyager-photos', NULL, 22, 1, '2018-08-05 21:17:41', '2018-08-05 21:18:45', 'voyager.banners.index', NULL),
(22, 1, 'Frontend Custom', '', '_self', 'voyager-paint-bucket', '#000000', NULL, 2, '2018-08-05 21:18:39', '2018-08-05 21:18:49', NULL, ''),
(23, 1, 'Services', '', '_self', 'voyager-shop', NULL, 22, 2, '2018-08-06 01:53:03', '2018-08-06 01:53:19', 'voyager.services.index', NULL),
(24, 1, 'Projects', '', '_self', 'voyager-backpack', NULL, 22, 3, '2018-08-09 02:15:40', '2018-08-09 02:15:53', 'voyager.projects.index', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-07-18 02:22:41', '2018-07-18 02:22:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(2, 'browse_bread', NULL, '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(3, 'browse_database', NULL, '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(4, 'browse_media', NULL, '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(5, 'browse_compass', NULL, '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(6, 'browse_menus', 'menus', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(7, 'read_menus', 'menus', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(8, 'edit_menus', 'menus', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(9, 'add_menus', 'menus', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(10, 'delete_menus', 'menus', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(11, 'browse_roles', 'roles', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(12, 'read_roles', 'roles', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(13, 'edit_roles', 'roles', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(14, 'add_roles', 'roles', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(15, 'delete_roles', 'roles', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(16, 'browse_users', 'users', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(17, 'read_users', 'users', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(18, 'edit_users', 'users', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(19, 'add_users', 'users', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(20, 'delete_users', 'users', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(21, 'browse_settings', 'settings', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(22, 'read_settings', 'settings', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(23, 'edit_settings', 'settings', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(24, 'add_settings', 'settings', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(25, 'delete_settings', 'settings', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(26, 'browse_categories', 'categories', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(27, 'read_categories', 'categories', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(28, 'edit_categories', 'categories', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(29, 'add_categories', 'categories', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(30, 'delete_categories', 'categories', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(31, 'browse_posts', 'posts', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(32, 'read_posts', 'posts', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(33, 'edit_posts', 'posts', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(34, 'add_posts', 'posts', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(35, 'delete_posts', 'posts', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(36, 'browse_pages', 'pages', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(37, 'read_pages', 'pages', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(38, 'edit_pages', 'pages', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(39, 'add_pages', 'pages', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(40, 'delete_pages', 'pages', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(41, 'browse_hooks', NULL, '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(42, 'browse_banners', 'banners', '2018-08-05 21:17:41', '2018-08-05 21:17:41'),
(43, 'read_banners', 'banners', '2018-08-05 21:17:41', '2018-08-05 21:17:41'),
(44, 'edit_banners', 'banners', '2018-08-05 21:17:41', '2018-08-05 21:17:41'),
(45, 'add_banners', 'banners', '2018-08-05 21:17:41', '2018-08-05 21:17:41'),
(46, 'delete_banners', 'banners', '2018-08-05 21:17:41', '2018-08-05 21:17:41'),
(47, 'browse_services', 'services', '2018-08-06 01:53:03', '2018-08-06 01:53:03'),
(48, 'read_services', 'services', '2018-08-06 01:53:03', '2018-08-06 01:53:03'),
(49, 'edit_services', 'services', '2018-08-06 01:53:03', '2018-08-06 01:53:03'),
(50, 'add_services', 'services', '2018-08-06 01:53:03', '2018-08-06 01:53:03'),
(51, 'delete_services', 'services', '2018-08-06 01:53:03', '2018-08-06 01:53:03'),
(52, 'browse_projects', 'projects', '2018-08-09 02:15:40', '2018-08-09 02:15:40'),
(53, 'read_projects', 'projects', '2018-08-09 02:15:40', '2018-08-09 02:15:40'),
(54, 'edit_projects', 'projects', '2018-08-09 02:15:40', '2018-08-09 02:15:40'),
(55, 'add_projects', 'projects', '2018-08-09 02:15:40', '2018-08-09 02:15:40'),
(56, 'delete_projects', 'projects', '2018-08-09 02:15:40', '2018-08-09 02:15:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Demo Tin Tức 1', NULL, 'Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.', '<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>', 'posts/August2018/esSBvc5Kf9UgX3yptcCu.jpg', 'demo-tin-tuc-1', NULL, NULL, 'PUBLISHED', 0, '2018-08-09 21:11:23', '2018-08-09 21:11:23'),
(2, 1, 1, 'Demo Tin Tức 2', NULL, 'Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.', '<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>', 'posts/August2018/sDjCzRVoGRTLUezfmXGF.jpg', 'demo-tin-tuc-2', NULL, NULL, 'PUBLISHED', 0, '2018-08-09 21:12:08', '2018-08-09 21:12:08'),
(3, 1, 1, 'Demo Tin Tức 3', NULL, 'Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.', '<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>', 'posts/August2018/4aNAxYD769KWun8u4Sy2.jpg', 'demo-tin-tuc-3', NULL, NULL, 'PUBLISHED', 0, '2018-08-09 21:12:37', '2018-08-09 21:12:37'),
(4, 1, 1, 'Demo Tin Tức 4', NULL, 'Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.', '<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>', 'posts/August2018/nVuRVGs4Be2ndIEhV9rZ.jpg', 'demo-tin-tuc-4', NULL, NULL, 'PUBLISHED', 0, '2018-08-09 21:13:01', '2018-08-09 21:13:01'),
(5, 1, 1, 'Demo Tin Tức 5', NULL, 'Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.', '<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>', 'posts/August2018/JyCYxkl4OkD7sjC5OFik.jpg', 'demo-tin-tuc-5', NULL, NULL, 'PUBLISHED', 0, '2018-08-09 21:13:33', '2018-08-09 21:13:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `projects`
--

INSERT INTO `projects` (`id`, `name`, `business`, `body`, `external_link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Book2go', 'Khách sạn, Căn Hộ, Tour', NULL, 'https://book2govn.com', 'projects/August2018/XPAan8mEDrjwJCjCtAtk.png', '2018-08-09 02:27:00', '2018-08-09 02:37:06'),
(2, 'Jungle Beach', 'Resort', NULL, 'https://junglebeachnhatrang.com', 'projects/August2018/yT4jCcgcsqZZY9oLN65J.png', '2018-08-09 02:29:00', '2018-08-09 02:36:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-07-18 02:22:40', '2018-07-18 02:22:40'),
(2, 'user', 'Normal User', '2018-07-18 02:22:40', '2018-07-18 02:22:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `excerpt`, `body`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Thiết Kế Trang Web', 'thiet-ke-trang-web', NULL, '<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>', 'services/August2018/XmgJ1B0QeXrlvyEM8ukl.jpg', '2018-08-06 01:55:29', '2018-08-09 23:04:35'),
(2, 'Dịch Vụ Hosting', 'dich-vu-hosting', NULL, '<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>', 'services/August2018/zJosjv3CYJDvJRKqyk6m.jpg', '2018-08-06 01:56:06', '2018-08-09 23:04:29'),
(3, 'Quảng Cáo Trực Tuyến', 'quang-cao-truc-tuyen', NULL, '<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>', 'services/August2018/2bIAxMlZiOht2iv47Erk.jpg', '2018-08-06 01:56:21', '2018-08-09 23:04:23'),
(4, 'Quản Trị Trang Web', 'quan-tri-trang-web', NULL, '<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>', 'services/August2018/ixFVSe9YSxd9NUXEOW6H.jpg', '2018-08-06 01:56:38', '2018-08-09 23:04:18'),
(5, 'Đẩy Từ Khóa', 'day-tu-khoa', '<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>&nbsp;</p>', '<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>', 'services/August2018/lHLWXtdN4FBXWXpqOYZG.jpg', '2018-08-06 01:57:00', '2018-08-09 21:31:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'KaTiSoft', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Web Đẹp Nha Trang', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/July2018/ernwxpbsxABJnSgiXLxw.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'KaTiSoft', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Chào bạn đến với KaTiSoft - Web Đẹp Nha Trang', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'about.st1-title', 'Section 1 - Title', 'Về Chúng Tôi', NULL, 'text', 6, 'About'),
(12, 'contact.title', 'Title', 'Liên hệ', NULL, 'text', 7, 'Contact'),
(13, 'contact.heading', 'Heading', 'Web Đẹp Nha Trang', NULL, 'text', 8, 'Contact'),
(14, 'contact.email', 'Email', 'info@webdepnhatrang.com', NULL, 'text', 9, 'Contact'),
(15, 'contact.address', 'Address', 'Nha Trang, Khánh Hòa', NULL, 'text', 10, 'Contact'),
(16, 'contact.phone', 'Phone', '0909.999.999', NULL, 'text', 11, 'Contact'),
(17, 'contact.google_lat_long', 'Google Map (Lat,Long)', '12.239550, 109.197067', NULL, 'text', 12, 'Contact'),
(18, 'about.st1-heading', 'Section 1 - Heading', 'Web Đẹp Nha Trang', NULL, 'text', 13, 'About'),
(20, 'about.st1_body', 'Section 1 - Body', '<p>Web Đẹp Nha Trang - L&agrave; một nh&oacute;m thiết kế Website chuy&ecirc;n nghiệp, ch&uacute;ng t&ocirc;i lu&ocirc;n đảm bảo chất lượng sản phẩm cao nhất cho kh&aacute;ch h&agrave;ng với uy t&iacute;n v&agrave; kỹ thuật được t&iacute;ch lũy trong hơn 5 năm. Ch&uacute;ng t&ocirc;i tự tin sẽ gi&uacute;p qu&yacute; kh&aacute;ch đạt được hiệu quả cao nhất trong việc quảng b&aacute; thương hiệu của c&ocirc;ng ty.</p>\r\n<p>Thiết kế web đẹp - chuy&ecirc;n nghiệp - hiện đại - nhanh ch&oacute;ng, đ&oacute; l&agrave; điều ch&uacute;ng t&ocirc;i c&oacute; thể gi&uacute;p qu&yacute; kh&aacute;ch thực hiện, bởi đ&oacute; l&agrave; lĩnh vực của ch&uacute;ng t&ocirc;i với kinh nghiệm hơn 5 năm đủ để hiểu qu&yacute; kh&aacute;ch cần g&igrave; !</p>', NULL, 'rich_text_box', 14, 'About'),
(21, 'about.st1_image', 'Section 1 - Image', 'settings/August2018/W2btJfnbihu40K2fVrFk.jpg', NULL, 'image', 15, 'About'),
(22, 'about.st2_heading', 'Section 2 - Heading', 'Lịch Sử', NULL, 'text', 16, 'About'),
(23, 'about.st2_body', 'Section 2 - Body', '<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.</p>', NULL, 'rich_text_box', 17, 'About'),
(24, 'about.accordion1_title', 'Accordion 1 - Title', 'Dữ liệu mẫu 1', NULL, 'text', 18, 'About'),
(25, 'about.accordion1_body', 'Accordion 1 - Body', '<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>', NULL, 'rich_text_box', 19, 'About'),
(26, 'about.accordion2_title', 'Accordion 2 - Title', 'Dữ liệu mẫu 2', NULL, 'text', 20, 'About'),
(27, 'about.accordion2_body', 'Accordion 2 - Body', '<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>', NULL, 'rich_text_box', 21, 'About'),
(28, 'about.accordion3_title', 'Accordion 3 - Title', 'Dữ liệu mẫu 3', NULL, 'text', 22, 'About'),
(29, 'about.accordion3_body', 'Accordion 3 - Body', '<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>\r\n<p>Dữ liệu đang được cập nhật. Dữ liệu đang được cập nhật.&nbsp;</p>', NULL, 'rich_text_box', 23, 'About'),
(30, 'about.st3_title', 'Section 3 - Title', 'Liên Hệ!', NULL, 'text', 24, 'About'),
(31, 'about.st3_body', 'Section 3 - Body', '<p>Đang cập nhật<br />Địa chỉ : Đang cập nhật<br />Email: Đang cập nhật<br />Điện thoại : Đang cập nhật</p>', NULL, 'rich_text_box', 25, 'About'),
(32, 'service.title', 'Title', 'Dịch Vụ', NULL, 'text', 26, 'Service'),
(33, 'service.heading', 'Heading', 'Các Dịch Vụ Của Chúng Tôi', NULL, 'text', 27, 'Service'),
(34, 'service.item1_title', 'Item 1 - Title', 'THIÊT KẾ TRANG WEB', NULL, 'text', 28, 'Service'),
(35, 'service.item1_body', 'Item 1 - Body', '<p><span style=\"color: rgba(0, 0, 0, 0.7); font-family: Quicksand, Arial, sans-serif; font-size: 12.75px;\">Những trang web ch&uacute;ng t&ocirc;i thiết kế đều th&ocirc;ng qua kiểm duyệt chất lượng. Giao diện phong ph&uacute;, chức năng vượt trội, tối ưu từ kh&oacute;a, kết nối mạng x&atilde; hội.</span></p>', NULL, 'rich_text_box', 29, 'Service'),
(36, 'service.item2_title', 'Item 2 - Title', 'DỊCH VỤ HOSTING', NULL, 'text', 30, 'Service'),
(37, 'service.item2_body', 'Item 2 - Body', '<p><span style=\"color: rgba(0, 0, 0, 0.7); font-family: Quicksand, Arial, sans-serif; font-size: 12.75px;\">Web Đẹp Nha Trang cung cấp dịch vụ hosting gi&aacute; rẻ, sử dụng ổ cứng SSD với hiệu suất vượt trội nhanh hơn gấp 40 lần so với ổ cứng th&ocirc;ng thường.</span></p>', NULL, 'rich_text_box', 31, 'Service'),
(38, 'service.item3_title', 'Item 3 - Title', 'QUẢNG CÁO TRỰC TUYẾN', NULL, 'text', 32, 'Service'),
(39, 'service.item3_body', 'Item 3 - Body', '<p><span style=\"color: rgba(0, 0, 0, 0.7); font-family: Quicksand, Arial, sans-serif; font-size: 12.75px;\">Cung cấp dịch vụ quảng c&aacute;o Google, Facebook v&agrave; Zalo v&agrave; c&aacute;c trang b&aacute;o chuy&ecirc;n nghiệp, nhằm mang lại hiệu quả cao cho kh&aacute;ch h&agrave;ng v&agrave; đối t&aacute;c.</span></p>', NULL, 'rich_text_box', 33, 'Service'),
(40, 'service.item4_title', 'Item 4 - Title', 'QUẢN TRỊ TRANG WEB', NULL, 'text', 34, 'Service'),
(41, 'service.item4_body', 'Item 4 - Body', '<p><span style=\"color: rgba(0, 0, 0, 0.7); font-family: Quicksand, Arial, sans-serif; font-size: 12.75px;\">Bạn kh&ocirc;ng c&oacute; thời gian chăm s&oacute;c website của m&igrave;nh, Web Đẹp Nha Trang sẽ gi&uacute;p bạn viết v&agrave; đăng b&agrave;i, sản phẩm mỗi th&aacute;ng, tối ưu từ kh&oacute;a tr&ecirc;n google.</span></p>', NULL, 'rich_text_box', 35, 'Service'),
(42, 'project.title', 'Title', 'Sản Phẩm', NULL, 'text', 36, 'Project'),
(43, 'project.heading', 'Heading', 'Dự Án Tiêu Biểu', NULL, 'text', 37, 'Project'),
(44, 'news.title', 'Title', 'Tin Tức', NULL, 'text', 38, 'News'),
(45, 'news.heading', 'Heading', 'Blog Chia Sẻ', NULL, 'text', 39, 'News'),
(46, 'news.paginate', 'Paginate', '3', NULL, 'text', 40, 'News');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-07-18 02:22:41', '2018-07-18 02:22:41'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-07-18 02:22:41', '2018-07-18 02:22:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$EpTJ62NvcqyG7TFXvhIYMebEwpp6MIlFuckF4H7coLQ2rzBBJ5kKG', '9QHcaVqVY37kJqOxzNGICb2jhAcJj5f4VoSH7plEcAjLq1uUlDl9BuhbOXS9', NULL, '2018-07-18 02:22:41', '2018-07-18 02:22:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Chỉ mục cho bảng `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Chỉ mục cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Chỉ mục cho bảng `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
