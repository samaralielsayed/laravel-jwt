-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2022 at 05:57 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-jwt`
--

-- --------------------------------------------------------

--
-- Table structure for table `alphabets`
--

CREATE TABLE `alphabets` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alphabets`
--

INSERT INTO `alphabets` (`id`, `name`, `image`) VALUES
(1, 'A a', 'a.jpg'),
(2, 'B b', 'b.jpg'),
(3, 'C c', 'c.jpg'),
(4, 'D d', 'd.jpg'),
(5, 'E e', 'e.jpg'),
(6, 'F f', 'f.jpg'),
(7, 'G g', 'g.jpg'),
(8, 'H h', 'h.jpg'),
(9, 'I i', 'i.jpg'),
(10, 'J j', 'j.jpg'),
(11, 'K k', 'k.jpg'),
(12, 'L l', 'l.jpg'),
(13, 'M m', 'm.jpg'),
(14, 'N n', 'n.jpg'),
(15, 'O o', 'o.jpg'),
(16, 'P p', 'p.jpg'),
(17, 'Q q', 'q.jpg'),
(18, 'R r', 'r.jpg'),
(19, 'S s', 's.jpg'),
(20, 'T t', 't.jpg'),
(21, 'U u', 'u.jpg'),
(22, 'V v', 'v.jpg'),
(23, 'W w', 'w.jpg'),
(24, 'X x', 'x.jpg'),
(25, 'Y y', 'y.jpg'),
(26, 'Z z', 'z.jpg');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `numbers`
--

CREATE TABLE `numbers` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `numbers`
--

