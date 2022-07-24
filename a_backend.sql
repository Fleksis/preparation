-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 09:52 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_07_23_101556_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1166fa57617636271fce14cce73bab544bed22a67f5f7d642639ce464d8765cb406a6ffda9cd42ef', 1, 1, 'accessToken', '[]', 0, '2022-07-23 14:49:23', '2022-07-23 14:49:23', '2023-07-23 17:49:23'),
('12c6226ef4f01fa60f23020df47d43b56d6a4ed7b6a2ef036e7db27c422ebbbac975706cc4572160', 1, 1, 'accessToken', '[]', 0, '2022-07-23 09:15:26', '2022-07-23 09:15:26', '2023-07-23 12:15:26'),
('1e0df843114cd0f38006f986bf41e859eb0fcfe81b72635cccebfca9a9c6bf422212b745b0427b5a', 1, 1, 'accessToken', '[]', 0, '2022-07-23 10:29:08', '2022-07-23 10:29:08', '2023-07-23 13:29:08'),
('282bc547330b1dff8aa0c7d2c2c08175f350973c4a07a1af3cfdad97fed1c503ad9d9664b8e182c9', 1, 1, 'accessToken', '[]', 0, '2022-07-23 16:31:28', '2022-07-23 16:31:28', '2023-07-23 19:31:28'),
('330417f3b7fb1651accae60fa04a3e48a305d7b9cb698620445905a1bde434fbd07fdaa3abda453e', 1, 1, 'accessToken', '[]', 0, '2022-07-23 09:15:16', '2022-07-23 09:15:16', '2023-07-23 12:15:16'),
('39ea889ef83bd0fe09049ad60e120bfb841678dd250f24ba4d7c82d9e6ce148eb9d7f7f6d7bfd221', 1, 1, 'accessToken', '[]', 0, '2022-07-24 11:40:55', '2022-07-24 11:40:55', '2023-07-24 14:40:55'),
('4575049aff844f811403dcc9a484dac9fdeea615953affe899ddc8ace8b07b0335f7cc2e53d31445', 1, 1, 'accessToken', '[]', 0, '2022-07-23 10:29:39', '2022-07-23 10:29:39', '2023-07-23 13:29:39'),
('57f8b108eee3620e2d6cd4b0ec98bb835f3d8fbfdcdd642aaba508d68742acd3247dbd75085d0648', 1, 1, 'accessToken', '[]', 1, '2022-07-24 11:35:59', '2022-07-24 11:35:59', '2023-07-24 14:35:59'),
('620b6e324924f6be2393d48142c29d8630d2ef6e67b52c617c31300c95f6d1cb147dd7ce27dd5c37', 1, 1, 'accessToken', '[]', 0, '2022-07-23 15:50:49', '2022-07-23 15:50:49', '2023-07-23 18:50:49'),
('69b6f1a915c70dbefd7bc5b77907692e2854f59c79839408d061363e3bf902bcaf381acabc8ba33f', 1, 1, 'accessToken', '[]', 0, '2022-07-23 14:46:59', '2022-07-23 14:46:59', '2023-07-23 17:46:59'),
('716dc76daeb188dfd805b45187394e28cf6d0a4e775b8a78c4d3154629027a64d4f107b442931feb', 1, 1, 'accessToken', '[]', 0, '2022-07-23 14:37:50', '2022-07-23 14:37:50', '2023-07-23 17:37:50'),
('77997409a33d53c7183c547d59dac09c7b115bc2c1ba0a589f3377246b092f6f1c45c759912e1bb9', 1, 1, 'accessToken', '[]', 1, '2022-07-23 16:21:15', '2022-07-23 16:21:15', '2023-07-23 19:21:15'),
('80796b243571ddd42d0c28a4ed0e1558f14c126ebd3ee8d402d5b6128213a6703b938c1d851962c7', 1, 1, 'accessToken', '[]', 0, '2022-07-23 15:15:17', '2022-07-23 15:15:17', '2023-07-23 18:15:17'),
('904de3d77d5621ab682118377d2b508095e8c299c66b0c43bb0adc26362821af0c8d4dc0cc691752', 1, 1, 'accessToken', '[]', 0, '2022-07-23 15:02:34', '2022-07-23 15:02:34', '2023-07-23 18:02:34'),
('9339d831668be7cdd536a6a5e7e0ddefb71f1f3e8967f67caf5309061285f34911e916e0ad4f6898', 1, 1, 'accessToken', '[]', 1, '2022-07-23 16:20:58', '2022-07-23 16:20:58', '2023-07-23 19:20:58'),
('9b36b10dca34e493b9c8e827f5e1652f61f004456149fc6136ba83b0b7ce62b22df1f7c053b59524', 1, 1, 'accessToken', '[]', 0, '2022-07-23 14:52:26', '2022-07-23 14:52:26', '2023-07-23 17:52:26'),
('a67ebdb114a82de2b67da14e0ecc00c052de4546fd9f8531374d199b562d7f96a513e527a7e6ea60', 1, 1, 'accessToken', '[]', 0, '2022-07-23 14:54:36', '2022-07-23 14:54:36', '2023-07-23 17:54:36'),
('b8b312e854e3b2d2bbd0f6f37611eac797224719eaba020250b6025938c7500e39ac98c4af25723f', 1, 1, 'accessToken', '[]', 1, '2022-07-23 16:18:44', '2022-07-23 16:18:44', '2023-07-23 19:18:44'),
('c065190afa78a0be0b6c0872a12fc9d505534d14b34fd258088a7b4a85bed75035fdbf5c8505c08b', 1, 1, 'accessToken', '[]', 1, '2022-07-24 08:57:47', '2022-07-24 08:57:47', '2023-07-24 11:57:47'),
('d1023cb5f3bd38693291919886578ad62ae1f35147e3b9162b6055f6cdf007b9144cc05977127d7c', 1, 1, 'accessToken', '[]', 0, '2022-07-23 14:52:26', '2022-07-23 14:52:26', '2023-07-23 17:52:26'),
('d74ad465169f529dcf9dce18d76aeea733d141d2e0b5674435c2f632f7c3057ba4dab7b5fd1a32e7', 1, 1, 'accessToken', '[]', 0, '2022-07-23 15:17:58', '2022-07-23 15:17:58', '2023-07-23 18:17:58'),
('dad5b22b0012985f9e08f42662aca3f542810108aef416cd0fc5bf63ea5740dcdcc7d27f54155af4', 1, 1, 'accessToken', '[]', 0, '2022-07-23 15:02:18', '2022-07-23 15:02:18', '2023-07-23 18:02:18'),
('dfa6a7a19acb997384c503cae28a3491ed8e90c74c108dd47dc19a867a5b4aa631f8eb422342d86f', 1, 1, 'accessToken', '[]', 1, '2022-07-23 15:50:49', '2022-07-23 15:50:49', '2023-07-23 18:50:49'),
('dfc932f78be974e906aecdc39ceeb840a44a954cecb3aa3ec3ca280860db35d251669e126e36e94c', 1, 1, 'accessToken', '[]', 0, '2022-07-23 14:00:53', '2022-07-23 14:00:53', '2023-07-23 17:00:53'),
('e1603bb4690df021fe68f6707be0cc7573b5087cbb21dcbc76b87588f122617610f4f543599f7527', 1, 1, 'accessToken', '[]', 0, '2022-07-23 15:15:52', '2022-07-23 15:15:52', '2023-07-23 18:15:52'),
('e8455f400d5c3ee8bab8cb25df46cb80b1810a3993815552938fc49b0053c9c355ad4f608d60501f', 1, 1, 'accessToken', '[]', 1, '2022-07-23 10:28:04', '2022-07-23 10:28:04', '2023-07-23 13:28:04'),
('eabc3e47749ebcaebb8b1d784f7f64675025cc313fd90a3968cab3208edbac55b805c622a12fd11c', 1, 1, 'accessToken', '[]', 0, '2022-07-23 15:02:38', '2022-07-23 15:02:38', '2023-07-23 18:02:38');

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'daCPLvphFnuolQ6KEava5COv9tYTwFQ6kTxKAvOq', NULL, 'http://localhost', 1, 0, 0, '2022-07-23 09:15:13', '2022-07-23 09:15:13'),
(2, NULL, 'Laravel Password Grant Client', 'eSwaqgQHhtt0uj9SI7mnnZRFqUhRjjHlQD2OtB8m', 'users', 'http://localhost', 0, 1, 0, '2022-07-23 09:15:13', '2022-07-23 09:15:13');

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
(1, 1, '2022-07-23 09:15:13', '2022-07-23 09:15:13');

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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `created_at`, `updated_at`) VALUES
(52, 'asd14', '2022-07-24 10:56:42', '2022-07-24 10:56:42'),
(53, 'asd15', '2022-07-24 10:56:42', '2022-07-24 10:56:42'),
(54, 'asd16', '2022-07-24 10:56:42', '2022-07-24 10:56:42'),
(55, 'asd17', '2022-07-24 10:56:42', '2022-07-24 10:56:42'),
(56, 'asd18', '2022-07-24 10:56:42', '2022-07-24 10:56:42'),
(57, 'asd19', '2022-07-24 10:56:42', '2022-07-24 10:56:42'),
(58, 'asd1', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(61, 'asd4', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(63, 'asd6', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(64, 'asd7', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(65, 'asd8', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(66, 'asd9', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(67, 'asd10', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(68, 'asd11', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(69, 'asd12', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(70, 'asd13', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(71, 'asd14', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(72, 'asd15', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(73, 'asd16', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(74, 'asd17', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(75, 'asd18', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(76, 'asd19', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(77, 'asd20', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(78, 'asd21', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(79, 'asd22', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(80, 'asd23', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(81, 'asd24', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(82, 'asd25', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(83, 'asd26', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(84, 'asd27', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(85, 'asd28', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(86, 'asd29', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(87, 'asd30', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(88, 'asd31', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(89, 'asd32', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(90, 'asd33', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(91, 'asd34', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(92, 'asd35', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(93, 'asd36', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(94, 'asd37', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(95, 'asd38', '2022-07-24 11:03:20', '2022-07-24 11:03:20'),
(96, 'asd39', '2022-07-24 11:03:20', '2022-07-24 11:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'asd@asd.com', '2022-07-23 09:13:29', '$2y$10$XhckKgppqvLutnYIvTzcF.MKY6E6QvqWdJp85mKiQlXxXRLUStdUO', 'Y5MRU0Hd3j', '2022-07-23 09:13:29', '2022-07-23 09:13:29');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
