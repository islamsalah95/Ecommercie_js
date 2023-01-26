-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2023 at 04:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommercie`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  `size` enum('xl','xxl','xxxl') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dress', '2023-01-22 03:00:43', '2023-01-22 03:00:43'),
(2, 'Skirts', '2023-01-22 03:00:43', '2023-01-22 03:00:43'),
(3, 'Casual', '2023-01-22 03:00:59', '2023-01-22 03:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `product_id`, `user_id`, `text`, `created_at`, `updated_at`) VALUES
(3, 48, 4, '', '2023-01-22 01:35:04', '2023-01-22 01:35:04'),
(4, 39, 4, '', '2023-01-22 01:35:04', '2023-01-22 01:35:04'),
(5, 33, 5, '', '2023-01-22 01:35:04', '2023-01-22 01:35:04'),
(8, 20, 4, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(9, 42, 5, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(10, 35, 5, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(11, 79, 5, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(12, 90, 3, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(13, 61, 4, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(14, 69, 5, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(15, 49, 5, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(16, 28, 2, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(17, 49, 1, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(18, 79, 1, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(19, 79, 3, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(21, 67, 1, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(22, 66, 3, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(23, 85, 4, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(24, 29, 3, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(25, 86, 2, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(26, 73, 3, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(27, 92, 5, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(28, 87, 5, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(29, 54, 4, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(30, 73, 2, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(31, 60, 4, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(32, 46, 2, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(33, 99, 4, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(34, 95, 4, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(35, 73, 5, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(36, 27, 4, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(37, 82, 1, '', '2023-01-22 01:51:40', '2023-01-22 01:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_17_025918_create_categories_table', 2),
(6, '2023_01_17_025837_create_products_table', 3),
(7, '2023_01_17_030023_create_carts_table', 4),
(8, '2023_01_17_030053_create_orders_table', 5),
(9, '2023_01_18_230535_create_rates_table', 6),
(10, '2023_01_17_030023_create_comments_table', 7),
(12, '2023_01_22_212110_create_comants_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `price`, `created_at`, `updated_at`) VALUES
(11, 20, 1228, '2023-01-26 00:20:12', '2023-01-26 00:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 11, 'Android', '513aed6c088ef59aeebb854cb43079b89527bc9f9a03331ff187b3b23625d5f4', '[\"*\"]', '2023-01-22 01:49:25', '2023-01-22 01:38:55', '2023-01-22 01:49:25'),
(2, 'App\\Models\\User', 11, 'Android', '7f67e7f8a3bccd8abf5a9e5b34efc45a0f0b955708fcea8c001b46eb573aa833', '[\"*\"]', '2023-01-22 23:33:19', '2023-01-22 01:41:43', '2023-01-22 23:33:19'),
(3, 'App\\Models\\User', 11, 'Android', '42c80889f7e556f6d987921573623d1abcf8796a424fd8ae65c5144cec9a52d7', '[\"*\"]', '2023-01-22 20:54:35', '2023-01-22 19:10:49', '2023-01-22 20:54:35'),
(4, 'App\\Models\\User', 12, 'Android', 'ce18a23f043635c8ae8ad8f05f723688545571dd49afa5de6f7c3e4832c276f5', '[\"*\"]', '2023-01-22 23:09:05', '2023-01-22 20:15:06', '2023-01-22 23:09:05'),
(5, 'App\\Models\\User', 11, 'Android', 'db26c0bc8ba0fdb7ec68c2d2a362ca17a16e9a9fb642797ec6695f2b7914be63', '[\"*\"]', '2023-01-25 19:58:36', '2023-01-22 20:55:22', '2023-01-25 19:58:36'),
(6, 'App\\Models\\User', 11, 'Android', '1753a1bf189376a74a18d609c09cf74e064051e70e6e575be4aaf166b49f11d8', '[\"*\"]', NULL, '2023-01-23 20:30:53', '2023-01-23 20:30:53'),
(7, 'App\\Models\\User', 11, 'Android', '153a23a06b62c903ca13ad756edc842066b43eef29114926b9a100405de70ea3', '[\"*\"]', NULL, '2023-01-23 20:31:12', '2023-01-23 20:31:12'),
(8, 'App\\Models\\User', 11, 'Android', '6e6ac64b8d1e118dfc06d29a36af8dadc8c26791c10451fd15e6c1230ef10575', '[\"*\"]', NULL, '2023-01-23 20:32:29', '2023-01-23 20:32:29'),
(9, 'App\\Models\\User', 11, 'Android', 'bdec90a6c229252ec9770ad22464ed1b6b842df822f107c6ec0a0e858109e387', '[\"*\"]', NULL, '2023-01-23 20:33:21', '2023-01-23 20:33:21'),
(10, 'App\\Models\\User', 11, 'Android', '721e6712ff2607b5e7905a379066786214c1b54bcbe32b91aff002f7f60a366c', '[\"*\"]', NULL, '2023-01-23 20:33:53', '2023-01-23 20:33:53'),
(11, 'App\\Models\\User', 11, 'Android', 'a6de8eff56c4aee65d66e947b54ff0c9e466f1a843029610d96ebaf47c5aa5e9', '[\"*\"]', NULL, '2023-01-23 20:34:04', '2023-01-23 20:34:04'),
(12, 'App\\Models\\User', 11, 'Android', '597fe89d6b719487d751223a14d13f72933a2a379b94262d7a25dcdf760ff075', '[\"*\"]', NULL, '2023-01-23 20:37:26', '2023-01-23 20:37:26'),
(13, 'App\\Models\\User', 11, 'Android', '90d28b0f7a8a2e48fae641348e023fd198d3dcc72570dfcd11543cdb00591766', '[\"*\"]', NULL, '2023-01-23 20:38:31', '2023-01-23 20:38:31'),
(14, 'App\\Models\\User', 11, 'Android', 'c267260654466c37025a9a77264325eaa04c10e639e71ccbe1ca34606fa0361b', '[\"*\"]', NULL, '2023-01-23 20:59:30', '2023-01-23 20:59:30'),
(15, 'App\\Models\\User', 11, 'Android', '766679e56824d2114aac05ef7c88ee900e773ffb786dabedded4e49387a660ff', '[\"*\"]', NULL, '2023-01-23 21:01:50', '2023-01-23 21:01:50'),
(16, 'App\\Models\\User', 11, 'Android', '4c2a85aaedeb31ca9e89ef7a3f6aa86b64f87a06e9436f672017fe0b741d6542', '[\"*\"]', NULL, '2023-01-23 21:07:30', '2023-01-23 21:07:30'),
(17, 'App\\Models\\User', 11, 'Android', '1b96eae0e95ddb3e3cb7b878fee312aaec5aea00f0449833500a375d71ca2b13', '[\"*\"]', NULL, '2023-01-23 21:08:09', '2023-01-23 21:08:09'),
(18, 'App\\Models\\User', 11, 'Android', '05fb5fade5bb7e5ea29824d6b231169658acd90305027358efe934be35af4692', '[\"*\"]', NULL, '2023-01-23 21:08:25', '2023-01-23 21:08:25'),
(19, 'App\\Models\\User', 11, 'Android', 'e6c0944edd8d4f7008c47f209196b8db97ff4253b0e10f18010da4d5f6b58403', '[\"*\"]', NULL, '2023-01-23 21:08:53', '2023-01-23 21:08:53'),
(20, 'App\\Models\\User', 11, 'Android', '9c177125889dc225eeffbb30b290a5407e5bea4416190bc2d63cb3efe96d17cd', '[\"*\"]', NULL, '2023-01-23 21:09:24', '2023-01-23 21:09:24'),
(21, 'App\\Models\\User', 11, 'Android', '7c220e060c0c771f62e38a6e07ec8a666d53d1dcc55cd19f5c8fb452103fdacc', '[\"*\"]', NULL, '2023-01-23 21:10:12', '2023-01-23 21:10:12'),
(22, 'App\\Models\\User', 13, 'Android', '469aea1f031dd0d4d37584ba40648a6e01a11dc30cad582830b77f783f23a622', '[\"*\"]', NULL, '2023-01-23 21:22:40', '2023-01-23 21:22:40'),
(23, 'App\\Models\\User', 11, 'Android', '379da03ac6395d17191f2945107eccae214809efa588c9bce0cc1a9d287143c5', '[\"*\"]', NULL, '2023-01-23 21:23:58', '2023-01-23 21:23:58'),
(24, 'App\\Models\\User', 13, 'Android', 'ff12512e8d036779a8771f6efc09f4d8bfccd162f79640addb2058593d1aa801', '[\"*\"]', NULL, '2023-01-23 21:25:04', '2023-01-23 21:25:04'),
(25, 'App\\Models\\User', 13, 'Android', '8426c1bedcce8211fd2bc32fcdbfcc3e4c4c1bdc8d2f930713f2f9ff3373dfec', '[\"*\"]', NULL, '2023-01-23 21:25:29', '2023-01-23 21:25:29'),
(26, 'App\\Models\\User', 13, 'Android', 'a86b2d1ad1b36601f7cf6229eea3b7281b101c57d349d0e88cb7d56c75dd0fc1', '[\"*\"]', NULL, '2023-01-23 21:25:44', '2023-01-23 21:25:44'),
(27, 'App\\Models\\User', 13, 'Android', 'fe062fc56732abcbb97f366be0d40edc06be077c884ec27999cd41c28faa565f', '[\"*\"]', '2023-01-23 22:00:23', '2023-01-23 21:59:44', '2023-01-23 22:00:23'),
(28, 'App\\Models\\User', 13, 'Android', 'a603109ae9a99abbca3271243695e56af1bfec288b215614085b68de6ebfa663', '[\"*\"]', NULL, '2023-01-23 22:05:41', '2023-01-23 22:05:41'),
(29, 'App\\Models\\User', 11, 'Android', '3ed1543486a46186eaef202816f793ab20dccdf47419baac1ec2567adad07bae', '[\"*\"]', NULL, '2023-01-23 22:06:37', '2023-01-23 22:06:37'),
(30, 'App\\Models\\User', 11, 'Android', '3bbda9f6299811d69ab990d8324ad5fa7b7e83919e96b53c05afe2f7ec5ec8e9', '[\"*\"]', NULL, '2023-01-23 22:06:39', '2023-01-23 22:06:39'),
(31, 'App\\Models\\User', 11, 'Android', '1b4408578b43906b6805df04a815768e49710ea0082442fcc367861414db3530', '[\"*\"]', NULL, '2023-01-23 22:21:50', '2023-01-23 22:21:50'),
(32, 'App\\Models\\User', 11, 'Android', 'a39862510252fde059fc536208021837ad010c7028a17f587d9e051ba380045c', '[\"*\"]', NULL, '2023-01-23 22:25:51', '2023-01-23 22:25:51'),
(33, 'App\\Models\\User', 11, 'Android', '25b6a08cb0ad9c8cf4aac078267838394a5b4412d608d30f72f2b0f793e89399', '[\"*\"]', '2023-01-23 22:30:17', '2023-01-23 22:28:15', '2023-01-23 22:30:17'),
(34, 'App\\Models\\User', 11, 'Android', '68120dc9afd7594a0098939337a8674e7153a70d9029fd35a529cd82f86b0939', '[\"*\"]', NULL, '2023-01-25 18:50:54', '2023-01-25 18:50:54'),
(35, 'App\\Models\\User', 11, 'Android', 'dbcde139c20a9b89a7fdef604572d113f91cb3871f89b14f4c6b8243897568e6', '[\"*\"]', NULL, '2023-01-25 18:50:56', '2023-01-25 18:50:56'),
(36, 'App\\Models\\User', 11, 'Android', '10e2f01b28a57d052717a1b9a85f674c4d712fdb14b43056f899b4dd9db68034', '[\"*\"]', NULL, '2023-01-25 18:50:59', '2023-01-25 18:50:59'),
(37, 'App\\Models\\User', 11, 'Android', '3e64879703facedbc42f6d8c0fc37c49401fa75a299baceea3eea549fccee17c', '[\"*\"]', NULL, '2023-01-25 18:51:00', '2023-01-25 18:51:00'),
(38, 'App\\Models\\User', 11, 'Android', '072134bc4cf07c00df721ed10f6989941fc1935e0985e14612fe5409eb7cd372', '[\"*\"]', NULL, '2023-01-25 20:14:13', '2023-01-25 20:14:13'),
(39, 'App\\Models\\User', 11, 'Android', '8f9957cf0611e96ac52e4a42e699e0654fe40470daba22e8f97bd44690bd1f4e', '[\"*\"]', NULL, '2023-01-25 20:14:16', '2023-01-25 20:14:16'),
(40, 'App\\Models\\User', 11, 'Android', '98d736285815a70571f1a4bdf007f1b212e8d9cddd96ad323d48e7d9468cea48', '[\"*\"]', NULL, '2023-01-25 20:14:21', '2023-01-25 20:14:21'),
(41, 'App\\Models\\User', 11, 'Android', 'fbdc14992b0011410c6a850a3bb4bca80b3d8978fff0ab7d504bded09d26eb04', '[\"*\"]', NULL, '2023-01-25 20:14:22', '2023-01-25 20:14:22'),
(42, 'App\\Models\\User', 11, 'Android', 'adac1b4ea08679c37b545e4ec727cd7c19ee99e6afbf5eb32ab53fa5fd94064b', '[\"*\"]', NULL, '2023-01-25 20:16:32', '2023-01-25 20:16:32'),
(43, 'App\\Models\\User', 11, 'Android', '82dfab6da98fc3f51ced886cc968a5c062cfa0713a579c7f73ad485baaf5efd6', '[\"*\"]', NULL, '2023-01-25 20:16:56', '2023-01-25 20:16:56'),
(44, 'App\\Models\\User', 13, 'Android', 'b536a6867fbb5573d5f863c961f7ea448d58580610f7a386d381a824bd582ad4', '[\"*\"]', NULL, '2023-01-25 20:37:31', '2023-01-25 20:37:31'),
(45, 'App\\Models\\User', 11, 'Android', '6a99aeed57effdc1916a03a2438c760f88e8f6fe0e9009649258b8a7c548a593', '[\"*\"]', NULL, '2023-01-25 20:38:38', '2023-01-25 20:38:38'),
(46, 'App\\Models\\User', 13, 'Android', '10bcbc0fbb6b800168dfd6a65c8d704e58ad2507f75d96656a0afbd306bcd360', '[\"*\"]', NULL, '2023-01-25 20:39:07', '2023-01-25 20:39:07'),
(47, 'App\\Models\\User', 11, 'Android', '9b645105fc55cc04797879cddb78891307e29b607cfc11eb9a23c0ba7062d7ab', '[\"*\"]', NULL, '2023-01-25 20:39:32', '2023-01-25 20:39:32'),
(48, 'App\\Models\\User', 13, 'Android', '41914eb4bb2526619a0e334776275d7c55b3d93fea7d69e0c185c37a052e2e06', '[\"*\"]', NULL, '2023-01-25 20:43:30', '2023-01-25 20:43:30'),
(49, 'App\\Models\\User', 14, 'Android', '8d5b9ccfb0f4a902c65f1e541528606d0044c7c788bf2482f964d0bea9d6c463', '[\"*\"]', NULL, '2023-01-25 20:44:59', '2023-01-25 20:44:59'),
(50, 'App\\Models\\User', 14, 'Android', 'fd701b32a827c95d17dc0a3c667ad36eb2db0a0b39652a000bc121f0bd942ee6', '[\"*\"]', NULL, '2023-01-25 20:46:06', '2023-01-25 20:46:06'),
(51, 'App\\Models\\User', 14, 'Android', 'aa29ea25eef9b26b788bc08327b74dd8674b41ebe4400202177ec602d1742a09', '[\"*\"]', NULL, '2023-01-25 20:46:44', '2023-01-25 20:46:44'),
(52, 'App\\Models\\User', 14, 'Android', 'd88be25c165958eee8c597f9979582d433a9ebbc3ee0adfc95584336d712fa34', '[\"*\"]', '2023-01-25 23:26:03', '2023-01-25 20:46:50', '2023-01-25 23:26:03'),
(53, 'App\\Models\\User', 14, 'Android', '7b497298fd7c511707ca3061a17dfaf1f8c534fea441e5bf9f726cf2e9169fab', '[\"*\"]', '2023-01-25 23:31:37', '2023-01-25 23:26:19', '2023-01-25 23:31:37'),
(54, 'App\\Models\\User', 15, 'Android', '3b6a77b28e1ddee7b9a5fd07881ada7d7b3db8a32be505e8afc1cf74b9003113', '[\"*\"]', NULL, '2023-01-25 23:49:24', '2023-01-25 23:49:24'),
(55, 'App\\Models\\User', 15, 'Android', '432c65c260312cf5d089f890e3fcc2fb621bc1aa1ccc7e00a23a8c2f5204db18', '[\"*\"]', NULL, '2023-01-25 23:49:54', '2023-01-25 23:49:54'),
(56, 'App\\Models\\User', 15, 'Android', 'd26602b569351d5bbc04ccd50c149050df81a82fd5686ab3b7a3ae5e64e9c3fe', '[\"*\"]', NULL, '2023-01-25 23:49:57', '2023-01-25 23:49:57'),
(57, 'App\\Models\\User', 15, 'Android', '017884ca5cf90786bd8ba81315fb58b90330230d7602efedd353a76bb6963f03', '[\"*\"]', NULL, '2023-01-25 23:49:58', '2023-01-25 23:49:58'),
(58, 'App\\Models\\User', 15, 'Android', 'ce3f226a809d84a76fdacd225c505d9a114c52ebaa4cf07041ac77d9bc9c6d34', '[\"*\"]', NULL, '2023-01-25 23:49:58', '2023-01-25 23:49:58'),
(59, 'App\\Models\\User', 15, 'Android', 'bbab574642727b2ab5b932756d8ba3e968b72f43bc6f46415970fa03ce11a200', '[\"*\"]', NULL, '2023-01-25 23:49:58', '2023-01-25 23:49:58'),
(60, 'App\\Models\\User', 15, 'Android', '4297cef28d3e707b02f387577ccc22d727c63d67669cd1abd73b353e06f124ae', '[\"*\"]', NULL, '2023-01-25 23:51:14', '2023-01-25 23:51:14'),
(61, 'App\\Models\\User', 15, 'Android', 'df4eb603618b26e1bcf5014d3d17c2e6db2c07189043e54be3cfbe1fc1944340', '[\"*\"]', NULL, '2023-01-25 23:51:36', '2023-01-25 23:51:36'),
(62, 'App\\Models\\User', 15, 'Android', '656cd9f0d5b56f7dd2cff433b716a38ecbc84684feb0a6405cc4495cb9b18f38', '[\"*\"]', NULL, '2023-01-25 23:51:38', '2023-01-25 23:51:38'),
(63, 'App\\Models\\User', 16, 'Android', '5a2b6eb3533d1ba159af92b7fa6f4f9c8462ceed4e7e6d0abad23337fb2d54be', '[\"*\"]', NULL, '2023-01-25 23:52:35', '2023-01-25 23:52:35'),
(64, 'App\\Models\\User', 16, 'Android', 'a5f1f9623d2439fa607af658f2c5485a26742454a1712fe1f3a4cd273042a804', '[\"*\"]', NULL, '2023-01-25 23:53:06', '2023-01-25 23:53:06'),
(65, 'App\\Models\\User', 16, 'Android', '03ce3b9aea68d516c55a2840c987dbebd882764dae61b9c1b3d66cd464274eb0', '[\"*\"]', NULL, '2023-01-25 23:53:09', '2023-01-25 23:53:09'),
(66, 'App\\Models\\User', 16, 'Android', 'c471e461fbf24436794e4fc9acba816d2331fb026f7bc2e3450bafe50d582514', '[\"*\"]', NULL, '2023-01-25 23:54:02', '2023-01-25 23:54:02'),
(67, 'App\\Models\\User', 16, 'Android', '4d7ec5fc84fa0ef8ed154468689b92ee6c2ee3af476361c2fbf63c4e0022fec5', '[\"*\"]', NULL, '2023-01-25 23:54:23', '2023-01-25 23:54:23'),
(68, 'App\\Models\\User', 16, 'Android', 'f7671faacc566ff83f0effc908f786bca9fbf8bd7b8cef0a576b076b0c814810', '[\"*\"]', NULL, '2023-01-25 23:55:16', '2023-01-25 23:55:16'),
(69, 'App\\Models\\User', 16, 'Android', '869396a0168ce31010d0f2d40547ca4e888cc962cf0f177d2b33d31646bc6dbf', '[\"*\"]', NULL, '2023-01-25 23:55:21', '2023-01-25 23:55:21'),
(70, 'App\\Models\\User', 16, 'Android', '33b8847eb19f9f932d6ece4022de854c87475792bf6ad427e9dda384694dcb96', '[\"*\"]', NULL, '2023-01-25 23:55:24', '2023-01-25 23:55:24'),
(71, 'App\\Models\\User', 16, 'Android', 'a4ff777b01d1c63a58c290653cc6537d31a711382b896e79679b0c14ad5ababf', '[\"*\"]', NULL, '2023-01-25 23:55:28', '2023-01-25 23:55:28'),
(72, 'App\\Models\\User', 16, 'Android', '7553502208ff7d01560df7d134827d880a4529fa7a6e37588769415f1f967813', '[\"*\"]', NULL, '2023-01-25 23:55:30', '2023-01-25 23:55:30'),
(73, 'App\\Models\\User', 16, 'Android', '49b03c1076057d0949be0153eb64ab417ec6c261a0401c1eb036617f9287671e', '[\"*\"]', NULL, '2023-01-25 23:55:35', '2023-01-25 23:55:35'),
(74, 'App\\Models\\User', 16, 'Android', 'a54055631a2ac2c22079ed06a26b730dbdbc9fd296f781abf5b36adf9987fcc8', '[\"*\"]', NULL, '2023-01-25 23:56:36', '2023-01-25 23:56:36'),
(75, 'App\\Models\\User', 16, 'Android', '1e0665565a8042b2483b78b64dc79b34afeb2d85ac605fb76bf4be68247b1d4b', '[\"*\"]', NULL, '2023-01-25 23:56:51', '2023-01-25 23:56:51'),
(76, 'App\\Models\\User', 16, 'Android', 'e9f20e8157291d8c512ffae7012b7f3ad07c764b6c27f24221a784e20be3d24c', '[\"*\"]', NULL, '2023-01-25 23:56:57', '2023-01-25 23:56:57'),
(77, 'App\\Models\\User', 16, 'Android', '9a174c060d6a61b6ef2519f23882db932a46719c7d1bde5dc2000315c829c411', '[\"*\"]', NULL, '2023-01-25 23:57:28', '2023-01-25 23:57:28'),
(78, 'App\\Models\\User', 16, 'Android', 'eaef71fee5f7c83b3f2d9ab996f3a47841e49d8dda0c13eb771ba079afdc5317', '[\"*\"]', NULL, '2023-01-25 23:58:08', '2023-01-25 23:58:08'),
(79, 'App\\Models\\User', 16, 'Android', '526f2d5eca218e6eaa82e0a618af0994ec4904bd9d50bf9ba764d2f0f1c19a02', '[\"*\"]', NULL, '2023-01-25 23:58:57', '2023-01-25 23:58:57'),
(80, 'App\\Models\\User', 17, 'Android', 'd3f505e270e7993a0f2de05ff74f5e5a2dc19e3ce382ea4a84bb3bc92bdb46e1', '[\"*\"]', NULL, '2023-01-26 00:07:46', '2023-01-26 00:07:46'),
(81, 'App\\Models\\User', 18, 'Android', 'c53fce4106fc7775de61954a63bf6b20fc1ef2fd69eaef6377ade1e072c88488', '[\"*\"]', NULL, '2023-01-26 00:09:25', '2023-01-26 00:09:25'),
(82, 'App\\Models\\User', 18, 'Android', '71808513dfcdd96c8246b00b9ab8bf0ff21def1729e2d906e3c5f590f936b4f9', '[\"*\"]', NULL, '2023-01-26 00:10:05', '2023-01-26 00:10:05'),
(83, 'App\\Models\\User', 18, 'Android', '186de24b4018c26069ae11e749da93a1b29395f91cdac758d1bae5c298632a5a', '[\"*\"]', NULL, '2023-01-26 00:10:24', '2023-01-26 00:10:24'),
(84, 'App\\Models\\User', 18, 'Android', '395263c4dce0c641e171c2ae187e8113a111254938d9994782bbfe3cf5586806', '[\"*\"]', NULL, '2023-01-26 00:10:54', '2023-01-26 00:10:54'),
(85, 'App\\Models\\User', 18, 'Android', '081f62c98455c41c30da6b51ab54e9c1cdeda61afe13c04c3edb3cc8131bb4a3', '[\"*\"]', NULL, '2023-01-26 00:10:58', '2023-01-26 00:10:58'),
(86, 'App\\Models\\User', 19, 'Android', '3ec018c331e1d0df3857e3eb314996794ecd6da93d6811205175ab63505435d0', '[\"*\"]', NULL, '2023-01-26 00:16:20', '2023-01-26 00:16:20'),
(87, 'App\\Models\\User', 20, 'Android', '99aa22c2619803071de92a6debd4189fa710f742dc202c6301029299ddf3027d', '[\"*\"]', '2023-01-26 00:20:29', '2023-01-26 00:17:31', '2023-01-26 00:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `xl` smallint(6) NOT NULL,
  `xxl` smallint(6) NOT NULL,
  `xxxl` smallint(6) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `desc`, `img1`, `img2`, `img3`, `xl`, `xxl`, `xxxl`, `category_id`, `created_at`, `updated_at`) VALUES
(17, 'Roslyn McClure MD', 3000.00, 'Quis fuga dolorum et. Id ab aut consequatur dolores ad qui voluptas. Omnis soluta quisquam maiores et officia voluptatem qui.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 10, 100, 100, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(18, 'Eugenia Roob', 1000.00, 'Fuga sed maxime sed porro numquam reiciendis. Alias fugit voluptatem cupiditate eum alias magni. Magni fugiat aperiam dolore.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 10, 99, 30, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(19, 'Mr. Guillermo Larkin V', 1000.00, 'Non assumenda qui ut enim quis possimus nam. Est est fuga dolor ipsa enim accusantium dicta. Maxime facere qui temporibus illum dolorum.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress.png', 30, 10, 50, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(20, 'Lauriane Cormier', 500.00, 'Hic quia deserunt adipisci omnis sunt omnis. Corrupti pariatur sed pariatur. Aspernatur mollitia eum et ab illum dolor. Non sunt debitis enim esse ex praesentium quo.', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 2, 50, 1, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(21, 'Rodrigo Abernathy IV', 100.00, 'Culpa autem consequuntur quia quam. Saepe enim ratione exercitationem. Aut in maxime atque ea.', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 1, 30, 99, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(22, 'Rashad Cummerata', 100.00, 'Sequi perspiciatis reiciendis earum aut ea porro. Laboriosam ea optio nam nihil corporis natus. Qui aliquid dolores sint mollitia consequatur magni et.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 30, 10, 30, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(23, 'Arvel Brown', 269.00, 'Sapiente vitae perspiciatis consequatur sed non dolor. Et harum ducimus provident dicta vel et odio. Quam odit consequatur consectetur earum architecto ipsa aut.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 10, 99, 50, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(24, 'Gayle Ledner', 3000.00, 'Dolorem voluptas dolores nihil nostrum. Quaerat optio cumque sed harum consequuntur.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 50, 30, 50, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(25, 'Carlo King', 188.00, 'Cumque sint id ut laboriosam veritatis vitae sapiente. Qui quos provident quia dicta. Natus quos laudantium ipsa quis. Ut rem sequi tenetur atque. Adipisci in fugit hic.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 50, 1, 2, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(26, 'Prof. Marlee Erdman', 1000.00, 'Earum porro vel voluptas ratione. Et quas ut quaerat tempore maxime voluptatem. Molestiae qui quod est quia qui dolorum. Similique non eligendi ducimus iste expedita delectus.', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 2, 10, 100, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(27, 'Mr. Garfield Osinski V', 188.00, 'Consequatur impedit molestiae cum eum. Explicabo autem dignissimos neque voluptatum nulla sit. Laudantium laborum qui sequi et.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 50, 2, 100, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(28, 'Dr. Hilbert Kiehn DVM', 959.00, 'Ex sapiente dicta optio non explicabo voluptas. Repellendus et laudantium sit esse vitae minus id.', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress.png', 99, 1, 30, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(29, 'Ellen Morissette', 3000.00, 'Dolores aut sunt est quibusdam in explicabo. Beatae voluptatem aut non molestias. Dolorum voluptas hic et quod. Qui rem omnis qui tempora exercitationem.', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 10, 10, 100, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(30, 'Emmy Kiehn', 269.00, 'Optio dignissimos sint qui delectus sunt autem. Rerum perspiciatis laboriosam autem repudiandae. Est et illo est molestias ullam recusandae.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 1, 1, 50, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(31, 'Miss Amiya Fritsch', 188.00, 'Fuga repellendus at dolor fuga sed consequatur. Sed sapiente qui adipisci inventore facere. Autem est ut expedita accusamus.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 2, 100, 2, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(32, 'Faye Cruickshank', 500.00, 'Autem totam et quia autem. Temporibus nesciunt animi eaque sint dolorem et. Molestias ipsam voluptas voluptas eveniet voluptatem et ea. Ea iure vel nam quo neque aut nulla.', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 30, 30, 100, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(33, 'Sage Kunde', 100.00, 'Veniam omnis reprehenderit esse est eligendi fuga. Labore odit velit dolor voluptatibus sunt. Qui labore consequatur iusto quo aut ea. Eum harum sit consequatur est.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 2, 1, 30, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(34, 'Maximillia Ratke', 100.00, 'Incidunt enim dignissimos numquam occaecati. Optio consequuntur alias sint numquam impedit quis culpa. Temporibus qui est voluptas et omnis quo.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 1, 10, 10, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(35, 'Furman Wolf MD', 959.00, 'Voluptas asperiores saepe aut doloribus. Perspiciatis omnis eum dignissimos placeat. Enim minima exercitationem optio optio reprehenderit. Accusantium vero eos itaque tempora.', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress.png', 50, 10, 99, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(36, 'Enoch Kuhic', 269.00, 'Dolores placeat similique iure illo libero. Animi qui molestias dolore voluptatem rerum consequatur. Consequatur delectus soluta aliquam.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 30, 2, 30, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(37, 'Damon Carroll DDS', 3000.00, 'Mollitia reiciendis doloremque id hic sapiente explicabo explicabo. Dolor earum sed officia deleniti adipisci.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 100, 2, 2, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(38, 'Tristin Ruecker', 500.00, 'Sequi et qui veniam et minus vel dolor. Velit iusto nobis et. Sunt tempore aut perferendis facere distinctio aut. Sunt nisi qui in et mollitia sunt vero.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress.png', 50, 99, 30, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(39, 'Seamus Weissnat', 188.00, 'Et placeat rerum maiores vel asperiores qui. Quo neque natus sunt molestiae assumenda eligendi eos sed. Adipisci est officia ea necessitatibus sed.', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 1, 10, 1, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(40, 'Mr. Keegan Emard DDS', 188.00, 'Aut eligendi expedita deserunt. Ad quis ea quos voluptatem. Sint voluptatem suscipit ut totam.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 99, 100, 2, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(41, 'Duncan Frami', 1000.00, 'Omnis quia cum et eum vel aut doloribus. Sunt aspernatur doloribus nostrum ea vitae velit.', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress.png', 2, 10, 30, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(42, 'Aryanna Goldner', 188.00, 'Quisquam minima molestias quia et nisi provident in distinctio. Nam est aut quidem. Omnis autem iste pariatur odit impedit ut. Esse dicta inventore reiciendis odio.', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 100, 10, 30, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(43, 'Dr. Jeffery Medhurst', 959.00, 'Architecto quo impedit molestiae. Beatae eaque omnis deserunt vel qui veniam qui. Id nisi et rerum exercitationem quia possimus.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 100, 99, 1, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(44, 'Hubert Carroll', 269.00, 'Ea doloremque et expedita fugit rerum. Voluptatem delectus et ut sed. Natus animi voluptatum accusamus deserunt.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress.png', 30, 50, 100, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(45, 'Kyra Aufderhar', 959.00, 'Eos perspiciatis non molestiae assumenda dolorum laboriosam. Perspiciatis dignissimos placeat non neque. Tempore optio consequatur corporis illum. Libero nostrum maxime sunt vel.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 99, 10, 30, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(46, 'Dario Jenkins', 500.00, 'Non adipisci molestias magnam non. Ut suscipit quaerat earum modi deserunt possimus voluptatibus.', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress.png', 99, 1, 99, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(47, 'Mrs. Makayla Carroll', 3000.00, 'Ipsa ducimus numquam animi autem quisquam. Itaque aperiam recusandae molestiae nihil minus. Est omnis ipsum provident aliquid. Ab fuga natus reiciendis nobis suscipit quia ea.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 99, 10, 50, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(48, 'Ethel Osinski', 1000.00, 'Tempora ut eveniet nam veniam natus qui. In animi recusandae qui magnam vero. Quae repellendus suscipit fugit velit voluptatum impedit. Reiciendis quasi saepe molestias facilis.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 50, 2, 50, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(49, 'Lilliana Johns', 100.00, 'Et consequuntur et omnis officiis molestiae saepe quas. Error fuga repellendus non sed et porro aut. Architecto qui non voluptas exercitationem. Ut maiores ducimus alias voluptates non vel.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 10, 100, 99, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(50, 'Obie Kirlin', 3000.00, 'Corrupti recusandae ut aliquid voluptates. Assumenda qui magni quae laborum quo. Dolor qui magni sint amet odio sunt est.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 2, 100, 99, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(51, 'Miss Alvera Thiel MD', 3000.00, 'Provident qui accusantium repellat quisquam. Vitae officia perspiciatis asperiores odio aut ipsa. Incidunt aut nam eligendi.', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 2, 10, 10, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(52, 'Boris Ebert', 100.00, 'Voluptatem neque quia voluptatem eos deleniti voluptas. Aut ducimus quaerat aut quia.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 99, 100, 1, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(53, 'Dr. Makenna Kemmer', 188.00, 'Fuga id quo repellendus cupiditate quos sed est. Vel quia quibusdam maiores. Consequatur sapiente deserunt nisi tempora sit.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress.png', 30, 10, 50, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(54, 'Edythe Upton', 269.00, 'Qui quas vel ipsum consequatur labore. Est corporis dignissimos nulla est voluptatem quis sunt sit. Vero incidunt magni facere. Illum ea inventore et rerum officiis provident explicabo.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress.png', 1, 99, 100, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(55, 'Claudie Sawayn', 3000.00, 'In expedita qui laborum laboriosam. Velit rem numquam enim cum odio a et. Atque fugiat nulla velit quos aut error expedita.', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress.png', 1, 2, 1, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(56, 'Mr. Blake Terry', 100.00, 'Dignissimos aliquid tempore sit eos quis earum. Voluptatem quae consequatur tenetur fuga vero mollitia.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 100, 30, 100, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(57, 'Dr. Myrtis Heller DVM', 1000.00, 'Et rem labore eveniet. Architecto voluptas in at commodi et ut id. Vitae ad consequuntur mollitia.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 100, 2, 100, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(58, 'Alfonzo Frami', 188.00, 'Hic commodi porro a dolores nemo perspiciatis aut. Ullam et cupiditate quam dolorem qui. Minima sit dolor blanditiis pariatur. Quam sint cupiditate adipisci vel omnis. Qui et voluptatem harum ipsam.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 99, 2, 1, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(59, 'Tomasa Hermann II', 269.00, 'Ducimus facilis et sed nisi. Aut et minus magnam aut ut et minus ea. Amet cum suscipit sint unde sunt.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 30, 99, 1, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(60, 'Vincenzo Jast', 269.00, 'Et alias nisi nihil alias veniam ea dicta. Magni minima fuga fugiat cupiditate maxime necessitatibus et. Facere et nulla consectetur temporibus vel id et. Asperiores nostrum occaecati id maiores ut.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress.png', 30, 30, 100, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(61, 'Jonathon Schneider', 959.00, 'Ea exercitationem adipisci et accusamus. Dicta illo dolor nam beatae qui velit. Magni temporibus corporis et sint.', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress.png', 30, 50, 2, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(62, 'Bethany Gutkowski', 269.00, 'Ab quaerat ut modi aut sed ipsum velit. Repellendus cum incidunt labore corporis ratione inventore expedita quas. Distinctio harum sed a omnis cupiditate molestiae. Et est maiores quae doloremque et.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress.png', 1, 2, 2, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(63, 'Nicklaus Volkman', 269.00, 'Assumenda minima eos nisi veniam laboriosam sit. Possimus magni dicta quae tempore et. Nihil aut commodi et et aut expedita.', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 1, 10, 10, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(64, 'Mireya Bogisich', 269.00, 'Quae est adipisci sit illo corporis in. Sint voluptatem qui velit in. Ut qui iusto omnis sit eos.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 30, 10, 1, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(65, 'Stella Mueller', 188.00, 'Rerum corrupti sed reprehenderit deserunt et molestiae hic beatae. Aut qui neque est aut iure unde minus possimus. Aliquid culpa voluptatem earum numquam ratione non. Neque esse est officiis.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress1.png', 10, 100, 30, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(66, 'Madisyn Spencer', 269.00, 'Fugit est quo et. Eum accusantium qui deserunt sit. Suscipit quis nihil sed dolor qui consequatur.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 1, 100, 30, 1, '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(67, 'Prof. Flossie Hodkiewicz', 500.00, 'Ipsum error temporibus quas. Qui ut velit officiis magnam est. Consectetur consequuntur ut architecto reiciendis in. Quod assumenda rerum eos in est. Minus ab aliquid suscipit voluptatem ea officiis.', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 10, 2, 2, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(68, 'Kim Hodkiewicz', 100.00, 'Soluta vel vel vel deserunt et sed. Aut aut blanditiis ut consequatur maiores cumque reiciendis sint. Autem ut aut soluta.', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 99, 10, 1, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(69, 'Dr. Garfield Bins', 269.00, 'Beatae porro dolorum quasi eligendi iusto. Et veniam sit vero distinctio quia eaque. Placeat laborum quibusdam dolor occaecati eos. Sed nostrum voluptas maiores voluptatem illum.', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 1, 1, 2, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(70, 'Ms. Abbie Will DDS', 3000.00, 'Aperiam ut qui molestiae officia. Non est consequatur odio eos. Aperiam sit eum qui fuga. Voluptates voluptas qui similique ullam eum quo excepturi.', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 100, 30, 30, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(71, 'Nikko Bradtke', 959.00, 'Omnis est voluptatem necessitatibus et magni. Nobis soluta fugiat dolore atque. Earum eaque qui magni nam inventore qui. Nemo fugit praesentium deserunt sapiente ut est autem atque.', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 30, 30, 30, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(72, 'Liam Stamm IV', 100.00, 'Voluptatum autem odit nobis nihil molestias est. Quas vel totam sed provident optio. Eius repellat ab aliquam fuga sit.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 100, 2, 100, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(73, 'Ted Leffler', 1000.00, 'Culpa provident nihil repudiandae nam. Quisquam aut dolores dolore nostrum quo nemo. Laborum nulla recusandae officiis expedita.', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 100, 10, 1, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(74, 'Sigrid Grimes', 269.00, 'Ut reprehenderit delectus et quisquam in ut sit. Tenetur expedita deserunt quam esse. Molestiae incidunt similique temporibus laudantium consequatur.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 1, 100, 10, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(75, 'Prof. Stuart Predovic', 500.00, 'Nisi veniam dicta dolorem illum. Consectetur mollitia voluptas cum necessitatibus. Est in quia earum et qui fuga. Non suscipit dolore soluta quae est.', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 99, 2, 50, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(76, 'Audra Hayes', 269.00, 'Est nulla non enim deleniti praesentium quos soluta. Qui blanditiis repellendus qui id quia illum inventore. Voluptatum cupiditate provident eum voluptate aspernatur.', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 99, 100, 1, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(77, 'Faustino Schuppe DDS', 100.00, 'Culpa impedit distinctio sed dolor nulla. Aliquid iusto repellendus laborum omnis consequatur eos. Officiis eum doloremque labore aliquam facilis. Doloremque magni esse fugit.', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 99, 30, 10, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(78, 'Gregory Jacobs', 188.00, 'Numquam dignissimos dignissimos porro odio quisquam veniam quis ut. Fugit eius modi nesciunt nemo aut et odit explicabo. Aliquid voluptatem veniam qui et. Nostrum dolor iste optio quo iure et et.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 50, 2, 1, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(79, 'Laurence Bins', 959.00, 'Delectus eaque et earum corporis id. Velit voluptatem ut necessitatibus natus aliquid. In perferendis atque nihil omnis facilis minus. Nobis et amet impedit.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 2, 100, 2, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(80, 'Justina Brown', 188.00, 'Quae quia non eum. Quis corrupti magni odit sit autem nulla possimus. Corrupti quisquam et impedit blanditiis ut saepe ipsum. Ut minima iure impedit nesciunt quod sunt.', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 1, 30, 1, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(81, 'Dr. Edgar Schmitt', 500.00, 'Eveniet magnam autem facere corporis. Consectetur tempore sed est assumenda. Praesentium perspiciatis et et sit et consequatur.', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 2, 30, 30, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(82, 'Korbin Fritsch', 3000.00, 'Dolor rerum repellat nemo aut atque adipisci nulla. Laboriosam ea non in pariatur ut voluptas. Nihil officiis hic laboriosam tempora. Aut deleniti sequi qui natus veritatis facilis qui.', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 2, 30, 10, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(83, 'Mr. German Abbott', 3000.00, 'Molestiae iure aspernatur ipsum necessitatibus eum. Assumenda maiores voluptas deserunt quia dolor. Enim dolores vero delectus nesciunt ab. Fugiat assumenda id incidunt.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 1, 99, 100, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(84, 'Fausto Ratke', 500.00, 'Impedit ad beatae at non nesciunt eligendi. Sed a eos incidunt consequatur enim enim. Itaque qui qui distinctio consequatur.', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 10, 10, 10, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(85, 'Miss Wendy Dickens', 500.00, 'Aut provident recusandae quibusdam qui consequuntur quia voluptatem. Nihil ab libero officiis quam nihil ut. Omnis dolor eveniet vel perferendis reiciendis possimus iure. Harum ipsa neque nam aut.', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 99, 30, 10, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(86, 'Neil Bartoletti', 100.00, 'Aliquam porro quis officia sunt tempore sunt doloribus. Asperiores accusantium ut magnam. Dicta et saepe rerum sunt dolor.', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 2, 30, 1, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(87, 'Prof. Jimmie Tremblay', 500.00, 'Quis est quo dolorum mollitia nihil maiores. Quo excepturi et quos.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 50, 10, 99, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(88, 'Arden Blanda', 959.00, 'Sapiente dolorem qui fugit in. Architecto facere illo ratione doloremque. Neque et quaerat adipisci numquam tempora et. Omnis qui vitae placeat voluptas in reprehenderit.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 2, 99, 2, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(89, 'Prof. Barrett Funk IV', 269.00, 'Est earum cum est sit harum voluptatibus. Ducimus id minima odit at. Minus ut autem temporibus. Quasi ducimus quidem autem iure qui autem.', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 2, 10, 2, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(90, 'Jerald Prohaska', 269.00, 'Et doloremque illum eligendi doloremque. Sed soluta quo maiores similique sint. Ea magni sunt tempore dolores perspiciatis et.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 1, 1, 10, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(91, 'Lazaro Labadie II', 959.00, 'Ad a vel et quibusdam natus quia necessitatibus. Inventore aut facere aperiam. Consequuntur et ut animi debitis officiis sapiente. Aut at in libero molestiae. Veniam autem omnis libero magni.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 99, 100, 2, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(92, 'Sonia Walter II', 188.00, 'Eaque laborum ad praesentium distinctio velit officiis. Qui nesciunt maiores aspernatur ab laudantium. Tenetur quis nihil minus enim repellendus ab porro.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 10, 50, 50, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(93, 'Lyla Harvey', 188.00, 'Voluptatum optio consequatur ratione quia. Corrupti soluta quidem a molestiae distinctio et. Sint cupiditate dolor doloribus aliquid error quas et.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 10, 99, 30, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(94, 'Mr. Elton Ratke IV', 269.00, 'Officia autem dolor excepturi corrupti nulla. Hic voluptatum ducimus aperiam laborum. Expedita eveniet qui repellendus nihil. Pariatur quis quia est voluptatem nihil sint voluptatem.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 100, 100, 100, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(95, 'Alphonso Stehr III', 1000.00, 'Omnis delectus consequatur ut. Doloribus sunt sint tenetur quo eum. Voluptatum eveniet delectus eos sint omnis aut omnis molestiae.', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 99, 1, 2, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(96, 'Dr. Agustin Bahringer I', 3000.00, 'Aperiam harum harum ea eveniet. Sunt veritatis ut laboriosam rem soluta. Enim excepturi consequatur hic impedit veniam minima quis. Praesentium vel quae sed et ducimus iure tempore.', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 30, 99, 99, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(97, 'Dr. Jordi Gleichner', 959.00, 'Dolor qui tenetur enim quibusdam eos quo. Necessitatibus aperiam labore excepturi eum. Modi voluptas omnis omnis beatae quam error.', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 10, 50, 100, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(98, 'Jed Ernser', 269.00, 'Itaque impedit enim facilis fugit nihil dignissimos. Ullam repudiandae ut consequatur id possimus rem ut. Quis et magnam delectus temporibus architecto.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 100, 99, 30, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(99, 'Mario Fritsch', 500.00, 'Nihil odio ab voluptatem doloremque aut aliquid. Suscipit qui voluptates exercitationem excepturi. Tempore aut provident temporibus minus perspiciatis impedit.', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 2, 1, 50, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(100, 'Dr. Ben Mills II', 959.00, 'Soluta nisi rerum laborum id quos recusandae. Alias rerum voluptatum libero deserunt. Dignissimos enim alias ut ullam doloremque. Modi error rem laudantium ratione aut quasi sint quia.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 10, 30, 50, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(101, 'Kelton Goodwin', 100.00, 'Dignissimos cumque accusantium eos ut sit. Vero minima ut nostrum repudiandae commodi. Consequatur corporis ea quis doloremque. Voluptas est praesentium qui qui.', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 30, 2, 10, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(102, 'Agustina Bogan', 188.00, 'Saepe eveniet debitis et dolorem molestias ipsa sunt non. Sed dolorem ab quisquam nostrum beatae aliquam error. Nisi illo aliquam aut molestiae. Iure praesentium velit accusamus repellendus commodi.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 10, 1, 2, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(103, 'Prince Trantow', 3000.00, 'Recusandae cumque iure aut et ullam veniam ex. Fuga ipsa hic corporis occaecati perferendis corporis. Ad non excepturi vel aut eaque voluptatem est quod.', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 50, 100, 50, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(104, 'Mr. Doris Berge Jr.', 188.00, 'Et nihil quidem consequatur consequatur. Iure est laboriosam recusandae qui sequi laboriosam voluptas porro. Nulla rerum rerum nihil quaerat et ipsam ab. Sunt nihil ut natus error dolor et animi.', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 99, 99, 100, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(105, 'Mr. Maximus Sanford III', 269.00, 'Nulla suscipit quis veniam. Ea velit nostrum et veritatis sint qui. Quasi ad libero animi aut sit perspiciatis et eum.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 99, 10, 100, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(106, 'Dr. Treva Jaskolski', 269.00, 'Aliquid similique numquam nesciunt sequi consectetur voluptates ea. Explicabo nisi omnis optio quia est non eos. Quae veniam amet qui deleniti rem fuga in. Enim autem perferendis quis.', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 50, 50, 50, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(107, 'Ms. Mozelle Bruen', 188.00, 'Nostrum ut sunt et consequatur nesciunt rerum veniam. Repellendus molestias sit soluta amet consequatur tenetur omnis.', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 1, 1, 99, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(108, 'Jasmin Hyatt', 1000.00, 'Quidem sit voluptas temporibus et omnis. Laudantium consequatur voluptatum illo quasi eum sit. Provident necessitatibus sint modi et.', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 2, 1, 30, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(109, 'Lonzo Larson III', 269.00, 'Beatae temporibus quam et cumque. Culpa sapiente aperiam neque labore labore. Aut voluptatem delectus ex.', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 1, 2, 99, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(110, 'Oliver Brekke', 1000.00, 'Laudantium illum aspernatur et quas quis quia cumque. Nam pariatur quas et quo. Sed corrupti qui tenetur dolor voluptate veritatis facere.', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 50, 30, 2, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(111, 'Linwood Goldner', 188.00, 'Hic ut corporis quis totam vel perspiciatis expedita. Ab molestiae porro repudiandae. Ab natus consequatur natus ratione cumque. Facilis sit dolorem rerum ipsum magnam.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 100, 50, 10, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(112, 'Alverta Mayert', 269.00, 'A aliquid nihil eius quia. Velit ea quaerat quibusdam nihil. Facere ipsa nobis quia molestiae impedit et deleniti ut.', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 30, 1, 50, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(113, 'Miss Ramona Olson', 188.00, 'Hic laborum maiores amet. Laudantium quis explicabo est quia odio quasi. Molestiae aut est tempora id asperiores non. Consequatur maiores quisquam eligendi atque aperiam.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 100, 99, 100, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(114, 'Dr. Aniya O\'Kon', 500.00, 'Soluta sequi atque amet aut esse maiores non. Aliquam aut quis molestiae perspiciatis voluptatem. Dolores consequuntur quibusdam et voluptas quis cumque earum.', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 2, 2, 10, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(115, 'Loraine Doyle III', 269.00, 'Soluta dolorum ducimus maxime maiores vel molestias. Beatae commodi excepturi voluptates consequatur iste. Laborum aliquid voluptas tempora est.', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/dress2.png', 'http://127.0.0.1:8000/assets/images/skirt2.png', 99, 1, 2, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(116, 'Gregory Gaylord', 959.00, 'Enim laborum ad ut doloribus. Inventore recusandae et nostrum modi facere quae autem id. Non totam qui occaecati quia qui et et unde. Hic ut nisi suscipit consequuntur rerum.', 'http://127.0.0.1:8000/assets/images/skirt2.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 'http://127.0.0.1:8000/assets/images/skirt.png', 1, 30, 50, 2, '2023-01-22 01:28:23', '2023-01-22 01:28:23'),
(117, 'Reanna Quigley', 1000.00, 'Et quia recusandae ut minima et et qui. Architecto doloribus optio ut facere deserunt non. Qui iure sunt consequatur magnam. Fugit laudantium quasi voluptas cum.', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 'http://127.0.0.1:8000/assets/images/casua2.png', 1, 100, 50, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(118, 'Adeline Grimes', 500.00, 'Perferendis minus quia molestias perferendis. Corporis commodi et ex aut saepe quo.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 99, 100, 1, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(119, 'Elenora Kihn I', 959.00, 'Nobis quia nemo omnis id eum. Et nihil et ut placeat qui. Nostrum sed vero ut qui nostrum. Dolores asperiores hic sed.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casual.png', 2, 2, 50, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(120, 'Dr. Curt Crist V', 269.00, 'Distinctio inventore aut nam molestias harum maiores. Ex in quaerat ipsa atque praesentium ex aut. Ut et autem et necessitatibus cum neque quis. Nisi et rerum laudantium quia ipsam tempore aperiam.', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 1, 99, 2, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(121, 'Aisha Watsica III', 1000.00, 'Occaecati omnis libero sunt impedit consectetur. Amet enim praesentium voluptas quidem aliquid. Fugit saepe enim rerum omnis modi dolorum.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 99, 10, 10, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(122, 'Ariane Schowalter', 269.00, 'Odio ad enim delectus dolorem et velit voluptatem. Natus vel maiores ipsum non. Placeat ut et ratione qui id quidem.', 'http://127.0.0.1:8000/assets/images/casua3.png', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casual.png', 1, 10, 99, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(123, 'Jayden Crona', 959.00, 'Numquam officia et et delectus officiis. Veritatis dolorem sed aut exercitationem. Ullam repudiandae esse ea ex. Dolorem illum veritatis at similique qui.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 99, 10, 50, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(124, 'Diana Wehner', 500.00, 'Repudiandae libero quasi molestiae vitae officiis. Animi deleniti ut et facere nostrum. Aut voluptate omnis ratione sunt.', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 'http://127.0.0.1:8000/assets/images/casual.png', 10, 99, 99, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(125, 'Larry Christiansen', 269.00, 'Ut accusantium et veritatis eius eligendi aut. Ipsa magnam ut nihil porro esse occaecati. Fugiat et expedita omnis velit. Perspiciatis quasi laborum in est praesentium qui.', 'http://127.0.0.1:8000/assets/images/casua3.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua2.png', 99, 50, 100, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(126, 'Myrtle Bogan', 100.00, 'Praesentium exercitationem rerum qui consectetur et tempora. Commodi id odit aut.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 2, 30, 100, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(127, 'Prof. Garfield Simonis MD', 269.00, 'Expedita soluta iure quia amet. Est ipsum incidunt veritatis est dolorem. Omnis vitae quibusdam et tenetur non aspernatur non.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 1, 10, 100, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(128, 'Kane Mante', 959.00, 'Quis delectus vel aliquam quam et impedit voluptatem. Quaerat nesciunt debitis est aut alias sunt omnis tempore. Praesentium quas cumque praesentium dolor.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casua2.png', 100, 100, 100, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(129, 'Ms. Catherine Hermiston', 188.00, 'Libero minus sapiente sint molestiae omnis. Voluptas et aut quasi architecto sapiente. Aliquid ut similique ducimus non. Alias molestias est odio voluptatem tempore.', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 10, 2, 99, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(130, 'Kavon Reichel', 269.00, 'Dolores vitae natus ut. Dolor id explicabo ut autem consequuntur cupiditate. Qui quibusdam atque saepe omnis reprehenderit. Itaque laborum rerum nulla minima.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 2, 50, 30, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(131, 'Brant Barrows', 269.00, 'Sint non sit magnam dolorem. Ab ea enim tenetur nulla dolor deleniti. Nobis mollitia quia excepturi voluptas. Dolorem alias qui ducimus sed quae quod.', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 10, 30, 30, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(132, 'Marcel Corwin', 959.00, 'Earum ab laborum exercitationem omnis amet quis molestias. Tenetur repudiandae adipisci cumque et quisquam sunt accusantium. Qui repellendus rem dolorem exercitationem maiores est.', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 10, 99, 30, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(133, 'Raphael Lockman', 1000.00, 'Est possimus esse enim. Nobis aut et magni exercitationem nisi. Asperiores et fugit quo maiores aut eum numquam debitis. Distinctio libero voluptas cum quibusdam sapiente et et.', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 50, 1, 100, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(134, 'Janie Kemmer', 500.00, 'Repellat est eaque voluptate placeat nobis nisi. Consectetur soluta praesentium hic incidunt et voluptatem maiores fugit. Error sed cum sunt aut ratione. Sed voluptatibus quo facilis occaecati.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 10, 10, 2, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(135, 'Mina Leffler', 3000.00, 'Quia velit et facilis nisi dolor velit provident. Ratione excepturi dolor nihil qui sit molestiae. Possimus facere doloribus quis. Voluptates ipsa minima explicabo tenetur non voluptas voluptates.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 30, 30, 30, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(136, 'Octavia Funk', 1000.00, 'Dolores maiores est quia. Dolor debitis id aut non quasi. Est distinctio sed quidem magni doloremque.', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 2, 2, 2, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(137, 'Elmira Zemlak', 959.00, 'Sunt impedit enim omnis omnis cum cumque. Magni sunt et ratione illum officiis. Et qui vel deleniti quas eligendi iusto. Nam expedita fugiat aliquam quo repellat modi voluptas.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 50, 1, 30, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(138, 'Dr. Stan Conn', 100.00, 'Voluptatem fugit ex omnis consequatur eveniet in. Adipisci optio at perferendis molestiae eos numquam. Quaerat non dolor esse accusantium. Omnis suscipit sed culpa quo sapiente placeat omnis.', 'http://127.0.0.1:8000/assets/images/casua3.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 2, 99, 50, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(139, 'Kristofer Waters', 500.00, 'Voluptatum nesciunt et quam. Velit facere blanditiis dolor explicabo rem temporibus.', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 2, 30, 99, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(140, 'Prof. Laurie Cartwright', 269.00, 'Eum voluptas exercitationem vitae dolor est consequuntur qui. Et qui molestias natus repellat. Harum maiores sed minus a amet autem voluptates.', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 100, 99, 2, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(141, 'Jaylin Waelchi', 3000.00, 'Inventore et consectetur nobis. Aut delectus maiores qui iure.', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 'http://127.0.0.1:8000/assets/images/casual.png', 99, 50, 100, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(142, 'Osborne Herman', 3000.00, 'Dolor amet veniam molestiae pariatur voluptatem id eaque. Labore cumque deleniti ut et. Quis eaque non qui architecto facilis ab rem. Est ut omnis provident necessitatibus deserunt veniam.', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 100, 50, 2, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(143, 'Verlie Hegmann', 188.00, 'Sint sed voluptatem ipsa iste et aut ea eos. Voluptatem dolorem voluptas optio et. Dolor ipsa natus blanditiis expedita accusantium minus tenetur.', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 10, 10, 100, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24');
INSERT INTO `products` (`id`, `name`, `price`, `desc`, `img1`, `img2`, `img3`, `xl`, `xxl`, `xxxl`, `category_id`, `created_at`, `updated_at`) VALUES
(144, 'Amber Weissnat', 269.00, 'Et commodi corporis occaecati quod ab commodi deserunt. Quasi fugiat est expedita et dolorum laboriosam quaerat. Qui neque ad magnam deleniti nesciunt esse.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casual.png', 2, 10, 2, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(145, 'Dr. Jay Brakus III', 269.00, 'Delectus quia suscipit cum. Aut eum voluptas blanditiis aut unde dolorem in. Quod a et doloremque dolorem quia sed. Cumque fugit eaque voluptatem vel iste perspiciatis officiis.', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua2.png', 10, 50, 30, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(146, 'Ardith Ritchie', 269.00, 'Harum corrupti cumque molestias voluptas. Repudiandae dolor iusto sit ducimus nihil. Necessitatibus et consectetur voluptates est maiores.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 2, 30, 10, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(147, 'Valentin Vandervort Jr.', 188.00, 'Quis alias facere ut quo eum totam. Molestiae consequatur optio voluptatem culpa. Mollitia velit aut quisquam eius sapiente aut deserunt eaque. Et odit repellat voluptatem expedita modi.', 'http://127.0.0.1:8000/assets/images/casua3.png', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 2, 10, 100, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(148, 'Prof. Joany Rath', 500.00, 'Maiores odit aut voluptatem dignissimos incidunt. Ipsam blanditiis sed autem rem. Esse nulla modi quia accusantium quis totam. In animi enim neque laboriosam voluptates harum cupiditate.', 'http://127.0.0.1:8000/assets/images/casua3.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 2, 10, 1, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(149, 'Marie Bahringer', 100.00, 'Minima asperiores quos repudiandae omnis corporis. Consequatur magnam accusamus est et tempore. Ipsa labore quia accusamus a magnam deleniti.', 'http://127.0.0.1:8000/assets/images/casua3.png', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 10, 100, 1, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(150, 'Marta Cummings', 500.00, 'Ut et aut ea eaque. Iste voluptatum ea voluptates consectetur omnis. Culpa pariatur omnis sunt illum.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 100, 100, 50, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(151, 'Judson Fay', 3000.00, 'Facere voluptas et explicabo ea. Est eius exercitationem sed reprehenderit praesentium quia doloremque. Repellat corrupti illum voluptatem in.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 1, 2, 10, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(152, 'Gaylord Nitzsche', 3000.00, 'Deleniti ratione autem rerum. Ea qui et molestiae voluptas cum. Assumenda quasi animi quia similique.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 30, 10, 1, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(153, 'Audrey Tillman II', 269.00, 'Qui omnis perspiciatis ea incidunt dignissimos quod. Omnis qui ea quis amet molestiae quod illum iste. Odit minima omnis at officiis. Qui sed non blanditiis tempora occaecati.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 50, 99, 30, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(154, 'Ms. Kiarra Bednar', 269.00, 'Autem voluptas occaecati eius tempora. Cum odio numquam doloribus magni. Ipsam cumque est eius consequatur. Quia molestiae alias neque et laudantium molestiae.', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua2.png', 100, 30, 30, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(155, 'Mrs. Erica Gottlieb', 100.00, 'Beatae et sit ducimus veniam reprehenderit suscipit sed. Reprehenderit distinctio sint voluptas possimus et. Provident necessitatibus ut quia repellat modi rerum autem sit.', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 2, 99, 2, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(156, 'Henri Crooks IV', 188.00, 'Culpa expedita illo magnam ratione. Labore totam aliquid iusto dolores quia deserunt. Repudiandae et tempore aut ea voluptatibus aut velit similique.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 100, 30, 99, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(157, 'Prof. Raven Heidenreich DVM', 3000.00, 'Et optio deleniti reprehenderit quia qui pariatur. Dolore beatae qui minus odio. Amet omnis nihil unde totam.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 99, 10, 30, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(158, 'Mr. Torey Block Jr.', 269.00, 'Sint numquam soluta tenetur illum dignissimos quasi. Sed rerum quasi fuga inventore soluta. Alias tempora ipsa sit quasi dolorum fugit.', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua2.png', 30, 100, 1, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(159, 'Theresa Aufderhar', 500.00, 'Optio ex id vitae ullam sed. Cupiditate deleniti cum animi quibusdam consequuntur id. Et in qui porro quod veritatis harum veritatis fugiat. Aut dolor velit sed est molestias.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 50, 30, 10, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(160, 'Chelsie Glover Sr.', 188.00, 'Adipisci porro qui pariatur earum consequatur voluptas molestiae. Quas quis laboriosam cumque veniam quia. Magnam voluptatem et dolorem aut qui iure quasi.', 'http://127.0.0.1:8000/assets/images/casua3.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 30, 100, 1, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(161, 'Marianne Schultz', 959.00, 'Sit omnis sit et ducimus. Quia a beatae esse necessitatibus voluptate itaque. Velit debitis vel maxime eveniet et.', 'http://127.0.0.1:8000/assets/images/casua3.png', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 1, 2, 99, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(162, 'Betsy Bernhard', 188.00, 'Qui in et amet laborum officiis earum ea. Vitae ut commodi quam pariatur facilis. Rerum rem possimus ad cum laboriosam ut libero possimus. Rerum sapiente ut asperiores dolorum quia enim.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 99, 100, 2, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(163, 'Ms. Alana Bode PhD', 100.00, 'Voluptatem tempore nesciunt atque eos est harum odio. Inventore perferendis porro dolor. Ullam tenetur alias eum quod.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua10.png', 'http://127.0.0.1:8000/assets/images/casual.png', 99, 50, 99, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(164, 'Elna Jaskolski', 500.00, 'Qui et dolor cumque dolores. Laudantium laboriosam perferendis temporibus quasi. Saepe numquam autem tenetur at illo. Dignissimos repudiandae quia eligendi enim.', 'http://127.0.0.1:8000/assets/images/casua2.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 30, 99, 10, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(165, 'Dayna Johnston', 3000.00, 'Repellendus velit omnis omnis. Perspiciatis vitae deserunt repellendus quisquam. Quisquam non minus aut iste quia omnis quis.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 'http://127.0.0.1:8000/assets/images/casual.png', 10, 100, 1, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24'),
(166, 'Mr. Pedro Langworth', 269.00, 'Et error quas sunt amet. Illo asperiores totam beatae aut. Voluptatibus iste placeat sed tempore. Ut et laudantium voluptate laboriosam mollitia. Explicabo in a voluptatem sunt.', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casual.png', 'http://127.0.0.1:8000/assets/images/casua3.png', 50, 100, 100, 3, '2023-01-22 01:31:24', '2023-01-22 01:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rate` enum('1','2','3','4','5') NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `rate`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '5', 71, '2023-01-22 01:32:54', '2023-01-22 01:32:54'),
(2, '2', 65, '2023-01-22 01:32:54', '2023-01-22 01:32:54'),
(3, '2', 76, '2023-01-22 01:32:54', '2023-01-22 01:32:54'),
(4, '4', 46, '2023-01-22 01:32:54', '2023-01-22 01:32:54'),
(5, '5', 87, '2023-01-22 01:32:54', '2023-01-22 01:32:54'),
(6, '2', 46, '2023-01-22 01:32:54', '2023-01-22 01:32:54'),
(7, '3', 22, '2023-01-22 01:32:54', '2023-01-22 01:32:54'),
(9, '2', 17, '2023-01-22 01:47:20', '2023-01-22 01:47:20'),
(10, '2', 31, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(11, '4', 40, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(12, '5', 100, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(13, '2', 24, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(14, '1', 90, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(15, '4', 52, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(16, '4', 89, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(17, '5', 31, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(18, '1', 85, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(19, '4', 53, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(20, '2', 66, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(21, '1', 55, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(22, '5', 66, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(23, '2', 85, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(24, '4', 58, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(25, '5', 97, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(26, '3', 59, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(27, '1', 33, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(28, '3', 28, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(29, '5', 77, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(30, '2', 34, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(31, '1', 49, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(32, '5', 100, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(33, '3', 61, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(34, '5', 95, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(35, '4', 45, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(36, '4', 82, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(37, '5', 30, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(38, '2', 66, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(39, '2', 21, '2023-01-22 01:51:40', '2023-01-22 01:51:40'),
(40, '2', 18, '2023-01-22 21:01:57', '2023-01-22 21:01:57'),
(41, '2', 19, '2023-01-22 21:03:59', '2023-01-22 21:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `code` smallint(6) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `code`, `remember_token`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Tracey Morissette', 'kali70@example.org', '2023-01-22 01:20:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'QlQqM1rDAQ', 'user', '2023-01-22 01:20:20', '2023-01-22 01:20:20'),
(2, 'Miss Esther Schmeler', 'edwina.collins@example.net', '2023-01-22 01:20:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'FIkJ37DcXV', 'user', '2023-01-22 01:20:20', '2023-01-22 01:20:20'),
(3, 'Jeanie Russel', 'landen37@example.net', '2023-01-22 01:20:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'eGyYn9RU15', 'user', '2023-01-22 01:20:20', '2023-01-22 01:20:20'),
(4, 'Brennan Kilback', 'luettgen.kevon@example.org', '2023-01-22 01:20:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'twttWxemYV', 'user', '2023-01-22 01:20:20', '2023-01-22 01:20:20'),
(5, 'Mrs. Shanon Hahn', 'lynch.hank@example.org', '2023-01-22 01:20:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'G8UdHnXLLT', 'user', '2023-01-22 01:20:20', '2023-01-22 01:20:20'),
(6, 'Kamren Bayer', 'esipes@example.com', '2023-01-22 01:21:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'ZW4BgAj2hd', 'user', '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(7, 'Mr. Alexys Wisozk', 'jkuvalis@example.net', '2023-01-22 01:21:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'jic3WeG1ei', 'user', '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(8, 'Mr. Zachery Gottlieb DDS', 'taurean.hyatt@example.org', '2023-01-22 01:21:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'mu1dTl2pKF', 'user', '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(9, 'Mr. Fritz DuBuque', 'bartell.dario@example.org', '2023-01-22 01:21:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'xFeuMIzDED', 'user', '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(10, 'Kacie Balistreri', 'keeling.dorothy@example.net', '2023-01-22 01:21:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'RcZ2gnvP0s', 'user', '2023-01-22 01:21:03', '2023-01-22 01:21:03'),
(12, 'admin', 'admin@gmail.com', NULL, '$2y$10$jmf1CqYZc8zMDObAc2bxpuzOOYBpBQ/CW6l5hRrBwFL2v4Nh4yjVq', NULL, NULL, 'admin', '2023-01-22 01:38:55', '2023-01-22 01:38:55'),
(20, 'nawal', 'nawal@gmail.com', NULL, '$2y$10$wkMvToNyKGdpYHW/LofQSuNp3FITs.CeDqk1Aut5CCkXdO0KOBz4.', NULL, NULL, 'user', '2023-01-26 00:17:31', '2023-01-26 00:17:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rates_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_code_unique` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rates`
--
ALTER TABLE `rates`
  ADD CONSTRAINT `rates_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
