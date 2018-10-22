-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Oct 22, 2018 at 09:25 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `haimocweddingco_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_items`
--

CREATE TABLE IF NOT EXISTS `category_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `isActive` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_items_seo_id_foreign` (`seo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `category_items`
--

INSERT INTO `category_items` (`id`, `name`, `path`, `description`, `image`, `image_mobile`, `level`, `parent_id`, `type`, `order`, `isActive`, `created_at`, `updated_at`, `seo_id`) VALUES
(1, 'Chụp Ảnh  Pre-Wedding', 'chup-anh-pre-wedding', NULL, '0', '0', 0, NULL, 1, 1, 1, '2018-08-01 14:13:57', '2018-08-01 14:13:57', 7),
(2, 'Tin Tức', 'tin-tuc', NULL, '0', NULL, 0, NULL, 0, 1, 0, '2018-08-04 14:26:29', '2018-08-04 14:26:29', 17),
(3, 'Khuyến Mãi', 'khuyen-mai', NULL, '0', NULL, 0, NULL, 0, 1, 1, '2018-08-06 08:37:59', '2018-08-06 08:37:59', 25),
(4, 'Bảng Giá', 'bang-gia', NULL, '0', NULL, 0, NULL, 0, 1, 1, '2018-08-23 07:36:20', '2018-08-23 07:36:20', 33),
(5, 'Phóng Sự Ngày Cưới', 'phong-su-ngay-cuoi', NULL, '0', '0', 0, NULL, 1, 1, 1, '2018-09-01 13:49:26', '2018-09-01 13:49:26', 40);

-- --------------------------------------------------------

--
-- Table structure for table `category_permissions`
--

CREATE TABLE IF NOT EXISTS `category_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_permissions_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `category_permissions`
--

INSERT INTO `category_permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Role', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(2, 'User', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(3, 'Menu', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(4, 'Page', '2018-03-14 07:31:29', '2018-03-14 07:31:29'),
(5, 'Post', '2018-03-14 07:31:29', '2018-03-14 07:31:29'),
(7, 'Product', '2018-03-27 03:05:29', '2018-03-27 03:05:29'),
(8, 'Location', '2018-08-01 08:31:22', '2018-08-01 08:31:22');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE IF NOT EXISTS `configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `configs_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `name`, `content`, `description`, `order`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'config-contact', '<p style="text-align: center;">\r\n	<span style="color:#ffffff;"><strong><em>Hotline hỗ trợ tư vấn và phản hồi ý kiến</em></strong><em>:&nbsp;</em></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<span style="color:#ffa800;"><span style="font-size:20px;"><strong>094.22.88.567 -&nbsp;0167.70.78.929 -&nbsp;091.113.02.95</strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<span style="color:#ffffff;"><strong><em>Hân hạnh được phục vụ quý khách hàng.!</em></strong></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<span style="color:#ffffff;"><strong><em>157 Nguyễn Thượng Hiền, P.6 Quận Bình Thạnh, TPHCM</em></strong></span>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>', NULL, NULL, 1, NULL, '2018-06-06 13:46:15'),
(3, 'email-receive', 'athunguyen.dn@gmail.com', 'Cấu Hình Email Nhận Báo Giá', 1, 1, '2017-08-26 06:53:20', '2018-05-16 02:36:00'),
(4, 'email-sender-subject', 'Re:Sea Wedding', 'Cấu Hình Subject Gửi Khách Hàng', 2, 1, '2017-08-26 06:53:20', '2018-08-24 01:53:14'),
(5, 'email-sender-from', 'Sea Wedding', 'Cấu Hình From Gửi Khách Hàng', 3, 1, '2017-08-26 06:53:21', '2018-08-24 01:53:14'),
(6, 'email-receive-subject', 'Sea Wedding - Liên Hệ Mới Từ Khách Hàng', 'Cấu Hình Subject Nhận Báo Giá', 4, 1, '2017-08-26 06:53:21', '2018-08-24 01:53:14'),
(7, 'email-receive-from', 'Sea Wedding', 'Cấu Hình From Nhận Báo Giá', 5, 1, '2017-08-26 06:53:21', '2018-08-24 01:53:14'),
(8, 'email-signatures', '', 'Cấu Hình Chữ Ký', 7, 1, '2017-08-26 06:53:21', '2018-05-11 10:13:42'),
(9, 'email-sender-content', '<h1 style="margin-left:0cm; margin-right:0cm">\r\n	Sea Wedding đã nhận được thông tin từ anh/chị, chúng tôi sẽ phản hồi trong vòng 24h, xin chân thành cảm ơn\r\n</h1>', 'Cấu Hình Nội Dung Gửi Khách Hàng', 6, 1, '2017-08-26 06:53:21', '2018-08-24 01:53:14'),
(13, 'config-phone', '094.22.88.567', NULL, NULL, 1, NULL, '2018-06-06 13:23:32'),
(14, 'config-email', 'diencoduyduong@gmail.com', NULL, NULL, 1, NULL, '2018-06-06 16:23:38'),
(15, 'config-address', '157 Nguyễn Thượng Hiền, P.6 Quận Bình Thạnh, TPHCM', NULL, NULL, 1, NULL, '2018-06-06 13:22:55'),
(16, 'config-name', NULL, NULL, NULL, 1, NULL, '2018-06-06 13:22:55'),
(18, 'config-introduce', '<p style="text-align: center;">\r\n	<span style="font-size:20px;"><span style="color:#0d51db;"><strong>CÔNG TY ĐIỆN CƠ DUY DƯƠNG</strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	<strong>Lĩnh vực hoạt động:</strong>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Chúng tôi hoạt động trong lĩnh vực nhập khẩu và phân phối các sản phẩm<strong>,&nbsp;Máy Bơm Nước,</strong>&nbsp;<strong>các thiết bị điện nước</strong>&nbsp;với những thương hiệu nổi tiếng thế giới như&nbsp;<strong>&nbsp;Panasonic, Sena, Selton, Hanil,&nbsp;</strong><strong>Pentax, Sealand,</strong><strong>&nbsp;Ebara&hellip;.</strong><strong>..</strong>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Đội ngũ nhân viên và quản lý kinh nghiệm lâu năm luôn được lựa chọn kỹ càng trước khi trải qua quá trình huấn luyện và cập nhật thường xuyên những thành tựu mới nhất về dịch vụ khách hàng, dịch vụ kỹ thuật và sản phẩm. Chúng tôi xem khả năng làm hài lòng khách hàng là thước đo thành công của chính mình.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Chúng tôi cam kêt:</strong>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;Mang lại sản phẩm chất lượng cao với giá tốt nhất đến với khách hàng.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;Đặt dịch vụ khách hàng lên hàng đầu.\r\n</p>', NULL, NULL, 1, NULL, '2018-06-06 15:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `path`, `image`, `seo_id`, `created_at`, `updated_at`) VALUES
(1, 'Bà Nà', 'ba-na', 'images/uploads/images/gt_1.jpg', 1, '2018-08-01 14:01:34', '2018-08-01 14:10:49'),
(2, 'Cầu Tình Yêu', 'cau-tinh-yeu', NULL, 2, '2018-08-01 14:11:03', '2018-08-01 14:11:03'),
(3, 'Bãi Cháy', 'bai-chay', NULL, 3, '2018-08-01 14:11:11', '2018-08-01 14:11:11'),
(4, 'Hồ Xanh', 'ho-xanh', NULL, 4, '2018-08-01 14:11:18', '2018-08-01 14:11:18'),
(5, 'Resort', 'resort', NULL, 5, '2018-08-01 14:11:33', '2018-08-01 14:11:33'),
(6, 'Phim Trường', 'phim-truong', NULL, 6, '2018-08-01 14:11:42', '2018-08-01 14:11:42'),
(7, 'Biển Đà Nẵng', 'bien-da-nang', NULL, 9, '2018-08-01 14:59:06', '2018-08-01 14:59:06'),
(8, 'Hội An', 'hoi-an', NULL, 10, '2018-08-01 14:59:25', '2018-08-01 14:59:25'),
(9, 'Hồ Hòa Trung', 'ho-hoa-trung', NULL, 13, '2018-08-01 15:44:14', '2018-08-01 15:44:14'),
(10, 'Bồ Câu', 'bo-cau', NULL, 14, '2018-08-01 15:44:23', '2018-08-01 15:44:23'),
(11, 'Đồi Chè', 'doi-che', NULL, 27, '2018-08-12 12:36:19', '2018-08-12 12:36:19'),
(12, 'Đồi Thông', 'doi-thong', NULL, 28, '2018-08-12 12:37:23', '2018-08-12 12:37:23'),
(13, 'Cầu Vàng', 'cau-vang', NULL, 44, '2018-10-13 02:35:47', '2018-10-13 02:35:47');

-- --------------------------------------------------------

--
-- Table structure for table `location_album`
--

CREATE TABLE IF NOT EXISTS `location_album` (
  `location_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`location_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location_album`
--

INSERT INTO `location_album` (`location_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, '2018-08-02 14:25:21', '2018-08-02 14:25:21'),
(1, 15, '2018-10-13 02:43:40', '2018-10-13 02:43:40'),
(2, 2, '2018-08-01 15:43:52', '2018-08-01 15:43:52'),
(2, 15, '2018-10-13 02:43:40', '2018-10-13 02:43:40'),
(3, 6, '2018-08-04 16:01:32', '2018-08-04 16:01:32'),
(3, 15, '2018-10-13 02:43:40', '2018-10-13 02:43:40'),
(4, 1, '2018-08-01 15:02:56', '2018-08-01 15:02:56'),
(4, 4, '2018-08-04 15:36:31', '2018-08-04 15:36:31'),
(4, 5, '2018-08-04 15:42:15', '2018-08-04 15:42:15'),
(6, 3, '2018-08-02 14:25:21', '2018-08-02 14:25:21'),
(6, 11, '2018-09-01 12:56:30', '2018-09-01 12:56:30'),
(7, 1, '2018-08-01 15:02:56', '2018-08-01 15:02:56'),
(7, 3, '2018-08-02 14:25:21', '2018-08-02 14:25:21'),
(7, 4, '2018-08-04 15:36:31', '2018-08-04 15:36:31'),
(7, 6, '2018-08-04 16:01:32', '2018-08-04 16:01:32'),
(7, 8, '2018-08-12 12:58:05', '2018-08-12 12:58:05'),
(7, 10, '2018-08-23 07:40:16', '2018-08-23 07:40:16'),
(7, 13, '2018-09-11 15:20:26', '2018-09-11 15:20:26'),
(7, 14, '2018-09-20 03:12:46', '2018-09-20 03:12:46'),
(7, 15, '2018-10-13 02:43:40', '2018-10-13 02:43:40'),
(8, 1, '2018-08-01 15:02:56', '2018-08-01 15:02:56'),
(8, 3, '2018-08-02 14:25:21', '2018-08-02 14:25:21'),
(8, 4, '2018-08-04 15:36:31', '2018-08-04 15:36:31'),
(8, 9, '2018-08-12 13:08:08', '2018-08-12 13:08:08'),
(8, 10, '2018-08-23 07:40:16', '2018-08-23 07:40:16'),
(8, 13, '2018-09-11 15:20:26', '2018-09-11 15:20:26'),
(9, 2, '2018-08-01 15:44:35', '2018-08-01 15:44:35'),
(9, 13, '2018-09-11 15:20:26', '2018-09-11 15:20:26'),
(10, 2, '2018-08-01 15:44:35', '2018-08-01 15:44:35'),
(10, 13, '2018-09-11 15:20:26', '2018-09-11 15:20:26'),
(11, 7, '2018-08-12 12:49:09', '2018-08-12 12:49:09'),
(12, 7, '2018-08-12 12:49:09', '2018-08-12 12:49:09'),
(13, 15, '2018-10-13 02:43:40', '2018-10-13 02:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_14_140923_create_entrust_setup_tables', 1),
(4, '2018_07_12_085612_create_seos_table', 2),
(5, '2018_07_12_090313_add_seo_id_to_posts_table', 3),
(6, '2018_07_12_091007_add_seo_id_to_products_table', 4),
(7, '2018_07_12_091116_add_seo_id_to_category_items_table', 5),
(8, '2018_08_01_145134_create_locations_table', 6),
(9, '2018_08_01_145328_create_location_album_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_permission_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`),
  KEY `permissions_category_permission_id_foreign` (`category_permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `category_permission_id`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'Xem Danh Sách Quyền', 'Được Xem Danh Sách Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(2, 'role-create', 'Tạo Quyền Mới', 'Được Tạo Quyền Mới', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(3, 'role-edit', 'Cập Nhật Quyền', 'Được Cập Nhật Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(4, 'role-delete', 'Xóa Quyền', 'Được Xóa Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(5, 'user-list', 'Xem Danh Sách Users', 'Được Xem Danh Sách Users', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(6, 'user-create', 'Tạo User', 'Được Tạo User Mới', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(7, 'user-edit', 'Cập Nhật User', 'Được Cập Nhật User', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(8, 'user-delete', 'Xóa user', 'Được Xóa User', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(9, 'menu-list', 'Toàn Quyền Menu', 'Được Toàn Quyền Menu', 3, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(10, 'menu-create', 'Thêm Mới Menu', 'Được Thêm Mới Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(11, 'menu-edit', 'Cập Nhật Menu', 'Được Cập Nhật Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(12, 'menu-delete', 'Xóa Menu', 'Được Xóa Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(13, 'page-list', 'Toàn Quyền Trang', 'Được Toàn Quyền Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(14, 'page-create', 'Thêm Mới Trang', 'Được Thêm Mới Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(15, 'page-edit', 'Cập Nhật Trang', 'Được Cập Nhật Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(16, 'page-delete', 'Xóa Trang', 'Được Xóa Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(17, 'post-list', 'Toàn Quyền Bài Viết', 'Được Toàn Quyền Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(18, 'post-create', 'Thêm Mới Bài Viết', 'Được Thêm Mới Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(19, 'post-edit', 'Cập Nhật Bài Viết', 'Được Cập Nhật Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(20, 'post-delete', 'Xóa Bài Viết', 'Được Xóa Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(21, 'product-list', 'Toàn Quyền Sản Phẩm', 'Được Toàn Quyền Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34'),
(22, 'product-create', 'Thêm Mới Sản Phẩm', 'Được Thêm Mới Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34'),
(23, 'product-edit', 'Cập Nhật Sản Phẩm', 'Được Cập Nhật Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34'),
(24, 'product-delete', 'Xóa Sản Phẩm', 'Được Xóa Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34'),
(26, 'location-list', 'Toàn Quyền Địa Điểm', 'Được Toàn Quyền Địa Điểm', 8, '2018-08-01 08:32:01', '2018-08-01 08:32:01'),
(27, 'location-create', 'Thêm Mới Địa Điểm', 'Được Thêm Mới Địa Điểm', 8, '2018-08-01 08:32:01', '2018-08-01 08:32:01'),
(28, 'location-edit', 'Cập Nhật Địa Điểm', 'Được Cập Nhật Địa Điểm', 8, '2018-08-01 08:32:01', '2018-08-01 08:32:01'),
(29, 'location-delete', 'Xóa Địa Điểm', 'Được Xóa Địa Điểm', 8, '2018-08-01 08:32:01', '2018-08-01 08:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
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
(26, 1),
(27, 1),
(28, 1),
(29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `category_item_id` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  KEY `posts_seo_id_foreign` (`seo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `path`, `description`, `content`, `image`, `post_type`, `isActive`, `category_item_id`, `user_id`, `created_at`, `updated_at`, `seo_id`) VALUES
(1, 'Bộ ảnh cưới Phượng Hoàng Cổ Trấn của đôi uyên ương 9x', 'bo-anh-cuoi-phuong-hoang-co-tran-cua-doi-uyen-uong-9x', '<p>\r\n	Nếu yêu thích văn hóa Á Đông, bạn hãy cùng Marry chiêm ngưỡng bộ ảnh cưới được thực hiện tại địa danh nổi tiếng Phượng Hoàng Cổ Trấn\r\n</p>', '<p>\r\n	Nam chính trong ảnh tên là Quang Huy sinh năm 1993 còn nữ chính tên Thanh Vân, kém chú rể 1 tuổi. Cả hai đều đến từ Hội An. Cặp đôi này gặp nhau lần đầu khi Huy chụp kỷ yếu cho lớp của vị hôn thê ở trường Đại học Ngoại ngữ Đà Nẵng.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/anh-cuoi.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-420x280.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Chàng bất ngờ biết nàng cũng sống gần nhà mình nên đã đi nhờ xe Thanh Vân. Với lối ăn nói duyên dáng của cô dâu, Quang Huy đã say nắng nàng và quyết tâm chinh phục trái tim cô.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 1" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/1.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-1.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-1-420x280.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Đôi nam thanh nữ tú này đã chọn Phượng Hoàng Cổ Trấn &ndash; ngôi làng có lịch sử hơn 1.300 năm tại Hồ Nam, Trung Quóc là nơi chụp ảnh cưới. Theo chia sẻ của chú rể, lý do chọn địa điểm cưới này cả hai đều yêu thích nét đẹp cổ kính cùng lối kiến trúc độc đáo tại nơi đây.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 2" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/2.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-2.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-2-420x280.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Ngoài địa danh lịch sử này, đôi uyên ương này còn chụp ảnh cưới tại Vũ Lăng Nguyên, Trương Gia Giới, Thiên Môn Sơn ở Trung Quốc. Trước khi có ý định về chung nhà, cặp đôi 9x này đã gắn bó với nhau khoảng 2 năm. Nếu nàng bị cuốn hút bởi sự chín chắn, chững chạc của chàng thì Huy lại ấn tượng bởi chiếc mũi cao đầy kiêu kỳ của Vân.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 3" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/3.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-3.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-3-420x280.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Điểm nổi bật của album cưới này là một số bức hình được thực hiện theo phương pháp double exposure &ndash; phơi sáng kép. Thanh Vân cũng tiết lộ chi phí để thực hiện bộ ảnh cưới hoành tráng này là khoảng 120 triệu đồng. Chi phí này đã bao gồm trang phục cưới, giày, phương tiện di chuyển tại điểm đến và tour du lịch Trung Quốc.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 4" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/4.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-4.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-4-420x280.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Nhờ sự tư vấn nhiệt tình của ekip chụp ảnh cùng việc cô dâu cũng làm trong ngành du lịch nên cả hai cũng không gặp nhiều trở ngại khi chụp ảnh cưới tại nước ngoài. Thêm vào đó, với kinh nghiệm là nhiếp ảnh gia của mình, chú rể cũng khuyên các đôi uyên ương nên đầu tư cho trang phục. Điều này sẽ giúp cô dâu chú rể sở hữu bộ ảnh cưới độc đáo và thẩm mỹ hơn.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 5" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/5.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-5.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-5-420x280.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 6" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/6.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-6.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-6-420x280.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Trong ảnh, đôi uyên ương đang chụp ảnh tại một khu rừng tre với trang phục tự do.&nbsp;Do khung cảnh khá thơ mộng và lãng mạn nên dù phải di chuyển nhiều, cặp đôi đáng yêu này&nbsp;cũng cố gắng tạo dáng để sở hữu những bức ảnh cưới để đời.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 7" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/7.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-7-1.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-7-1-420x280.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Tuy thời tiết khi chụp ảnh không được thuận lợi nhưng đôi uyên ương lại rất lạc quan. Theo chia sẻ của nàng dâu, tuy trời xấu nhưng nụ cười vì hạnh phúc vẫn luôn ngập tràn môi của cả hai. Chú rể tiết lộ:&nbsp;<em>Việc chụp hình thật sự rất vui dù trời mưa to.</em>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 8" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/8.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-8.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-8-213x159.jpg 213w, http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-8-420x315.jpg 420w, http://www.marry.vn/wp-content/uploads/2018/07/27/27/anh-cuoi-8-447x335.jpg 447w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Ảnh cưới đen trắng đã lột tả vẻ chân thật, nụ cười tự nhiên trên gương mặt của uyên ương.&nbsp;Khi chụp ảnh ngoài trời,&nbsp;các cặp đôi sắp cưới&nbsp;nên xem trước&nbsp;dự báo&nbsp;thời tiết để có phương án dự phòng. Song song đó,&nbsp;cô dâu chú rể cũng nên&nbsp;chuẩn bị sức khỏe tốt vì phải đi bộ nhiều.\r\n</p>\r\n\r\n<p style="text-align: right;">\r\n	From&nbsp;<strong>Marry&nbsp;</strong>with&nbsp;\r\n</p>', 'images/uploads/images/tintuc/anh-cuoi.jpg', 1, 1, 2, 1, '2018-08-04 14:34:52', '2018-08-04 15:13:25', 18),
(2, 'Hé lộ bộ ảnh cưới cực “tình” của Á hậu Tú Anh và ông xã', 'he-lo-bo-anh-cuoi-cuc-tinh-cua-a-hau-tu-anh-va-ong-xa', '<p>\r\n	Chỉ còn 3 ngày nữa là đám cưới của Á hậu Tú Anh sẽ diễn ra tại một trung tâm tiệc cưới ở Long Biên, Hà Nội. Chính vì thế, người đẹp đã hé lộ một số tấm ảnh cưới cực &ldquo;tình&rdquo; với ông xã Gia Lộc.\r\n</p>', '<p>\r\n	Đám cưới Á hậu 1 2012 sẽ diễn ra tại một trung tâm tiệc cưới ở Long Biên, Hà Nội vào 21-7 sắp tới. Ngay lúc này, người đẹp chia sẻ cho người hâm mộ những khoảnh khắc tình cảm giữa cô và vị hôn phu tương lai Gia Lộc.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 5" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/anh-cuoi-5.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-5.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-5-420x276.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Trong album ảnh cưới đánh dấu bước ngoặt mới của cuộc đời, Tú Anh cùng một nửa hoàn hảo của mình đã diện trang phục thanh lịch với sắc xám làm tông chủ đạo. Cả hai trông vô cùng thanh lịch và sang trọng khi sánh bước bên nhau.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 1" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/1(1).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-1.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-1-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 3" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/2(1).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-3.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-3-420x286.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 4" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/3(1).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-4.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-4-420x638.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Soái ca của Tú Anh kém cô 1 tuổi nhưng cả hai vẫn nhận được vô số lời khen từ người hâm mộ vì ngoại hình rất &ldquo;xứng đôi vừa lứa&rdquo;. Với chiều cao 1m73, &ldquo;nàng Á&rdquo; đã chủ động mang giày bệt để không quá cao so với ông xã tương lai.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 6" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/4(1).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-6.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-6-420x564.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Trong bộ ảnh cưới chia sẻ lần này, nàng dâu mới nở nụ cười hạnh phúc bên cạnh người bạn đời. Đáp lại, ông xã Gia Lộc cũng trao cho vị hôn thê một nụ hôn ngọt ngào lên đôi má ửng hồng của nàng. Người đẹp công khai thông tin đám cưới vào đúng ngày sinh nhật 25 tuổi của mình hôm 20-6.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 7" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/5(1).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-7.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-7-420x615.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 8" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/6(1).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-8.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-8-420x279.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 9" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/7(1).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-9.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-9-420x596.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Á hậu Tú Anh&nbsp;tiết lộ&nbsp;với người hâm mộ trên trang cá nhân:&nbsp;<em>Từ những ngày đầu yêu nhau, anh vẫn thường nói với tôi rằng: &lsquo;Xuất phát điểm mình đến với nhau đã không dễ dàng như nhiều cặp đôi khác, phải chăng vì thế mà mỗi ngày trôi qua, hai đứa lại càng thấy trân trọng và yêu thương nhau nhiều hơn&hellip; Yêu thương là không ngừng cố gắng, cố gắng vì tất cả, cố gắng vì nhau, để rồi giờ đây sẽ được cùng nhau đón đợi ngày đặc biệt và thiêng liêng nhất.</em>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 22" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/8(1).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-3-1.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-3-1-420x279.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 21" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/9.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-1-1.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-1-1-420x279.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Với nàng Á hậu 2012, kết hôn sẽ mở ra cho Tú Anh một trang mới trong cuộc đời.&nbsp;Cô cũng từng bày tỏ ước muốn sau khi kết hôn sẽ trở thành người phụ nữ của gia đình, hy sinh vì chồng vì con giống mẹ. Vì thế, sau khi lập gia đình, nàng Á hậu xinh đẹp sẽ tạm gác sự nghiệp để có thể hoàn toàn chăm lo cho gia đình nhỏ.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 23" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/10.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-6-1.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-6-1-420x279.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/11.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-7-1.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-7-1-420x279.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Từ lúc công khai tin mừng, đôi uyên ương này&nbsp;đã mạnh dạn hơn khi xuất hiện trước công chúng. Tuy nhiên, cả hai vẫn còn khá ngại ngùng trong việc thể hiện tình cảm nơi đông người.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 24" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/12.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-8-1.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-8-1-420x280.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/13.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-9-1.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-9-1-420x280.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Cặp đôi đáng yêu này chia sẻ họ cũng đang đếm ngược từng ngày cho tới hôn lễ &ndash; ngày chính thức nên duyên vợ chồng. Thêm vào đó, &ldquo;nàng Á&rdquo; sẽ tổ chức&nbsp;tiệc cưới&nbsp;vào ngày 21/7 tại Long Biên, Hà Nội.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="ảnh cưới 25" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/14.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-10.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-10-213x159.jpg 213w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-10-420x315.jpg 420w, http://www.marry.vn/wp-content/uploads/2018/07/18/18/anh-cuoi-10-447x335.jpg 447w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Trước khi chia sẻ bộ ảnh cưới cực &ldquo;tình&rdquo; này, danh sách khách mời tham gia toàn sao của đám cưới Tú Anh cũng đã được hé lộ, trong đó có các người đẹp nổi tiếng như: Hoa hậu Mai Phương Thúy, Hoa hậu Ngọc Hân, Hoa hậu Thu Thảo, Hoa hậu Đỗ Mỹ Linh cùng các Á hậu Hoàng Anh, Thanh Tú&hellip;\r\n</p>\r\n\r\n<p style="text-align: right;">\r\n	<em>Ảnh: Ngoisao</em>\r\n</p>', 'images/uploads/images/tintuc/anh-cuoi-5.jpg', 1, 1, 2, 1, '2018-08-04 14:49:16', '2018-08-04 15:13:20', 19),
(3, '“Chết ngất” với bộ ảnh tình yêu giả film Hongkong những năm 1990', 'chet-ngat-voi-bo-anh-tinh-yeu-gia-film-hongkong-nhung-nam-1990', '<p>\r\n	Bộ ảnh tình yêu siêu &ldquo;chất&rdquo; này được chụp theo phong cách Hongkong những năm 1990. Album này đã sở hữu lượt like, share và comment &ldquo;khủng&rdquo; trên mạng xã hội những ngày gần đây.\r\n</p>', '<p>\r\n	Chụp&nbsp;hình theo phong cách &ldquo;Reply 1990&rdquo; dần trở thành xu hướng được các bạn trẻ tại Việt Nam yêu thích. Nhiều đôi uyên ương đã chọn đây như một cách lưu giữ những khoảnh khắc tình yêu của riêng mình. Ưu điểm của xu hướng này là bạn không cần đầu tư quá nhiều vào trang phục, concept hay background.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/nhung-nam-1990.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 1" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/1(2).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-1.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-1-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Chỉ cần một địa điểm đúng &ldquo;chất&rdquo; hoài cổ, những bộ trang phục retro giản đơn là đã có thể sở hữu được những tấm ảnh lung linh, chuẩn những thước phim tại xứ Cảng thơm. Bộ ảnh dưới đây là minh chứng &ldquo;hùng hồn&rdquo; nhất cho phong cách&nbsp;<em>Reply 1990</em>.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 2" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/2(2).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-2.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-2-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 3" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/3(2).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-3.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-3-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Album tình yêu lãng mạn này được đăng trong một group&nbsp;về nhiếp ảnh cùng những dòng caption ngọt ngào khiến ai cũng phải &ldquo;tan chảy&rdquo;:&nbsp;<em>Khi con người ta mới quen nhau, đều có thói quen phô bày hết những điểm tốt của mình, nhưng tiếp xúc lâu ngày, các khuyết điểm sẽ dần bộc lộ. Đến một ngày nào đó, bạn không còn phải mệt mỏi che giấu, mà đối phương cũng nhìn thấu hết con người bạn nhưng vẫn không rời xa bạn. Đó chính là tình yêu&hellip;</em>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 4" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/4(2).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-4.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-4-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 5" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/5(2).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-5.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-5-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Ngay sau khi chia sẻ, bộ ảnh đã nhận được hàng ngàn lượt like, share và comment. Đây đang trở thành&nbsp;cơn sốt trên mạng xã hội trong những ngày đây.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 7" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/6(2).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-7.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-7-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 6" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/7(2).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-6.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-6-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Có thể do hai nhân vật chính đẹp đôi, phù hợp với concept nhưng cũng có thể bởi dòng caption quá &ldquo;đốn tim&rdquo; người đọc mà album này đã nhận được những phản hồi tích cực, đang &ldquo;làm mưa làm gió&rdquo; trên cộng đồng mạng.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 8" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/8(2).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-8.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-8-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 9" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/9(1).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-9.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-9-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Lướt qua những tấm ảnh, thoạt đầu bạn sẽ dễ dàng nhận ra khung cảnh quen thuộc tại những vùng quê. Hình ảnh &ldquo;ngõ vắng xôn xao&rdquo; hay&nbsp;tiệm bách hóa&nbsp;bé&nbsp;xinh vẫn luôn là một trong những ký ức tuổi thơ đẹp nhất, gắn liền với thế hệ 9x.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 12" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/10(1).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-12.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-12-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 11" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/11(1).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-11.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-11-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Tình yêu không nhất thiết phải được thể hiện bằng những hành động&nbsp;âu yếm&nbsp;và thân mật. Đôi khi, chỉ cần một cái nhìn hay chạm mắt&nbsp;bất chợt&nbsp;cũng khiến đối phương &ldquo;tan chảy&rdquo;. Bởi ánh mắt thường không bao giờ chôn dấu được những tâm tư sâu kín nơi đáy lòng.\r\n</p>\r\n\r\n<p>\r\n	Nhiều nàng khi yêu cũng bông đùa rằng: Có thể vẻ ngoài hay cử chỉ của những chàng trai sẽ khiến bạn lầm tưởng trong họ không tồn tại một chút yêu thương nào, cho đến khi bạn nhìn vào mắt họ.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 10" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/12(1).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-10.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-10-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 13" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/13(1).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-13.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-13-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Lấy cảm hứng từ một tình yêu mộc mạc nhưng chân thành, album này dù không có hành động thân mật nào nhưng chính cái cách mà đôi uyên ương nhìn nhau, người xem vẫn cảm nhận được những gì đẹp nhất trong tình yêu của họ.\r\n</p>\r\n\r\n<p>\r\n	Thêm vào đó, cái thần khi chụp ảnh cũng như ngoại hình nổi bật của đôi nam thanh nữ tú này cũng là yếu tố khiến bộ ảnh sở hữu lượt like, share và comment &ldquo;khủng&rdquo;. Chia sẻ từ&nbsp;nhiếp ảnh gia Thuong Vang của Hiệu Ảnh Tân Thời&nbsp;&ndash; ekip thực hiện album có thể khiến bạn bất ngờ.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 14" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/14(1).jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-14.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-14-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 19" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/15.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-19.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-19-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Bởi nam chính và nữ chính trong những tấm hình tình cảm này vốn không phải là đôi uyên ương thật sự, mà chỉ là bạn bè. Nhờ diễn xuất cực ưng ý của 2 bạn mẫu nên chỉ trong vòng 2 tiếng đồng hồ bộ ảnh đã hoàn thành,&nbsp;dù được thực hiện dưới cái nóng hơn 40&ordm;C.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 20" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/16.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-20.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-20-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="những năm 1990 21" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/17.jpg" srcset="http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-21.jpg 600w, http://www.marry.vn/wp-content/uploads/2018/07/09/09/nhung-nam-1990-21-420x630.jpg 420w" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Điều này đã góp phần thành công cho bộ ảnh tình cảm cực &ldquo;chất&rdquo; này. Song song đó, những bức hình cũng truyền tải đúng với &ldquo;ý đồ&rdquo; của người chụp là một album giản dị, tình cảm và mang hơi thở xứ Cảng thơm những năm 1990.\r\n</p>', 'images/uploads/images/tintuc/16(1).jpg', 1, 1, 2, 1, '2018-08-04 14:58:55', '2018-08-04 15:14:21', 20);
INSERT INTO `posts` (`id`, `title`, `path`, `description`, `content`, `image`, `post_type`, `isActive`, `category_item_id`, `user_id`, `created_at`, `updated_at`, `seo_id`) VALUES
(4, '{Tổng hợp} Top 15 địa điểm chụp ảnh cưới đẹp NHẤT tại Đà Nẵng', 'tong-hop-top-15-dia-diem-chup-anh-cuoi-dep-nhat-tai-da-nang', '<h2>\r\n	<span style="font-size:16px;">Bài viết hôm nay mình sẽ giới thiệu đến các bạn 15&nbsp;<strong>địa điểm chụp ảnh cưới đẹp tại Đà Nẵng</strong>&nbsp;được các cặp đôi và các bạn trẻ bình chọn nhiều nhất trên các trang báo và mạng xã hội. Cùng tìm hiểu các địa điểm này nhé!</span>\r\n</h2>', '<h3>\r\n	<strong>1. Chim Bồ Câu Tại Công viên Biển Đông</strong>\r\n</h3>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-11.jpg"><img alt="anh-cuoi-tai-da-nang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/1(3).jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-11.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-11-300x195.jpg 300w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-11-50x33.jpg 50w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash;&nbsp;<strong>Công viên Biển Đông</strong>&nbsp;nằm cuối đường Phạm Văn Đồng, cạnh Tượng đài mẹ Âu Cơ và Vườn chim hòa bình trên tuyến du lịch ven biển đường Hoàng Sa &ndash;&nbsp;<strong>bán đảo Sơn Trà</strong>&nbsp;(TP Đà Nẵng) có cảnh quan đẹp, bãi tắm biển lãng mạn là điểm đến của du khách và người dân thành phố. Hằng ngày, có khá đông du khách trong và ngoài nước đến đây nghỉ dưỡng, tham quan, thể dục, du lịch&hellip;\r\n</p>\r\n\r\n<p>\r\n	&ndash;&nbsp;<strong>Công viên Biển Đông</strong>&nbsp;không chỉ nằm ở ven biển, hướng thẳng tầm nhìn ra quần đảo Hoàng Sa như một sự khẳng định chủ quyền lãnh hải, &ldquo;Công viên Biển Đông&rdquo; còn là &ldquo;Công viên Hoà Bình&rdquo; rợp bóng chim bồ câu, là &ldquo;Công viên Tình Yêu&rdquo; của những đôi trai gái và là điểm đến của đông đảo du khách gần xa&hellip;\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-19-1.jpg"><img alt="anh-cuoi-tai-da-nang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/2(3).jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-19-1.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-19-1-300x201.jpg 300w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-19-1-50x33.jpg 50w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash;&nbsp;<strong>Vườn chim hòa bình tại Công viên biển Đông</strong>&nbsp;được xây dựng năm 2009 với số lượng ban đầu khoảng 200 con, đến nay số lượng chim đã tăng lên đến hàng ngàn con.\r\n</p>\r\n\r\n<p>\r\n	&ndash; Khi bình minh vừa ló rạng cũng là lúc những đàn chim bồ câu bay lượn và sà xuống trước sân ở công viên biển Đông.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang.jpg"><img alt="chup-anh-cuoi-dep-tai-da-nang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/3(3).jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-234x300.jpg 234w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-39x50.jpg 39w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash; Chúng bay lượn vong quanh trên không trung như muốn chào đón, vui đùa với những vị khách trong ngày mới. Những bạn trẻ thường đến đây vui đùa với đàn chim như một cách để xả stress sau những giờ học mệt mỏi, căng thẳng.\r\n</p>\r\n\r\n<p>\r\n	&ndash; Nơi đây&nbsp;là<strong>&nbsp;địa điểm chụp ảnh cưới đẹp tại Đà Nẵng&nbsp;</strong>được các bạn trẻ bầu chọn là địa điểm chụp ảnh cưới lý tưởng nhất tại Đà Nẵng nếu họ được đến đây&nbsp;\r\n</p>\r\n\r\n<h3>\r\n	<strong>2. Bà Nà Hills</strong>\r\n</h3>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-15.jpg"><img alt="anh-cuoi-tai-da-nang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/4(3).jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-15.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-15-189x300.jpg 189w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-15-645x1024.jpg 645w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-15-32x50.jpg 32w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash;&nbsp;<strong>Núi Bà Nà</strong>&nbsp;là một trong những núi đẹp nhất&nbsp;<strong>Đà Nẵng</strong>&nbsp;cùng với núi Ngũ Hành Sơn và núi Sơn Trà.\r\n</p>\r\n\r\n<p>\r\n	&ndash; Với khí hậu quanh năm mát mẻ, nhiệt độ trung bình vào mùa hè khoảng 18&ordm;C, Bà Nà &ndash; Núi Chúa là khu du lịch sinh thái-nghỉ dưỡng lý tưởng ở miền Trung.\r\n</p>\r\n\r\n<ul>\r\n	<li>\r\n		<strong><a href="http://mrhanhphuc.com/dia-diem-chup-anh-cuoi-dep-tai-ba-vi/">Top địa điểm hot chụp ảnh, chụp ảnh cưới siêu đẹp dành cho giới trẻ tại Ba Vì</a></strong>\r\n	</li>\r\n	<li>\r\n		<strong><a href="http://mrhanhphuc.com/chup-anh-cuoi-ba-vi/">10 lý do khiến Ba Vì trở thành địa điểm chụp ảnh cưới LÝ TƯỞNG của các cặp đôi hiện nay</a></strong>\r\n	</li>\r\n</ul>\r\n\r\n<p>\r\n	&ndash; Bà Nà được coi là &ldquo;lá phổi xanh&rdquo;, là &ldquo;hòn ngọc quý&rdquo; về khí hậu mà thiên nhiên ban tặng cho Đà Nẵng. Du khách đến Bà Nà không chỉ được tận hưởng không khí trong lành, xanh, sạch đẹp mà còn được chiêm ngưỡng những cảnh quan đẹp mà hiếm vùng nghỉ mát nào có được. Ở Bà Nà một ngày có 4 mùa riêng biệt: buổi sáng tiết xuân, buổi trưa vào hạ, buổi chiều se se lạnh sang thu và đêm về lạnh giá như giữa đông.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-8.jpg"><img alt="anh-cuoi-tai-da-nang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/5(3).jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-8.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-8-237x300.jpg 237w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-8-39x50.jpg 39w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash; Nhờ vào những điều kiện tự nhiên được thiên nhiên ban cho cộng với sự đầu tư lâu dài, ngoài là 1 khu du lịch hấp dẫn du khách thì&nbsp;<strong>Bà Nà Hills</strong>&nbsp;còn là một&nbsp;<strong>địa điểm chụp ảnh cưới</strong>&nbsp;mà bất kỳ cặp đôi nào cũng muốn có dịp đến đây và lưu lại những kỷ niệm đẹp.\r\n</p>\r\n\r\n<h3>\r\n	<strong>3. Bãi Biển ĐÀ NẴNG</strong>\r\n</h3>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-18.jpg"><img alt="anh-cuoi-tai-da-nang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/6(3).jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-18.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-18-191x300.jpg 191w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-18-650x1024.jpg 650w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-18-32x50.jpg 32w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash;&nbsp;<strong>Đà Nẵng</strong>&nbsp;là địa điểm nổi tiếng trên cả nước với những bãi biển tuyệt đẹp. Các bãi biển với nền cát trắng trải dài kết hợp với màu xanh của trời biển sẽ tạo lên những bức hình tuyệt đẹp lưu giữ những khoảnh khắc của cuộc đời bạn.\r\n</p>\r\n\r\n<p>\r\n	<strong>Các bãi biển nổi tiếng tại Đà Nẵng:</strong>\r\n</p>\r\n\r\n<p>\r\n	&ndash; Bãi Mỹ Khê Biển Mỹ Khê từng được tạp chí Forbes bình chọn là 1 trong 6 bãi biển quyến rũ nhất hành tinh\r\n</p>\r\n\r\n<p>\r\n	&ndash; Bãi biển ở khu vực bán đảo Sơn Trà Một góc bán đảo Sơn Trà, Đà Nẵng\r\n</p>\r\n\r\n<p>\r\n	&ndash; Bãi biển Bắc Mỹ An và khu vực khách sạn Furama\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-1.jpg"><img alt="anh-cuoi-tai-da-nang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/7(3).jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-1.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-1-300x199.jpg 300w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-1-50x33.jpg 50w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash; Biển Phạm Văn Đồng Bãi tắm Phạm Văn Đồng\r\n</p>\r\n\r\n<p>\r\n	&ndash; Bãi tắm Non Nước\r\n</p>\r\n\r\n<p>\r\n	&ndash; Bãi Thanh Bình Bãi tắm Thanh Bình\r\n</p>\r\n\r\n<p>\r\n	&ndash; Biển Nam Ô Bãi đá đẹp huyền ảo ở bãi Nam Ô\r\n</p>\r\n\r\n<p>\r\n	&ndash; Bãi biển Xuân Thiều\r\n</p>\r\n\r\n<h3>\r\n	<strong>4. Đèo Hải Vân</strong>\r\n</h3>\r\n\r\n<p>\r\n	&ndash;&nbsp;<strong>Ðèo Hải Vân</strong>&nbsp;nổi lên trên nền nước biển xanh ngắt của biển Ðông, trải dài khoảng 20 km từ Huế đến Ðà Nẵng. Ðó là một vùng đèo cao nằm dọc theo bờ biển dài 1600km của Việt Nam. Trong nhiều thế kỉ, vùng đèo này đã tạo thành một bức tường ngăn cách giữa nền văn hoá Chàm cổ ở phía Nam và nền văn minh kế thừa của tộc Việt tại vùng châu thổ sông Hồng, là đường phân chia giữa những ảnh hưởng văn hoá từ phía bắc và phía nam châu Á.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-1.jpg"><img alt="chup-anh-cuoi-dep-tai-da-nang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/8(3).jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-1.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-1-300x210.jpg 300w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-1-50x35.jpg 50w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash; Tại đèo Hải Vân với những cung đường đẹp nên thơ là một địa điểm được rất nhiều bạn trẻ lựa chọn để lưu lại khoảnh khắc đẹp nhất của đời mình tại đây.&nbsp;<strong>Chụp ảnh cưới tại đèo Hải Vân</strong>&nbsp;là một sự kết hợp tuyệt vời giữa cảnh đẹp núi rừng và biển cả&hellip;\r\n</p>\r\n\r\n<h3>\r\n	<strong>5. Đô thị cổ Hội An</strong>\r\n</h3>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-4.jpg"><img alt="anh-cuoi-tai-da-nang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/9(2).jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-4.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-4-199x300.jpg 199w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-4-680x1024.jpg 680w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-4-33x50.jpg 33w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash;&nbsp;<strong>Đô thị cổ Hội An</strong>&nbsp;là một địa điểm chụp ảnh hoài cổ đẹp bậc nhất Việt Nam dành cho các bạn trẻ hoặc các cặp đôi muốn hoài niện sự cổ kính của đất nước.&nbsp;<strong>Đô thị cổ Hội An</strong>&nbsp;là một quần thể di tích kiến trúc cổ gồm nhiều công trình nhà ở, hội quán, đình chùa, miếu mạo, &hellip;\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-5.jpg"><img alt="anh-cuoi-tai-da-nang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/10(2).jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-5.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-5-288x300.jpg 288w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-5-48x50.jpg 48w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	Những con đường phố hẹp chạy ngang dọc tạo thành các ô vuông kiểu bàn cờ. Cảnh quan phố phường Hội An in đậm một màu rêu phong cổ kính như một bức tranh bắt mắt.\r\n</p>\r\n\r\n<h3>\r\n	<strong>6. InterContinental Danang Sun Peninsula</strong>\r\n</h3>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-10.jpg"><img alt="anh-cuoi-tai-da-nang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/11(2).jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-10.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-10-300x197.jpg 300w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-10-50x33.jpg 50w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash; Là một khu nghỉ dưỡng cao cấp được thiết kế theo phong cách hiện đại,&nbsp;<strong>InterContinental Danang Sun Peninsula</strong>&nbsp;với khung cảnh hữu tình đầy thơ mộng InterContinental Danang Sun Peninsula được ví như là núi non, biển cả của đất trời, nơi đây chắc chắn là một<strong>&nbsp;địa điểm chụp ảnh đẹp</strong>&nbsp;không thể bỏ qua của những bạn trẻ mê cảnh đẹp và những cặp đôi muốn lưu lại những khoảnh khắc tuyệt vời nhất trong đời.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-da-nang-3.jpg"><img alt="chup-anh-cuoi-tai-da-nang-3" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/12(2).jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-da-nang-3.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-da-nang-3-300x171.jpg 300w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-da-nang-3-50x29.jpg 50w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<h3>\r\n	<strong>7. Chùa Linh Ứng</strong>\r\n</h3>\r\n\r\n<p>\r\n	&ndash; Cách bãi biển Mỹ Khê Đà Nẵng chừng 10km. Chùa tọa lạc trên một ngọn đồi của bán đảo Sơn Trà, nằm ở lưng chừng núi, mang hình con rùa, mặt hướng ra biển, lưng tựa vào cánh rừng nguyên sinh bạt ngàn với bao chim thú của bán&nbsp;<strong>đảo Sơn Trà</strong>&hellip;\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-2.jpg"><img alt="chup-anh-cuoi-dep-tai-da-nang-2" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/13(2).jpg" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash; Chùa Linh Ứng Bãi Bụt Sơn Trà là ngôi chùa lớn nhất ở thành phố Đà Nẵng cả về quy mô (rộng khoảng 20ha) lẫn kiến trúc nghệ thuật. Đây là ngôi chùa nằm trong quần thể du lịch bán đảo Sơn Trà được xây dựng với sự kết hợp hài hòa giữa nét hiện đại và truyền thống của chùa Việt, hiện đang là điểm du lịch mới của thành phố biển xinh đẹp này.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-chua-linh-ung-da-nang.jpg"><img alt="chup-anh-cuoi-tai-chua-linh-ung-da-nang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/14(2).jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-chua-linh-ung-da-nang.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-chua-linh-ung-da-nang-300x229.jpg 300w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-chua-linh-ung-da-nang-50x38.jpg 50w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash;&nbsp;<strong>Tượng Phật Bà Quan Thế Âm trên sân chùa Linh Ứng</strong>&nbsp;với chiều cao 67m, đường kính tòa sen 35m, tương đương tòa nhà 30 tầng đang được xem là bức tượng Phật cao nhất ở Việt Nam hiện nay.\r\n</p>\r\n\r\n<p>\r\n	&ndash; Với vị trí, phong cảnh và sự linh thiêng của Chùa Linh Ứng mà nơi đây được rất nhiều bạn trẻ lựa chọn để lưu lại những tấm hình đẹp của đời mình, và Chùa Linh Ứng là một trong số những địa điểm chụp ảnh cưới đẹp nhất tại Đà Nắng.\r\n</p>\r\n\r\n<h3>\r\n	<strong>8. Bãi Bụt</strong>\r\n</h3>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-2.jpg"><img alt="anh-cuoi-tai-da-nang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/15(1).jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-2.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-2-300x212.jpg 300w, http://mrhanhphuc.com/wp-content/uploads/2017/05/anh-cuoi-tai-da-nang-2-50x35.jpg 50w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash;&nbsp;<strong>Bãi Bụt Sơn Trà</strong>&nbsp;là một trong những điểm du lịch mà du khách không thể bỏ qua mỗi khi có dịp thực hiện một chuyến du lịch Sơn Trà và là địa điểm check in và chụp ảnh cưới vô cùng lý tưởng cho các cặp đôi.\r\n</p>\r\n\r\n<h3>\r\n	<strong>9. Cây Đa Ngàn Năm</strong>\r\n</h3>\r\n\r\n<p>\r\n	&ndash; Đây được cho là điểm vui chơi mỗi khi giáng trần của các vị thần tiên, họ yêu quý cây đa nên đã ban cho vẻ đẹp hiếm có, hình dáng vĩ đại.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-cuoi-dep-tai-da-ang.jpg"><img alt="chup-cuoi-dep-tai-da-ang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/16(1).jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-cuoi-dep-tai-da-ang.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-cuoi-dep-tai-da-ang-300x200.jpg 300w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-cuoi-dep-tai-da-ang-50x33.jpg 50w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash; Vào mỗi ngày nắng, cây đa ngàn năm hiện lên lung linh với tán lá bao phủ một vùng trời. Vào ngày trời âm u, mây và sương mù vây quanh khiến khung cảnh thêm huyền bí như một nơi giáp ranh giữa thiên đường và hạ giới.\r\n</p>\r\n\r\n<p>\r\n	&ndash; Vì vậy<strong>&nbsp;cây Đa Ngàn Năm</strong>&nbsp;là tâm&nbsp;<strong>điểm chụp hình cưới ở Đà Nẵng</strong>&nbsp;của các đôi uyên ương muốn có bộ sưu tập ảnh cưới hòa nhịp với cảnh sắc núi rừng thiên nhiên.\r\n</p>\r\n\r\n<h4>\r\n	<strong>10. Ngũ Hành Sơn</strong>\r\n</h4>\r\n\r\n<p>\r\n	&ndash;&nbsp;<strong>Ngũ Hành Sơn</strong>&nbsp;hay núi Non Nước là tên chung của một danh thắng gồm 5 ngọn núi đá vôi nhô lên trên một bãi cát ven biển, trên một diện tích khoảng 2 km2, gồm: Kim Sơn, Mộc Sơn, Thủy Sơn (lớn, cao và đẹp nhất), Hỏa Sơn (có hai ngọn) và Thổ Sơn, nằm cách trung tâm thành phố Đà Nẵng khoảng 8 km về phía Đông Nam.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-da-ang-4.jpg"><img alt="chup-anh-cuoi-tai-da-nang-4" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/17(1).jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-da-ang-4.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-da-ang-4-196x300.jpg 196w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-da-ang-4-670x1024.jpg 670w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-da-ang-4-33x50.jpg 33w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash; Ngũ Hành Sơn được ví như hòn non bộ khổng lồ giữa lòng thành phố Đà Nẵng, không những là biểu tượng văn hoá trong tâm thức của mỗi người con quê hương Đà Nẵng mà còn là điểm đến hấp dẫn cho mọi du khách mỗi khi đến Đà Nẵng.\r\n</p>\r\n\r\n<h4>\r\n	<strong>11. Hồ Xanh</strong>\r\n</h4>\r\n\r\n<p>\r\n	&ndash; Nằm ở vị trí đẹp mắt trên&nbsp;<strong>bán đảo Sơn Trà</strong>&nbsp;(quận Sơn Trà, cách trung tâm TP. Đà Nẵng khoảng 10km về hướng Đông Bắc), Hồ Xanh được liệt vào danh sách một trong&nbsp;<strong>những điểm chụp ảnh cưới đẹp nhất Đà Nẵng</strong>.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-da-nang-4.jpg"><img alt="chup-anh-cuoi-tai-da-nang-4" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/18.jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-da-nang-4.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-da-nang-4-200x300.jpg 200w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-da-nang-4-683x1024.jpg 683w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-tai-da-nang-4-33x50.jpg 33w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash; Với vẻ đẹp tự nhiên,<strong>&nbsp;Hồ Xanh</strong>&nbsp;được nhiều bạn trẻ ví như một bán đảo thu nhỏ, ở đây thiên nhiên hoang dã, nhìn bằng mắt thường thì thấy vô cùng bình thường nhưng khi lên ảnh sẽ cho những tấm<strong>&nbsp;hình đẹp lung linh huyền ảo</strong>.\r\n</p>\r\n\r\n<p>\r\n	&ndash; Không chỉ là điểm chụp ảnh cưới quen thuộc được các cặp đôi yêu thích nơi này còn thu hút lượng lớn bạn trẻ đến&nbsp;<strong>chụp&nbsp;ảnh vào mỗi dịp nghỉ</strong>.\r\n</p>\r\n\r\n<h4>\r\n	<strong>12. Cầu Tình Yêu</strong>\r\n</h4>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-o-cau-tinh-yeu-da-nang.jpg"><img alt="chup-anh-cuoi-o-cau-tinh-yeu-da-nang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/19.jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-o-cau-tinh-yeu-da-nang.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-o-cau-tinh-yeu-da-nang-300x180.jpg 300w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-o-cau-tinh-yeu-da-nang-50x30.jpg 50w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash;&nbsp;<strong>Cầu tình yêu</strong>&nbsp;trên&nbsp;<strong>sông Hàn &ndash; Đà Nẵng</strong>&nbsp;mới khánh thành nhưng nhanh chóng trở thành điểm hẹn hò mới của giới trẻ và khách du lịch đến thành phố.\r\n</p>\r\n\r\n<h4>\r\n	<strong>13. Bãi Đa Sơn Trà</strong>\r\n</h4>\r\n\r\n<p>\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-3.jpg"><img alt="chup-anh-cuoi-dep-tai-da-nang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/20.jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-3.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-3-300x150.jpg 300w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-3-600x300.jpg 600w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-3-400x200.jpg 400w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-3-50x25.jpg 50w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash;&nbsp;<strong>Bãi Đa Sơn Trà</strong>&nbsp;là bãi nằm gần vị trí cây Đa ngàn năm, tên bãi Đa cũng được hình thành từ cây Đa ngàn năm này, ở khu vực này, có nhiều du khách đi câu cá dạng tự túc, khu vực này nước sâu, có nhiều mỏm đá. Nếu đi theo đường biển Hoàng Sa, tới 1 ngã 3 đoạn Sơn Trà resort, bạn sẽ thấy một tấm bản ghi chú hướng về phía bãi Đa, rẻ phải xuống biển là bãi Đa, hướng lên núi là tiếp tục đi đến&nbsp;<strong>cây Đa đại thụ</strong>.\r\n</p>\r\n\r\n<p>\r\n	&ndash; Nơi đây là một&nbsp;<strong>địa điểm chụp ảnh cưới</strong>,&nbsp;<strong>ảnh kỷ niệm</strong>&nbsp;không thể bỏ qua mỗi khi đến Đà Nẵng.\r\n</p>\r\n\r\n<h4>\r\n	<strong>14. Bán đảo Sơn Trà</strong>\r\n</h4>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-5.jpg"><img alt="chup-anh-cuoi-dep-tai-da-nang-5" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/21.jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-5.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-5-232x300.jpg 232w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-5-39x50.jpg 39w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash;&nbsp;<strong>Bán đảo Sơn Trà</strong>&nbsp;được ví là bán đảo &ldquo;Độc Nhất Vô Nhị&rdquo; ở Việt Nam. Bán đảo Sơn Trà nằm cách trung tâm thành phố Đà Nẵng khoảng 10 km về phía đông bắc. Với ba mặt giáp biển, mặt còn lại giáp đô thị, Sơn Trà là tổng hòa của hệ sinh thái rừng tự nhiên gắn liền biển duy nhất ở Việt Nam. Là địa điểm chụp ảnh cưới tuyệt đẹp khó có thể bỏ qua của các cặp đôi mỗi khi đến Đà Nắng.\r\n</p>\r\n\r\n<h4>\r\n	<strong>15. Lăng Cô</strong>\r\n</h4>\r\n\r\n<p>\r\n	&ndash;&nbsp;<strong>Vịnh Lăng Cô</strong>&nbsp;được xem là một trong những bãi biển đẹp nhất Việt Nam, với bãi cát trắng dài, nước biển trong xanh, không khí dịu mát rất thích hợp với việc nghỉ dưỡng. Cũng chính vì lẽ đó mà vịnh Lăng Cô ngày càng trở thành điểm đến của nhiều du khách.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<a href="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-6.jpg"><img alt="chup-anh-cuoi-dep-tai-da-nang" sizes="(max-width: 700px) 100vw, 700px" src="http://localhost:8080/haimocweddingv4/images/uploads/images/tintuc/22.jpg" srcset="http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-6.jpg 700w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-6-300x212.jpg 300w, http://mrhanhphuc.com/wp-content/uploads/2017/05/chup-anh-cuoi-dep-tai-da-nang-6-50x35.jpg 50w" style="width: 80%; height: 80%;"></a>\r\n</p>\r\n\r\n<p>\r\n	&ndash; Với vẻ đẹp thơ mộng quyến rũ Lăng Cô kết hợp với những&nbsp;<strong>kỹ thuật chụp ảnh điêu liệu</strong>&nbsp;của thợ ảnh sẽ cho ra những tấm&nbsp;<strong>hình cưới đẹp lung linh</strong>&nbsp;làm hài lòng tất cả các cặp đôi mỗi&nbsp;chọn Đà Nẵng làm địa chỉ chụp ảnh cưới\r\n</p>', 'images/uploads/images/tintuc/1(3).jpg', 1, 1, 2, 1, '2018-08-04 15:13:00', '2018-08-04 15:13:09', 21),
(5, 'Ưu Đãi Đặc Biệt Chào Mùa Cưới 2018', 'uu-dai-dac-biet-chao-mua-cuoi-2018', '<p style="text-align: center;">\r\n	Chỉ 5 ngày duy nhất\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Sea Wediing dành tặng bạn gói chụp ảnh cưới cực kỳ ưu đãi\r\n</p>', '<p>\r\n	khuyến mãi tháng 8 có gì hot\r\n</p>', 'images/uploads/images/album/congthuong050818/10.jpg', 1, 1, 3, 1, '2018-08-06 08:38:33', '2018-08-06 08:38:33', 26),
(6, 'Gói Chụp Đà Nẵng - Hội An', 'goi-chup-da-nang-hoi-an', '<p>\r\n	Hội An như một bức tranh mộc mạc, giản dị và nên thơ, dù là ngày hay đêm, nơi đây vẫn mang ...\r\n</p>', '<div class="info">\r\n	<div class="row">\r\n		<div class="col-md-6 mb-4">\r\n			<div class="card one-item h-100">\r\n				<div class="img-item">\r\n					<img src="/images/price/3.jpg">\r\n				</div>\r\n\r\n				<div class="card-body">\r\n					<div class="plan">\r\n						<h4 class="title">\r\n							Gói Đà Nẵng - Hội An (basic)\r\n						</h4>\r\n\r\n						<p class="price">\r\n							<span>7.500.000</span>\r\n						</p>\r\n\r\n						<p class="detail">\r\n							Thời gian chụp: 6h đến 17h\r\n						</p>\r\n\r\n						<div class="content">\r\n							<h5>\r\n								Chi tiết kế hoạch\r\n							</h5>\r\n\r\n							<ul>\r\n								<li>\r\n									2 váy cưới+1 veston+1 áo dài\r\n								</li>\r\n								<li>\r\n									01 album 30x30cm (20 trang)\r\n								</li>\r\n								<li>\r\n									01 ảnh nhà hàng 60x90cm\r\n								</li>\r\n								<li>\r\n									dvd ảnh gốc + dvd slide\r\n								</li>\r\n								<li>\r\n									makeup + làm tóc trong ngày\r\n								</li>\r\n								<li>\r\n									hoa cầm tay, phụ kiện cưới\r\n								</li>\r\n								<li>\r\n									xe 16 chỗ trong ngày chụp\r\n								</li>\r\n							</ul>\r\n						</div>\r\n					</div>\r\n				</div>\r\n\r\n				<div class="card-footer">\r\n					<div class="booking">\r\n						<a href="/lien-he">Tôi Book Gói Này</a>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n\r\n		<div class="col-md-6 mb-4">\r\n			<div class="card one-item h-100">\r\n				<div class="img-item">\r\n					<img src="/images/price/31.jpg">\r\n				</div>\r\n\r\n				<div class="card-body">\r\n					<div class="plan">\r\n						<h4 class="title">\r\n							Gói Đà Nẵng - Hội An (VIP)\r\n						</h4>\r\n\r\n						<p class="price">\r\n							<span>9.500.000</span>\r\n						</p>\r\n\r\n						<p class="detail">\r\n							Thời gian chụp: 6h đến 17h\r\n						</p>\r\n\r\n						<div class="content">\r\n							<h5>\r\n								Chi tiết kế hoạch\r\n							</h5>\r\n\r\n							<ul>\r\n								<li>\r\n									3 váy cưới+2 veston+1 áo dài\r\n								</li>\r\n								<li>\r\n									01 album 30x30cm (30 trang)\r\n								</li>\r\n								<li>\r\n									02 ảnh nhà hàng 60x90cm\r\n								</li>\r\n								<li>\r\n									dvd ảnh gốc + dvd slide\r\n								</li>\r\n								<li>\r\n									makeup + làm tóc trong ngày\r\n								</li>\r\n								<li>\r\n									hoa cầm tay, phụ kiện cưới\r\n								</li>\r\n								<li>\r\n									xe 16 chỗ trong ngày chụp\r\n								</li>\r\n							</ul>\r\n						</div>\r\n					</div>\r\n				</div>\r\n\r\n				<div class="card-footer">\r\n					<div class="booking">\r\n						<a href="/lien-he">Tôi Book Gói Này</a>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>', 'images/uploads/images/album/ducngan150818/NHAT4848%20copy.jpg', 1, 1, 4, 1, '2018-08-23 07:38:38', '2018-08-24 15:00:03', 34),
(7, 'Gói chụp Đà Nẵng - Bà Nà', 'goi-chup-da-nang-ba-na', '<p>\r\n	Làng Pháp tại khu du lịch Bà Nà Hills tái hiện một nước Pháp cổ điển và lãng mạn với...\r\n</p>', '<div class="info">\r\n	<div class="row">\r\n		<div class="col-md-6 mb-4">\r\n			<div class="card one-item h-100">\r\n				<div class="img-item">\r\n					<img src="/images/price/4.jpg">\r\n				</div>\r\n\r\n				<div class="card-body">\r\n					<div class="plan">\r\n						<h4 class="title">\r\n							Gói Đà Nẵng - Bà Nà (basic)\r\n						</h4>\r\n\r\n						<p class="price">\r\n							<span>7.500.000</span>\r\n						</p>\r\n\r\n						<p class="detail">\r\n							Thời gian chụp: 6h đến 17h\r\n						</p>\r\n\r\n						<div class="content">\r\n							<h5>\r\n								Chi tiết kế hoạch\r\n							</h5>\r\n\r\n							<ul>\r\n								<li>\r\n									2 váy cưới+1 veston+1 áo dài\r\n								</li>\r\n								<li>\r\n									01 album 30x30cm (20 trang)\r\n								</li>\r\n								<li>\r\n									01 ảnh nhà hàng 60x90cm\r\n								</li>\r\n								<li>\r\n									dvd ảnh gốc + dvd slide\r\n								</li>\r\n								<li>\r\n									makeup + làm tóc trong ngày\r\n								</li>\r\n								<li>\r\n									hoa cầm tay, phụ kiện cưới\r\n								</li>\r\n								<li>\r\n									xe 16 chỗ trong ngày chụp\r\n								</li>\r\n							</ul>\r\n						</div>\r\n					</div>\r\n				</div>\r\n\r\n				<div class="card-footer">\r\n					<div class="booking">\r\n						<a href="/lien-he">Tôi Book Gói Này</a>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n\r\n		<div class="col-md-6 mb-4">\r\n			<div class="card one-item h-100">\r\n				<div class="img-item">\r\n					<img src="/images/price/15.jpg">\r\n				</div>\r\n\r\n				<div class="card-body">\r\n					<div class="plan">\r\n						<h4 class="title">\r\n							Gói Đà Nẵng - Bà Nà (VIP)\r\n						</h4>\r\n\r\n						<p class="price">\r\n							<span>9.500.000</span>\r\n						</p>\r\n\r\n						<p class="detail">\r\n							Thời gian chụp: 6h đến 17h\r\n						</p>\r\n\r\n						<div class="content">\r\n							<h5>\r\n								Chi tiết kế hoạch\r\n							</h5>\r\n\r\n							<ul>\r\n								<li>\r\n									3 váy cưới+2 veston+1 áo dài\r\n								</li>\r\n								<li>\r\n									01 album 30x30cm (30 trang)\r\n								</li>\r\n								<li>\r\n									02 ảnh nhà hàng 60x90cm\r\n								</li>\r\n								<li>\r\n									dvd ảnh gốc + dvd slide\r\n								</li>\r\n								<li>\r\n									makeup + làm tóc trong ngày\r\n								</li>\r\n								<li>\r\n									hoa cầm tay, phụ kiện cưới\r\n								</li>\r\n								<li>\r\n									xe 16 chỗ trong ngày chụp\r\n								</li>\r\n							</ul>\r\n						</div>\r\n					</div>\r\n				</div>\r\n\r\n				<div class="card-footer">\r\n					<div class="booking">\r\n						<a href="/lien-he">Tôi Book Gói Này</a>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>', 'images/uploads/images/album/huytram020818/16.jpg', 1, 1, 4, 1, '2018-08-23 07:39:55', '2018-08-24 15:00:41', 35),
(8, 'Gói chụp Đà Nẵng - Đồi Chè', 'goi-chup-da-nang-doi-che', '<p>\r\n	Đồi chè Đông Giang là một trong những địa điểm du lịch Đà Nẵng hấp dẫn dành cho các cặp đôi...\r\n</p>', '<div class="info">\r\n	<div class="row">\r\n		<div class="col-md-6 mb-4">\r\n			<div class="card one-item h-100">\r\n				<div class="img-item">\r\n					<img src="/images/price/6.jpg">\r\n				</div>\r\n\r\n				<div class="card-body">\r\n					<div class="plan">\r\n						<h4 class="title">\r\n							Gói Đà Nẵng - Đồi Chè (basic)\r\n						</h4>\r\n\r\n						<p class="price">\r\n							<span>8.000.000</span>\r\n						</p>\r\n\r\n						<p class="detail">\r\n							Thời gian chụp: 6h đến 17h\r\n						</p>\r\n\r\n						<div class="content">\r\n							<h5>\r\n								Chi tiết kế hoạch\r\n							</h5>\r\n\r\n							<ul>\r\n								<li>\r\n									2 váy cưới+1 veston+1 áo dài\r\n								</li>\r\n								<li>\r\n									01 album 30x30cm (30 trang)\r\n								</li>\r\n								<li>\r\n									01 ảnh nhà hàng 60x90cm\r\n								</li>\r\n								<li>\r\n									dvd ảnh gốc + dvd slide\r\n								</li>\r\n								<li>\r\n									makeup + làm tóc trong ngày\r\n								</li>\r\n								<li>\r\n									hoa cầm tay, phụ kiện cưới\r\n								</li>\r\n								<li>\r\n									xe 16 chỗ trong ngày chụp\r\n								</li>\r\n							</ul>\r\n						</div>\r\n					</div>\r\n				</div>\r\n\r\n				<div class="card-footer">\r\n					<div class="booking">\r\n						<a href="/lien-he">Tôi Book Gói Này</a>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n\r\n		<div class="col-md-6 mb-4">\r\n			<div class="card one-item h-100">\r\n				<div class="img-item">\r\n					<img src="/images/price/16.jpg">\r\n				</div>\r\n\r\n				<div class="card-body">\r\n					<div class="plan">\r\n						<h4 class="title">\r\n							Gói Đà Nẵng - Đồi Chè (VIP)\r\n						</h4>\r\n\r\n						<p class="price">\r\n							<span>9.500.000</span>\r\n						</p>\r\n\r\n						<p class="detail">\r\n							Thời gian chụp: 6h đến 17h\r\n						</p>\r\n\r\n						<div class="content">\r\n							<h5>\r\n								Chi tiết kế hoạch\r\n							</h5>\r\n\r\n							<ul>\r\n								<li>\r\n									3 váy cưới+1 veston+1 áo dài\r\n								</li>\r\n								<li>\r\n									01 album 30x30cm (30 trang)\r\n								</li>\r\n								<li>\r\n									02 ảnh nhà hàng 60x90cm\r\n								</li>\r\n								<li>\r\n									dvd ảnh gốc + dvd slide\r\n								</li>\r\n								<li>\r\n									makeup + làm tóc trong ngày\r\n								</li>\r\n								<li>\r\n									hoa cầm tay, phụ kiện cưới\r\n								</li>\r\n								<li>\r\n									xe 16 chỗ trong ngày chụp\r\n								</li>\r\n							</ul>\r\n						</div>\r\n					</div>\r\n				</div>\r\n\r\n				<div class="card-footer">\r\n					<div class="booking">\r\n						<a href="/lien-he">Tôi Book Gói Này</a>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>', 'images/uploads/images/album/viennhi120818/HAI_1669.jpg', 1, 1, 4, 1, '2018-08-23 07:41:12', '2018-08-24 15:24:14', 36),
(9, 'Gói Ưu Đãi Hấp Dẫn', 'goi-uu-dai-hap-dan', '<p>\r\n	Duy nhất trong 20 ngày, các CDCR đăng ký trọn gói chỉ với 6.500.000 với nhiều phần quà háp dẫn.\r\n</p>', '<p>\r\n	Gói Ưu Đãi Hấp Dẫn\r\n</p>', 'images/uploads/images/album/tuanthuy210818/HAI_4382%20copy.jpg', 1, 1, 4, 1, '2018-08-23 07:41:56', '2018-08-23 07:41:56', 37),
(10, 'Gói nội thành Đà Nẵng', 'goi-noi-thanh-da-nang', '<p>\r\n	Đà Nẵng vừa có núi non, vừa có biển xanh trải dài thơ mộng là địa điểm đáng đến một lần trong đời.\r\n</p>', '<div class="info">\r\n	<div class="row">\r\n		<div class="col-md-6 mb-4">\r\n			<div class="card one-item h-100">\r\n				<div class="img-item">\r\n					<img src="/images/price/2.jpg">\r\n				</div>\r\n\r\n				<div class="card-body">\r\n					<div class="plan">\r\n						<h4 class="title">\r\n							Gói Đà Nẵng (basic)\r\n						</h4>\r\n\r\n						<p class="price">\r\n							<span>6.500.000</span>\r\n						</p>\r\n\r\n						<p class="detail">\r\n							Thời gian chụp: Nửa Ngày\r\n						</p>\r\n\r\n						<div class="content">\r\n							<h5>\r\n								Chi tiết kế hoạch\r\n							</h5>\r\n\r\n							<ul>\r\n								<li>\r\n									2 váy cưới+1 veston+1 áo dài\r\n								</li>\r\n								<li>\r\n									01 album 30x30cm (20 trang)\r\n								</li>\r\n								<li>\r\n									01 ảnh nhà hàng 60x90cm\r\n								</li>\r\n								<li>\r\n									dvd ảnh gốc + dvd slide\r\n								</li>\r\n								<li>\r\n									makeup + làm tóc trong ngày\r\n								</li>\r\n								<li>\r\n									hoa cầm tay, phụ kiện cưới\r\n								</li>\r\n								<li>\r\n									xe 16 chỗ trong ngày chụp\r\n								</li>\r\n							</ul>\r\n						</div>\r\n					</div>\r\n				</div>\r\n\r\n				<div class="card-footer">\r\n					<div class="booking">\r\n						<a href="/lien-he">Tôi Book Gói Này</a>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n\r\n		<div class="col-md-6 mb-4">\r\n			<div class="card one-item h-100">\r\n				<div class="img-item">\r\n					<img src="/images/price/13.jpg">\r\n				</div>\r\n\r\n				<div class="card-body">\r\n					<div class="plan">\r\n						<h4 class="title">\r\n							Gói Đà Nẵng (VIP)\r\n						</h4>\r\n\r\n						<p class="price">\r\n							<span>7.900.000</span>\r\n						</p>\r\n\r\n						<p class="detail">\r\n							Thời gian chụp: 6h đến 17h\r\n						</p>\r\n\r\n						<div class="content">\r\n							<h5>\r\n								Chi tiết kế hoạch\r\n							</h5>\r\n\r\n							<ul>\r\n								<li>\r\n									2 váy cưới+2 veston+1 áo dài\r\n								</li>\r\n								<li>\r\n									01 album 30x30cm (30 trang)\r\n								</li>\r\n								<li>\r\n									02 ảnh nhà hàng 60x90cm\r\n								</li>\r\n								<li>\r\n									dvd ảnh gốc + dvd slide\r\n								</li>\r\n								<li>\r\n									makeup + làm tóc trong ngày\r\n								</li>\r\n								<li>\r\n									hoa cầm tay, phụ kiện cưới\r\n								</li>\r\n								<li>\r\n									xe 16 chỗ trong ngày chụp\r\n								</li>\r\n							</ul>\r\n						</div>\r\n					</div>\r\n				</div>\r\n\r\n				<div class="card-footer">\r\n					<div class="booking">\r\n						<a href="/lien-he">Tôi Book Gói Này</a>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>', 'images/uploads/images/album/ducngan150818/NHAT4628%20copy.jpg', 1, 1, 4, 1, '2018-08-23 07:42:48', '2018-08-23 08:49:44', 38);

-- --------------------------------------------------------

--
-- Table structure for table `post_product`
--

CREATE TABLE IF NOT EXISTS `post_product` (
  `post_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`post_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_product`
--

INSERT INTO `post_product` (`post_id`, `product_id`, `created_at`, `updated_at`) VALUES
(6, 1, '2018-08-23 07:38:38', '2018-08-23 07:38:38'),
(6, 8, '2018-08-23 07:38:38', '2018-08-23 07:38:38'),
(6, 9, '2018-08-23 07:38:38', '2018-08-23 07:38:38'),
(6, 10, '2018-08-23 07:38:38', '2018-08-23 07:38:38'),
(7, 3, '2018-08-23 07:39:55', '2018-08-23 07:39:55'),
(8, 7, '2018-08-23 07:41:12', '2018-08-23 07:41:12'),
(9, 6, '2018-08-23 07:41:56', '2018-08-23 07:41:56'),
(9, 7, '2018-08-23 07:41:56', '2018-08-23 07:41:56'),
(9, 8, '2018-08-23 07:41:56', '2018-08-23 07:41:56'),
(9, 10, '2018-08-23 07:41:56', '2018-08-23 07:41:56'),
(10, 2, '2018-08-23 07:42:48', '2018-08-23 07:42:48'),
(10, 3, '2018-08-23 07:42:48', '2018-08-23 07:42:48'),
(10, 4, '2018-08-23 07:42:48', '2018-08-23 07:42:48'),
(10, 6, '2018-08-23 07:42:48', '2018-08-23 07:42:48'),
(10, 8, '2018-08-23 07:42:48', '2018-08-23 07:42:48'),
(10, 10, '2018-08-23 07:42:48', '2018-08-23 07:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_image` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `sale` int(11) NOT NULL DEFAULT '0',
  `final_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `user_id` int(10) unsigned NOT NULL,
  `category_product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_user_id_foreign` (`user_id`),
  KEY `products_category_product_id_foreign` (`category_product_id`),
  KEY `products_seo_id_foreign` (`seo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `path`, `isActive`, `is_hot`, `image`, `sub_image`, `description`, `content`, `code`, `price`, `sale`, `final_price`, `order`, `user_id`, `category_product_id`, `created_at`, `updated_at`, `seo_id`) VALUES
(1, 'Đức & Ngân', 'duc-ngan', 1, 1, 'images/uploads/images/album/ducngan150818/NHAT4847%20copy.jpg', 'images/uploads/images/album/ducngan150818/NHAT4465%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4480%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4498%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4576%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4579%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4628%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4632%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4633%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4723%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4740%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4781%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4782%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4787%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4791%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4836%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4847%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4848%20copy.jpg;images/uploads/images/album/ducngan150818/NHAT4874%20copy.jpg', NULL, '<p>\r\n	test 2\r\n</p>', NULL, '0', 0, '0', 2, 1, 1, '2018-08-01 14:36:51', '2018-09-13 14:32:26', 8),
(2, 'Thành & Xuyến', 'thanh-xuyen', 1, 0, 'images/uploads/images/album/thanhxuyen010818/8.jpg', 'images/uploads/images/album/thanhxuyen010818/1.jpg;images/uploads/images/album/thanhxuyen010818/10.jpg;images/uploads/images/album/thanhxuyen010818/11.jpg;images/uploads/images/album/thanhxuyen010818/13.jpg;images/uploads/images/album/thanhxuyen010818/15.jpg;images/uploads/images/album/thanhxuyen010818/16.jpg;images/uploads/images/album/thanhxuyen010818/17.jpg;images/uploads/images/album/thanhxuyen010818/18.jpg;images/uploads/images/album/thanhxuyen010818/19.jpg;images/uploads/images/album/thanhxuyen010818/3.jpg;images/uploads/images/album/thanhxuyen010818/4.jpg;images/uploads/images/album/thanhxuyen010818/5.jpg;images/uploads/images/album/thanhxuyen010818/6.jpg;images/uploads/images/album/thanhxuyen010818/7.jpg;images/uploads/images/album/thanhxuyen010818/8.jpg;images/uploads/images/album/thanhxuyen010818/9.jpg', NULL, '<p>\r\n	test 2\r\n</p>', NULL, '0', 0, '0', 5, 1, 1, '2018-08-01 15:43:52', '2018-09-03 16:17:27', 12),
(3, 'Huy & Trâm', 'huy-tram', 1, 1, 'images/uploads/images/album/huytram020818/25.jpg', 'images/uploads/images/album/huytram020818/1.jpg;images/uploads/images/album/huytram020818/10.jpg;images/uploads/images/album/huytram020818/11.jpg;images/uploads/images/album/huytram020818/12.jpg;images/uploads/images/album/huytram020818/13.jpg;images/uploads/images/album/huytram020818/14.jpg;images/uploads/images/album/huytram020818/15.jpg;images/uploads/images/album/huytram020818/16.jpg;images/uploads/images/album/huytram020818/17.jpg;images/uploads/images/album/huytram020818/18.jpg;images/uploads/images/album/huytram020818/19.jpg;images/uploads/images/album/huytram020818/2.jpg;images/uploads/images/album/huytram020818/20.jpg;images/uploads/images/album/huytram020818/21.jpg;images/uploads/images/album/huytram020818/22.jpg;images/uploads/images/album/huytram020818/23.jpg;images/uploads/images/album/huytram020818/24.jpg;images/uploads/images/album/huytram020818/25.jpg;images/uploads/images/album/huytram020818/26.jpg;images/uploads/images/album/huytram020818/27.jpg;images/uploads/images/album/huytram020818/28.jpg;images/uploads/images/album/huytram020818/29.jpg;images/uploads/images/album/huytram020818/3.jpg;images/uploads/images/album/huytram020818/30.jpg;images/uploads/images/album/huytram020818/31.jpg;images/uploads/images/album/huytram020818/32.jpg;images/uploads/images/album/huytram020818/33.jpg;images/uploads/images/album/huytram020818/34.jpg;images/uploads/images/album/huytram020818/35.jpg;images/uploads/images/album/huytram020818/36.jpg;images/uploads/images/album/huytram020818/37.jpg;images/uploads/images/album/huytram020818/38.jpg;images/uploads/images/album/huytram020818/39.jpg;images/uploads/images/album/huytram020818/4.jpg;images/uploads/images/album/huytram020818/40.jpg;images/uploads/images/album/huytram020818/41.jpg;images/uploads/images/album/huytram020818/42.jpg;images/uploads/images/album/huytram020818/43.jpg;images/uploads/images/album/huytram020818/44.jpg;images/uploads/images/album/huytram020818/45.jpg;images/uploads/images/album/huytram020818/5.jpg;images/uploads/images/album/huytram020818/6.jpg;images/uploads/images/album/huytram020818/7.jpg;images/uploads/images/album/huytram020818/8.jpg;images/uploads/images/album/huytram020818/9.jpg', NULL, '<p>\r\n	alo\r\n</p>', NULL, '0', 0, '0', 3, 1, 1, '2018-08-02 14:25:21', '2018-09-12 12:54:22', 16),
(4, 'Thảo & Thơ', 'thao-tho', 1, 0, 'images/uploads/images/album/thaotho040818/3.jpg', 'images/uploads/images/album/thaotho040818/1.jpg;images/uploads/images/album/thaotho040818/11.jpg;images/uploads/images/album/thaotho040818/13.jpg;images/uploads/images/album/thaotho040818/2.jpg;images/uploads/images/album/thaotho040818/3.jpg;images/uploads/images/album/thaotho040818/6.jpg;images/uploads/images/album/thaotho040818/7.jpg;images/uploads/images/album/thaotho040818/8.jpg;images/uploads/images/album/thaotho040818/9.jpg', NULL, '<p>\r\n	Thảo Và Thơ\r\n</p>', NULL, '0', 0, '0', 1, 1, 1, '2018-08-04 15:36:31', '2018-09-03 16:16:50', 22),
(5, 'Thuận & Thương', 'thuan-thuong', 1, 0, 'images/uploads/images/album/thuanthuong040818/HAI_0639.jpg', 'images/uploads/images/album/thuanthuong040818/1.jpg;images/uploads/images/album/thuanthuong040818/2.jpg;images/uploads/images/album/thuanthuong040818/3.jpg;images/uploads/images/album/thuanthuong040818/4.jpg;images/uploads/images/album/thuanthuong040818/HAI_0141.jpg;images/uploads/images/album/thuanthuong040818/HAI_0150.jpg;images/uploads/images/album/thuanthuong040818/HAI_0154.jpg;images/uploads/images/album/thuanthuong040818/HAI_0211.jpg;images/uploads/images/album/thuanthuong040818/HAI_0240.jpg;images/uploads/images/album/thuanthuong040818/HAI_0262.jpg;images/uploads/images/album/thuanthuong040818/HAI_0263.jpg;images/uploads/images/album/thuanthuong040818/HAI_0317.jpg;images/uploads/images/album/thuanthuong040818/HAI_0341.jpg;images/uploads/images/album/thuanthuong040818/HAI_0344.jpg;images/uploads/images/album/thuanthuong040818/HAI_0475.jpg;images/uploads/images/album/thuanthuong040818/HAI_0490.jpg;images/uploads/images/album/thuanthuong040818/HAI_0494s.jpg;images/uploads/images/album/thuanthuong040818/HAI_0501.jpg;images/uploads/images/album/thuanthuong040818/HAI_0571.jpg;images/uploads/images/album/thuanthuong040818/HAI_0611.jpg;images/uploads/images/album/thuanthuong040818/HAI_0633.jpg;images/uploads/images/album/thuanthuong040818/HAI_0639.jpg;images/uploads/images/album/thuanthuong040818/HAI_0698.jpg;images/uploads/images/album/thuanthuong040818/HAI_0756.jpg;images/uploads/images/album/thuanthuong040818/HAI_0810.jpg;images/uploads/images/album/thuanthuong040818/HAI_0856.jpg', NULL, '<p>\r\n	Thuận Và Thương\r\n</p>', NULL, '0', 0, '0', 1, 1, 1, '2018-08-04 15:42:14', '2018-09-13 14:35:31', 23),
(6, 'Công & Thương', 'cong-thuong', 1, 0, 'images/uploads/images/album/congthuong150818/HAI_0197%20copy.jpg', 'images/uploads/images/album/congthuong150818/HAI_0197%20copy.jpg;images/uploads/images/album/congthuong150818/HAI_0203%20copy.jpg;images/uploads/images/album/congthuong150818/HAI_0211%20copy.jpg;images/uploads/images/album/congthuong150818/HAI_0250%20copy.jpg;images/uploads/images/album/congthuong150818/HAI_0260%20copy.jpg;images/uploads/images/album/congthuong150818/HAI_0262%20copy.jpg;images/uploads/images/album/congthuong150818/HAI_0266%20copy.jpg;images/uploads/images/album/congthuong150818/HAI_0316%20copy.jpg;images/uploads/images/album/congthuong150818/HAI_0336%20copy.jpg;images/uploads/images/album/congthuong150818/HAI_0610%20copy.jpg;images/uploads/images/album/congthuong150818/HAI_0627%20copy.jpg;images/uploads/images/album/congthuong150818/HAI_0647%20copy.jpg', NULL, '<p>\r\n	Công Và Thương\r\n</p>', NULL, '0', 0, '0', 1, 1, 1, '2018-08-04 16:01:32', '2018-09-13 14:34:44', 24),
(7, 'Viên & Nhi', 'vien-nhi', 1, 1, 'images/uploads/images/album/viennhi120818/HAI_1759.jpg', 'images/uploads/images/album/viennhi120818/HAI_1643.jpg;images/uploads/images/album/viennhi120818/HAI_1648.jpg;images/uploads/images/album/viennhi120818/HAI_1669.jpg;images/uploads/images/album/viennhi120818/HAI_1704.jpg;images/uploads/images/album/viennhi120818/HAI_1714.jpg;images/uploads/images/album/viennhi120818/HAI_1721.jpg;images/uploads/images/album/viennhi120818/HAI_1729.jpg;images/uploads/images/album/viennhi120818/HAI_1745.jpg;images/uploads/images/album/viennhi120818/HAI_1758.jpg;images/uploads/images/album/viennhi120818/HAI_1759.jpg;images/uploads/images/album/viennhi120818/HAI_1769.jpg;images/uploads/images/album/viennhi120818/HAI_1820.jpg;images/uploads/images/album/viennhi120818/HAI_1877.jpg;images/uploads/images/album/viennhi120818/HAI_1882.jpg;images/uploads/images/album/viennhi120818/HAI_1895.jpg;images/uploads/images/album/viennhi120818/HAI_1921.jpg', NULL, '<p>\r\n	Viên &amp; Nhi\r\n</p>', NULL, '0', 0, '0', 4, 1, 1, '2018-08-12 12:49:09', '2018-09-12 12:55:06', 29),
(8, 'Dũng & Thuận', 'dung-thuan', 1, 0, 'images/uploads/images/album/dungthuan120818/HAI_0898.jpg', 'images/uploads/images/album/dungthuan120818/HAI_0805.jpg;images/uploads/images/album/dungthuan120818/HAI_0812.jpg;images/uploads/images/album/dungthuan120818/HAI_0819.jpg;images/uploads/images/album/dungthuan120818/HAI_0821.jpg;images/uploads/images/album/dungthuan120818/HAI_0834.jpg;images/uploads/images/album/dungthuan120818/HAI_0866.jpg;images/uploads/images/album/dungthuan120818/HAI_0877.jpg;images/uploads/images/album/dungthuan120818/HAI_0898.jpg;images/uploads/images/album/dungthuan120818/HAI_0911.jpg;images/uploads/images/album/dungthuan120818/HAI_0915.jpg', NULL, '<p>\r\n	Dũng &amp; Thuận\r\n</p>', NULL, '0', 0, '0', 1, 1, 1, '2018-08-12 12:58:05', '2018-08-24 15:13:36', 30),
(9, 'Thuận & Cường', 'thuan-cuong', 1, 0, 'images/uploads/images/album/thuancuong120818/HAI_0200.jpg', 'images/uploads/images/album/thuancuong120818/HAI_0090.jpg;images/uploads/images/album/thuancuong120818/HAI_0105.jpg;images/uploads/images/album/thuancuong120818/HAI_0115.jpg;images/uploads/images/album/thuancuong120818/HAI_0119.jpg;images/uploads/images/album/thuancuong120818/HAI_0139.jpg;images/uploads/images/album/thuancuong120818/HAI_0150.jpg;images/uploads/images/album/thuancuong120818/HAI_0153.jpg;images/uploads/images/album/thuancuong120818/HAI_0156.jpg;images/uploads/images/album/thuancuong120818/HAI_0159.jpg;images/uploads/images/album/thuancuong120818/HAI_0170.jpg;images/uploads/images/album/thuancuong120818/HAI_0176.jpg;images/uploads/images/album/thuancuong120818/HAI_0177.jpg;images/uploads/images/album/thuancuong120818/HAI_0182.jpg;images/uploads/images/album/thuancuong120818/HAI_0200.jpg;images/uploads/images/album/thuancuong120818/HAI_0214%20(2).jpg;images/uploads/images/album/thuancuong120818/HAI_0214.jpg', NULL, '<p>\r\n	Thuận &amp; Cường\r\n</p>', NULL, '0', 0, '0', 6, 1, 1, '2018-08-12 13:08:08', '2018-09-11 15:21:22', 31),
(10, 'Tuấn & Thúy', 'tuan-thuy', 1, 1, 'images/uploads/images/album/tuanthuy210818/HAI_4473%20copy.jpg', 'images/uploads/images/album/tuanthuy210818/HAI_4223%20copy.jpg;images/uploads/images/album/tuanthuy210818/HAI_4297%20copy.jpg;images/uploads/images/album/tuanthuy210818/HAI_4319%20copy.jpg;images/uploads/images/album/tuanthuy210818/HAI_4348%20copy.jpg;images/uploads/images/album/tuanthuy210818/HAI_4382%20copy.jpg;images/uploads/images/album/tuanthuy210818/HAI_4427%20copy.jpg;images/uploads/images/album/tuanthuy210818/HAI_4473%20copy.jpg;images/uploads/images/album/tuanthuy210818/HAI_4479%20copy.jpg;images/uploads/images/album/tuanthuy210818/HAI_4481%20copy.jpg;images/uploads/images/album/tuanthuy210818/HAI_4504%20copy.jpg;images/uploads/images/album/tuanthuy210818/HAI_4515%20copy.jpg;images/uploads/images/album/tuanthuy210818/HAI_4567%20copy.jpg;images/uploads/images/album/tuanthuy210818/HAI_4572%20copy.jpg;images/uploads/images/album/tuanthuy210818/HAI_4586%20copy.jpg;images/uploads/images/album/tuanthuy210818/HAI_4602%20copy.jpg;images/uploads/images/album/tuanthuy210818/HAI_4629.jpg;images/uploads/images/album/tuanthuy210818/HAI_4632.jpg;images/uploads/images/album/tuanthuy210818/HAI_4637.jpg;images/uploads/images/album/tuanthuy210818/HAI_4642.jpg;images/uploads/images/album/tuanthuy210818/HAI_4652.jpg;images/uploads/images/album/tuanthuy210818/HAI_4653.jpg;images/uploads/images/album/tuanthuy210818/HAI_4668.jpg;images/uploads/images/album/tuanthuy210818/HAI_4675.jpg;images/uploads/images/album/tuanthuy210818/HAI_4701.jpg;images/uploads/images/album/tuanthuy210818/HAI_4711.jpg', NULL, '<p>\r\n	Tuấn &amp; Thúy\r\n</p>', NULL, '0', 0, '0', 2, 1, 1, '2018-08-21 09:43:50', '2018-09-12 12:53:48', 32),
(11, 'Hoàng & Hoa', 'hoang-hoa', 1, 1, 'images/uploads/images/album/hoanghoa010918/HAI_0085%20copy.jpg', 'images/uploads/images/album/hoanghoa010918/HAI_0025%20copy.jpg;images/uploads/images/album/hoanghoa010918/HAI_0038%20copy.jpg;images/uploads/images/album/hoanghoa010918/HAI_0039%20copy.jpg;images/uploads/images/album/hoanghoa010918/HAI_0045%20copy.jpg;images/uploads/images/album/hoanghoa010918/HAI_0085%20copy.jpg;images/uploads/images/album/hoanghoa010918/HAI_0091%20copy.jpg;images/uploads/images/album/hoanghoa010918/HAI_0206%20copy.jpg;images/uploads/images/album/hoanghoa010918/HAI_0226%20copy.jpg;images/uploads/images/album/hoanghoa010918/HAI_0255%20copy.jpg;images/uploads/images/album/hoanghoa010918/HAI_0271%20copy.jpg;images/uploads/images/album/hoanghoa010918/NHAT8975%20copy.jpg;images/uploads/images/album/hoanghoa010918/NHAT9095%20copy.jpg;images/uploads/images/album/hoanghoa010918/NHAT9221%20copy.jpg;images/uploads/images/album/hoanghoa010918/NHAT9223%20copy.jpg;images/uploads/images/album/hoanghoa010918/NHAT9255%20copy.jpg;images/uploads/images/album/hoanghoa010918/NHAT9267%20copy.jpg;images/uploads/images/album/hoanghoa010918/NHAT9275%20copy.jpg', NULL, '<p>\r\n	Hoàng &amp; Hoa\r\n</p>', NULL, '0', 0, '0', 5, 1, 1, '2018-09-01 12:56:30', '2018-09-01 14:48:23', 39),
(12, 'Diệu & Jay', 'dieu-jay', 1, 0, 'images/uploads/images/phongsu/HAI_0396.jpg', 'images/uploads/images/phongsu/_MG_4931.jpg;images/uploads/images/phongsu/_MG_4940.jpg;images/uploads/images/phongsu/_MG_4942.jpg;images/uploads/images/phongsu/_MG_4944.jpg;images/uploads/images/phongsu/_MG_4954.jpg;images/uploads/images/phongsu/_MG_4977.jpg;images/uploads/images/phongsu/_MG_5108.jpg;images/uploads/images/phongsu/_MG_5119.jpg;images/uploads/images/phongsu/HAI_0006.jpg;images/uploads/images/phongsu/HAI_0026.jpg;images/uploads/images/phongsu/HAI_0031.jpg;images/uploads/images/phongsu/HAI_0061.jpg;images/uploads/images/phongsu/HAI_0099.jpg;images/uploads/images/phongsu/HAI_0111.jpg;images/uploads/images/phongsu/HAI_0124.jpg;images/uploads/images/phongsu/HAI_0273.jpg;images/uploads/images/phongsu/HAI_0329.jpg;images/uploads/images/phongsu/HAI_0369.jpg;images/uploads/images/phongsu/HAI_0377.jpg;images/uploads/images/phongsu/HAI_0384.jpg;images/uploads/images/phongsu/HAI_0396.jpg;images/uploads/images/phongsu/HAI_0399.jpg;images/uploads/images/phongsu/HAI_0524.jpg;images/uploads/images/phongsu/HAI_0541.jpg;images/uploads/images/phongsu/HAI_0619.jpg;images/uploads/images/phongsu/HAI_0621.jpg;images/uploads/images/phongsu/HAI_0625.jpg;images/uploads/images/phongsu/HAI_0654.jpg;images/uploads/images/phongsu/HAI_5013.jpg;images/uploads/images/phongsu/HAI_5014.jpg;images/uploads/images/phongsu/HAI_5031.jpg;images/uploads/images/phongsu/HAI_5035.jpg;images/uploads/images/phongsu/HAI_5036.jpg;images/uploads/images/phongsu/IMG_2952.jpg;images/uploads/images/phongsu/IMG_3084.jpg;images/uploads/images/phongsu/IMG_3085.jpg;images/uploads/images/phongsu/IMG_5259.jpg', NULL, '<p>\r\n	Diệu\r\n</p>', NULL, '0', 0, '0', 1, 1, 5, '2018-09-01 14:04:34', '2018-09-01 14:37:15', 41),
(13, 'Win & Vy', 'win-vy', 1, 1, 'images/uploads/images/album/winvy110918/HAI_0001%20copy.jpg', 'images/uploads/images/album/winvy110918/HAI_0001%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0018%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0032%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0093%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0152%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0155.jpg;images/uploads/images/album/winvy110918/HAI_0167%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0189%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0193%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0212%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0230%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0248%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0253%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0257%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0317%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0365%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0367%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0405%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0421%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0459%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0465%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0482%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0491.JPG;images/uploads/images/album/winvy110918/HAI_0498.JPG;images/uploads/images/album/winvy110918/HAI_0530.JPG;images/uploads/images/album/winvy110918/HAI_0534.JPG;images/uploads/images/album/winvy110918/HAI_0542.JPG;images/uploads/images/album/winvy110918/HAI_0560%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0577%20(1)%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0591%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0656%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0666%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0705%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0723%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0753%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0786%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0802%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0804%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0810%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0829%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0848.JPG;images/uploads/images/album/winvy110918/HAI_0885.JPG;images/uploads/images/album/winvy110918/HAI_0888%20copy.jpg;images/uploads/images/album/winvy110918/HAI_0891%20copy.jpg', NULL, '<p>\r\n	Win &amp; Vy\r\n</p>', NULL, '0', 0, '0', 1, 1, 1, '2018-09-11 15:20:26', '2018-09-12 12:53:04', 42),
(14, 'Thắng & Trang', 'thang-trang', 1, 0, 'images/uploads/images/album/thangtrang200918/HAI_0289%20copy.jpg', 'images/uploads/images/album/thangtrang200918/HAI_0019%20copy.jpg;images/uploads/images/album/thangtrang200918/HAI_0059%20copy.jpg;images/uploads/images/album/thangtrang200918/HAI_0219%20copy.jpg;images/uploads/images/album/thangtrang200918/HAI_0248%20copy.jpg;images/uploads/images/album/thangtrang200918/HAI_0257%20copy.jpg;images/uploads/images/album/thangtrang200918/HAI_0271%20copy.jpg;images/uploads/images/album/thangtrang200918/HAI_0289%20copy.jpg;images/uploads/images/album/thangtrang200918/HAI_0267%20copy.jpg;images/uploads/images/album/thangtrang200918/HAI_0279%20copy.jpg;images/uploads/images/album/thangtrang200918/HAI_0065.jpg;images/uploads/images/album/thangtrang200918/HAI_0098.jpg;images/uploads/images/album/thangtrang200918/HAI_0105.jpg;images/uploads/images/album/thangtrang200918/HAI_0112.jpg;images/uploads/images/album/thangtrang200918/HAI_0115.jpg;images/uploads/images/album/thangtrang200918/HAI_0130.jpg;images/uploads/images/album/thangtrang200918/HAI_0136.jpg;images/uploads/images/album/thangtrang200918/HAI_0139.jpg;images/uploads/images/album/thangtrang200918/HAI_0141.jpg;images/uploads/images/album/thangtrang200918/HAI_0162.jpg;images/uploads/images/album/thangtrang200918/HAI_0165.jpg;images/uploads/images/album/thangtrang200918/HAI_0167.jpg;images/uploads/images/album/thangtrang200918/HAI_0186.jpg', NULL, '<p>\r\n	Thắng &amp; Trang\r\n</p>', NULL, '0', 0, '0', 1, 1, 1, '2018-09-20 03:12:46', '2018-09-20 04:13:45', 43),
(15, 'Hà & Hoài', 'ha-hoai', 1, 0, 'images/uploads/images/album/hahoai131018/HAI_0348.JPG', 'images/uploads/images/album/hahoai131018/HAI_0020%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0027%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0034%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0053%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0056%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0061%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0077%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0091%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0112%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0131%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0134%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0142_1%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0144%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0148%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0153%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0154%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0156%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0163%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0169%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0176%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0198%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0203%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0209%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0214%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0226%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0232%20copy.jpg;images/uploads/images/album/hahoai131018/HAI_0238.JPG;images/uploads/images/album/hahoai131018/HAI_0251_2.JPG;images/uploads/images/album/hahoai131018/HAI_0275.JPG;images/uploads/images/album/hahoai131018/HAI_0281.JPG;images/uploads/images/album/hahoai131018/HAI_0285.JPG;images/uploads/images/album/hahoai131018/HAI_0302.JPG;images/uploads/images/album/hahoai131018/HAI_0321_2.JPG;images/uploads/images/album/hahoai131018/HAI_0322.JPG;images/uploads/images/album/hahoai131018/HAI_0330.JPG;images/uploads/images/album/hahoai131018/HAI_0342.JPG;images/uploads/images/album/hahoai131018/HAI_0347.JPG;images/uploads/images/album/hahoai131018/HAI_0348.JPG;images/uploads/images/album/hahoai131018/HAI_0364.JPG;images/uploads/images/album/hahoai131018/HAI_0372.JPG;images/uploads/images/album/hahoai131018/HAI_0385.JPG;images/uploads/images/album/hahoai131018/HAI_0389.JPG;images/uploads/images/album/hahoai131018/HAI_0392.JPG;images/uploads/images/album/hahoai131018/HAI_0405.JPG;images/uploads/images/album/hahoai131018/HAI_0407.JPG;images/uploads/images/album/hahoai131018/HAI_0455.JPG;images/uploads/images/album/hahoai131018/HAI_0463.JPG;images/uploads/images/album/hahoai131018/HAI_0488.JPG;images/uploads/images/album/hahoai131018/HAI_0498.JPG;images/uploads/images/album/hahoai131018/HAI_0510.JPG;images/uploads/images/album/hahoai131018/HAI_0532.JPG;images/uploads/images/album/hahoai131018/HAI_0541.JPG;images/uploads/images/album/hahoai131018/HAI_0665.jpg;images/uploads/images/album/hahoai131018/HAI_0674.jpg', NULL, '<p>\r\n	Hà &amp; Hoài\r\n</p>', NULL, '0', 0, '0', 1, 1, 1, '2018-10-13 02:43:40', '2018-10-13 02:43:40', 47);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'administer the website and manage users', '2018-03-14 07:23:50', '2018-03-14 07:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE IF NOT EXISTS `seos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `seo_title`, `seo_description`, `seo_keywords`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, '2018-08-01 14:01:34', '2018-08-01 14:01:34'),
(2, NULL, NULL, NULL, '2018-08-01 14:11:02', '2018-08-01 14:11:02'),
(3, NULL, NULL, NULL, '2018-08-01 14:11:11', '2018-08-01 14:11:11'),
(4, NULL, NULL, NULL, '2018-08-01 14:11:18', '2018-08-01 14:11:18'),
(5, NULL, NULL, NULL, '2018-08-01 14:11:33', '2018-08-01 14:11:33'),
(6, NULL, NULL, NULL, '2018-08-01 14:11:42', '2018-08-01 14:11:42'),
(7, NULL, NULL, NULL, '2018-08-01 14:13:56', '2018-08-01 14:13:56'),
(8, NULL, NULL, NULL, '2018-08-01 14:36:51', '2018-08-01 14:36:51'),
(9, NULL, NULL, NULL, '2018-08-01 14:59:06', '2018-08-01 14:59:06'),
(10, NULL, NULL, NULL, '2018-08-01 14:59:25', '2018-08-01 14:59:25'),
(11, NULL, NULL, NULL, '2018-08-01 15:43:32', '2018-08-01 15:43:32'),
(12, NULL, NULL, NULL, '2018-08-01 15:43:52', '2018-08-01 15:43:52'),
(13, NULL, NULL, NULL, '2018-08-01 15:44:14', '2018-08-01 15:44:14'),
(14, NULL, NULL, NULL, '2018-08-01 15:44:23', '2018-08-01 15:44:23'),
(15, NULL, NULL, NULL, '2018-08-02 14:24:40', '2018-08-02 14:24:40'),
(16, NULL, NULL, NULL, '2018-08-02 14:25:21', '2018-08-02 14:25:21'),
(17, NULL, NULL, NULL, '2018-08-04 14:26:29', '2018-08-04 14:26:29'),
(18, NULL, NULL, NULL, '2018-08-04 14:34:52', '2018-08-04 14:34:52'),
(19, NULL, NULL, NULL, '2018-08-04 14:49:16', '2018-08-04 14:49:16'),
(20, NULL, NULL, NULL, '2018-08-04 14:58:55', '2018-08-04 14:58:55'),
(21, NULL, NULL, NULL, '2018-08-04 15:13:00', '2018-08-04 15:13:00'),
(22, NULL, NULL, NULL, '2018-08-04 15:36:31', '2018-08-04 15:36:31'),
(23, NULL, NULL, NULL, '2018-08-04 15:42:14', '2018-08-04 15:42:14'),
(24, NULL, NULL, NULL, '2018-08-04 16:01:32', '2018-08-04 16:01:32'),
(25, NULL, NULL, NULL, '2018-08-06 08:37:59', '2018-08-06 08:37:59'),
(26, NULL, NULL, NULL, '2018-08-06 08:38:33', '2018-08-06 08:38:33'),
(27, NULL, NULL, NULL, '2018-08-12 12:36:19', '2018-08-12 12:36:19'),
(28, NULL, NULL, NULL, '2018-08-12 12:37:23', '2018-08-12 12:37:23'),
(29, NULL, NULL, NULL, '2018-08-12 12:49:09', '2018-08-12 12:49:09'),
(30, NULL, NULL, NULL, '2018-08-12 12:58:05', '2018-08-12 12:58:05'),
(31, NULL, NULL, NULL, '2018-08-12 13:08:08', '2018-08-12 13:08:08'),
(32, NULL, NULL, NULL, '2018-08-21 09:43:50', '2018-08-21 09:43:50'),
(33, NULL, NULL, NULL, '2018-08-23 07:36:20', '2018-08-23 07:36:20'),
(34, NULL, NULL, NULL, '2018-08-23 07:38:38', '2018-08-23 07:38:38'),
(35, NULL, NULL, NULL, '2018-08-23 07:39:55', '2018-08-23 07:39:55'),
(36, NULL, NULL, NULL, '2018-08-23 07:41:12', '2018-08-23 07:41:12'),
(37, NULL, NULL, NULL, '2018-08-23 07:41:56', '2018-08-23 07:41:56'),
(38, NULL, NULL, NULL, '2018-08-23 07:42:48', '2018-08-23 07:42:48'),
(39, NULL, NULL, NULL, '2018-09-01 12:56:30', '2018-09-01 12:56:30'),
(40, NULL, NULL, NULL, '2018-09-01 13:49:26', '2018-09-01 13:49:26'),
(41, NULL, NULL, NULL, '2018-09-01 14:04:34', '2018-09-01 14:04:34'),
(42, NULL, NULL, NULL, '2018-09-11 15:20:26', '2018-09-11 15:20:26'),
(43, NULL, NULL, NULL, '2018-09-20 03:12:46', '2018-09-20 03:12:46'),
(44, NULL, NULL, NULL, '2018-10-13 02:35:47', '2018-10-13 02:35:47'),
(45, NULL, NULL, NULL, '2018-10-13 02:42:56', '2018-10-13 02:42:56'),
(46, NULL, NULL, NULL, '2018-10-13 02:43:24', '2018-10-13 02:43:24'),
(47, NULL, NULL, NULL, '2018-10-13 02:43:40', '2018-10-13 02:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nnduyquang', 'nnduyquang@gmail.com', '$2y$10$mStg572JFNI89/0Cg7TOGOUkACFaBl/nsNeOvx8zglr1qyJPA0tj6', NULL, '2018-03-14 07:24:10', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_items`
--
ALTER TABLE `category_items`
  ADD CONSTRAINT `category_items_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `configs`
--
ALTER TABLE `configs`
  ADD CONSTRAINT `configs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_category_permission_id_foreign` FOREIGN KEY (`category_permission_id`) REFERENCES `category_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_product_id_foreign` FOREIGN KEY (`category_product_id`) REFERENCES `category_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
