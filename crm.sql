-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 10:22 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL DEFAULT uuid(),
  `id_number` bigint(20) NOT NULL,
  `dob` date NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `uuid`, `id_number`, `dob`, `first_name`, `last_name`, `email`, `phone`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '750d35a0-8ead-11ee-9f90-0045e2149af2', 12345678910, '2023-10-11', 'Swii', 'Smith', 'smith@smith.com', '1234567899', 'om', '2023-11-29 10:02:39', '2023-11-29 09:50:03', '2023-11-29 10:02:39'),
(2, '1d86a2c7-8eb1-11ee-9f90-0045e2149af2', 123456789, '2023-11-04', 'Joe', 'Smith', 'smith@g.com', '0712345678', 'immmm', '2023-11-29 12:43:31', '2023-11-29 10:16:14', '2023-11-29 12:43:31'),
(3, 'ad473a7f-8ec0-11ee-9f90-0045e2149af2', 9904285800086, '1999-04-28', 'Freddie', 'Murphy', 'f.murphy@randatmail.com', '0785636371', 'completed', NULL, '2023-11-29 12:07:38', '2023-11-30 05:57:17'),
(4, '55fd618d-8f56-11ee-9974-0045e2149af2', 9904134800089, '1999-04-13', 'Sienna', 'Kelly', 's.kelly@randatmail.com', '0712345678', 'open', NULL, '2023-11-30 05:59:06', '2023-11-30 05:59:06'),
(5, 'a5851934-8f56-11ee-9974-0045e2149af2', 9804055800086, '1998-04-05', 'Adelaide', 'Hamilton', 'a.hamilton@randatmail.com', '0712345677', 'in process', NULL, '2023-11-30 06:01:20', '2023-11-30 06:03:01'),
(6, '32a6cd15-8f57-11ee-9974-0045e2149af2', 9804054800087, '1998-04-05', 'Leonardo', 'Mason', 'l.mason@randatmail.com', '0712745786', 'completed', NULL, '2023-11-30 06:05:16', '2023-11-30 06:05:16'),
(7, '9ce7ab84-8f57-11ee-9974-0045e2149af2', 9704054800089, '1997-04-05', 'Natalie', 'Martin', 'n.martin@randatmail.com', '0112345677', 'in process', NULL, '2023-11-30 06:08:15', '2023-11-30 06:08:15'),
(8, 'f6dd284f-8f57-11ee-9974-0045e2149af2', 9304054800088, '1993-04-05', 'Maria', 'Wilson', 'wilson@randatmail.com', '0765786855', 'open', NULL, '2023-11-30 06:10:46', '2023-11-30 06:10:46'),
(9, '4228949e-8f58-11ee-9974-0045e2149af2', 9303085800083, '1993-03-08', 'Alexander', 'Hill', 'hill@randatmail.com', '0635234741', 'open', NULL, '2023-11-30 06:12:52', '2023-11-30 06:12:52'),
(10, 'c244ce65-8f58-11ee-9974-0045e2149af2', 9206085800088, '1992-06-08', 'Leonardo', 'Lloyd', 'l.lloyd@randatmail.com', '0727457014', 'in process', NULL, '2023-11-30 06:16:27', '2023-11-30 06:16:27'),
(11, '18e5e45f-8f59-11ee-9974-0045e2149af2', 9406085800084, '1994-06-08', 'Brooke', 'Hawkins', 'b.hawkins@randatmail.com', '0727112014', 'completed', NULL, '2023-11-30 06:18:52', '2023-11-30 06:18:52'),
(12, '69a59b21-8f59-11ee-9974-0045e2149af2', 9206125800080, '1992-06-12', 'Clark', 'Higgins', 'higgins@randatmail.com', '0827989778', 'in process', NULL, '2023-11-30 06:21:08', '2023-11-30 06:21:08'),
(13, '74d24d04-8f5d-11ee-9974-0045e2149af2', 9005125800086, '1990-05-12', 'Arnold', 'Smith', 'smith@randatmail.com', '0711575767', 'open', NULL, '2023-11-30 06:50:04', '2023-11-30 06:50:04'),
(14, 'c55c9237-8f5d-11ee-9974-0045e2149af2', 9610034800083, '1996-10-03', 'Naomi', 'Parker', 'parker@randatmail.com', '0772566010', 'in process', NULL, '2023-11-30 06:52:20', '2023-11-30 06:52:20'),
(15, '8acea8b7-8f5e-11ee-9974-0045e2149af2', 9406035800085, '1994-06-03', 'Martin', 'Crawford', 'rawford@randatmail.com', '0627112014', 'in process', NULL, '2023-11-30 06:57:51', '2023-11-30 06:57:51'),
(16, '19f73edb-8f5f-11ee-9974-0045e2149af2', 9806114800080, '1998-06-11', 'Brooke', 'Joshua', 'joshiuua@hotmail.com', '0667112014', 'open', NULL, '2023-11-30 07:01:51', '2023-11-30 07:01:51'),
(17, '5696f4ca-8f5f-11ee-9974-0045e2149af2', 9108115800080, '1991-08-11', 'Richardson', 'Zuma', 'zuma@gmail.com', '0812345678', 'in process', NULL, '2023-11-30 07:03:33', '2023-11-30 07:03:33'),
(18, '9f69ad62-8f5f-11ee-9974-0045e2149af2', 8904025800082, '1989-04-02', 'Ryan', 'Joens', 'joensry@hotmail.com', '0821495902', 'in process', NULL, '2023-11-30 07:05:35', '2023-11-30 07:05:35'),
(19, 'dc0daa34-8f5f-11ee-9974-0045e2149af2', 9509074800088, '1995-09-07', 'Aida', 'Richardson', 'richardson@randatmail.com', '0734567891', 'in process', NULL, '2023-11-30 07:07:17', '2023-11-30 07:07:17'),
(20, '2579fe53-8f60-11ee-9974-0045e2149af2', 9507024800083, '1995-07-08', 'Caroline', 'Zwane', 'caroline112@gmail.com', '0632345677', 'completed', NULL, '2023-11-30 07:09:20', '2023-11-30 07:09:20'),
(21, '762069bc-8f60-11ee-9974-0045e2149af2', 9210075800082, '1992-10-07', 'Alberta', 'Ferguson', 'ferguson@randatmail.com', '0625948451', 'in process', NULL, '2023-11-30 07:11:35', '2023-11-30 07:11:35'),
(22, 'c539c375-8f60-11ee-9974-0045e2149af2', 9406124800087, '1994-06-12', 'Alissa', 'Morrison', 'morrison@randatmail.com', '0775245023', 'completed', NULL, '2023-11-30 07:13:48', '2023-11-30 07:13:48');

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
(25, '2014_10_12_000000_create_users_table', 1),
(26, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(27, '2014_10_12_100000_create_password_resets_table', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(30, '2023_11_27_142702_create_clients_table', 1);

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
(1, 'admin', 'admin@artfundi.tech', NULL, '$2y$12$njHHCjujVTS2fZlH9TQgouFNZvkp79wdBAerJo3mISI7LaIrA6jC.', NULL, '2023-11-29 10:05:08', '2023-11-29 10:05:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_id_number_unique` (`id_number`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
