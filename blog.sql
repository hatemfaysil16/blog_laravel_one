-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2021 at 03:55 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_08_160455_create_profile_users', 1),
(5, '2021_07_10_012745_create_posts_table', 1),
(6, '2021_07_10_224106_create_tags_table', 1),
(7, '2021_07_11_154903_post_tag', 2);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `photo`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(12, 2, 'hatem Black Edition', 'is big day', 'uploads/posts/1626027109Implementation3.jpg', 'hatem-black-edition', NULL, '2021-07-11 16:11:49', '2021-07-11 16:12:54'),
(13, 3, 'Easy Polo Black Edition', 'asdsadasdasa dsaad', 'uploads/posts/1626027617funding-programmes-portal-splash04.jpg', 'easy-polo-black-edition', NULL, '2021-07-11 16:20:17', '2021-07-11 16:20:17'),
(15, 4, 'hatem Black Edition s', 'hatem Black Edition shatem Black Edition shatem Black Edition shatem Black Edition shatem Black Edition shatem Black Edition shatem Black Edition shatem Black Edition shatem Black Edition shatem Black Edition shatem Black Edition shatem Black Edition shatem Black Edition shatem Black Edition shatem Black Edition shatem Black Edition shatem Black Edition shatem Black Edition s', 'uploads/posts/1626051589pos 1.png', 'hatem-black-edition-s', NULL, '2021-07-11 22:59:49', '2021-07-11 22:59:49'),
(16, 12, 'sdadasd', 'asddsa', 'uploads/posts/1626266817funding-programmes-portal-splash02.jpg', 'sdadasd', NULL, '2021-07-14 10:46:57', '2021-07-14 10:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 5, '4', NULL, NULL),
(2, 5, '5', NULL, NULL),
(3, 5, '8', NULL, NULL),
(4, 6, '9', NULL, NULL),
(5, 7, '8', NULL, NULL),
(6, 7, '9', NULL, NULL),
(7, 8, '9', NULL, NULL),
(8, 5, '9', NULL, NULL),
(9, 9, '9', NULL, NULL),
(10, 10, '5', NULL, NULL),
(11, 11, '9', NULL, NULL),
(12, 12, '8', NULL, NULL),
(13, 13, '8', NULL, NULL),
(14, 14, '4', NULL, NULL),
(15, 14, '9', NULL, NULL),
(16, 15, '8', NULL, NULL),
(17, 15, '9', NULL, NULL),
(18, 15, '5', NULL, NULL),
(19, 16, '5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile_users`
--

CREATE TABLE `profile_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_users`
--

INSERT INTO `profile_users` (`id`, `province`, `user_id`, `gender`, `bio`, `facebook`, `created_at`, `updated_at`) VALUES
(10, 'Kirkuk', 12, 'Male', 'Hello world', 'https://www.facebook.com', '2021-07-14 10:45:29', '2021-07-14 10:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(4, 'x-big', '2021-07-10 22:12:21', '2021-07-10 22:12:21'),
(5, 'big', '2021-07-11 11:44:20', '2021-07-11 11:44:20'),
(8, 'smail', '2021-07-11 14:04:45', '2021-07-11 14:04:45'),
(9, 'xx-big', '2021-07-11 14:05:01', '2021-07-11 14:05:01'),
(10, 'bigss', '2021-07-14 10:48:28', '2021-07-14 10:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
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
(1, 'Justin D Fultz', 'hatemfaysil16@gmail.com', NULL, '$2y$10$hooks/vn31cogXcvUVvXce0LICSo/C1zKQOhcOiKFU6dwQaq7uFsO', NULL, '2021-07-10 21:50:17', '2021-07-10 21:50:17'),
(7, 'sad@gmail.com', 'sadas@sad.sad', NULL, '$2y$10$niFcUpjpFOy0tAaftsKuvuwL3eOwPJ34439vQvFzexu2WTrZPTbmW', NULL, '2021-07-12 11:07:58', '2021-07-12 11:07:58'),
(12, 'Justin D Fultz', 'hatemfaysil16@yahoo.com', NULL, '$2y$10$FS6S.u1n7BTdvgi8Q6qC3e4rwEczsvHHI61gyA8/Qy2HxHe9FEee2', NULL, '2021-07-14 10:45:24', '2021-07-14 10:45:24');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_users`
--
ALTER TABLE `profile_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `profile_users`
--
ALTER TABLE `profile_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profile_users`
--
ALTER TABLE `profile_users`
  ADD CONSTRAINT `profile_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
