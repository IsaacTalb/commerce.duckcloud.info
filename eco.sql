-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2024 at 06:47 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eco`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `category`, `coupon`, `product`, `blog`, `order`, `other`, `report`, `role`, `return`, `contact`, `comment`, `setting`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Isaac_Talb', NULL, 'thaungahlaybaw@gmail.com', NULL, '$2y$10$lVusBa.BksY9gnzT381TGe2rwOmChA9vFMb/5EjoyfU0VqGmh/T0W', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_logo`, `created_at`, `updated_at`) VALUES
(3, 'xiaomi', 'media/brand/270721_19_30_53.jpg', NULL, NULL),
(5, 'Sumsang', 'media/brand/270721_21_50_32.jpg', NULL, NULL),
(7, 'Apple', 'media/brand/270721_21_01_10.jpg', NULL, NULL),
(9, 'Sony', 'media/brand/010821_19_37_47.jpg', NULL, NULL),
(11, 'Meizu', 'media/brand/010821_19_49_48.jpg', NULL, NULL),
(12, 'DELL', 'media/brand/010821_19_26_49.png', NULL, NULL),
(13, 'Lenovo', 'media/brand/010821_19_56_49.png', NULL, NULL),
(14, 'Asus', 'media/brand/010821_19_12_50.png', NULL, NULL),
(15, 'Canon', 'media/brand/010821_19_25_50.png', NULL, NULL),
(16, 'Adidas', 'media/brand/010821_19_47_50.png', NULL, NULL),
(17, 'Nike', 'media/brand/010821_19_07_51.png', NULL, NULL),
(18, 'Levi\'s', 'media/brand/010821_19_24_51.png', NULL, NULL),
(19, 'Gucci', 'media/brand/010821_19_56_52.png', NULL, NULL),
(21, 'Duck_Cloud', 'media/brand/100524_11_24_31.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(3, 'Mens Fashion', '2021-07-27 06:29:21', '2021-07-27 06:29:21'),
(4, 'Womens Fashion', '2021-07-27 10:36:18', '2021-07-27 10:36:18'),
(5, 'Child', '2021-07-27 10:42:26', '2021-07-27 10:42:26'),
(10, 'Watch', '2021-07-28 11:52:52', '2021-07-28 11:52:52'),
(11, 'Furniture', '2021-07-30 13:02:32', '2021-07-30 13:02:32'),
(12, 'Electronics', '2021-07-30 13:02:44', '2021-07-30 13:02:44'),
(13, 'Health', '2021-07-30 13:02:57', '2021-07-30 13:02:57'),
(14, 'Beauty', '2021-07-30 13:03:05', '2021-07-30 13:03:05'),
(15, 'Sports & Outdoor', '2021-07-30 13:03:13', '2021-07-30 13:03:13'),
(18, 'Home & Living', '2021-08-01 13:58:33', '2021-08-01 13:58:33'),
(19, 'House Plants', '2024-05-10 04:55:41', '2024-05-10 04:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(2, 'teo', '980038403', 'teo@gmail.com', 'how are you I am good and you?', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'UDEMY', '10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_05_052517_create_admins_table', 1),
(5, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(7, '2021_07_08_105115_create_sessions_table', 2),
(8, '2021_07_26_174449_create_categories_table', 3),
(9, '2021_07_26_174519_create_subcategories_table', 3),
(10, '2021_07_26_174544_create_brands_table', 3),
(11, '2021_07_28_111036_create_coupons_table', 4),
(12, '2021_07_28_120145_create_newslaters_table', 5),
(13, '2021_07_28_120348_create_newslaters_table', 6),
(14, '2021_07_28_124535_create_products_table', 7),
(15, '2021_07_29_172255_create_post_category_table', 8),
(16, '2021_07_29_172329_create_posts_table', 8),
(17, '2021_07_31_163517_create_wishlists_table', 9),
(18, '2021_08_04_130330_create_settings_table', 10),
(19, '2016_06_01_000001_create_oauth_auth_codes_table', 11),
(20, '2016_06_01_000002_create_oauth_access_tokens_table', 11),
(21, '2016_06_01_000003_create_oauth_refresh_tokens_table', 11),
(22, '2016_06_01_000004_create_oauth_clients_table', 11),
(23, '2016_06_01_000005_create_oauth_personal_access_clients_table', 11),
(24, '2021_08_07_191901_create_orders_table', 12),
(25, '2021_08_07_191917_create_orders_details_table', 12),
(26, '2021_08_07_192033_create_shipping_table', 12),
(27, '2021_08_11_050440_create_sitesetting_table', 13),
(28, '2021_08_16_092848_create_contact_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `newslaters`
--

CREATE TABLE `newslaters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newslaters`
--

INSERT INTO `newslaters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'miaasif2002@gmail.com', '2021-07-28 12:23:32', NULL),
(5, 'sultan@gamil.com', '2021-08-01 15:58:02', NULL),
(6, 'alamin@gmail.com', '2021-08-05 13:09:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'T0xaLN4KKYuWWoudfMXOmFo5RTVwdy4k3esE2CJw', NULL, 'http://localhost', 1, 0, 0, '2021-08-05 20:53:36', '2021-08-05 20:53:36'),
(2, NULL, 'Laravel Password Grant Client', 'H4hQiixZxI30T6IsNIkS3rsw25k2nedCIsy4jPDv', 'users', 'http://localhost', 0, 1, 0, '2021-08-05 20:53:36', '2021-08-05 20:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-08-05 20:53:36', '2021-08-05 20:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blnc_transection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_order` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_type`, `payment_id`, `paying_amount`, `blnc_transection`, `stripe_order_id`, `subtotal`, `shipping`, `vat`, `total`, `status`, `month`, `date`, `year`, `status_code`, `return_order`, `created_at`, `updated_at`) VALUES
(1, '4', 'stripe', 'card_1JLvlnGQ9YOHizoj24qwKNYY', '56500', 'txn_3JLvloGQ9YOHizoj0Fkyoykw', '610ee783562ab', '550.00', '10', '5', '565', '1', 'August', '07-08-21', '2021', '12345', NULL, NULL, NULL),
(2, '4', 'stripe', 'card_1JLvpFGQ9YOHizojubVMseDp', '56500', 'txn_3JLvpGGQ9YOHizoj3LkJrNqc', '610ee8595f1e4', '550.00', '10', '5', '565', '3', 'August', '07-08-21', '2021', '234234', NULL, NULL, NULL),
(3, '4', 'stripe', 'card_1JLvucGQ9YOHizoj6e65J0rZ', '56500', 'txn_3JLvudGQ9YOHizoj149wyk6C', '610ee9a6e1273', '550.00', '10', '5', '565', '1', 'August', '07-08-21', '2021', '2342345', NULL, NULL, NULL),
(4, '4', 'stripe', 'card_1JLvwHGQ9YOHizojnCRYAfUl', '53500', 'txn_3JLvwIGQ9YOHizoj094wB2Xd', '610eea0e11ac2', '510', '10', '5', '535', '1', 'August', '07-08-21', '2021', '673905', NULL, NULL, NULL),
(5, '4', 'stripe', 'card_1JLxPJGQ9YOHizojN9K9Xqfm', '56500', 'txn_3JLxPKGQ9YOHizoj3QJ22fFF', '610f001a4c9ad', '540', '10', '5', '565', '3', 'August', '07-08-21', '2021', '886198', NULL, NULL, NULL),
(6, '4', 'stripe', 'card_1JLyJfGQ9YOHizojo8a0ip5h', '56500', 'txn_3JLyJfGQ9YOHizoj01KQjGPI', '610f0dbf5ae8b', '550.00', '10', '5', '565', '4', 'August', '07-08-21', '2021', '293282', NULL, NULL, NULL),
(7, '4', 'stripe', 'card_1JLyttGQ9YOHizojYDBZOkJs', '101400', 'txn_3JLytuGQ9YOHizoj1U5kfGtG', '610f1686121a9', '999.00', '10', '5', '1014', '3', 'August', '07-08-21', '2021', '787050', NULL, NULL, NULL),
(8, '4', 'stripe', 'card_1JMBFDGQ9YOHizoj5y572Zmy', '56500', 'txn_3JMBFFGQ9YOHizoj3KnFry8B', '610fcfe00183f', '550.00', '10', '5', '565', '3', 'August', '08-08-21', '2021', '936213', NULL, NULL, NULL),
(9, '4', 'stripe', 'card_1JMCxoGQ9YOHizoj2dYuKATz', '56500', 'txn_3JMCxpGQ9YOHizoj2IH2tMfn', '610fe9b012875', '550.00', '10', '5', '565', '3', 'August', '08-08-21', '2021', '749630', NULL, NULL, NULL),
(10, '4', 'stripe', 'card_1JMEibGQ9YOHizojrJFxZdEX', '56500', 'txn_3JMEicGQ9YOHizoj004RYhLl', '61100408beba4', '550.00', '10', '5', '565', '3', 'August', '08-08-21', '2021', '425368', NULL, NULL, NULL),
(11, '4', 'stripe', 'card_1JMEv6GQ9YOHizoj3TLinIP8', '56500', 'txn_3JMEv8GQ9YOHizoj0ppb29BR', '61100710806e1', '550.00', '10', '5', '565', '3', 'August', '08-08-21', '2021', '502987', NULL, NULL, NULL),
(12, '4', 'stripe', 'card_1JMSMgGQ9YOHizojcYbM5Gsd', '108500', 'txn_3JMSMiGQ9YOHizoj3dVpgF8a', '6110d0f29713b', '1,070.00', '10', '5', '1085', '3', 'August', '09-08-21', '2021', '735737', NULL, NULL, NULL),
(13, '4', 'stripe', 'card_1JMXjKGQ9YOHizojzhebsv0a', '56500', 'txn_3JMXjMGQ9YOHizoj2jhb0E4D', '61112182ebc73', '540', '10', '5', '565', '3', 'August', '09-08-21', '2021', '703451', NULL, NULL, NULL),
(14, '4', 'stripe', 'card_1JP842GQ9YOHizojsRiTCNEI', '23500', 'txn_3JP847GQ9YOHizoj18L2GMRk', '611a89090ffbd', '210', '10', '5', '235', '0', 'August', '16-08-21', '2021', '962941', '2', NULL, NULL),
(15, '4', 'stripe', 'card_1JP87jGQ9YOHizojiW4Tdx0i', '20700', 'txn_3JP87oGQ9YOHizoj1yj6xuIY', '611a89ece1473', '192.00', '10', '5', '207', '3', 'August', '16-08-21', '2021', '189701', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singleprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `singleprice`, `totalprice`, `created_at`, `updated_at`) VALUES
(1, 2, '43', 'High Quality T-shirt', 'blue', NULL, '1', '550', '550', NULL, NULL),
(2, 3, '41', 'Ego Trendy Half Sleeve', 'Black', NULL, '1', '550', '550', NULL, NULL),
(3, 4, '37', 'Stainless Steel watch', 'black', NULL, '1', '520', '520', NULL, NULL),
(4, 5, '38', 'Chocolate Leather Wrist Watch For Men', 'black', NULL, '1', '550', '550', NULL, NULL),
(5, 6, '38', 'Chocolate Leather Wrist Watch For Men', 'black', NULL, '1', '550', '550', NULL, NULL),
(6, 7, '36', 'Bostanten Watch', 'black', NULL, '1', '999', '999', NULL, NULL),
(7, 8, '42', 'Friends Trendy Half Sleeve T-Shirt', 'Black', NULL, '1', '550', '550', NULL, NULL),
(8, 9, '43', 'High Quality T-shirt', 'blue', NULL, '1', '550', '550', NULL, NULL),
(9, 10, '43', 'High Quality T-shirt', 'blue', NULL, '1', '550', '550', NULL, NULL),
(10, 11, '41', 'Ego Trendy Half Sleeve', 'Black', NULL, '1', '550', '550', NULL, NULL),
(11, 12, '41', 'Ego Trendy Half Sleeve', 'Black', NULL, '1', '550', '550', NULL, NULL),
(12, 12, '37', 'Stainless Steel watch', 'black', NULL, '1', '520', '520', NULL, NULL),
(13, 13, '43', 'High Quality T-shirt', 'blue', NULL, '1', '550', '550', NULL, NULL),
(14, 14, '43', 'High Quality T-shirt', '', NULL, '1', '220', '220', NULL, NULL),
(15, 15, '37', 'Stainless Steel watch', '', NULL, '1', '192', '192', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_in` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_bd` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_in` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_bd` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `post_title_en`, `post_title_in`, `post_title_bd`, `post_image`, `details_en`, `details_in`, `details_bd`, `created_at`, `updated_at`) VALUES
(8, 1, 'test1', 'test1', 'test1', 'media/post/1706709703017831.jpeg', 'test1', 'test1', 'test1', NULL, NULL),
(9, 1, 'test', 'test', 'test', 'media/post/1707195211217385.jpeg', 'test', 'test', 'test', NULL, NULL),
(10, 2, 'What is Lorem Ipsum?', 'लोरेम इप्सम क्या है?', 'লরেম ইপসাম কী?', 'media/post/1707279377322107.jpeg', 'What is Lorem Ipsum', 'लोरेम इप्सम क्या है', 'লরেম ইপসাম কী', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_in` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_bd` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `category_name_en`, `category_name_in`, `category_name_bd`, `created_at`, `updated_at`) VALUES
(1, 'service', 'सर्विस', 'সেবা', NULL, NULL),
(2, 'education', 'शिक्षा', 'শিক্ষা', NULL, NULL),
(3, 'local', 'स्थानीय', 'স্থানীয়', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider` int(11) DEFAULT NULL,
  `hot_deal` int(11) DEFAULT NULL,
  `best_rated` int(11) DEFAULT NULL,
  `mid_slider` int(11) DEFAULT NULL,
  `hot_new` int(11) DEFAULT NULL,
  `buyone_getone` int(30) DEFAULT NULL,
  `trend` int(11) DEFAULT NULL,
  `image_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(9, 1, 1, 5, 'new product', '234584', '12', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'red', 's,l', '1200', '200', 'https://www.youtube.com/watch?v=45UBghDPMBk', 1, 1, 1, 1, NULL, NULL, 1, 'media/product/1706637355648920.png', 'media/product/1706637355786064.png', 'media/product/1706637355837133.png', 1, NULL, NULL),
(10, 10, 16, 20, 'SKMEI Fashion Casual Watch', '4', '165', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Brand Name：SKMEI 9185</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender：Men</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style：Fashion, Casual</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Movement：Quartz</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Waterproof: 30m</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Functions：Time，30m Waterproof</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.1aeb7d0exRwQ9E\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Features：Simple，Fashion Casual，Ultra-thin，Small dial</li></ul></h2>', 'Red,Blue,Green,White', 's', '2250', '1550', 'No video available', 1, 1, 1, 1, 1, NULL, 1, 'media/product/060821_18_49_12.jpeg', 'media/product/060821_18_26_15.jpeg', 'media/product/060821_18_34_15.jpeg', 1, NULL, NULL),
(11, 9, 10, 3, 'SKMEI Fashion Sport Casual', '234586', '150', '<ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-family: verdana, geneva, sans-serif;\">Brand Name:SKMEI 1370</span></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-family: verdana, geneva, sans-serif;\">Gender : Men</span></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-family: verdana, geneva, sans-serif;\">Style : Fashion Casual &amp; Sports</span></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-family: verdana, geneva, sans-serif;\">Color : Black White/ Rose Gold/ Gold/ Black/ Army Green/ Silver</span></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-family: verdana, geneva, sans-serif;\">Case Material : ABS</span></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-family: verdana, geneva, sans-serif;\">Strap Material : Stainless Steel</span></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-family: verdana, geneva, sans-serif;\">Buckle Type : Bracelet Buckle</span></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-family: verdana, geneva, sans-serif;\">Dial Observation : Round</span></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-family: verdana, geneva, sans-serif;\">Case Thickness : 14mm</span></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-family: verdana, geneva, sans-serif;\">Dial Diameter : 47mm</span></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-family: verdana, geneva, sans-serif;\">Wrist Strap Length : 260mm (Adjustable)</span></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-family: verdana, geneva, sans-serif;\">Bandwidth : 18mm</span></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-family: verdana, geneva, sans-serif;\">Waterproof Depth : 50M</span></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-family: verdana, geneva, sans-serif;\">Features : Double Time/ Chrono/ Alarm/ Waterproof/ Date/ Week/ EL/ 12/24 Hour</span></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\"><span style=\"margin: 0px; padding: 0px; font-family: verdana, geneva, sans-serif;\">Package Contents : 1 X SKMEI NewWatch (NO BOX),1 X Manual</span></span></li></ul>', 'Black', 'S', '1960', '250', 'https://www.youtube.com/watch?v=45UBghDPMBk', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1706731600587832.jpeg', 'media/product/1706731600898386.jpeg', 'media/product/1706731600962557.jpeg', 1, NULL, NULL),
(12, 2, 11, 3, 'CURREN 8363 Watches Men ', '234587', '52', '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Brand Name : Curren</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Length : 24cm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style : Fashion ;Casual</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Movement : QUARTZ</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Water Resistance Depth : 3Bar</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Clasp Type : Bracelet Clasp</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Origin : CN(Origin)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Material : Alloy</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Thickness : 14mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dial Window Material Type : Hardlex</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Item Type : Quartz Wristwatches</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Material Type : STAINLESS STEEL</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dial Diameter : 48mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Model Number : 8363</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Width : 24mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Shape : ROUND</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature : Auto Date</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature : Chronograph</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature : Water Resistant</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature : Luminous Hands</li></ul>', 'black', 's', '2150', '120', 'https://www.youtube.com/watch?v=9IzaWBsUhCU', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1706731687891173.jpeg', 'media/product/1706731687959122.jpeg', 'media/product/1706731688019562.jpeg', 1, NULL, NULL),
(13, 10, 16, 20, 'Calendar Watch', '5', '250', '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.569e9aaeO6o0tX\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Material: Plastic</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Red, White+Black, White+Golden, Black, Black+White, Black+Rose Golden, Black+Golden</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Movement: Digital movement</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band material: PU</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case material: Plastic</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Mirror material: Plastic</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Waterproof: 30ATM</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case diameter: 44mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band length: 180mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band width: 21mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dial thickness: 9mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product weight: 36g/1.2oz</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Package size: 17.5*7*2cm/6.8*2.7*0.7inch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Package weight: 40g/1.4oz</li></ul>', 'red,White,Green,Black', 's', '1200', NULL, 'No video available', 1, 1, 1, 1, 1, 1, 1, 'media/product/060821_18_25_16.jpeg', 'media/product/060821_18_34_16.jpeg', 'media/product/060821_18_44_16.jpeg', 1, NULL, NULL),
(14, 9, 10, 5, 'SKMEI Men Fashion Watch LED Creative Watches', '234589', '150', '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Brand Name：SKMEI 9185</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender：Men</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style：Fashion, Casual</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Movement：Quartz</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Waterproof: 30m</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Functions：Time，30m Waterproof</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Features：Simple，Fashion Casual，Ultra-thin，Small dial</li></ul>', 'red', 's', '2250', '230', 'https://www.youtube.com/watch?v=45UBghDPMBk', 1, NULL, 1, 1, NULL, NULL, 1, 'media/product/1706731924037172.jpeg', 'media/product/1706731924150757.jpeg', 'media/product/1706731924739527.jpeg', 1, NULL, NULL),
(15, 3, 4, 5, 'SPRINT Men\'s Canvas', '3', '255', '<span style=\"font-family: &quot;Open Sans&quot;, sans-serif;\">Get ready for a morning walk or evening stroll with these canvas shoes for women.</span>', 'black', '41,42,43', '2599', NULL, 'https://www.youtube.com/watch?v=45UBghDPMBk', 1, 1, 1, NULL, 1, 1, 1, 'media/product/1706732090940316.jpeg', 'media/product/1706732090991933.jpeg', 'media/product/1706732091031789.jpeg', 1, NULL, NULL);
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(16, 12, 18, 3, 'Xiaomi Redmi 8', '6', '165', '<table style=\"padding: 0px; margin: 0px 0px 1.5em; list-style: none; border: 0px; outline: none; box-sizing: border-box; border-spacing: 0px; width: 555.75px; border-collapse: separate; color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px; text-align: center;\"><tbody style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; font-weight: 600;\">First Release</span></td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">October 2019</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; font-weight: 600;\">Colors</span></td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Onyx Black, Ruby Red, Sapphire Blue</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\">&nbsp; Connectivity</th><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\"></th></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Network</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">2G, 3G, 4G</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">SIM</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Dual Nano SIM</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">WLAN</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅ Wi-Fi direct, Wi-Fi hotspot</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Bluetooth</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅ v4.2, A2DP, LE, aptX HD</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">GPS</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅ A-GPS, GLONASS, GALILEO, BDS</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Radio</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅ FM (wireless)</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">USB</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">v2.0</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">OTG</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">USB Type-C</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\">&nbsp; Body</th><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\"></th></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Style</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Minimal Notch</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Material</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Gorilla Glass 5 front, plastic body</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Water Resistance</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✖ (P2i nanocoating / splash-resistant)</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Dimensions</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">156.5 x 75.4 x 9.4 millimeters</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Weight</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">188 grams</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\">&nbsp; Display</th><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\"></th></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Size</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">6.22 inches</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Resolution</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">HD+ 720 x 1520 pixels (270 ppi)</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Technology</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">IPS LCD Touchscreen</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Protection</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅ Corning Gorilla Glass 5</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Features</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Multitouch</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\">&nbsp; Back Camera</th><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\"></th></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Resolution</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">12+2 Megapixel</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Features</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Dual-Pixel PDAF, Sony Sensor, LED flash, HDR, depth &amp; more</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Video Recording</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Full HD (1080p)</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\">&nbsp; Front Camera</th><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\"></th></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Resolution</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">8 Megapixel</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Features</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">1.12µm, f/2.0, HDR, portrait &amp; more</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Video Recording</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Full HD (1080p)</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\">&nbsp; Battery</th><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\"></th></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Type and Capacity</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Lithium-polymer 5000 mAh (non-removable)</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Fast Charging</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅ 18W Fast Charging (10W charger included in the box)</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: keep-all !important; overflow-wrap: normal !important;\">&nbsp; Performance</th><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: keep-all !important; overflow-wrap: normal !important;\"></th></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Operating System</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Android Pie v9.0 (MIUI 11)</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Chipset</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Qualcomm Snapdragon 439 (12 nm)</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">RAM</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">3 / 4 GB</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Processor</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Octa core, up to 1.95 GHz</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">GPU</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Adreno 505</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: keep-all !important; overflow-wrap: normal !important;\">&nbsp; Storage</th><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: keep-all !important; overflow-wrap: normal !important;\"></th></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">ROM</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">32 / 64 GB</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">MicroSD Slot</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅ up to 256 GB (dedicated slot)</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\">&nbsp; Sound</th><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\"></th></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">3.5mm Jack</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Features</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Loudspeaker</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: keep-all !important; overflow-wrap: normal !important;\">&nbsp; Security</th><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: keep-all !important; overflow-wrap: normal !important;\"></th></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Fingerprint</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅ On the back</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Face Unlock</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">✅</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><th style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03); word-break: keep-all !important; overflow-wrap: normal !important;\">&nbsp; Others</th></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Notification Light</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\"></td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Sensors</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Fingerprint, Accelerometer, Proximity, E-Compass</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Manufactured by</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Xiaomi</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box;\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Made in</td><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\"></td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background: rgba(0, 0, 0, 0.03);\"><td style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid rgba(0, 0, 0, 0.1); outline: none; box-sizing: border-box; vertical-align: top; text-align: left; word-break: keep-all !important; overflow-wrap: normal !important;\">Sar Value<br><br></td></tr></tbody></table>', 'Onyx Black,Ruby Red,Sapphire Blue', '6.22 inches', '৳13,999 3/32 GB ,৳14,999 4/64 GB', NULL, 'No video available', 1, 1, 1, 1, 1, 1, 1, 'media/product/060821_18_26_19.jpeg', 'media/product/060821_18_34_19.jpeg', 'media/product/060821_18_44_19.jpeg', 1, NULL, NULL),
(17, 2, 2, 7, 'iPhone 12 Pro Max 256GB', '1', '150', '<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">6.7-inch Super Retina XDR display</div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">Splash, Water, and Dust Resistant (IP6B)</div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">Pro 12MP camera system: Ultra Wide, Wide, and</div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">Telephoto cameras, Ultra-Wide: ff2A aperture</div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">and 1200 field of view, Wide: f/ 1.6 aperture</div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">Telephoto: f,’2.O aperture (iPhone 12 Pro);</div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">“2.2 aperture (iPhone 12 Pro Max)</div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">Portrait mode With advanced bokeh and</div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">Depth Control and 4K video up to 60 fps</div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">12M? TrueDepth front camera with portrait</div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">mode, 4K video, and slow-motion video</div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">Face ID for secure authentication and Apple pay</div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">A14 Bionic chip with Next-generation</div>', 'Green,Red,White', '6.7-inch', '175999', '139039', NULL, 1, 1, 1, 1, 1, NULL, 1, 'media/product/1706922182303788.jpg', 'media/product/1706922182741079.jpg', 'media/product/1706922183223154.jpg', 1, NULL, NULL),
(18, 3, NULL, 18, 'Leather Oxford Shoe', '1', '250', '<div>Leather Oxford Shoe For men</div><div>Leather Oxford Shoe For menSet a new fashion statement Oxford shoe.</div><div>Crafted with smooth/grained leather.</div><div>The inside is padded with double leather,</div><div>designed to keep you going for a longer period.</div><div><br></div>', 'Black', '41,42,43', '3140', '2999', 'No video link available', 1, 1, 1, 1, 1, 1, 1, 'media/product/1707365319297597.jpeg', 'media/product/1707365319341683.jpeg', 'media/product/1707365319951726.jpeg', 1, NULL, NULL),
(19, 3, 11, 17, 'SPRINT Men\'s Sports Shoe', '2', '160', '<div class=\"product-details-text\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px 10px 0px 0px;\">Product details of High Quality Sneakers Men Casual Shoes Men Fashion Sneakers Fly knit Light weight Slip-on Men</span></div><div class=\"product-details-text\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"box-sizing: border-box; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"box-sizing: border-box; padding: 0px; margin: 0px 10px 0px 0px;\">Item Type:casual shoes</span></div><div class=\"product-details-text\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"box-sizing: border-box; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"box-sizing: border-box; padding: 0px; margin: 0px 10px 0px 0px;\">Outsole Material:Rubber</span></div><div class=\"product-details-text\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"box-sizing: border-box; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"box-sizing: border-box; padding: 0px; margin: 0px 10px 0px 0px;\">Feature:Hard-Wearing,Breathable,Sweat-Absorbant,</span></div><div class=\"product-details-text\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"box-sizing: border-box; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"box-sizing: border-box; padding: 0px; margin: 0px 10px 0px 0px;\">Light,Anti-OdorLining Material:MeshInsole Material:EVAUpper Material:FlyknitFit:Fits true to</span></div><div class=\"product-details-text\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"box-sizing: border-box; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"box-sizing: border-box; padding: 0px; margin: 0px 10px 0px 0px;\">size, take your normal size</span></div><div class=\"product-details-text\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"box-sizing: border-box; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"box-sizing: border-box; padding: 0px; margin: 0px 10px 0px 0px;\">Feature:Lightweight, comfortable,FashionSeason:Spring, Summer, Autumn, Winter</span></div>', 'Brawon', '41,42,43', '3699', '3499', 'No video available', 1, 1, 1, 1, 1, 1, 1, 'media/product/1707365475334101.jpeg', 'media/product/1707365475968660.jpeg', 'media/product/1707365476006618.jpeg', 1, NULL, NULL),
(20, 10, 16, 20, 'CURREN 8355BLG', '7', '310', '<ul style=\"box-sizing: border-box; margin-top: 0rem; margin-bottom: 2.5rem; color: rgb(40, 40, 40); font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;\"><li style=\"box-sizing: border-box; margin-top: 0rem; margin-bottom: 1rem;\">Style: Fashion &amp; casual.</li><li style=\"box-sizing: border-box; margin-top: 0rem; margin-bottom: 1rem;\">Clasp Type: Bracelet clasp.</li><li style=\"box-sizing: border-box; margin-top: 0rem; margin-bottom: 1rem;\">Movement: QUARTZ.</li><li style=\"box-sizing: border-box; margin-top: 0rem; margin-bottom: 1rem;\">Case Material: Alloy.</li><li style=\"box-sizing: border-box; margin-top: 0rem; margin-bottom: 1rem;\">Band Length: 24cm.</li><li style=\"box-sizing: border-box; margin-top: 0rem; margin-bottom: 1rem;\">Dial Window Material Type: Hardlex</li><li style=\"box-sizing: border-box; margin-top: 0rem; margin-bottom: 1rem;\">Case Thickness: 13mm.</li><li style=\"box-sizing: border-box; margin-top: 0rem; margin-bottom: 1rem;\">Band Width: 24mm.</li><li style=\"box-sizing: border-box; margin-top: 0rem; margin-bottom: 1rem;\">Case Shape: Round.</li><li style=\"box-sizing: border-box; margin-top: 0rem; margin-bottom: 1rem;\">Band Material Type: Stainless steel.</li><li style=\"box-sizing: border-box; margin-top: 0rem; margin-bottom: 1rem;\">Feature: Auto date.</li><li style=\"box-sizing: border-box; margin-top: 0rem; margin-bottom: 1rem;\">Feature: Chronograph.</li><li style=\"box-sizing: border-box; margin-top: 0rem; margin-bottom: 1rem;\">Feature: Luminous hands.</li><li style=\"box-sizing: border-box; margin-top: 0rem; margin-bottom: 1rem;\">Dial Diameter: 47mm.</li><li style=\"box-sizing: border-box; margin-top: 0rem; margin-bottom: 1rem;\">Water Resistance Depth: 3Bar.</li></ul>', 'Black', 'Band Length: 24cm.', '2290', '1690', 'No video link available', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707369267269057.jpeg', 'media/product/1707369267895749.jpeg', 'media/product/1707369267955266.jpeg', 1, NULL, NULL);
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(21, 4, 12, 20, 'Alli Performance T-Shirt', '8', '150', '<div style=\"color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><p>An easy, relaxed fit enhances the breezy comfort of this moisture-wicking, quick-drying T-shirt that\'s perfect for your daily run.</p></div><ul class=\"_1D4Qk\" style=\"margin: 10px 18px 20px; padding: 0px; color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><li class=\"ErtZY\" style=\"list-style-type: disc;\">26\" length (size Medium)</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Scoop neck</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Short sleeves</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Moisture-wicking fabric engineered for dryness and comfort</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">74% recycled polyester, 18% lyocell, 8% spandex</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Machine wash, tumble dry</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Imported</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Women\'s Clothing</li></ul>', 'Yellow', 'XXS=00, XS=0-2, S=4-6, M=8-10, L=12-14, XL=16-18 (14W), XXL=20 (16W).', '2730', NULL, NULL, 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707369590304105.jpeg', 'media/product/1707369590940101.jpeg', 'media/product/1707369590987563.jpeg', 1, NULL, NULL),
(22, 4, NULL, 20, 'V-Neck Long Sleeve', '9', '160', '<div style=\"color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><p>Sugar and spice play nice on this flow-to-fit dress done with a dipped neckline and the season\'s voluminous sleeve style. Plus an earth-friendly fabric means the good vibes continue.</p></div><ul class=\"_1D4Qk\" style=\"margin: 10px 18px 20px; padding: 0px; color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><li class=\"ErtZY\" style=\"list-style-type: disc;\">34 1/2\" length (size Medium)</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Deep V-neck</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Long sleeves with elastic cuffs</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">100% Lenzing™ EcoVero™ viscose</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Lenzing EcoVero viscose is a sustainably produced fiber using pulp made from renewable wood sources and certified with the EU Ecolabel for high environmental standards, including lower emissions and water impact than generic viscose</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Machine wash, tumble dry</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Imported</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Women\'s Clothing</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Not available for sale and shipment to Germany</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">This product meets Nordstrom Sustainable Sourced Materials criteria: contains at least 50% sustainably sourced materials</li></ul>', 'pink', 's', '2913', NULL, 'No video available', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707369945533108.jpeg', 'media/product/1707369945607961.jpeg', 'media/product/1707369945669631.jpeg', 1, NULL, NULL),
(23, 4, 12, 20, 'Ditsy Floral Tie Front Minidress', '10', '180', '<div style=\"color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><p>Sweet and sunshine-ready, this minidress exudes \'90s style with peasant sleeves and a wide, elasticized neckline with ties to adjust the fit.</p></div><ul class=\"_1D4Qk\" style=\"margin: 10px 18px 20px; padding: 0px; color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><li class=\"ErtZY\" style=\"list-style-type: disc;\">32\" length (size Medium)</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Slips on over head</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Sweetheart neck with adjustable ties</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Short sleeves</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Front slit</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Stretch lining</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">100% rayon</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Machine wash, tumble dry</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Imported</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Women\'s Clothing</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Not available for sale and shipment to Germany</li></ul>', 'Blue', 'XXS=00, XS=0-2, S=4-6, M=8-10, L=12-14, XL=16.', '3561', NULL, 'No video available', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707370295307141.jpeg', 'media/product/1707370295882683.jpeg', 'media/product/1707370295946523.jpeg', 1, NULL, NULL),
(24, 4, 12, NULL, 'Tie Front Lettuce Edge Minidress', '11', '185', '<div style=\"color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><p>Cute and casual for sunny weekends, this body-hugging minidress exudes \'90s style with lettuce edges, an adjustable tie neckline and stretchy ribbed fabric.</p></div><ul class=\"_1D4Qk\" style=\"margin: 10px 18px 20px; padding: 0px; color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><li class=\"ErtZY\" style=\"list-style-type: disc;\">31 1/2\" length (size Medium)</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Slips on over head</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">V-neck with adjustable ties</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Short sleeves</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">65% polyester, 30% rayon, 5% elastane</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Machine wash, tumble dry</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Imported</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Women\'s Clothing</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Not available for sale and shipment to Germany</li></ul>', 'Black', 'XXS=00, XS=0-2, S=4-6, M=8-10, L=12-14, XL=16', '3196', NULL, 'No video available', 1, 1, 1, 1, 1, 1, 1, 'media/product/1707370376093117.jpeg', 'media/product/1707370376158064.jpeg', 'media/product/1707370376236953.jpeg', 1, NULL, NULL),
(25, 3, 6, 20, 'Georgia Crewneck T-Shir', '12', '165', '<div style=\"color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><p>Supremely soft pima cotton adds to the everyday comfort of a closet-staple T-shirt with side vents.</p></div><ul class=\"_1D4Qk\" style=\"margin: 10px 18px 20px; padding: 0px; color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><li class=\"ErtZY\" style=\"list-style-type: disc;\">29\" length (size Medium)</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Crewneck</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Short sleeves</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Side vents</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">100% pima cotton</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Machine wash, dry flat</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Imported</li></ul>', 'Black', '29 inches', '3552', NULL, 'No video available', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707370532129096.png', 'media/product/1707370532192018.png', 'media/product/1707370532749831.png', 1, NULL, NULL),
(26, 3, 6, 20, 'Men\'s Bancroft Pinstripe T-Shirt', '13', '285', '<div style=\"color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><p>Rings of heathered pinstripes wrap up the standout vibe of a T-shirt made with the comfort of cotton and added stretch that moves it easily around your wardrobe.</p></div><ul class=\"_1D4Qk\" style=\"margin: 10px 18px 20px; padding: 0px; color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><li class=\"ErtZY\" style=\"list-style-type: disc;\">27 1/2\" length (size Medium)</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Crewneck</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Short sleeves</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">52% cotton, 45% polyester, 3% spandex</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Machine wash, dry flat</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Imported</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Men\'s Clothing</li></ul>', 'Red', '27 inchies', '4556', NULL, 'No video available', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707370609850452.png', 'media/product/1707370610425594.png', 'media/product/1707370610488925.png', 1, NULL, NULL),
(27, 3, 6, 20, 'Georgia Crewneck T-Shirt', '14', '290', '<div style=\"color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><p>Supremely soft pima cotton adds to the everyday comfort of a closet-staple T-shirt with side vents.</p></div><ul class=\"_1D4Qk\" style=\"margin: 10px 18px 20px; padding: 0px; color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><li class=\"ErtZY\" style=\"list-style-type: disc;\">29\" length (size Medium)</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Crewneck</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Short sleeves</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Side vents</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">100% pima cotton</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Machine wash, dry flat</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Imported</li></ul>', 'Navy blue', '29 lenth', '3552', NULL, 'No video available', 1, 1, 1, 1, 1, 1, 1, 'media/product/1707370697119175.png', 'media/product/1707370697745240.png', 'media/product/1707370697796368.png', 1, NULL, NULL),
(28, 3, 6, 20, 'Men\'s Bancroft Pinstripe T-Shirt', '15', '300', '<div style=\"color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><p>Rings of heathered pinstripes wrap up the standout vibe of a T-shirt made with the comfort of cotton and added stretch that moves it easily around your wardrobe.</p></div><ul class=\"_1D4Qk\" style=\"margin: 10px 18px 20px; padding: 0px; color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><li class=\"ErtZY\" style=\"list-style-type: disc;\">27 1/2\" length (size Medium)</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Crewneck</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Short sleeves</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">52% cotton, 45% polyester, 3% spandex</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Machine wash, dry flat</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Imported</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Men\'s Clothing</li></ul>', 'Red', '39 lenth', '4556', NULL, 'No video available', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707370785132966.png', 'media/product/1707370785191088.png', 'media/product/1707370785813384.png', 1, NULL, NULL),
(29, 3, 6, 20, 'Georgia Sleeve T-Shirt', '16', '80', '<div style=\"color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><p>Supremely soft pima cotton finished with a light enzyme wash makes an instant favorite of a T-shirt that\'s easy to layer and always looks great on its own.</p></div><ul class=\"_1D4Qk\" style=\"margin: 10px 18px 20px; padding: 0px; color: rgb(57, 57, 57); font-family: &quot;Brandon Text&quot;, Arial, sans-serif; font-size: 13px;\"><li class=\"ErtZY\" style=\"list-style-type: disc;\">29 1/2\" length (size Medium)</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Crewneck</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Long sleeves</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">100% pima cotton</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Machine wash, dry flat</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Imported</li><li class=\"ErtZY\" style=\"list-style-type: disc;\">Men\'s Clothing</li></ul>', 'Blue', '29 lenth', '6849', '4499', 'No video available', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707370884275356.png', 'media/product/1707370884903670.png', 'media/product/1707370884958308.png', 1, NULL, NULL),
(30, 10, 16, 18, 'Digital Wrist Watch', '16', '500', '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.2fdb9aaengb9qm\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Material: Plastic</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.2fdb9aaengb9qm\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Red, White+Black, White+Golden, Black, Black+White, Black+Rose Golden, Black+Golden</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Movement: Digital movement</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band material: PU</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case material: Plastic</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Mirror material: Plastic</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Waterproof: 30ATM</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case diameter: 44mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band length: 180mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band width: 21mm</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.2fdb9aaengb9qm\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dial thickness: 9mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product weight: 36g/1.2oz</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Package size: 17.5*7*2cm/6.8*2.7*0.7inch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Package weight: 40g/1.4oz</li></ul>', 'Red, White+Black, White+Golden, Black, Black+White, Black+Rose Golden, Black+Golden', 'Case diameter: 44mm Band length: 180mm Band width: 21mm Dial thickness: 9mm', '400', NULL, NULL, 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707438452581941.jpeg', 'media/product/1707438452943611.jpeg', 'media/product/1707438453007005.jpeg', 1, NULL, NULL),
(31, 10, 16, 17, 'BOSTANTEN Black quartz watch', '17', '450', '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">★Imported★. Quartz movement with analog-digital display.(One-key operation 12H/24H time) Reinforced resin band design is more ergonomic,comfortable to wear.</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i3.487990a8YJJtqB\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">★Gift Ideas★: Sport Watches are a great gift, birthday, anniversary, friend, loved one, mother\'s day, graduation gift, Valentine\'s Day gift, or as a gift for business and party。</li></ul>', 'Black,yellow', '5.1cm', '500', '350', NULL, 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707438617550484.jpeg', 'media/product/1707438618216971.jpeg', 'media/product/1707438618293394.jpeg', 1, NULL, NULL),
(32, 10, 16, 16, 'LASIKA Watch', '18', '250', '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Good Quality</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">100% Brand new</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Beautiful Box Free</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Shock resistent watch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Ressin glass</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Free hard box</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">High Light</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: same as picture [ Real Picture By Mobile ]</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Mens, Woman &amp;</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dial Material: Rubber / Silicon</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Material: Silicon</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Display: LED</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Movement: Digital</li><li></li></ul>', 'black', 's', '500', '260', NULL, 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707438758995771.jpeg', 'media/product/1707438759589064.jpeg', 'media/product/1707438759674441.jpeg', 1, NULL, NULL),
(33, 10, 16, 15, 'Naviforce NF9117', '20', '250', '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type: Watch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Movement: Analog Quartz Movement</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dial Shape: Round</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Diameter: 4.5 cm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Window Material: Hardlex Glass</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.4dff37c7pcTZOg\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Thickness: 1.3 cm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Material: Alloy</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Material: PU Leather</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Length: 24cm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Width: 2.2cm</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.4dff37c7pcTZOg\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Water Resistance: 30M.</li></ul>', 'black', 's', '500', '450', NULL, 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707438839688367.jpeg', 'media/product/1707438839749359.jpeg', 'media/product/1707438839809149.jpeg', 1, NULL, NULL),
(34, 10, 16, 14, 'Pu Leather Wrist Watch', '21', '260', '<ul class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.6dfe68a2VcFoiI\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type : Wrist Watch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Materials: PU Leather</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Model: WRM01</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Water Resistant: Water Resistant</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Watch Shape: Round</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Thickness: Standard</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Diameter: Men\'s Standard</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Material : Stainless Steel</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Bend Length : Men\'s Standard</li></ul>', 'black', 's', '500', '450', 'No video available', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707438922561508.jpeg', 'media/product/1707438923154990.jpeg', 'media/product/1707438923220138.jpeg', 1, NULL, NULL),
(35, 10, 16, 13, 'NAVIFORCE NF9153', '22', '250', '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Brand: Naviforce</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Model Number: NF9153L</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Water Resistant: 3ATM</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Luminous Part: Hands</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Plating Technique: Environmental vacuum electroplating</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Warranty Period: 1 year</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Weight: 96g</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Total Length: 260mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Diameter: 45 mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Thickness: 16mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Material: Zinc alloy</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Shape: Round</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Crystal: Reinforced mineral glass</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Movement Type: Quartz Analog + LCD Digital</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Movement Partner: Japanese seiko</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Strap Material: Genuine Leather</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Clasp Type:Buckle</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.ed0a656dnjpS7k\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Width: 23mm</li></ul>', 'black', 's', '999', '750', 'No video available', 1, 1, 1, 1, 1, 1, 1, 'media/product/1707438993516356.jpeg', 'media/product/1707438993674767.jpeg', 'media/product/1707438993740412.jpeg', 1, NULL, NULL),
(36, 10, 16, 12, 'Bostanten Watch', '23', '259', '<ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Brand Name:Bostanten</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style:Fashion &amp; Casual</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Movement:QUARTZ</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Clasp Type:Folding Clasp with Safety</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Water Resistance Depth:3Bar</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Material:Stainless Steel</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Length:16cm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Thickness:9mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Width:22mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Shape:Round</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Item Type:Quartz Wristwatches</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Boxes &amp; Cases Material:Paper</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Material Type:Leather</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature:Water Resistant</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature:Shock Resistant</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature:Complete Calendar</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature:Luminous</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dial Diameter:43mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dial Window Material Type:Hardlex</li><li></li></ul>', 'black', 's', '999', '850', 'No video available', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707439079799393.jpeg', 'media/product/1707439079860152.jpeg', 'media/product/1707439079945582.jpeg', 1, NULL, NULL),
(37, 10, 16, 11, 'Stainless Steel watch', '25', '248', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i2.6a8c4c2clC3rYi\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Stainless Steel gents watch silver</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden; box-sizing: border-box;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid; column-span: all;\">Style: Fashion &amp; Casual Movement: QUARTZ Clasp Type: Folding Clasp with Safety Water Resistance Depth: No waterproof Case Material: Stainless Steel Band Length: 40cm Case Thickness: 10mm Band Width: 20mm Case Shape: Round Item Type: Quartz WristwatchesBand Material Type: Stainless Steel Feature: Shock Resistant Dial Diameter: 40mm Dial Window Material Type: Glass</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\">Style: Fashion &amp; Casual Movement: QUARTZ Clasp Type: Folding Clasp with Safety Water Resistance Depth: No waterproof Case Material: Stainless Steel Band Length: 40cm Case Thickness: 10mm Band Width: 20mm Case Shape: Round Item Type: Quartz Wristwatches Band Material Type: Stainless Steel Feature: Shock Resistant Dial Diameter: 40mm Dial Window Material Type: Glass</div></div></div>', 'black', 's', '520', '192', 'No video available', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707439642431022.jpeg', 'media/product/1707439642497780.jpeg', 'media/product/1707439642548342.jpeg', 1, NULL, NULL),
(38, 10, 16, 11, 'Chocolate Leather Wrist Watch For Men', '26', '299', '<h2 class=\"pdp-mod-section-title outer-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Chocolate Leather Wrist Watch For Men</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden; box-sizing: border-box;\"><div class=\"html-content pdp-product-highlights\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.417e38f098UE50\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type: Wrist Watch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dial Window Material Type: Hardlex Glass</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Chocolate</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Men</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dial Display: Analog</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Shape: Round</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Material Type: PU Leather</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dial Diameter: About 4.5cm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dial Thickness: About 1cm</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.417e38f098UE50\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Length: About 24cm</li></ul></div></div></div>', 'black', 's', '550', '180', 'No video available', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707439803965442.jpeg', 'media/product/1707439804064331.jpeg', 'media/product/1707439804190166.jpeg', 1, NULL, NULL);
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(39, 10, 16, 9, 'Sanda Men\'s Watch', '27', '550', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i2.5d4652047pfjUv\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Sanda Men\'s Watches Black Sports Watch LED Digital 3ATM Waterproof Military Watches S Shock Male Clock relogios masculino</h2><h2 class=\"pdp-mod-section-title outer-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250);\"><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><div class=\"pdp-product-desc height-limit\" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: 780px; overflow-y: hidden; box-sizing: border-box;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Brand Name:SANDA</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style:Sport</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Movement:Dual Display</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Movement:QUARTZ</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Clasp Type:Buckle</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Water Resistance Depth:3Bar</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Material:Alloy</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Length:24cm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Thickness:17mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Width:23mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Shape:Round</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Item Type:Quartz Wristwatches</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Boxes ; Cases Material:No package</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Material Type:Rubber</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature:Complete Calendar</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature:Shock Resistant</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature:Stop Watch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature:Auto Date</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature:Water Resistant</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature:Diver</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature:Chronograph</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature:Back Light</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature:Multiple Time Zone</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature:Swim</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature:Alarm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dial Diameter:55mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dial Window Material Type:Hardlex</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Drop shipping:Support( , , )</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Item Type:mens watches top brand luxury sanda military watch men Sport Watch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Spain words:relojes hombre 2019 reloj hombre marca de lujo reloj deportivo</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">France words:sport montre homme grande mens montres haut marque de luxe horloge</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">zegarki men:panske hodinky zegarki meskie ceasuri barbati ure reloges</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">horloges mannen:sport heren horloge topmerk luxe merk voor horloges mannen men\'s watch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">keywords 01:saat erkekler erkek kol saati bayan kol / hodinky / uhren</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">keywords 02:orologi orologio uomo lusso cronografo</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Keywords 03:reloj de hombre / orologio uomo lusso / Male Clock For Man</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">SANDA 759 Military Sport Watch Men:Top Brand Luxury Famous Electronic LED Digital Wrist Watch</li></ul></div></div></div></h2>', 'black', 's', '1631', '901', 'No video available', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707439898178591.jpeg', 'media/product/1707439898239814.jpeg', 'media/product/1707439898323690.jpeg', 1, NULL, NULL),
(40, 10, 16, 9, 'CURREN 8345', '28', '268', '<h2 class=\"pdp-mod-section-title outer-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of CURREN 8345 Luxury Design Watch for Men Quartz Military Watch Business Stainless Steel Date Wristwatches Male Clock Reloj Hombres</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc height-limit\" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: 780px; overflow-y: hidden; box-sizing: border-box;\"><div class=\"html-content pdp-product-highlights\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.3fdf1bfbbIM5OF\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Brand Name : Curren</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Length : 25cm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style : Fashion ;Casual</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Movement : QUARTZ</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Water Resistance Depth : 3Bar</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Clasp Type : Bracelet Clasp</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Material : STAINLESS STEEL</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Thickness : 12mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dial Window Material Type : Hardlex</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Item Type : Quartz Wristwatches</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Material Type : STAINLESS STEEL</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dial Diameter : 45mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Model Number : 8345</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Width : 24mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Case Shape : ROUND</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature : Auto Date</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature : Complete Calendar</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature : Water Resistant</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">quartz wristwatches : curren watch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">gender : men</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">brand name : curren</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">movement : quartz</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.3fdf1bfbbIM5OF\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">color : multicolor</li></ul></div></div></div>', 'Black', 's', '1650', '999', 'No video available', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707439978009674.jpeg', 'media/product/1707439978085000.jpeg', 'media/product/1707439978123125.jpeg', 1, NULL, NULL),
(41, 3, 6, 11, 'Ego Trendy Half Sleeve', '30', '498', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i2.767f7abcahRmMv\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Ego Trendy Half Sleeve T-Shirt For Men - Silver</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc height-limit\" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: 780px; overflow-y: hidden; box-sizing: border-box;\"><div class=\"html-content pdp-product-highlights\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.767f7abcahRmMv\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Brand Name : City Boy</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Sleeve: Half Sleeve</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fabric: Polyester</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Materials: Polyester</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Silver</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style : T-Shirt</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">170 GSM</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size- M L XL</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">M - Length 27\" chest 37\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">L - Length 28\" chest: 39\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">XL - Length 29\" chest 41\",</li></ul></div></div></div>', 'Black', 'XLL,XL,S,M', '550', '220', 'No video available', 1, 1, 1, 1, 1, 1, 1, 'media/product/1707440404804146.png', 'media/product/1707440404861664.png', 'media/product/1707440404957551.png', 1, NULL, NULL),
(42, 3, 6, 11, 'Friends Trendy Half Sleeve T-Shirt', '31', '499', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i2.767f7abcahRmMv\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Ego Trendy Half Sleeve T-Shirt For Men - Silver</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc height-limit\" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: 780px; overflow-y: hidden; box-sizing: border-box;\"><div class=\"html-content pdp-product-highlights\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.767f7abcahRmMv\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Brand Name : City Boy</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Sleeve: Half Sleeve</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fabric: Polyester</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Materials: Polyester</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Silver</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style : T-Shirt</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">170 GSM</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size- M L XL</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">M - Length 27\" chest 37\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">L - Length 28\" chest: 39\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">XL - Length 29\" chest 41\",</li></ul></div></div></div>', 'Black', 's', '550', '250', 'No video available', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707440483247478.png', 'media/product/1707440483850088.png', 'media/product/1707440483897262.png', 1, NULL, NULL),
(43, 3, 6, 11, 'High Quality T-shirt', '32', '247', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i3.5d651f5cLseCAf\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Friends Trendy Half Sleeve T-Shirt For Men-Silver</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc height-limit\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.5d651f5cLseCAf\" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: 780px; overflow-y: hidden; box-sizing: border-box;\"><div class=\"html-content pdp-product-highlights\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.5d651f5cLseCAf\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Brand Name : City Boy</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Sleeve: Half Sleeve</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fabric: Polyester</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Materials: Polyester</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Silver</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.5d651f5cLseCAf\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style : T-Shirt</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">170 GSM</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size- M L XL</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">M - Length 27\" chest 37\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">L - Length 28\" chest: 39\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">XL - Length 29\" chest 41\",</li></ul></div></div></div>', 'blue', 's', '550', '220', 'No video available', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1707440558216102.jpg', 'media/product/1707440558260272.png', 'media/product/1707440558335956.png', 1, NULL, NULL),
(44, 19, 20, 21, 'eco-friendly', '001', '20', '<div style=\"font-family: Consolas, &quot;Courier New&quot;, monospace; line-height: 19px; white-space: pre;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias delectus atque pariatur aperiam iusto voluptatem et accusantium itaque deleniti nisi incidunt vitae explicabo eaque earum praesentium repellendus, recusandae excepturi doloremque?</div>', 'Green,Yellow', '4ft', '20000', '15000', 'https://www.youtube.com/watch?v=hfANHzlG5NM', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'media/product/1798665492664047.jpg', 'media/product/1798665492771560.jpg', 'media/product/1798665493002067.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('lBGUmPVCPwUhQQURLTwa1T0idSSxN6aEt1itZ91Y', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFFEcjhIQXZ6eFdHaUY1UHlHQkdsVjhlcGZnNkk2VmdmZGIwRWlpWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1627241170),
('qi7AWm4hmeUKX1essRmH7CI5OLmcB6MJwbMhOjqp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUhqRzQyRkI0Y0xqazF6d0VvU2F3T1dGSnpST3hRTlowakJTbEJQeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1627146825),
('V7qHSjXxCrTyXQHoIuLjVE7RPeF9osaNCK675h3P', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUZZTEd0a1RkcVloM2t4aDJUOTh6dWxhMGRzUnhLcnU0NFhuYk1PdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1625742338);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `vat`, `shipping_charge`, `shopname`, `email`, `phone`, `address`, `logo`, `created_at`, `updated_at`) VALUES
(1, '5', '10', 'asif', 'asif@gmail.com', '01678844164', 'bd', NULL, NULL, NULL),
(2, '5', '10', 'asif', 'asif@gmail.com', '01678844164', 'bd', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `ship_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `order_id`, `ship_name`, `ship_phone`, `ship_email`, `ship_address`, `ship_city`, `created_at`, `updated_at`) VALUES
(1, 1, 'asif', '01678844164', 'miaasif2002@gmail.com', 'House:24,Road:19,Block:D,Section:6,Mirpur,Dhaka', 'Inside Dhaka Metro City', NULL, NULL),
(2, 2, 'asif', '01678844164', 'miaasif2002@gmail.com', 'House:24,Road:19,Block:D,Section:6,Mirpur,Dhaka', 'Inside Dhaka Metro City', NULL, NULL),
(3, 3, 'asif', '01678844164', 'miaasif2002@gmail.com', 'House:24,Road:19,Block:D,Section:6,Mirpur,Dhaka', 'Inside Dhaka Metro City', NULL, NULL),
(4, 4, 'asif', '01678844164', 'miaasif2002@gmail.com', 'House:24,Road:19,Block:D,Section:6,Mirpur,Dhaka', 'Inside Dhaka Metro City', NULL, NULL),
(5, 5, 'asif', '01678844164', 'miaasif2002@gmail.com', 'House:24,Road:19,Block:D,Section:6,Mirpur,Dhaka', 'Inside Dhaka Metro City', NULL, NULL),
(6, 6, 'asif', '01678844164', 'miaasif2002@gmail.com', 'House:24,Road:19,Block:D,Section:6,Mirpur,Dhaka', 'Inside Dhaka Metro City', NULL, NULL),
(7, 7, 'asif', '01678844164', 'miaasif2002@gmail.com', 'House:24,Road:19,Block:D,Section:6,Mirpur,Dhaka', 'Inside Dhaka Metro City', NULL, NULL),
(8, 8, 'asif', '01678844164', 'miaasif2002@gmail.com', 'House:24,Road:19,Block:D,Section:6,Mirpur,Dhaka', 'Inside Dhaka Metro City', NULL, NULL),
(9, 9, 'asif', '01678844164', 'miaasif2002@gmail.com', 'House:24,Road:19,Block:D,Section:6,Mirpur,Dhaka', 'Inside Dhaka Metro City', NULL, NULL),
(10, 10, 'asif', '01678844164', 'miaasif2002@gmail.com', 'House:24,Road:19,Block:D,Section:6,Mirpur,Dhaka', 'Inside Dhaka Metro City', NULL, NULL),
(11, 11, 'asif', '01678844164', 'miaasif2002@gmail.com', 'House:24,Road:19,Block:D,Section:6,Mirpur,Dhaka', 'Inside Dhaka Metro City', NULL, NULL),
(12, 12, 'asif', '01678844164', 'miaasif2002@gmail.com', 'House:24,Road:19,Block:D,Section:6,Mirpur,Dhaka', 'Inside Dhaka Metro City', NULL, NULL),
(13, 13, 'asif', '01678844164', 'miaasif2002@gmail.com', 'House:24,Road:19,Block:D,Section:6,Mirpur,Dhaka', 'Inside Dhaka Metro City', NULL, NULL),
(14, 14, 'shuvo', '01678844164', 'miaasif2002@gmail.com', 'House:24,Road:19,Block:D,Section:6,Mirpur,Dhaka', 'Inside Dhaka Metro City', NULL, NULL),
(15, 15, 'atif', '01678844164', 'miaasif2002@gmail.com', 'House:24,Road:19,Block:D,Section:6,Mirpur,Dhaka', 'Inside Dhaka Metro City', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitesetting`
--

CREATE TABLE `sitesetting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitesetting`
--

INSERT INTO `sitesetting` (`id`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `youtube`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '+222222222', '+235465343', 'support.pap@gmail.com', 'Pap International', 'Road-28,House-365,Mohakhali DOHS', 'papint', 'papint', 'papint', 'papint', NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '+222222222', '+235465343', 'support.pap@gmail.com', 'Pap International', 'Road-28,House-365,Mohakhali DOHS', 'papint', 'papint', 'papint', 'papint', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tshirt', NULL, NULL),
(2, 2, 'Mobile', NULL, NULL),
(4, 2, 'Tab', NULL, NULL),
(6, 3, 'Gents Tshirt', NULL, NULL),
(7, 3, 'Gents Shirt', NULL, NULL),
(8, 1, 'Accesories', NULL, NULL),
(9, 3, 'Gents Pant', NULL, NULL),
(10, 9, 'watch', NULL, NULL),
(11, 3, 'Gents Shoe', NULL, NULL),
(12, 4, 'Women Tshirt', NULL, NULL),
(13, 4, 'Womens Shirt', NULL, NULL),
(14, 4, 'Womens Pant', NULL, NULL),
(15, 4, 'Womens Shoe', NULL, NULL),
(16, 10, 'Mens Watch', NULL, NULL),
(17, 10, 'Womens Watch', NULL, NULL),
(18, 12, 'Phone', NULL, NULL),
(19, 12, 'Laptops', NULL, NULL),
(20, 19, 'Small Green Plants', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Isaac_Talb', '070578104', 'thaungahlaybaw@gmail.com', NULL, NULL, '$2y$10$lVusBa.BksY9gnzT381TGe2rwOmChA9vFMb/5EjoyfU0VqGmh/T0W', NULL, NULL, NULL, '2024-05-10 04:27:16', '2024-05-10 04:27:16');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(30, 4, 13, NULL, NULL),
(31, 4, 15, NULL, NULL),
(32, 4, 17, NULL, NULL),
(33, 4, 12, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newslaters`
--
ALTER TABLE `newslaters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitesetting`
--
ALTER TABLE `sitesetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `newslaters`
--
ALTER TABLE `newslaters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sitesetting`
--
ALTER TABLE `sitesetting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
