-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2016 at 04:06 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lvtn`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt_code` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `avatar`, `salt_code`, `name`, `password`, `facebook_id`, `google_id`, `lastname`, `firstname`, `birthday`, `email`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'img/user2-160x160.jpg', '', 'admin', '$2y$10$XdSdKu.70nMVOnoFockYzuHCCiVs6NkZfvShU8mJb8BDRdmqzLkc2', NULL, NULL, NULL, NULL, NULL, 'admin@gmail.com', NULL, '', 'QoQcOJ1xQyJPTCKLSEyAdLplwny8cyPbnM7x5oetKY72pdVIN1TP2l5ll436', '2016-08-09 20:29:11', '2016-08-29 17:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `asset_id` int(10) UNSIGNED NOT NULL,
  `discription` text COLLATE utf8_unicode_ci,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `discription` text COLLATE utf8_unicode_ci,
  `num_products` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `discription`, `num_products`, `created_at`, `updated_at`) VALUES
(1, 'Áo thun nam', 'Áo thun nam', 5, '2016-09-19 13:30:36', '2016-09-19 13:30:36'),
(2, 'Áo sơ mi nam', 'Áo sơ mi nam', 5, '2016-09-19 13:30:36', '2016-09-19 13:30:36'),
(3, 'Đầm nữ', 'Đầm nữ', 5, '2016-09-19 13:31:08', '2016-09-19 13:31:08'),
(4, 'Áo sơ mi nữ', 'Áo sơ mi nữ', 5, '2016-09-19 13:31:08', '2016-09-19 13:31:08'),
(5, 'Áo thun nữ', 'Áo thun nữ', 5, '2016-09-19 13:31:40', '2016-09-19 13:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `city_province`
--

CREATE TABLE `city_province` (
  `city_province_id` int(10) UNSIGNED NOT NULL,
  `city_province_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city_province_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `ordering` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city_province`
--

INSERT INTO `city_province` (`city_province_id`, `city_province_code`, `city_province_name`, `published`, `ordering`) VALUES
(1, '805', 'An Giang', 1, 63),
(2, '717', 'Bà Rịa - Vũng Tầu', 1, 46),
(3, '711', 'Bình Dương', 1, 45),
(4, '707', 'Bình Phước', 1, 44),
(5, '715', 'Bình Thuận', 1, 43),
(6, '507', 'Bình Định', 1, 42),
(7, '221', 'Bắc Giang', 1, 41),
(8, '207', 'Bắc Kạn', 1, 40),
(9, '223', 'Bắc Ninh', 1, 39),
(10, '811', 'Bến Tre', 1, 38),
(11, '203', 'Cao Bằng', 1, 37),
(12, '823', 'Cà Mau', 1, 36),
(13, '815', 'Cần Thơ', 1, 35),
(14, '603', 'Gia Lai', 1, 34),
(15, '201', 'Hà Giang', 1, 47),
(16, '111', 'Hà Nam', 1, 48),
(17, '101', 'Hà Nội', 1, 49),
(18, '105', 'Hà Tây', 1, 62),
(19, '405', 'Hà Tĩnh', 1, 61),
(20, '305', 'Hòa Bình', 1, 60),
(21, '109', 'Hưng Yên', 1, 59),
(22, '107', 'Hải Dương', 1, 58),
(23, '103', 'Hải Phòng', 1, 57),
(24, '701', 'Hồ Chí Minh', 1, 1),
(25, '511', 'Khánh Hòa', 1, 56),
(27, '813', 'Kiên Giang', 1, 55),
(28, '601', 'Kon Tum', 1, 54),
(29, '301', 'Lai Châu', 1, 53),
(30, '801', 'Long An', 1, 52),
(31, '205', 'Lào Cai', 1, 51),
(32, '703', 'Lâm Đồng', 1, 50),
(33, '209', 'Lạng Sơn', 1, 33),
(34, '113', 'Nam Định', 1, 32),
(35, '403', 'Nghệ An', 1, 15),
(36, '117', 'Ninh Bình', 1, 14),
(37, '705', 'Ninh Thuận', 1, 13),
(38, '217', 'Phú Thọ', 1, 12),
(39, '509', 'Phú Yên', 1, 11),
(40, '407', 'Quảng Bình', 1, 10),
(41, '503', 'Quảng Nam', 1, 9),
(42, '505', 'Quảng Ngãi', 1, 7),
(43, '225', 'Quảng Ninh', 1, 6),
(44, '409', 'Quảng Trị', 1, 5),
(45, '303', 'Sơn La', 1, 4),
(46, '401', 'Thanh Hóa', 1, 3),
(47, '115', 'Thái Bình', 1, 2),
(48, '215', 'Thái Nguyên', 1, 16),
(49, '411', 'Thừa Thiên - Huế', 1, 17),
(50, '807', 'Tiền Giang', 1, 31),
(51, '817', 'Trà Vinh', 1, 30),
(52, '211', 'Tuyên Quang', 1, 29),
(53, '709', 'Tây Ninh', 1, 28),
(54, '809', 'Vĩnh Long', 1, 27),
(55, '104', 'Vĩnh Phúc', 1, 26),
(56, '213', 'Yên Bái', 1, 25),
(57, '501', 'Đà Nẵng', 1, 24),
(58, '605', 'Đắk Lắk', 1, 23),
(59, '713', 'Đồng Nai', 1, 22),
(60, '803', 'Đồng Tháp', 1, 21),
(61, '821', 'Bạc Liêu', 1, 20),
(62, '819', 'Sóc Trăng', 1, 19),
(63, '825', 'Hậu Giang', 1, 18),
(64, '607', 'Đắk Nông', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cmt_parent` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `content`, `rate`, `product_id`, `news_id`, `user_id`, `cmt_parent`, `created_at`, `updated_at`) VALUES
(1, 'Wow nhìn đẹp qua shop ơi, mình rất là ưng', 5, 1, NULL, 1, NULL, '2016-09-19 13:52:40', '2016-09-19 13:52:40'),
(2, 'Mình mới mua một mẫu về, mặc rất vừa vặn, cảm ơn shop nhiều nha', 5, 1, NULL, 6, NULL, '2016-09-19 13:52:40', '2016-09-19 13:55:12'),
(3, 'nhìn thích quá, hôm nào có dịp mình sẽ tạt ngang shop thử', 5, 2, NULL, 4, NULL, '2016-09-19 13:54:07', '2016-09-19 13:55:20'),
(4, 'Nhìn không ưng lắm', 3, 2, NULL, 3, NULL, '2016-09-19 13:54:07', '2016-09-19 13:55:27'),
(5, 'mới vừa nhận được hàng luôn, hàng đẹp anh shipper khá là nhiệt tình, 5* ngay', 5, 1, NULL, 5, NULL, '2016-09-19 13:54:48', '2016-09-19 13:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `discription` text COLLATE utf8_unicode_ci,
  `apply_products` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `coupon_code`, `type`, `amount`, `discription`, `apply_products`, `expiry_date`, `group_id`, `created_at`, `updated_at`) VALUES
(4, 'sdfgh', 'asdgh', 1, 'sdfgh', 'asdfg', '2016-08-25', 3, '2016-08-24 23:22:53', '2016-08-25 03:19:54'),
(5, 'sf', 'qwr', 1, 'wefg', 'werf', '2016-08-25', 5, '2016-08-24 23:45:22', '2016-08-24 23:45:22'),
(7, '', '', 1, '', '', '2016-08-25', -1, '2016-08-25 03:19:45', '2016-08-25 03:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `designs`
--

CREATE TABLE `designs` (
  `design_id` int(10) UNSIGNED NOT NULL,
  `design_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `designs`
--

INSERT INTO `designs` (`design_id`, `design_url`, `user_id`, `uploaded_at`) VALUES
(2, 'http://www.24h.com.vn/thoi-trang/my-nu-dang-dep-nhat-anh-quoc-tao-bao-voi-bikini-day-c78a811291.html', 3, '2016-08-13 03:10:44'),
(3, 'http://www.24h.com.vn/thoi-trang/my-nu-dang-dep-nhat-anh-quoc-tao-bao-voi-bikini-day-c78a811291.html', 3, '2016-08-13 03:10:49'),
(4, 'http://www.24h.com.vn/thoi-trang/my-nu-dang-dep-nhat-anh-quoc-tao-bao-voi-bikini-day-c78a811291.html', 5, '2016-08-25 05:40:46'),
(5, 'http://www.24h.com.vn/thoi-trang/my-nu-dang-dep-nhat-anh-quoc-tao-bao-voi-bikini-day-c78a811291.html', 5, '2016-08-25 05:41:01'),
(6, 'http://www.24h.com.vn/thoi-trang/my-nu-dang-dep-nhat-anh-quoc-tao-bao-voi-bikini-day-c78a811291.html', 5, '2016-08-25 05:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `district_id` int(10) UNSIGNED NOT NULL,
  `district_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `district_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city_province_id` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `ordering` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`district_id`, `district_code`, `district_name`, `city_province_id`, `published`, `ordering`) VALUES
(2, '10101', 'Quận Ba Đình', 17, 1, 5),
(3, '10103', 'Quận Tây Hồ', 17, 1, 5),
(4, '10105', 'Quận Hoàn Kiếm', 17, 1, 5),
(5, '10107', 'Quận Hai Bà Trưng', 17, 1, 5),
(6, '10109', 'Quận Đống Đa', 17, 1, 5),
(7, '10111', 'Quận Thanh Xuân', 17, 1, 5),
(8, '10113', 'Quận Cầu Giấy', 17, 1, 5),
(9, '10115', 'Huyện Sóc Sơn', 17, 1, 5),
(10, '10117', 'Huyện Đông Anh', 17, 1, 5),
(11, '10119', 'Huyện Gia Lâm', 17, 1, 5),
(12, '10121', 'Huyện Từ Liêm', 17, 1, 5),
(13, '10123', 'Huyện Thanh Trì', 17, 1, 5),
(15, '10301', 'Quận Hồng Bàng', 23, 1, 5),
(16, '10303', 'Quận Ngô Quyền', 23, 1, 5),
(17, '10305', 'Quận Lê Chân', 23, 1, 5),
(18, '10307', 'Quận Kiến An', 23, 1, 5),
(19, '10309', 'Thị xã Đồ Sơn', 23, 1, 5),
(20, '10311', 'Huyện Thuỷ Nguyên', 23, 1, 5),
(21, '10313', 'Huyện An Hải', 23, 1, 5),
(22, '10315', 'Huyện An Lão', 23, 1, 5),
(23, '10317', 'Huyện Kiến Thuỵ', 23, 1, 5),
(24, '10319', 'Huyện Tiên Lãng', 23, 1, 5),
(25, '10321', 'Huyện Vĩnh Bảo', 23, 1, 5),
(26, '10323', 'Huyện Cát Hải', 23, 1, 5),
(27, '10325', 'Huyện Bạch Long Vĩ', 23, 1, 5),
(29, '10401', 'Thị xã Vĩnh Yên', 55, 1, 5),
(30, '10403', 'Huyện Lập Thạch', 55, 1, 5),
(31, '10405', 'Huyện Tam Dương', 55, 1, 5),
(32, '10407', 'Huyện Vĩnh Tường', 55, 1, 5),
(33, '10409', 'Huyện Yên Lạc', 55, 1, 5),
(34, '10411', 'Huyện Mê Linh', 55, 1, 5),
(35, '10413', 'Huyện Bình Xuyên', 55, 1, 5),
(37, '10501', 'Thị xã Hà Đông', 18, 1, 5),
(38, '10503', 'Thị xã Sơn Tây', 18, 1, 5),
(39, '10505', 'Huyện Ba Vì', 18, 1, 5),
(40, '10507', 'Huyện Phúc Thọ', 18, 1, 5),
(41, '10509', 'Huyện Đan Phượng', 18, 1, 5),
(42, '10511', 'Huyện Thạch Thất', 18, 1, 5),
(43, '10513', 'Huyện Hoài Đức', 18, 1, 5),
(44, '10515', 'Huyện Quốc Oai', 18, 1, 5),
(45, '10517', 'Huyện Chương Mỹ', 18, 1, 5),
(46, '10519', 'Huyện Thanh Oai', 18, 1, 5),
(47, '10521', 'Huyện Thường Tín', 18, 1, 5),
(48, '10523', 'Huyện Mỹ Đức', 18, 1, 5),
(49, '10525', 'Huyện ứng Hòa', 18, 1, 5),
(50, '10527', 'Huyện Phú Xuyên', 18, 1, 5),
(52, '22301', 'Thị xã Bắc Ninh', 9, 1, 5),
(53, '22303', 'Huyện Yên Phong', 9, 1, 5),
(54, '22305', 'Huyện Quế Võ', 9, 1, 5),
(55, '22307', 'Huyện Tiên Du', 9, 1, 5),
(56, '22308', 'Huyện Từ Sơn', 9, 1, 5),
(57, '22309', 'Huyện Thuận Thành', 9, 1, 5),
(58, '22311', 'Huyện Lương Tài', 9, 1, 5),
(59, '22312', 'Huyện Gia Bình', 9, 1, 5),
(61, '10701', 'Thành phố Hải Dương', 22, 1, 5),
(62, '10703', 'Huyện Chí Linh', 22, 1, 5),
(63, '10705', 'Huyện Nam Sách', 22, 1, 5),
(64, '10707', 'Huyện Thanh Hà', 22, 1, 5),
(65, '10709', 'Huyện Kinh Môn', 22, 1, 5),
(66, '10711', 'Huyện Kim Thành', 22, 1, 5),
(67, '10713', 'Huyện Gia Lộc', 22, 1, 5),
(68, '10715', 'Huyện Tứ Kỳ', 22, 1, 5),
(69, '10717', 'Huyện Cẩm Giàng', 22, 1, 5),
(70, '10719', 'Huyện Bình Giang', 22, 1, 5),
(71, '10721', 'Huyện Thanh Miện', 22, 1, 5),
(72, '10723', 'Huyện Ninh Giang', 22, 1, 5),
(74, '10901', 'Thị xã Hưng Yên', 21, 1, 5),
(75, '10902', 'Huyện Văn Lâm', 21, 1, 5),
(76, '10903', 'Huyện Mỹ Văn', 21, 1, 5),
(77, '10904', 'Huyện Yên Mỹ', 21, 1, 5),
(78, '10905', 'Huyện Châu Giang', 21, 1, 5),
(79, '10906', 'Huyện Khoái Châu', 21, 1, 5),
(80, '10907', 'Huyện Ân Thi', 21, 1, 5),
(81, '10909', 'Huyện Kim Động', 21, 1, 5),
(82, '10911', 'Huyện Phù Cừ', 21, 1, 5),
(83, '10913', 'Huyện Tiên Lữ', 21, 1, 5),
(85, '11101', 'Thị xã Phủ Lý', 16, 1, 5),
(86, '11103', 'Huyện Duy Tiên', 16, 1, 5),
(87, '11105', 'Huyện Kim Bảng', 16, 1, 5),
(88, '11107', 'Huyện Lý Nhân', 16, 1, 5),
(89, '11109', 'Huyện Thanh Liêm', 16, 1, 5),
(90, '11111', 'Huyện Bình Lục', 16, 1, 5),
(92, '11301', 'Thành phố Nam Định', 34, 1, 5),
(93, '11303', 'Huyện Vụ Bản', 34, 1, 5),
(94, '11305', 'Huyện Mỹ Lộc', 34, 1, 5),
(95, '11307', 'Huyện ý Yên', 34, 1, 5),
(96, '11309', 'Huyện Nam Trực', 34, 1, 5),
(97, '11311', 'Huyện Trực Ninh', 34, 1, 5),
(98, '11313', 'Huyện Xuân Trường', 34, 1, 5),
(99, '11315', 'Huyện Giao Thủy', 34, 1, 5),
(100, '11317', 'Huyện Nghĩa Hưng', 34, 1, 5),
(101, '11319', 'Huyện Hải Hậu', 34, 1, 5),
(103, '11501', 'Thị xã Thái Bình', 47, 1, 5),
(104, '11503', 'Huyện Quỳnh Phụ', 47, 1, 5),
(105, '11505', 'Huyện Hưng Hà', 47, 1, 5),
(106, '11507', 'Huyện Thái Thụy', 47, 1, 5),
(107, '11509', 'Huyện Đông Hưng', 47, 1, 5),
(108, '11511', 'Huyện Vũ Thư', 47, 1, 5),
(109, '11513', 'Huyện Kiến Xương', 47, 1, 5),
(110, '11515', 'Huyện Tiền Hải', 47, 1, 5),
(112, '11701', 'Thị xã Ninh Bình', 36, 1, 5),
(113, '11703', 'Thị xã Tam Điệp', 36, 1, 5),
(114, '11705', 'Huyện Nho Quan', 36, 1, 5),
(115, '11707', 'Huyện Gia Viễn', 36, 1, 5),
(116, '11709', 'Huyện Hoa Lư', 36, 1, 5),
(117, '11711', 'Huyện Yên Mô', 36, 1, 5),
(118, '11713', 'Huyện Yên Khánh', 36, 1, 5),
(119, '11715', 'Huyện Kim Sơn', 36, 1, 5),
(121, '20101', 'Thị xã Hà Giang', 15, 1, 5),
(122, '20103', 'Huyện Đồng Văn', 15, 1, 5),
(123, '20105', 'Huyện Mèo Vạc', 15, 1, 5),
(124, '20107', 'Huyện Yên Minh', 15, 1, 5),
(125, '20109', 'Huyện Quản Bạ', 15, 1, 5),
(126, '20111', 'Huyện Bắc Mê', 15, 1, 5),
(127, '20113', 'Huyện Hoàng Su Phì', 15, 1, 5),
(128, '20115', 'Huyện Vị Xuyên', 15, 1, 5),
(129, '20117', 'Huyện Xín Mần', 15, 1, 5),
(130, '20119', 'Huyện Bắc Quang', 15, 1, 5),
(132, '20301', 'Thị xã Cao Bằng', 11, 1, 5),
(133, '20303', 'Huyện Bảo Lạc', 11, 1, 5),
(134, '20305', 'Huyện Hà Quảng', 11, 1, 5),
(135, '20307', 'Huyện Thông Nông', 11, 1, 5),
(136, '20309', 'Huyện Trà Lĩnh', 11, 1, 5),
(137, '20311', 'Huyện Trùng Khánh', 11, 1, 5),
(138, '20313', 'Huyện Nguyên Bình', 11, 1, 5),
(139, '20315', 'Huyện Hoà An', 11, 1, 5),
(140, '20317', 'Huyện Quảng Hoà', 11, 1, 5),
(141, '20319', 'Huyện Hạ Lang', 11, 1, 5),
(142, '20321', 'Huyện Thạch An', 11, 1, 5),
(144, '20501', 'Thị xã Lào Cai', 31, 1, 5),
(145, '20503', 'Thị xã Cam Đường', 31, 1, 5),
(146, '20505', 'Huyện Mường Khương', 31, 1, 5),
(147, '20507', 'Huyện Bát Xát', 31, 1, 5),
(148, '20509', 'Huyện Bắc Hà', 31, 1, 5),
(149, '20511', 'Huyện Bảo Thắng', 31, 1, 5),
(150, '20513', 'Huyện Sa Pa', 31, 1, 5),
(151, '20515', 'Huyện Bảo Yên', 31, 1, 5),
(152, '20517', 'Huyện Than Uyên', 31, 1, 5),
(153, '20519', 'Huyện Văn Bàn', 31, 1, 5),
(155, '20701', 'Thị xã Bắc Kạn', 8, 1, 5),
(156, '20703', 'Huyện Ba Bể', 8, 1, 5),
(157, '20705', 'Huyện Ngân Sơn', 8, 1, 5),
(158, '20707', 'Huyện Chợ Đồn', 8, 1, 5),
(159, '20709', 'Huyện Na Rì', 8, 1, 5),
(160, '20711', 'Huyện Bạch Thông', 8, 1, 5),
(161, '20713', 'Huyện Chợ Mới', 8, 1, 5),
(163, '20901', 'Thị xã Lạng Sơn', 33, 1, 5),
(164, '20903', 'Huyện Tràng Định', 33, 1, 5),
(165, '20905', 'Huyện Văn Lãng', 33, 1, 5),
(166, '20907', 'Huyện Bình Gia', 33, 1, 5),
(167, '20909', 'Huyện Bắc Sơn', 33, 1, 5),
(168, '20911', 'Huyện Văn Quan', 33, 1, 5),
(169, '20913', 'Huyện Cao Lộc', 33, 1, 5),
(170, '20915', 'Huyện Lộc Bình', 33, 1, 5),
(171, '20917', 'Huyện Chi Lăng', 33, 1, 5),
(172, '20919', 'Huyện Đình Lập', 33, 1, 5),
(173, '20921', 'Huyện Hữu Lũng', 33, 1, 5),
(175, '21101', 'Thị xã Tuyên Quang', 52, 1, 5),
(176, '21103', 'Huyện Nà Hang', 52, 1, 5),
(177, '21105', 'Huyện Chiêm Hóa', 52, 1, 5),
(178, '21107', 'Huyện Hàm Yên', 52, 1, 5),
(179, '21109', 'Huyện Yên Sơn', 52, 1, 5),
(180, '21111', 'Huyện Sơn Dương', 52, 1, 5),
(182, '21301', 'Thị xã Yên Bái', 56, 1, 5),
(183, '21303', 'Thị xã Nghĩa Lộ', 56, 1, 5),
(184, '21305', 'Huyện Lục Yên', 56, 1, 5),
(185, '21307', 'Huyện Văn Yên', 56, 1, 5),
(186, '21309', 'Huyện Mù Căng Chải', 56, 1, 5),
(187, '21311', 'Huyện Trấn Yên', 56, 1, 5),
(188, '21313', 'Huyện Yên Bình', 56, 1, 5),
(189, '21315', 'Huyện Văn Chấn', 56, 1, 5),
(190, '21317', 'Huyện Trạm Tấu', 56, 1, 5),
(192, '21501', 'Thành phố Thái Nguyên', 48, 1, 5),
(193, '21503', 'Thị xã Sông Công', 48, 1, 5),
(194, '21505', 'Huyện Định Hóa', 48, 1, 5),
(195, '21507', 'Huyện Võ Nhai', 48, 1, 5),
(196, '21509', 'Huyện Phú Lương', 48, 1, 5),
(197, '21511', 'Huyện Đồng Hỷ', 48, 1, 5),
(198, '21513', 'Huyện Đại Từ', 48, 1, 5),
(199, '21515', 'Huyện Phú Bình', 48, 1, 5),
(200, '21517', 'Huyện Phổ Yên', 48, 1, 5),
(202, '21701', 'Thành phố Việt Trì', 38, 1, 5),
(203, '21703', 'Thị xã Phú Thọ', 38, 1, 5),
(204, '21705', 'Huyện Đoan Hùng', 38, 1, 5),
(205, '21707', 'Huyện Hạ Hoà', 38, 1, 5),
(206, '21709', 'Huyện Thanh Ba', 38, 1, 5),
(207, '21711', 'Huyện Phong Châu', 38, 1, 5),
(208, '21712', 'Huyện Lâm Thao', 38, 1, 5),
(209, '21713', 'Huyện Sông Thao', 38, 1, 5),
(210, '21715', 'Huyện Yên Lập', 38, 1, 5),
(211, '21717', 'Huyện Tam Thanh', 38, 1, 5),
(212, '21718', 'Huyện Thanh Thuỷ', 38, 1, 5),
(213, '21719', 'Huyện Thanh Sơn', 38, 1, 5),
(215, '22101', 'Thị xã Bắc Giang', 7, 1, 5),
(216, '22103', 'Huyện Yên Thế', 7, 1, 5),
(217, '22105', 'Huyện Tân Yên', 7, 1, 5),
(218, '22107', 'Huyện Lục Ngạn', 7, 1, 5),
(219, '22109', 'Huyện Hiệp Hòa', 7, 1, 5),
(220, '22111', 'Huyện Lạng Giang', 7, 1, 5),
(221, '22113', 'Huyện Sơn Động', 7, 1, 5),
(222, '22115', 'Huyện Lục Nam', 7, 1, 5),
(223, '22117', 'Huyện Việt Yên', 7, 1, 5),
(224, '22119', 'Huyện Yên Dũng', 7, 1, 5),
(226, '22501', 'Thành phố Hạ Long', 43, 1, 5),
(227, '22503', 'Thị xã Cẩm Phả', 43, 1, 5),
(228, '22505', 'Thị xã Uông Bí', 43, 1, 5),
(229, '22507', 'Huyện Bình Liêu', 43, 1, 5),
(230, '22509', 'Thị Xã Móng Cái', 43, 1, 5),
(231, '22511', 'Huyện Quảng Hà', 43, 1, 5),
(232, '22513', 'Huyện Tiên Yên', 43, 1, 5),
(233, '22515', 'Huyện Ba Chẽ', 43, 1, 5),
(234, '22517', 'Huyện Vân Đồn', 43, 1, 5),
(235, '22519', 'Huyện Hoành Bồ', 43, 1, 5),
(236, '22521', 'Huyện Đông Triều', 43, 1, 5),
(237, '22523', 'Huyện Cô Tô', 43, 1, 5),
(238, '22525', 'Huyện Yên Hưng', 43, 1, 5),
(240, '30101', 'Thị xã Điện Biên Phủ', 29, 1, 5),
(241, '30103', 'Thị xã Lai Châu', 29, 1, 5),
(242, '30105', 'Huyện Mường Tè', 29, 1, 5),
(243, '30107', 'Huyện Phong Thổ', 29, 1, 5),
(244, '30109', 'Huyện Sìn Hồ', 29, 1, 5),
(245, '30111', 'Huyện Mường Lay', 29, 1, 5),
(246, '30113', 'Huyện Tủa Chùa', 29, 1, 5),
(247, '30115', 'Huyện Tuần Giáo', 29, 1, 5),
(248, '30117', 'Huyện Điện Biên', 29, 1, 5),
(249, '30119', 'Huyện Điện Biên Đông', 29, 1, 5),
(251, '30301', 'Thị xã Sơn La', 45, 1, 5),
(252, '30303', 'Huyện Quỳnh Nhai', 45, 1, 5),
(253, '30305', 'Huyện Mường La', 45, 1, 5),
(254, '30307', 'Huyện Thuận Châu', 45, 1, 5),
(255, '30309', 'Huyện Bắc Yên', 45, 1, 5),
(256, '30311', 'Huyện Phù Yên', 45, 1, 5),
(257, '30313', 'Huyện Mai Sơn', 45, 1, 5),
(258, '30315', 'Huyện Sông Mã', 45, 1, 5),
(259, '30317', 'Huyện Yên Châu', 45, 1, 5),
(260, '30319', 'Huyện Mộc Châu', 45, 1, 5),
(262, '30501', 'Thị xã Hòa Bình', 20, 1, 5),
(263, '30503', 'Huyện Đà Bắc', 20, 1, 5),
(264, '30505', 'Huyện Mai Châu', 20, 1, 5),
(265, '30507', 'Huyện Kỳ Sơn', 20, 1, 5),
(266, '30509', 'Huyện Lương Sơn', 20, 1, 5),
(267, '30511', 'Huyện Kim Bôi', 20, 1, 5),
(268, '30513', 'Huyện Tân Lạc', 20, 1, 5),
(269, '30515', 'Huyện Lạc Sơn', 20, 1, 5),
(270, '30517', 'Huyện Lạc Thủy', 20, 1, 5),
(271, '30519', 'Huyện Yên Thủy', 20, 1, 5),
(273, '40101', 'Thành phố Thanh Hóa', 46, 1, 5),
(274, '40103', 'Thị xã Bỉm Sơn', 46, 1, 5),
(275, '40105', 'Thị xã Sầm Sơn', 46, 1, 5),
(276, '40107', 'Huyện Mường Lát', 46, 1, 5),
(277, '40109', 'Huyện Quan Hóa', 46, 1, 5),
(278, '40111', 'Huyện Quan Sơn', 46, 1, 5),
(279, '40113', 'Huyện Bá Thước', 46, 1, 5),
(280, '40115', 'Huyện Cẩm Thủy', 46, 1, 5),
(281, '40117', 'Huyện Lang Chánh', 46, 1, 5),
(282, '40119', 'Huyện Thạch Thành', 46, 1, 5),
(283, '40121', 'Huyện Ngọc Lạc', 46, 1, 5),
(284, '40123', 'Huyện Thường Xuân', 46, 1, 5),
(285, '40125', 'Huyện Như Xuân', 46, 1, 5),
(286, '40127', 'Huyện Như Thanh', 46, 1, 5),
(287, '40129', 'Huyện Vĩnh Lộc', 46, 1, 5),
(288, '40131', 'Huyện Hà Trung', 46, 1, 5),
(289, '40133', 'Huyện Nga Sơn', 46, 1, 5),
(290, '40135', 'Huyện Yên Định', 46, 1, 5),
(291, '40137', 'Huyện Thọ Xuân', 46, 1, 5),
(292, '40139', 'Huyện Hậu Lộc', 46, 1, 5),
(293, '40141', 'Huyện Thiệu Hoá', 46, 1, 5),
(294, '40143', 'Huyện Hoằng Hóa', 46, 1, 5),
(295, '40145', 'Huyện Đông Sơn', 46, 1, 5),
(296, '40147', 'Huyện Triệu Sơn', 46, 1, 5),
(297, '40149', 'Huyện Quảng Xương', 46, 1, 5),
(298, '40151', 'Huyện Nông Cống', 46, 1, 5),
(299, '40153', 'Huyện Tĩnh Gia', 46, 1, 5),
(301, '40301', 'Thành phố Vinh', 35, 1, 5),
(302, '40303', 'Thị xã Cửa Lò', 35, 1, 5),
(303, '40305', 'Huyện Quế Phong', 35, 1, 5),
(304, '40307', 'Huyện Quỳ Châu', 35, 1, 5),
(305, '40309', 'Huyện Kỳ Sơn', 35, 1, 5),
(306, '40311', 'Huyện Quỳ Hợp', 35, 1, 5),
(307, '40313', 'Huyện Nghĩa Đàn', 35, 1, 5),
(308, '40315', 'Huyện Tương Dương', 35, 1, 5),
(309, '40317', 'Huyện Quỳnh Lưu', 35, 1, 5),
(310, '40319', 'Huyện Tân Kỳ', 35, 1, 5),
(311, '40321', 'Huyện Con Cuông', 35, 1, 5),
(312, '40323', 'Huyện Yên Thành', 35, 1, 5),
(313, '40325', 'Huyện Diễn Châu', 35, 1, 5),
(314, '40327', 'Huyện Anh Sơn', 35, 1, 5),
(315, '40329', 'Huyện Đô Lương', 35, 1, 5),
(316, '40331', 'Huyện Thanh Chương', 35, 1, 5),
(317, '40333', 'Huyện Nghi Lộc', 35, 1, 5),
(318, '40335', 'Huyện Nam Đàn', 35, 1, 5),
(319, '40337', 'Huyện Hưng Nguyên', 35, 1, 5),
(321, '40501', 'Thị xã Hà Tĩnh', 19, 1, 5),
(322, '40503', 'Thị xã Hồng Lĩnh', 19, 1, 5),
(323, '40505', 'Huyện Nghi Xuân', 19, 1, 5),
(324, '40507', 'Huyện Đức Thọ', 19, 1, 5),
(325, '40509', 'Huyện Hương Sơn', 19, 1, 5),
(326, '40511', 'Huyện Can Lộc', 19, 1, 5),
(327, '40513', 'Huyện Thạch Hà', 19, 1, 5),
(328, '40515', 'Huyện Cẩm Xuyên', 19, 1, 5),
(329, '40517', 'Huyện Hương Khê', 19, 1, 5),
(330, '40519', 'Huyện Kỳ Anh', 19, 1, 5),
(332, '40701', 'Thị xã Đồng Hới', 40, 1, 5),
(333, '40703', 'Huyện Tuyên Hóa', 40, 1, 5),
(334, '40705', 'Huyện Minh Hóa', 40, 1, 5),
(335, '40707', 'Huyện Quảng Trạch', 40, 1, 5),
(336, '40709', 'Huyện Bố Trạch', 40, 1, 5),
(337, '40711', 'Huyện Quảng Ninh', 40, 1, 5),
(338, '40713', 'Huyện Lệ Thủy', 40, 1, 5),
(340, '40901', 'Thị xã Đông Hà', 44, 1, 5),
(341, '40903', 'Thị xã Quảng Trị', 44, 1, 5),
(342, '40905', 'Huyện Vĩnh Linh', 44, 1, 5),
(343, '40907', 'Huyện Gio Linh', 44, 1, 5),
(344, '40909', 'Huyện Cam Lộ', 44, 1, 5),
(345, '40911', 'Huyện Triệu Phong', 44, 1, 5),
(346, '40913', 'Huyện Hải Lăng', 44, 1, 5),
(347, '40915', 'Huyện Hướng Hóa', 44, 1, 5),
(348, '40917', 'Huyện Đa Krông', 44, 1, 5),
(350, '41101', 'Thành phố Huế', 49, 1, 5),
(351, '41103', 'Huyện Phong Điền', 49, 1, 5),
(352, '41105', 'Huyện Quảng Điền', 49, 1, 5),
(353, '41107', 'Huyện Hương Trà', 49, 1, 5),
(354, '41109', 'Huyện Phú Vang', 49, 1, 5),
(355, '41111', 'Huyện Hương Thủy', 49, 1, 5),
(356, '41113', 'Huyện Phú Lộc', 49, 1, 5),
(357, '41115', 'Huyện A Lưới', 49, 1, 5),
(358, '41117', 'Huyện Nam Đông', 49, 1, 5),
(360, '50101', 'Quận Hải Châu', 57, 1, 5),
(361, '50103', 'Quận Thanh Khê', 57, 1, 5),
(362, '50105', 'Quận Sơn Trà', 57, 1, 5),
(363, '50107', 'Quận Ngũ Hành Sơn', 57, 1, 5),
(364, '50109', 'Quận Liên Chiểu', 57, 1, 5),
(365, '50111', 'Huyện Hoà Vang', 57, 1, 5),
(366, '50113', 'Huyện Đảo Hoàng Sa', 57, 1, 5),
(368, '50301', 'Thị xã Tam Kỳ', 41, 1, 1),
(369, '50303', 'Thị xã Hội An', 41, 1, 2),
(370, '50305', 'Huyện Hiên', 41, 1, 13),
(371, '50307', 'Huyện Đại Lộc', 41, 1, 12),
(372, '50309', 'Huyện Điện Bàn', 41, 1, 11),
(373, '50311', 'Huyện Duy Xuyên', 41, 1, 10),
(374, '50313', 'Huyện Giằng', 41, 1, 9),
(375, '50315', 'Huyện Thăng Bình', 41, 1, 8),
(376, '50317', 'Huyện Quế Sơn', 41, 1, 7),
(377, '50319', 'Huyện Hiệp Đức', 41, 1, 6),
(378, '50321', 'Huyện Tiên Phước', 41, 1, 5),
(379, '50323', 'Huyện Phước Sơn', 41, 1, 4),
(380, '50325', 'Huyện Núi Thành', 41, 1, 3),
(381, '50327', 'Huyện Trà My', 41, 1, 14),
(383, '50501', 'Thị xã Quảng Ngãi', 42, 1, 5),
(384, '50503', 'Huyện Lý Sơn', 42, 1, 5),
(385, '50505', 'Huyện Bình Sơn', 42, 1, 5),
(386, '50507', 'Huyện Trà Bồng', 42, 1, 5),
(387, '50509', 'Huyện Sơn Tịnh', 42, 1, 5),
(388, '50511', 'Huyện Sơn Tây', 42, 1, 5),
(389, '50513', 'Huyện Sơn Hà', 42, 1, 5),
(390, '50515', 'Huyện Tư Nghĩa', 42, 1, 5),
(391, '50517', 'Huyện Nghĩa Hành', 42, 1, 5),
(392, '50519', 'Huyện Minh Long', 42, 1, 5),
(393, '50521', 'Huyện Mộ Đức', 42, 1, 5),
(394, '50523', 'Huyện Đức Phổ', 42, 1, 5),
(395, '50525', 'Huyện Ba Tơ', 42, 1, 5),
(397, '50701', 'Thành phố Qui Nhơn', 6, 1, 5),
(398, '50703', 'Huyện An Lão', 6, 1, 5),
(399, '50705', 'Huyện Hoài Nhơn', 6, 1, 5),
(400, '50707', 'Huyện Hoài Ân', 6, 1, 5),
(401, '50709', 'Huyện Phù Mỹ', 6, 1, 5),
(402, '50711', 'Huyện Vĩnh Thạnh', 6, 1, 5),
(403, '50713', 'Huyện Phù Cát', 6, 1, 5),
(404, '50715', 'Huyện Tây Sơn', 6, 1, 5),
(405, '50717', 'Huyện An Nhơn', 6, 1, 5),
(406, '50719', 'Huyện Tuy Phước', 6, 1, 5),
(407, '50721', 'Huyện Vân Canh', 6, 1, 5),
(409, '50901', 'Thành phố Tuy Hòa', 39, 1, 1),
(410, '50903', 'Huyện Đồng Xuân', 39, 1, 2),
(411, '50905', 'Huyện Sông Cầu', 39, 1, 3),
(412, '50907', 'Huyện Tuy An', 39, 1, 4),
(413, '50909', 'Huyện Sơn Hòa', 39, 1, 5),
(414, '50911', 'Huyện Đông Hòa', 39, 1, 6),
(415, '50913', 'Huyện Sông Hinh', 39, 1, 7),
(417, '51101', 'Thành phố Nha Trang', 25, 1, 5),
(418, '51103', 'Huyện Vạn Ninh', 25, 1, 5),
(419, '51105', 'Huyện Ninh Hòa', 25, 1, 5),
(420, '51107', 'Huyện Diên Khánh', 25, 1, 5),
(421, '51109', 'Huyện Cam Ranh', 25, 1, 5),
(422, '51111', 'Huyện Khánh Vĩnh', 25, 1, 5),
(423, '51113', 'Huyện Khánh Sơn', 25, 1, 5),
(424, '51115', 'Huyện Trường Sa', 25, 1, 5),
(426, '60101', 'Thị xã Kon Tum', 28, 1, 5),
(427, '60103', 'Huyện Đắk Glei', 28, 1, 5),
(428, '60105', 'Huyện Ngọc Hồi', 28, 1, 5),
(429, '60107', 'Huyện Đắk Tô', 28, 1, 5),
(430, '60109', 'Huyện Kon Plông', 28, 1, 5),
(431, '60111', 'Huyện Đak Hà', 28, 1, 5),
(432, '60113', 'Huyện Sa Thầy', 28, 1, 5),
(434, '60301', 'Thị xã Pleiku', 14, 1, 5),
(435, '60303', 'Huyện KBang', 14, 1, 5),
(436, '60305', 'Huyện Mang Yang', 14, 1, 5),
(437, '60307', 'Huyện Chư Păh', 14, 1, 5),
(438, '60309', 'Huyện Ia Grai', 14, 1, 5),
(439, '60311', 'Huyện An Khê', 14, 1, 5),
(440, '60313', 'Huyện Kông Chro', 14, 1, 5),
(441, '60315', 'Huyện Đức Cơ', 14, 1, 5),
(442, '60317', 'Huyện Chư Prông', 14, 1, 5),
(443, '60319', 'Huyện Chư Sê', 14, 1, 5),
(444, '60321', 'Huyện Ayun Pa', 14, 1, 5),
(445, '60323', 'Huyện Krông Pa', 14, 1, 5),
(447, '60501', 'Thành phố Buôn Ma Thuột', 58, 1, 5),
(448, '60503', 'Huyện Ea H''leo', 58, 1, 5),
(449, '60505', 'Huyện Ea Súp', 58, 1, 5),
(450, '60507', 'Huyện Krông Năng', 58, 1, 5),
(451, '60509', 'Huyện Krông Búk', 58, 1, 5),
(452, '60511', 'Huyện Buôn Đôn', 58, 1, 5),
(453, '60513', 'Huyện Cư M''gar', 58, 1, 5),
(454, '60515', 'Huyện Ea Kar', 58, 1, 5),
(455, '60517', 'Huyện M''Đrắk', 58, 1, 5),
(456, '60519', 'Huyện Krông Pắc', 58, 1, 5),
(457, '60703', 'Huyện Cư Jút', 64, 1, 2),
(458, '60523', 'Huyện Krông A Na', 58, 1, 5),
(459, '60525', 'Huyện Krông Bông', 58, 1, 5),
(460, '60705', 'Huyện Đắk Mil', 64, 1, 3),
(461, '60707', 'Huyện Krông Nô', 64, 1, 4),
(462, '60531', 'Huyện Lắk', 58, 1, 5),
(463, '60533', 'Huyện Đắk R''Lấp', 58, 1, 5),
(464, '60701', 'Huyện Đăk Glong', 64, 1, 5),
(466, '70101', 'Quận 1', 24, 1, 24),
(467, '70103', 'Quận 2', 24, 1, 15),
(468, '70105', 'Quận 3', 24, 1, 16),
(469, '70107', 'Quận 4', 24, 1, 17),
(470, '70109', 'Quận 5', 24, 1, 18),
(471, '70111', 'Quận 6', 24, 1, 19),
(472, '70113', 'Quận 7', 24, 1, 20),
(473, '70115', 'Quận 8', 24, 1, 21),
(474, '70117', 'Quận 9', 24, 1, 22),
(475, '70119', 'Quận 10', 24, 1, 1),
(476, '70121', 'Quận 11', 24, 1, 23),
(477, '70123', 'Quận 12', 24, 1, 14),
(478, '70125', 'Quận Gò Vấp', 24, 1, 13),
(479, '70127', 'Quận Tân Bình', 24, 1, 4),
(480, '70129', 'Quận Bình Thạnh', 24, 1, 11),
(481, '70131', 'Quận Phú Nhuận', 24, 1, 9),
(482, '70133', 'Quận Thủ Đức', 24, 1, 8),
(483, '70135', 'Huyện Củ Chi', 24, 1, 12),
(484, '70137', 'Huyện Hóc Môn', 24, 1, 6),
(485, '70139', 'Huyện Bình Chánh', 24, 1, 5),
(486, '70141', 'Huyện Nhà Bè', 24, 1, 7),
(487, '70143', 'Huyện Cần Giờ', 24, 1, 10),
(489, '70301', 'Thành phố Đà Lạt', 32, 1, 5),
(490, '70303', 'Thị xã Bảo Lộc', 32, 1, 5),
(491, '70305', 'Huyện Lạc Dương', 32, 1, 5),
(492, '70307', 'Huyện Đơn Dương', 32, 1, 5),
(493, '70309', 'Huyện Đức Trọng', 32, 1, 5),
(494, '70311', 'Huyện Lâm Hà', 32, 1, 5),
(495, '70313', 'Huyện Bảo Lâm', 32, 1, 5),
(496, '70315', 'Huyện Di Linh', 32, 1, 5),
(497, '70317', 'Huyện Đạ Huoai', 32, 1, 5),
(498, '70319', 'Huyện Đạ Tẻh', 32, 1, 5),
(499, '70321', 'Huyện Cát Tiên', 32, 1, 5),
(501, '70501', 'Thị xã Phan Rang-Tháp Chàm', 37, 1, 5),
(502, '70503', 'Huyện Ninh Sơn', 37, 1, 5),
(503, '70505', 'Huyện Ninh Hải', 37, 1, 5),
(504, '70507', 'Huyện Ninh Phước', 37, 1, 5),
(506, '70701', 'Huyện Đồng Phú', 4, 1, 5),
(507, '70703', 'Huyện Phước Long', 4, 1, 5),
(508, '70705', 'Huyện Lộc Ninh', 4, 1, 5),
(509, '70707', 'Huyện Bù Đăng', 4, 1, 5),
(510, '70709', 'Huyện Bình Long', 4, 1, 5),
(512, '70901', 'Thị xã Tây Ninh', 53, 1, 5),
(513, '70903', 'Huyện Tân Biên', 53, 1, 5),
(514, '70905', 'Huyện Tân Châu', 53, 1, 5),
(515, '70907', 'Huyện Dương Minh Châu', 53, 1, 5),
(516, '70909', 'Huyện Châu Thành', 53, 1, 5),
(517, '70911', 'Huyện Hòa Thành', 53, 1, 5),
(518, '70913', 'Huyện Bến Cầu', 53, 1, 5),
(519, '70915', 'Huyện Gò Dầu', 53, 1, 5),
(520, '70917', 'Huyện Trảng Bàng', 53, 1, 5),
(522, '71101', 'Thị xã Thủ Dầu Một', 3, 1, 5),
(523, '71103', 'Huyện Bến Cát', 3, 1, 5),
(524, '71105', 'Huyện Tân Uyên', 3, 1, 5),
(525, '71107', 'Huyện Thuận An', 3, 1, 5),
(527, '71301', 'Thành phố Biên Hòa', 59, 1, 5),
(528, '71303', 'Huyện Tân Phú', 59, 1, 5),
(529, '71305', 'Huyện Định Quán', 59, 1, 5),
(530, '71307', 'Huyện Vĩnh Cừu', 59, 1, 5),
(531, '71309', 'Huyện Thống Nhất', 59, 1, 5),
(532, '71311', 'Huyện Long Khánh', 59, 1, 5),
(533, '71313', 'Huyện Xuân Lộc', 59, 1, 5),
(534, '71315', 'Huyện Long Thành', 59, 1, 5),
(535, '71317', 'Huyện Nhơn Trạch', 59, 1, 5),
(537, '71501', 'Thị xã Phan Thiết', 5, 1, 5),
(538, '71503', 'Huyện Tuy Phong', 5, 1, 5),
(539, '71505', 'Huyện Bắc Bình', 5, 1, 5),
(540, '71507', 'Huyện Hàm Thuận Bắc', 5, 1, 5),
(541, '71509', 'Huyện Hàm Thuận Nam', 5, 1, 5),
(542, '71511', 'Huyện Tánh Linh', 5, 1, 5),
(543, '71513', 'Huyện Hàm Tân', 5, 1, 5),
(544, '71515', 'Huyện Đức Linh', 5, 1, 5),
(545, '71517', 'Huyện Phú Quí', 5, 1, 5),
(547, '71701', 'Thành phố Vũng Tầu', 2, 1, 5),
(548, '71703', 'Thị xã Bà Rịa', 2, 1, 5),
(549, '71705', 'Huyện Châu Đức', 2, 1, 5),
(550, '71707', 'Huyện Xuyên Mộc', 2, 1, 5),
(551, '71709', 'Huyện Tân Thành', 2, 1, 5),
(552, '71711', 'Huyện Long Đất', 2, 1, 5),
(553, '71713', 'Huyện Côn Đảo', 2, 1, 5),
(555, '80101', 'Thị xã Tân An', 30, 1, 5),
(556, '80103', 'Huyện Tân Hưng', 30, 1, 5),
(557, '80105', 'Huyện Vĩnh Hưng', 30, 1, 5),
(558, '80107', 'Huyện Mộc Hóa', 30, 1, 5),
(559, '80109', 'Huyện Tân Thạnh', 30, 1, 5),
(560, '80111', 'Huyện Thạnh Hóa', 30, 1, 5),
(561, '80113', 'Huyện Đức Huệ', 30, 1, 5),
(562, '80115', 'Huyện Đức Hòa', 30, 1, 5),
(563, '80117', 'Huyện Bến Lức', 30, 1, 5),
(564, '80119', 'Huyện Thủ Thừa', 30, 1, 5),
(565, '80121', 'Huyện Châu Thành', 30, 1, 5),
(566, '80123', 'Huyện Tân Trụ', 30, 1, 5),
(567, '80125', 'Huyện Cần Đước', 30, 1, 5),
(568, '80127', 'Huyện Cần Giuộc', 30, 1, 5),
(570, '80301', 'Thị xã Cao Lãnh', 60, 1, 5),
(571, '80303', 'Thị xã Sa Đéc', 60, 1, 5),
(572, '80305', 'Huyện Tân Hồng', 60, 1, 5),
(573, '80307', 'Huyện Hồng Ngự', 60, 1, 5),
(574, '80309', 'Huyện Tam Nông', 60, 1, 5),
(575, '80311', 'Huyện Thanh Bình', 60, 1, 5),
(576, '80313', 'Huyện Tháp Mười', 60, 1, 5),
(577, '80315', 'Huyện Cao Lãnh', 60, 1, 5),
(578, '80317', 'Huyện Lấp Vò', 60, 1, 5),
(579, '80319', 'Huyện Lai Vung', 60, 1, 5),
(580, '80321', 'Huyện Châu Thành', 60, 1, 5),
(582, '80501', 'Thành Phố Long Xuyên', 1, 1, 5),
(583, '80503', 'Thị xã Châu Đốc', 1, 1, 5),
(584, '80505', 'Huyện An Phú', 1, 1, 5),
(585, '80507', 'Huyện Tân Châu', 1, 1, 5),
(586, '80509', 'Huyện Phú Tân', 1, 1, 5),
(587, '80511', 'Huyện Châu Phú', 1, 1, 5),
(588, '80513', 'Huyện Tịnh Biên', 1, 1, 5),
(589, '80515', 'Huyện Tri Tôn', 1, 1, 5),
(590, '80517', 'Huyện Chợ Mới', 1, 1, 5),
(591, '80519', 'Huyện Châu Thành', 1, 1, 5),
(592, '80521', 'Huyện Thoại Sơn', 1, 1, 5),
(594, '80701', 'Thành phố Mỹ Tho', 50, 1, 5),
(595, '80703', 'Thị xã Gò Công', 50, 1, 5),
(596, '80705', 'Huyện Tân Phước', 50, 1, 5),
(597, '80707', 'Huyện Châu Thành', 50, 1, 5),
(598, '80709', 'Huyện Cai Lậy', 50, 1, 5),
(599, '80711', 'Huyện Chợ Gạo', 50, 1, 5),
(600, '80713', 'Huyện Cái Bè', 50, 1, 5),
(601, '80715', 'Huyện Gò Công Tây', 50, 1, 5),
(602, '80717', 'Huyện Gò Công Đông', 50, 1, 5),
(604, '80901', 'Thị xã Vĩnh Long', 54, 1, 5),
(605, '80903', 'Huyện Long Hồ', 54, 1, 5),
(606, '80905', 'Huyện Mang Thít', 54, 1, 5),
(607, '80907', 'Huyện Bình Minh', 54, 1, 5),
(608, '80909', 'Huyện Tam Bình', 54, 1, 5),
(609, '80911', 'Huyện Trà Ôn', 54, 1, 5),
(610, '80913', 'Huyện Vũng Liêm', 54, 1, 5),
(612, '81101', 'Thị xã Bến Tre', 10, 1, 5),
(613, '81103', 'Huyện Châu Thành', 10, 1, 5),
(614, '81105', 'Huyện Chợ Lách', 10, 1, 5),
(615, '81107', 'Huyện Mỏ Cày', 10, 1, 5),
(616, '81109', 'Huyện Giồng Trôm', 10, 1, 5),
(617, '81111', 'Huyện Bình Đại', 10, 1, 5),
(618, '81113', 'Huyện Ba Tri', 10, 1, 5),
(619, '81115', 'Huyện Thạnh Phú', 10, 1, 5),
(621, '81301', 'Thị xã Rạch Giá', 27, 1, 5),
(622, '81303', 'Huyện Hà Tiên', 27, 1, 5),
(623, '81305', 'Huyện Hòn Đất', 27, 1, 5),
(624, '81307', 'Huyện Tân Hiệp', 27, 1, 5),
(625, '81309', 'Huyện Châu Thành', 27, 1, 5),
(626, '81311', 'Huyện Giồng Giềng', 27, 1, 5),
(627, '81313', 'Huyện Gò Quao', 27, 1, 5),
(628, '81315', 'Huyện An Biên', 27, 1, 5),
(629, '81317', 'Huyện An Minh', 27, 1, 5),
(630, '81319', 'Huyện Vĩnh Thuận', 27, 1, 5),
(631, '81321', 'Huyện Phú Quốc', 27, 1, 5),
(632, '81323', 'Huyện Kiên Hải', 27, 1, 5),
(633, '81325', 'Thị xã Hà Tiên', 27, 1, 5),
(635, '81501', 'Thành phố Cần Thơ', 13, 1, 5),
(636, '81502', 'Thị xã Vị Thanh', 13, 1, 5),
(637, '81503', 'Huyện Thốt Nốt', 13, 1, 5),
(638, '81505', 'Huyện Ô Môn', 13, 1, 5),
(639, '81507', 'Huyện Châu Thành', 13, 1, 5),
(640, '81509', 'Huyện Phụng Hiệp', 13, 1, 5),
(641, '81511', 'Huyện Vị Thuỷ', 13, 1, 5),
(642, '81513', 'Huyện Long Mỹ', 13, 1, 5),
(644, '81701', 'Thị xã Trà Vinh', 51, 1, 5),
(645, '81703', 'Huyện Càng Long', 51, 1, 5),
(646, '81705', 'Huyện Châu Thành', 51, 1, 5),
(647, '81707', 'Huyện Cầu Kè', 51, 1, 5),
(648, '81709', 'Huyện Tiểu Cần', 51, 1, 5),
(649, '81711', 'Huyện Cầu Ngang', 51, 1, 5),
(650, '81713', 'Huyện Trà Cú', 51, 1, 5),
(651, '81715', 'Huyện Duyên Hải', 51, 1, 5),
(653, '81901', 'Thị xã Sóc Trăng', 62, 1, 5),
(654, '81903', 'Huyện Kế Sách', 62, 1, 5),
(655, '81905', 'Huyện Long Phú', 62, 1, 5),
(656, '81907', 'Huyện Mỹ Tú', 62, 1, 5),
(657, '81909', 'Huyện Mỹ Xuyên', 62, 1, 5),
(658, '81911', 'Huyện Thạnh Trị', 62, 1, 5),
(659, '81913', 'Huyện Vĩnh Châu', 62, 1, 5),
(661, '82101', 'Thị xã Bạc Liêu', 61, 1, 5),
(662, '82103', 'Huyện Hồng Dân', 61, 1, 5),
(663, '82105', 'Huyện Vĩnh Lợi', 61, 1, 5),
(664, '82107', 'Huyện Giá Rai', 61, 1, 5),
(666, '82301', 'Thị xã Cà Mau', 12, 1, 5),
(667, '82303', 'Huyện Thới Bình', 12, 1, 5),
(668, '82305', 'Huyện U Minh', 12, 1, 5),
(669, '82307', 'Huyện Trần Văn Thời', 12, 1, 5),
(670, '82309', 'Huyện Cái Nước', 12, 1, 5),
(671, '82311', 'Huyện Đầm Dơi', 12, 1, 5),
(672, '82313', 'Huyện Ngọc Hiển', 12, 1, 5),
(673, '60709', 'Huyện Đắk Song', 64, 1, 6),
(674, '60713', 'Thị xã Gia Nghĩa', 64, 1, 1),
(675, '60715', 'Huyện Tuy Đức', 64, 1, 7),
(676, '50915', 'Huyện Phú Hòa', 39, 1, 8),
(677, '50917', 'Huyện Tây Hoà', 39, 1, 9),
(678, '70711', 'Thị xã Đồng Xoài', 4, 1, 5),
(679, '70145', 'Quận Bình Tân', 24, 1, 3),
(680, '70147', 'Quận Tân Phú', 24, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `group_users`
--

CREATE TABLE `group_users` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `discription` text COLLATE utf8_unicode_ci,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_emails`
--

CREATE TABLE `log_emails` (
  `log_email_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `discription` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sent_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_04_29_122748_create_products_table', 1),
('2016_04_29_122815_create_assets_table', 1),
('2016_04_29_122827_create_stocks_table', 1),
('2016_04_29_122839_create_orders_table', 1),
('2016_04_29_122849_create_news_table', 1),
('2016_04_29_122917_create_log_emails_table', 1),
('2016_04_29_122924_create_logs_table', 1),
('2016_04_29_122941_create_categories_table', 1),
('2016_04_29_123000_create_city_province_table', 1),
('2016_04_29_123013_create_comments_table', 1),
('2016_04_29_123022_create_coupons_table', 1),
('2016_04_29_123034_create_designs_table', 1),
('2016_04_29_123048_create_districts_table', 1),
('2016_04_29_123102_create_group_users_table', 1),
('2016_04_29_123139_create_relationship_products_orders_table', 1),
('2016_05_24_073233_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `user_id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 0, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry...', 'http://localhost/chickfashion/public/uploads/news3.jpg', '2016-08-13 17:38:32', '2016-09-12 13:33:26'),
(2, 5, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry...', 'http://localhost/chickfashion/public/uploads/anh (14).jpg', '2016-08-25 00:31:35', '2016-09-11 15:17:15'),
(3, 5, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry...', 'http://localhost/chickfashion/public/uploads/anh (14).jpg', '2016-08-25 00:31:52', '2016-09-11 15:17:15'),
(8, 5, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry...', 'http://localhost/chickfashion/public/uploads/anh (14).jpg', '2016-08-25 00:32:22', '2016-09-11 15:17:15'),
(9, 5, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry...', 'http://localhost/chickfashion/public/uploads/anh (14).jpg', '2016-08-25 00:32:42', '2016-09-11 15:17:15'),
(12, 1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry...', 'http://localhost/chickfashion/public/uploads/anh (14).jpg', '2016-08-24 18:48:15', '2016-09-11 15:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `qr_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(11) NOT NULL,
  `city_province_id` int(11) NOT NULL,
  `num_products` int(11) NOT NULL,
  `products` text COLLATE utf8_unicode_ci NOT NULL,
  `shipment_date` date NOT NULL,
  `total_cost` double NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stock_id` int(11) NOT NULL DEFAULT '1',
  `discription` text COLLATE utf8_unicode_ci,
  `color` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(60) NOT NULL,
  `view_count` int(11) NOT NULL,
  `buy_count` int(11) NOT NULL,
  `old_price` double DEFAULT NULL,
  `new_price` double NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `approval_user_id` int(11) NOT NULL,
  `design_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `image`, `tag`, `stock_id`, `discription`, `color`, `size`, `status`, `view_count`, `buy_count`, `old_price`, `new_price`, `category_id`, `user_id`, `approval_user_id`, `design_id`, `created_at`, `updated_at`) VALUES
(97, 'Áo body nam trắng', '["https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_body_nam_trang1-1 - Copy.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_body_nam_trang1-2 - Copy.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_body_nam_trang1-3 - Copy.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_body_nam_trang1-4 - Copy.jpg"]', 'white,body,nam,aothun,trang', 1, '[object Object]', '["white"]', 'M,L,XL,XXL', 1, 0, 0, 120000, 120000, 1, 1, 0, 0, '2016-09-19 06:24:35', '2016-09-19 13:32:24'),
(98, 'Áo sơ mi trắng dài tay nam', '["https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_trang_nam_tay_dai1-1.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_trang_nam_tay_dai1-2.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_trang_nam_tay_dai1-3.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_trang_nam_tay_dai1-4.jpg"]', 'sơ mi,áo,trắng,dài tay,nam,white', 1, '[object Object]', '["white"]', 'S,M,L,XL,X', 1, 0, 0, 250000, 250000, 2, 1, 0, 0, '2016-09-19 06:33:37', '2016-09-19 06:33:37'),
(99, 'Áo sơ mi nam ngắn tay nam', '["https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_trang_nam_tay_ngan1-1.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_trang_nam_tay_ngan1-2.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_trang_nam_tay_ngan1-3.jpg"]', 'sơ mi,nam,ngắn tay,white,công sở', 1, '[object Object]', '["white"]', 'M,L,XL,XXL', 1, 0, 0, 250000, 250000, 2, 1, 0, 0, '2016-09-19 06:35:13', '2016-09-19 06:35:13'),
(100, 'Áo thun đen dài tay nam', '["https:\\/\\/nhomthucteao.github.io\\/uploads\\/Ao_thun_den_nam_tay_dai1-1.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/Ao_thun_den_nam_tay_dai1-2.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/Ao_thun_den_nam_tay_dai1-3.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/Ao_thun_den_nam_tay_dai1-4.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/Ao_thun_den_nam_tay_dai1-5.jpg"]', 'áo thun,nam,đen,black,tay dài,cổ tim', 1, '[object Object]', '["black"]', 'M,L,XL,XXL', 1, 0, 0, 200000, 200000, 1, 1, 0, 0, '2016-09-19 06:36:32', '2016-09-19 06:36:32'),
(101, 'Áo sơ mi nữ vải voan', '["https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_so_mi_trang_vai_voan_nu1-1.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_so_mi_trang_vai_voan_nu1-2.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_so_mi_trang_vai_voan_nu1-3.jpg"]', 'áo,sơ mi,nữ,công sở,voan,trắng,white', 1, '[object Object]', '["white"]', 'S,M,L', 1, 0, 0, 170000, 170000, 4, 1, 0, 0, '2016-09-19 06:37:38', '2016-09-19 06:37:38'),
(102, 'Áo sơ mi nữ đen dài tay', '["https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_den_nu1-1.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_den_nu1-2.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_den_nu1-3.jpg"]', 'sơ mi,áo,nữ,đen,black,dài tay,công sở,voan', 1, '[object Object]', '["black"]', 'S,M,L', 1, 0, 0, 170000, 170000, 4, 1, 0, 0, '2016-09-19 06:38:45', '2016-09-19 06:38:45'),
(103, 'Áo sơ mi nữ đen dài tay', '["https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_den_tay_dai_nu1-1.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_den_tay_dai_nu1-2.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_den_tay_dai_nu1-3.jpg"]', 'áo,sơ mi,nữ,đen,dài tay,công sở,black,voan', 1, '[object Object]', '["black"]', 'S,M,L', 1, 0, 0, 180000, 180000, 4, 1, 0, 0, '2016-09-19 06:39:39', '2016-09-19 06:39:39'),
(104, 'Áo sơ mi nữ kẻ sọc đen trắng', '["https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_soc_trang_den_nu1-1.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_soc_trang_den_nu1-2.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_soc_trang_den_nu1-3.jpg"]', 'áo,sơ mi,nữ,sọc,đen,trắng,black,white,công sở', 1, '[object Object]', '["black","white"]', 'S,M,L', 1, 0, 0, 200000, 200000, 4, 1, 0, 0, '2016-09-19 06:40:38', '2016-09-19 06:40:38'),
(105, 'Áo sơ mi nữ chấm bi đen trắng', '["https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_trang_cham_bi_nu1-1.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_trang_cham_bi_nu1-2.png","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_trang_cham_bi_nu1-3.jpg"]', 'áo,sơ mi,nữ,chấm bi,đen,trắng,black,white,công sở', 1, '[object Object]', '[]', 'S,M,L,XL', 1, 0, 0, 200000, 200000, 4, 1, 0, 0, '2016-09-19 06:45:19', '2016-09-19 06:45:19'),
(106, 'Áo sơ mi nữ trắng', '[]', 'áo,sơ mi,nữ,trắng,công sở,white', 1, '[object Object]', '["white"]', 'S,M,L,Xl', 1, 0, 0, 200000, 200000, 4, 1, 0, 0, '2016-09-19 06:46:13', '2016-09-19 06:46:13'),
(107, 'Áo sơ mi nữ trắng chấm bi dài tay', '["https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_trang_tay_dai_cham_bi_nu1-1.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_trang_tay_dai_cham_bi_nu1-2.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/ao_somi_trang_tay_dai_cham_bi_nu1-3.jpg"]', 'áo,sơ mi,nữ,trắng,chấm bi,đen,dài tay,công sở,black,white', 1, '[object Object]', '["black","white"]', 'S,M,L', 1, 0, 0, 190000, 190000, 4, 1, 0, 0, '2016-09-19 06:47:51', '2016-09-19 06:47:51'),
(108, 'Áo thun nam trắng dài tay', '["https:\\/\\/nhomthucteao.github.io\\/uploads\\/Ao_thun_trang_nam_tay_dai1-1.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/Ao_thun_trang_nam_tay_dai1-2.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/Ao_thun_trang_nam_tay_dai1-3.jpg"]', 'áo,thun,nam,trắng,dài tay', 1, '[object Object]', '["white"]', 'M,L,XL,XXL', 1, 0, 0, 200000, 200000, 1, 1, 0, 0, '2016-09-19 06:48:48', '2016-09-19 06:48:48'),
(109, 'Áo thun nam xám dài tay', '["https:\\/\\/nhomthucteao.github.io\\/uploads\\/Ao_thun_xam_nam_tay_dai1-1.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/Ao_thun_xam_nam_tay_dai1-2.jpg","https:\\/\\/nhomthucteao.github.io\\/uploads\\/Ao_thun_xam_nam_tay_dai1-3.jpg"]', 'áo,thun,nam,xám,dài tay', 1, '[object Object]', '["white"]', 'S,M,L,XL,X', 1, 0, 0, 200000, 200000, 1, 1, 0, 0, '2016-09-19 06:49:56', '2016-09-19 06:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `relationship_products_orders`
--

CREATE TABLE `relationship_products_orders` (
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `key` varchar(100) COLLATE utf8_bin NOT NULL,
  `value` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`key`, `value`) VALUES
('tentrangweb', 'aabcd'),
('categoty', '[\r\n"thoitrangname":[\r\n"ao","qu\r\n],\r\n"thoitrangnu":[\r\n]\r\n\r\n]');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `stock_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(11) NOT NULL,
  `city_province_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`stock_id`, `name`, `address`, `district_id`, `city_province_id`, `created_at`, `updated_at`) VALUES
(1, 'Thủ Đức', '621 Xa lộ Hà Nội, Thủ Đức, TPHCM', 482, 24, '2016-09-18 12:46:32', '2016-09-18 12:46:32'),
(2, 'Quận 10', '231 Lý Thường Kiệt, phường 10, quận 10, TPHCM ', 475, 24, '2016-09-18 12:48:50', '2016-09-18 12:48:50'),
(3, 'Quận 1', '12 Nguyễn Thị Minh Khai, phường 2, quận 10, TPHCM', 466, 24, '2016-09-18 12:48:50', '2016-09-18 12:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt_code` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `salt_code`, `group_id`, `name`, `password`, `facebook_id`, `google_id`, `lastname`, `firstname`, `birthday`, `gender`, `email`, `phone`, `address`, `active`, `last_login`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'http://localhost/chickfashion/public/img/user8-128x128.jpg', '', 2, 'DaiTran', '$2y$10$D1pMrjFnDYRwd0KUDCWos.dDHX3SOriqbpcg2ZfCad5KWwdiKP8Eq', NULL, NULL, 'Trương Thị', 'Thảo', '1994-05-26', 0, 'daitq.cntt@gmail.com', '0987654321', '497 Hoa Hao', 0, NULL, NULL, '2016-05-07 13:44:02', '2016-09-12 09:35:19'),
(2, 'http://localhost/chickfashion/public/img/user8-128x128.jpg', '', 1, 'DaiTran1', '$2y$10$pA7FSVhWzIW9aRN95iM7i.To/Cu8pUk4h4nLxkpNpJrezUFB5W426', NULL, NULL, 'Tran', 'Dai', '1994-10-20', 1, 'daitq1@gmail.com', '0987654321', '497 Hoa Hao', 1, NULL, NULL, '2016-05-07 15:14:02', '2016-09-12 09:35:12'),
(3, 'http://localhost/chickfashion/public/img/user8-128x128.jpg', '', 1, 'DaiTran2', '$2y$10$SBqtyZxmtHHxg29myv65i.ZQBIa2YZlbgiJyKxrcvTp4PlmeyD4l.', NULL, NULL, 'Tran', 'Dai', '1994-10-20', 0, 'daitq2@gmail.com', '0987654321', '497 Hoa Hao', 1, NULL, NULL, '2016-05-07 15:15:02', '2016-09-12 09:35:49'),
(4, 'http://localhost/chickfashion/public/img/user8-128x128.jpg', '', 2, 'DaiTran3', '$2y$10$yPZZda4WAWXE6ylsDcn/euVt50JU89JJRjuO5oROoL89cPOTzVo0C', NULL, NULL, 'Tran', 'Dai', '1994-10-20', 1, 'daitq3@gmail.com', '01234567890', '497 Hoa Hao, P7', 1, NULL, NULL, '2016-05-07 15:15:33', '2016-09-12 09:35:46'),
(5, 'http://localhost/chickfashion/public/img/user8-128x128.jpg', '', 0, 'DaiTran4', '$2y$10$KGnykWoWOJRiq51Av8jXzunB/yYqp2favnRO.cPMl18qXKioxWgj6', NULL, NULL, 'Tran', 'Dai', '1994-10-20', 1, 'daitq4@gmail.com', '0987654321', '497 Hoa Hao', 1, NULL, NULL, '2016-05-07 15:15:50', '2016-09-12 09:35:44'),
(6, 'http://localhost/chickfashion/public/img/user8-128x128.jpg', '', 0, 'DaiTran5', '$2y$10$9bdhC2s2mm5aeqkl8AEkTeoycYw9E4eQLLOzzMa83fHwAQRQtlKcS', NULL, NULL, 'Tran', 'Dai', '1994-10-20', 1, 'daitq5@gmail.com', '0987654321', '497 Hoa Hao', 0, NULL, NULL, '2016-05-07 15:16:05', '2016-09-12 09:35:43'),
(7, 'http://localhost/chickfashion/public/img/user8-128x128.jpg', '', 0, 'DaiTran6', '$2y$10$V/bg2q0OjLyHawisHtqqluu7.94t5uolZ49S/4iOdAf5DU3e26Y6m', NULL, NULL, 'Tran', 'Dai', '1994-10-20', 1, 'daitq6@gmail.com', '0987654321', '497 Hoa Hao', 1, NULL, NULL, '2016-05-07 15:16:34', '2016-09-12 09:35:41'),
(8, 'http://localhost/chickfashion/public/img/user8-128x128.jpg', '', 0, 'DaiTran7', '$2y$10$pE0x5vHAMRjRfHqbNlsJlueNJ0967blqADhes/.Xe7EkSb40utacS', NULL, NULL, 'Tran', 'Dai', '1994-10-20', 1, 'daitq7@gmail.com', '0987654321', '497 Hoa Hao', 0, NULL, NULL, '2016-05-07 15:19:39', '2016-09-12 09:35:39'),
(9, 'http://localhost/chickfashion/public/img/user8-128x128.jpg', '', 0, 'DaiTran8', '$2y$10$UyXxcxgTKK7BC0Y5Lq3m6O9SZWts9rnAlWFT.aDkgTyogZUgIHO4S', NULL, NULL, 'Tran', 'Dai', '1994-10-20', 1, 'daitq8@gmail.com', '0987654321', '497 Hoa Hao', 0, NULL, NULL, '2016-05-07 15:19:52', '2016-09-12 09:35:36'),
(10, 'http://localhost/chickfashion/public/img/user8-128x128.jpg', '', 0, 'DaiTran9', '$2y$10$SOzn.YJgF3yNzfjnIjfsFet7l9nqIO.1KEvYxF57U1P2Pk1TT.D6m', NULL, NULL, 'Tran', 'Dai', '1994-10-20', 1, 'daitq9@gmail.com', '0987654321', '497 Hoa Hao', 0, NULL, NULL, '2016-05-07 15:20:07', '2016-09-12 09:35:33'),
(11, 'http://localhost/chickfashion/public/img/user8-128x128.jpg', '', 1, 'DaiTran10', '$2y$10$hPOMfiUPw7aV61teQ7LRweIWTbJWgzYbsszHrek5tkvPovrucV2D6', NULL, NULL, 'Tran', 'Dai', '1994-10-20', 1, 'daitq10@gmail.com', '0987654321', '497 Hoa Hao', 0, NULL, NULL, '2016-05-07 15:20:30', '2016-09-12 09:35:31'),
(20, 'http://localhost/chickfashion/public/img/user8-128x128.jpg', '', 0, 'TuanTran', '$2y$10$lKsamsHIzL6kNfLv0hBWSOXziXm120Ta.6N6wUm3cFmCT1BswB50a', NULL, NULL, 'Tran', 'Tuan', '0000-00-00', 1, 'tuan.tran@gmail.com', '01234567890', '876 Hoa Hao', 0, NULL, NULL, '2016-09-10 06:45:55', '2016-09-12 09:35:26'),
(21, 'http://localhost/chickfashion/public/img/user8-128x128.jpg', '', 0, 'ThaoTran', '$2y$10$72ZMezj4EmKjSsecsZ3TI.lzsjmsPOrPANPAgeE6MxD.vuni9q6cu', NULL, NULL, 'Tran', 'Thao', '0000-00-00', 1, 'thao.tran@gmail.com', '12345678', '423 To Hien Thanh', 0, NULL, 'l8uuT1bGNpGPhERYnqvys3WXCjzMtEuoBHBPuUNQ12leQLjZmKJiZ7bu5KUW', '2016-09-10 06:46:50', '2016-09-12 09:35:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_name_unique` (`name`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `city_province`
--
ALTER TABLE `city_province`
  ADD PRIMARY KEY (`city_province_id`),
  ADD UNIQUE KEY `city_province_city_province_code_unique` (`city_province_code`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`),
  ADD UNIQUE KEY `coupons_coupon_code_unique` (`coupon_code`);

--
-- Indexes for table `designs`
--
ALTER TABLE `designs`
  ADD PRIMARY KEY (`design_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`district_id`),
  ADD UNIQUE KEY `districts_district_code_unique` (`district_code`);

--
-- Indexes for table `group_users`
--
ALTER TABLE `group_users`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `log_emails`
--
ALTER TABLE `log_emails`
  ADD PRIMARY KEY (`log_email_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `relationship_products_orders`
--
ALTER TABLE `relationship_products_orders`
  ADD PRIMARY KEY (`product_id`,`order_id`),
  ADD KEY `relationship_products_orders_product_id_index` (`product_id`),
  ADD KEY `relationship_products_orders_order_id_index` (`order_id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `asset_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `city_province`
--
ALTER TABLE `city_province`
  MODIFY `city_province_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `designs`
--
ALTER TABLE `designs`
  MODIFY `design_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `district_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=681;
--
-- AUTO_INCREMENT for table `group_users`
--
ALTER TABLE `group_users`
  MODIFY `group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `log_emails`
--
ALTER TABLE `log_emails`
  MODIFY `log_email_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `stock_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
