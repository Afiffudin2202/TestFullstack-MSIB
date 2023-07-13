-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2023 at 09:51 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_crud_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `published` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `user_id`, `isbn`, `title`, `subtitle`, `author`, `published`, `publisher`, `pages`, `description`, `website`, `created_at`, `updated_at`) VALUES
(2, 1, '9781491943533', 'Practical Laravel', 'Dive into ES6 and the Future of JavaScript', 'Nicolás Bevacqua', '2017-07-16 00:00:00', 'O\'Reilly Media', 334, 'To get the most out of modern JavaScript, you need learn the latest features of its parent specification, ECMAScript 6 (ES6). This book provides a highly practical look at ES6, without getting lost in the specification or its implementation details.', 'https://github.com/mjavascript/practical-modern-javascript', '2023-07-12 06:48:08', '2023-07-12 06:57:04');

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
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_07_12_004800_create_books_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 1, 'User_Login', 'a9dd3c7ade8dcad36d8da1fd8f48ef3224b55b859d344d9835ceebd88056630d', '[\"*\"]', '2023-07-12 07:05:06', NULL, '2023-07-12 06:41:17', '2023-07-12 07:05:06'),
(3, 'App\\Models\\User', 1, 'User_Login', 'e5cea78d19dd5b977ba1240d02e727f40492260768ccbf95475a5f04d1b4c036', '[\"*\"]', NULL, NULL, '2023-07-13 10:57:04', '2023-07-13 10:57:04'),
(4, 'App\\Models\\User', 1, 'User_Login', '4abe0f192e8b9467f45e100b3d1b6754bb4e09de0b76b14381973f5383da9515', '[\"*\"]', NULL, NULL, '2023-07-13 11:06:43', '2023-07-13 11:06:43'),
(5, 'App\\Models\\User', 1, 'User_Login', '7ea784360d8ac00a939e71f89712369f052a6f53cc25c7d15dbd54fdbba73a07', '[\"*\"]', NULL, NULL, '2023-07-13 11:09:43', '2023-07-13 11:09:43'),
(6, 'App\\Models\\User', 1, 'User_Login', '9e561f29eec218e5b6f10d4715e22354e17d091501e3f5175b9e2afdc2860bab', '[\"*\"]', NULL, NULL, '2023-07-13 11:17:39', '2023-07-13 11:17:39'),
(7, 'App\\Models\\User', 1, 'User_Login', '9289d5a4732b88062e2a97ba367db592046e9d1eb7b97429887f3f26a1aeeeb5', '[\"*\"]', '2023-07-13 11:20:05', NULL, '2023-07-13 11:20:03', '2023-07-13 11:20:05'),
(8, 'App\\Models\\User', 1, 'User_Login', 'a420aef9c990d0efdf493da5274f22aca7ec32cd2c5d74a97662768b4c49b09e', '[\"*\"]', '2023-07-13 11:53:59', NULL, '2023-07-13 11:53:59', '2023-07-13 11:53:59'),
(9, 'App\\Models\\User', 1, 'User_Login', 'd510bcf7d812333055252f44a215b3ab1750ecebbf3e94c293d871fa68eed5f0', '[\"*\"]', '2023-07-13 12:08:46', NULL, '2023-07-13 12:08:45', '2023-07-13 12:08:46'),
(10, 'App\\Models\\User', 1, 'User_Login', 'ca9eb2fd8d6e84eb73e39b4c62ac1927b1f7d1a42e67315cad0b1ca7ec184200', '[\"*\"]', '2023-07-13 12:08:48', NULL, '2023-07-13 12:08:47', '2023-07-13 12:08:48'),
(11, 'App\\Models\\User', 1, 'User_Login', '5030f0410f11cdc7de15752fd3b3d352b8e4ccda80ac7282130f5806a116cc01', '[\"*\"]', '2023-07-13 12:09:42', NULL, '2023-07-13 12:09:41', '2023-07-13 12:09:42'),
(12, 'App\\Models\\User', 1, 'User_Login', '2b6e44f9202a1024b80e02a81c6bb2cec9c9de353002000cf79a1363854c1ef4', '[\"*\"]', '2023-07-13 12:25:32', NULL, '2023-07-13 12:25:31', '2023-07-13 12:25:32'),
(13, 'App\\Models\\User', 1, 'User_Login', 'fd9adf69a7c5fc37ceb30a78bd8390ec593b0733ab7cc7927131313fdf511a01', '[\"*\"]', '2023-07-13 12:26:53', NULL, '2023-07-13 12:26:52', '2023-07-13 12:26:53'),
(14, 'App\\Models\\User', 1, 'User_Login', '7790d59b84b8fd070a6ea3375e63f26f777bf15620004b36bdc660ba84fb168b', '[\"*\"]', '2023-07-13 12:32:22', NULL, '2023-07-13 12:32:21', '2023-07-13 12:32:22'),
(15, 'App\\Models\\User', 1, 'User_Login', '363f536a5aa6516e80f2795499f75e15a40905b63f8b5322dfc8962e0f8d5064', '[\"*\"]', '2023-07-13 12:34:13', NULL, '2023-07-13 12:34:12', '2023-07-13 12:34:13'),
(16, 'App\\Models\\User', 1, 'User_Login', '914fadbd7ee80f109fd2fb5d47cce5a7b6402bedbde92f4a8f6c9b384e8435e1', '[\"*\"]', '2023-07-13 12:34:15', NULL, '2023-07-13 12:34:14', '2023-07-13 12:34:15'),
(17, 'App\\Models\\User', 1, 'User_Login', 'a54a74e7272905809882e613a666594a84fad492939a51f0a1d1a50a052afd22', '[\"*\"]', '2023-07-13 12:34:15', NULL, '2023-07-13 12:34:14', '2023-07-13 12:34:15');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'afif', 'afif@gmail.com', NULL, '$2y$10$MCyeC/7ae0DaqLxThT2zJ.O/RkHpNRgX.87T/ZevJqay25CmoWGve', NULL, '2023-07-12 05:35:00', '2023-07-12 05:35:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
