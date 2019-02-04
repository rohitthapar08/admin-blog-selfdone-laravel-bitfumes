-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 04, 2019 at 11:33 AM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'raj', 'raj@gmail.com', '$2y$10$WhTEhYiQZXGsjs/gLfMKoOkcVneA96WUa5S3BT/lApT.332Ae3MNW', '212434234324', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'sports', 'sports', '2018-09-03 04:23:30', '2018-09-04 03:54:40'),
(3, 'action', 'action', '2018-09-04 00:11:11', '2018-09-04 03:54:49'),
(4, 'love', 'love', '2018-09-04 00:20:27', '2018-09-04 03:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_posts`
--

INSERT INTO `category_posts` (`post_id`, `category_id`, `created_at`, `updated_at`, `id`) VALUES
(1, 3, '2018-09-04 02:06:28', '2018-09-04 02:06:28', 13),
(3, 3, '2018-09-04 02:30:28', '2018-09-04 02:30:28', 14),
(4, 4, '2018-09-04 02:30:41', '2018-09-04 02:30:41', 15),
(2, 3, '2018-09-04 02:30:45', '2018-09-04 02:30:45', 16),
(7, 1, '2018-09-04 03:54:06', '2018-09-04 03:54:06', 17),
(8, 1, '2018-09-04 03:54:28', '2018-09-04 03:54:28', 18),
(9, 1, '2018-09-04 03:56:37', '2018-09-04 03:56:37', 19),
(10, 1, '2018-09-04 03:57:31', '2018-09-04 03:57:31', 20),
(11, 1, '2018-09-04 04:00:35', '2018-09-04 04:00:35', 21),
(12, 1, '2018-09-04 04:01:09', '2018-09-04 04:01:09', 22),
(13, 1, '2018-09-04 06:40:13', '2018-09-04 06:40:13', 23);

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
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2018_08_30_115652_create_posts_table', 1),
(21, '2018_08_30_120722_create_tags_table', 1),
(22, '2018_08_30_121150_create_categories_table', 1),
(23, '2018_08_30_121259_create_category_posts_table', 1),
(24, '2018_08_30_121505_create_post_tags_table', 1),
(25, '2018_08_30_121605_create_admins_table', 1),
(26, '2018_08_30_121759_create_roles_table', 1),
(27, '2018_08_30_121855_create_admin_roles_table', 1),
(28, '2018_09_17_104656_create_permissions_table', 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `for`, `created_at`, `updated_at`) VALUES
(4, 'Post-create', 'post', '2018-09-17 06:19:16', '2018-09-17 06:19:16'),
(8, 'Post-update', 'post', '2018-09-17 06:19:27', '2018-09-17 06:19:27'),
(9, 'Post-delete', 'post', '2018-09-17 06:19:42', '2018-09-17 06:19:42'),
(10, 'User-create', 'user', '2018-09-17 06:19:54', '2018-09-17 06:19:54'),
(11, 'User-update', 'user', '2018-09-17 06:20:19', '2018-09-17 06:20:19'),
(12, 'User-delete', 'user', '2018-09-17 06:20:31', '2018-09-17 06:20:31'),
(13, 'Post-publish', 'post', '2018-09-17 06:20:55', '2018-09-17 06:20:55'),
(14, 'Tag-CRUD', 'other', '2018-09-17 06:21:32', '2018-09-17 06:21:32'),
(15, 'Category-crud', 'other', '2018-09-17 06:21:50', '2018-09-17 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 8),
(1, 4),
(1, 9),
(4, 9),
(5, 15),
(4, 13),
(1, 14),
(1, 15),
(5, 4),
(5, 8),
(5, 14);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `posted_by` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `like` int(11) DEFAULT NULL,
  `dislike` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `subtitle`, `slug`, `body`, `status`, `posted_by`, `image`, `like`, `dislike`, `created_at`, `updated_at`) VALUES
(1, 'Mitharwal Strikes Gold;', 'Indian shooter', 'Indian shooter', '</p>dsadsdasdsddasdasdasdadasdggads  dsfdfl Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi nesciunt magni optio. Velit id distinctio eos eveniet excepturi! Labore repudiandae est similique, animi vero iure perspiciatis! Blanditiis illo consectetur ratione.', 1, NULL, 'public/5oEH3yJGvhNiFhPW7ndNqusdpAtL08iChQYXQ5DA.png', NULL, NULL, '2018-09-03 02:54:31', '2018-09-09 22:53:58'),
(2, 'Cristiano Ronaldo', 'Egypt forward', 'Egypt forward', 'Mohamed Salah', 1, NULL, NULL, NULL, NULL, '2018-09-03 02:54:31', '2018-09-04 03:57:47'),
(3, 'The Best Men\'s Coach Award', 'Coach Award', 'Coach Award', 'UEFA Champions League final', 1, NULL, NULL, NULL, NULL, '2018-09-04 00:38:45', '2018-09-04 03:58:04'),
(4, 'Belgium goalkeeper Thibaut Courtois', 'Belgium goalkeeper', 'Belgium goalkeeper', 'Festival Hall.', 1, NULL, NULL, NULL, NULL, '2018-09-04 00:48:28', '2018-09-04 03:58:28'),
(7, 'Heavy Rains In North India', 'Heavy Rains', 'Heavy Rains', 'North India', 1, NULL, NULL, NULL, NULL, '2018-09-04 03:54:05', '2018-09-04 03:58:48'),
(8, 'Dengue Spikes in Maharashtra', 'Dengue Spikes', 'Dengue Spikes', 'Dengue Spikes in Maharashtra  Dengue Spikes in Maharashtra', 1, NULL, NULL, NULL, NULL, '2018-09-04 03:54:28', '2018-09-04 03:59:04'),
(9, 'Siddhivinayak Temple Trust Donates Rs 1 Crore', 'Relief Fund', 'Relief Fund', 'Siddhivinayak Temple Trust Donates Rs 1 Crore to CM Relief Fund for Flood-Hit Kerala', 1, NULL, NULL, NULL, NULL, '2018-09-04 03:56:37', '2018-09-04 03:59:13'),
(10, 'Pakistan Female ASF Employee Penalised', 'Pakistan', 'Pakistan', 'Employee Penalised', 1, NULL, NULL, NULL, NULL, '2018-09-04 03:57:31', '2018-09-04 04:09:01'),
(11, 'Potterheads Rejoice!', 'Potterheads', 'Rejoice!', 'Potterheads Rejoice! Potterheads Rejoice!', 1, NULL, NULL, NULL, NULL, '2018-09-04 04:00:35', '2018-09-04 04:09:05'),
(12, 'London: Fire Erupts at Primary School', 'London: Fire Erupts', 'London: Fire Erupts', 'London: Fire Erupts at Primary School in Dagenham, 12 Fire Engines Rushed to Spot', 1, NULL, NULL, NULL, NULL, '2018-09-04 04:01:09', '2018-09-04 04:09:09'),
(13, 'this title is for file upload', 'file-upload', 'file-upload', 'this is very nice', 1, NULL, 'public/2dYRlau6ogreO5XC0T9Da8iRIuW7N3eBHIZYzD1K.png', NULL, NULL, '2018-09-04 06:40:12', '2018-09-04 06:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`, `created_at`, `updated_at`, `id`) VALUES
(3, 1, NULL, NULL, 4),
(4, 1, NULL, NULL, 6),
(7, 1, '2018-09-04 03:54:05', '2018-09-04 03:54:05', 12),
(8, 1, '2018-09-04 03:54:28', '2018-09-04 03:54:28', 13),
(9, 1, '2018-09-04 03:56:37', '2018-09-04 03:56:37', 14),
(10, 1, '2018-09-04 03:57:31', '2018-09-04 03:57:31', 15),
(11, 1, '2018-09-04 04:00:35', '2018-09-04 04:00:35', 16),
(12, 1, '2018-09-04 04:01:09', '2018-09-04 04:01:09', 17),
(2, 3, '2018-09-04 05:01:26', '2018-09-04 05:01:26', 18),
(1, 3, '2018-09-04 05:01:33', '2018-09-04 05:01:33', 19),
(13, 1, '2018-09-04 06:40:13', '2018-09-04 06:40:13', 20);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Editor', '2018-09-17 00:59:38', '2018-09-17 01:22:30'),
(4, 'Publisher', '2018-09-17 01:22:20', '2018-09-17 01:22:20'),
(5, 'Writer', '2018-09-17 01:22:40', '2018-09-17 01:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Series', 'Series', '2018-08-31 04:53:40', '2018-09-04 03:55:31'),
(2, 'Shows', 'Shows', '2018-09-03 05:48:57', '2018-09-04 03:55:40'),
(3, 'Epissode', 'Epissode', '2018-09-04 00:20:47', '2018-09-04 03:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rohit', 'rohit@gmail.com', '$2y$10$WhTEhYiQZXGsjs/gLfMKoOkcVneA96WUa5S3BT/lApT.332Ae3MNW', '4rNcmdssOUgqJ1taCk1c5psFQSFvvWA8xR2mMTy0PSkXjvOUpieHqzGsN7W9', '2018-09-04 23:10:00', '2018-09-04 23:10:00');

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
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_posts_post_id_index` (`post_id`),
  ADD KEY `category_posts_category_id_index` (`category_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tags_post_id_index` (`post_id`),
  ADD KEY `post_tags_tag_id_index` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_posts`
--
ALTER TABLE `category_posts`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