INSERT INTO `numbers` (`id`, `name`, `image`) VALUES
(1, '0', '0.jpg'),
(2, '1', '1.jpg'),
(11, '10', '10.jpg'),
(3, '2', '2.jpg'),
(4, '3', '3.jpg'),
(5, '4', '4.jpg'),
(6, '5', '5.jpg'),
(7, '6', '6.jpg'),
(8, '7', '7.jpg'),
(9, '8', '8.jpg'),
(10, '9', '9.jpg');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'samar ali', 'samar@12345', NULL, '$2y$10$F0whWH4mghgPda6u56YD7uE33pn1ulJ90CyS33zu/nq0v/6.rMt9m', NULL, '2022-09-16 21:17:12', '2022-09-16 21:17:12'),
(2, 'samar ali', 'samar@123456', NULL, '$2y$10$aM/PfL7IPOijJve6Kr8jB.X2NGkKGZQ9MyEPZqAKSk.yQ8A39TmiK', NULL, '2022-09-16 21:17:34', '2022-09-16 21:17:34'),
(3, 'samar ali', 'samar@1234564mm', NULL, '$2y$10$WXOABa6MEtoNx29xvVF/O.RWeHeMAlp3WD0dxFjfa0aiKPcACOd5G', NULL, '2022-09-16 21:41:42', '2022-09-16 21:41:42'),
(4, 'samar ali', 'samaffr@1234564', NULL, 'samar12345jj', NULL, '2022-09-16 22:34:42', '2022-09-16 22:34:42'),
(5, 'samar ali', 'samaffr@123456', NULL, 'samar12345jj', NULL, '2022-09-16 23:19:41', '2022-09-16 23:19:41'),
(6, 'samar ali', 'samaffr@12345', NULL, 'samar12345jj', NULL, '2022-09-16 23:20:25', '2022-09-16 23:20:25'),
(7, 'samar ali', 'samaffr@12345p', NULL, 'samar12345jj', NULL, '2022-09-16 23:24:28', '2022-09-16 23:24:28'),
(8, 'samar ali', 'samaffr@12345po', NULL, '$2y$10$KkJgwuMJ6JA.PNPuaPHyu.eu3vES6JFKewjJcljcFlQWPJIa2JIzq', NULL, '2022-09-16 23:26:07', '2022-09-16 23:26:07'),
(9, 'samar ali', 'samaffr@12345pohh', NULL, '$2y$10$8LbDvcjuo7jNTkbsStySj.ls5j6na0fCPmmqqnwQYxxeEPwqOq4a2', NULL, '2022-09-16 23:30:03', '2022-09-16 23:30:03'),
(10, 'samar ali', 'samaffr@12345poh', NULL, '$2y$10$yQ2YYCJsMXX.Y9WqLfQpvu1BtQ2meUw2vrnRuGLHyENzFPspB/Wwe', NULL, '2022-09-16 23:31:13', '2022-09-16 23:31:13'),
(11, 'samar ali', 'samaffr@12345pohk', NULL, '$2y$10$MCiHTfCZW6ffKCm9ixFyoOfe/z5x07O4vTcRWTuuhTK34Kp2HvRGq', NULL, '2022-09-16 23:51:42', '2022-09-16 23:51:42'),
(12, 'samar ali', 'samaffr@12345pohkj', NULL, '$2y$10$XIsrYx05vYsfETzh7ahuYemAUyhWfDKP6eeG5WnJNdC2hURuoTpoe', NULL, '2022-09-16 23:52:07', '2022-09-16 23:52:07'),
(13, 'samar ali', 'samaffr@12345pohkl', NULL, '$2y$10$V6tRYiLSxCu/EjO8hIDAoubtxHJT4RvjTEMAaKwDpZj5EkUTSQvwS', NULL, '2022-09-16 23:52:26', '2022-09-16 23:52:26'),
(14, 'samar ali', 'samaffr@12345pohkll', '2022-09-17 01:07:42', '$2y$10$BjXV5dk44IbT83OOfw.geumMjvTyTC7xNtCvP/1gXwk655FyHp9R6', NULL, '2022-09-17 00:56:17', '2022-09-17 01:07:42'),
(15, 'samar', 'samar@12345kkkk', NULL, '$2y$10$eLOsQ3EEmtbL9aK9.WDtkeb9Snf8oOJZ7.2OUeU/OpbOVzOR7vefe', NULL, '2022-09-17 07:55:51', '2022-09-17 07:55:51'),
(16, 'samar', 'samar@12345kkk', NULL, '$2y$10$sunHH24PEz2Otb8775oQue63/T5ydn8acyegh/JO/7xRIsOPQh2Om', NULL, '2022-09-17 08:23:52', '2022-09-17 08:23:52'),
(17, 'samar', 'samar@12345kk', NULL, '$2y$10$NELHACWloHjasdic0fbf5.ejSS8psoqBqvVo6sL4gTIFv71dQESLG', NULL, '2022-09-17 08:26:32', '2022-09-17 08:26:32'),
(18, 'samar', 'samar@12345kkp', '2022-09-16 22:00:00', '$2y$10$b8/GIPLc95f6Yu2Z7KGrae6AtzjeIgNrTdXC8f.b3iPiPRIwcT0aS', NULL, '2022-09-17 08:38:37', '2022-09-17 08:38:37'),
(19, 'samar', 'samar@12345kkpa', '2022-09-17 12:04:43', '$2y$10$xjtb8IFtO7Kyiy824T6vAeTD4f/n0gEhAiB0MjIvKrTKrHAenE5K.', NULL, '2022-09-17 09:24:49', '2022-09-17 12:04:43'),
(20, 'samar', 'samar@12345kkpar', NULL, '$2y$10$Wwrp9YtAthUwo03yRx7jOO5A3K9.uZlK57H5UneE7oCvd/FLzF7cG', NULL, '2022-09-17 15:21:59', '2022-09-17 15:21:59'),
(21, 'samar', 'samar@12345kkparh', NULL, '$2y$10$2F9NC5cmDERKGumfYF6bXeFSYukzUjGAnrRxFXvGz9cieVchwtpCi', NULL, '2022-09-17 15:24:04', '2022-09-17 15:24:04'),
(22, 'samar', 'samar@12345kkparhااا', NULL, '$2y$10$0XNEy1Ge4VMs7IZtJg3XSe99PEJrKKoIc8TqOHeIC7mZ1VjXU5q9m', NULL, '2022-09-17 15:33:38', '2022-09-17 15:33:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alphabets`
--
ALTER TABLE `alphabets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`image`);

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
-- Indexes for table `numbers`
--
ALTER TABLE `numbers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`image`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alphabets`
--
ALTER TABLE `alphabets`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `numbers`
--
ALTER TABLE `numbers`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=890;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
