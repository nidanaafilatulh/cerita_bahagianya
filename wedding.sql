-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Feb 07, 2024 at 11:54 AM
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
-- Database: `wedding`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` text NOT NULL,
  `parent_id` text DEFAULT NULL,
  `nama` text NOT NULL,
  `body` text NOT NULL,
  `status` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `parent_id`, `nama`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1, '5', NULL, 'Insan', 'Selamat Mas, Semoga langgeng ', 'hadir', '2023-07-10 05:29:41', '2023-07-10 05:29:41'),
(2, '5', NULL, 'Rena', 'Selamat bang, haha udah ke pelaminan nih, maaf ya gak bisa hadir ', 'Tidak hadir', '2023-07-10 05:30:16', '2023-07-10 05:30:16'),
(3, '5', '2', 'Entitas tak dikenal', 'Oke oke, Kapan nyusul, 😄😄', 'hadir', '2023-07-10 05:31:37', '2023-07-10 05:31:37'),
(4, '10', NULL, 'kosim', 'selamat mas bima ,semoga langgeng', 'hadir', '2023-07-10 06:32:15', '2023-07-10 06:32:15'),
(5, '10', NULL, 'jarwo', 'wihh dah nikah ae', 'hadir', '2023-07-10 06:32:30', '2023-07-10 06:32:30'),
(6, '10', NULL, 'sopo', 'semoga langgeng masssee', 'hadir', '2023-07-10 06:32:41', '2023-07-10 06:32:41'),
(7, '10', NULL, 'puput', 'wih semoga tetap bersama , maaf gak bisa datang', 'tidak', '2023-07-10 06:33:09', '2023-07-10 06:33:09'),
(8, '10', NULL, 'jawir dari korea', 'waduhh', 'hadir', '2023-07-10 06:33:27', '2023-07-10 06:33:27'),
(9, '10', NULL, 'fredrin', 'semoga langgeng kalian', 'hadir', '2023-07-10 06:33:53', '2023-07-10 06:33:53'),
(10, '10', NULL, 'popo', 'selamat ya mas bimaa', 'hadir', '2023-07-10 06:34:06', '2023-07-10 06:34:06'),
(11, '10', NULL, 'dudung', 'gimana ya , gak bisa datang maaf , namun doa terbaik untuk kalian', 'hadir', '2023-07-10 06:34:27', '2023-07-10 06:34:27'),
(12, '10', NULL, 'lani', 'mau dibawain apa nich', 'hadir', '2023-07-10 06:34:48', '2023-07-10 06:34:48'),
(13, '10', NULL, 'deden', 'ok lah siap dateng ', 'hadir', '2023-07-10 06:35:06', '2023-07-10 06:35:06'),
(14, '10', NULL, 'ferdi', 'pasukan siap datang mas , mau apa ?', 'hadir', '2023-07-10 06:35:24', '2023-07-10 06:35:24'),
(15, '1', NULL, 'adik rina', 'Selamt teh rina , semoga bahagia teteh...', 'hadir', '2023-08-06 19:53:24', '2023-08-06 19:53:24');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_29_130148_create_posts_table', 1),
(6, '2023_05_01_012454_create_comments_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` text NOT NULL,
  `title` text NOT NULL,
  `imgCouple` text DEFAULT NULL,
  `coverD` text DEFAULT NULL,
  `coverM` text DEFAULT NULL,
  `landingImageD` text DEFAULT NULL,
  `landingImageM` text DEFAULT NULL,
  `footerImageD` text DEFAULT NULL,
  `footerImageM` text DEFAULT NULL,
  `imgWanita` text DEFAULT NULL,
  `imgPria` text DEFAULT NULL,
  `slideshow` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`slideshow`)),
  `story1_date` text DEFAULT NULL,
  `story1_img` text DEFAULT NULL,
  `story1_text` text DEFAULT NULL,
  `story2_date` text DEFAULT NULL,
  `story2_img` text DEFAULT NULL,
  `story2_text` text DEFAULT NULL,
  `story3_date` text DEFAULT NULL,
  `story3_img` text DEFAULT NULL,
  `story3_text` text DEFAULT NULL,
  `bank` text DEFAULT NULL,
  `norek` text DEFAULT NULL,
  `atasNama` text DEFAULT NULL,
  `musik` text NOT NULL,
  `warna_model` text NOT NULL,
  `model` text NOT NULL,
  `nama_pria` text NOT NULL,
  `slug_nama_pria` text NOT NULL,
  `instagram_pria` text DEFAULT NULL,
  `bapa_pria` text NOT NULL,
  `ibu_pria` text NOT NULL,
  `nama_wanita` text NOT NULL,
  `slug_nama_wanita` text NOT NULL,
  `instagram_wanita` text DEFAULT NULL,
  `bapa_wanita` text NOT NULL,
  `ibu_wanita` text NOT NULL,
  `tempat_akad` text NOT NULL,
  `tanggal_akad` text NOT NULL,
  `jam_akad` text NOT NULL,
  `tempat_resepsi` text NOT NULL,
  `tanggal_resepsi` text NOT NULL,
  `jam_resepsi` text NOT NULL,
  `iframe` text NOT NULL,
  `mengundang` text DEFAULT NULL,
  `linkIg` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `slug`, `title`, `imgCouple`, `coverD`, `coverM`, `landingImageD`, `landingImageM`, `footerImageD`, `footerImageM`, `imgWanita`, `imgPria`, `slideshow`, `story1_date`, `story1_img`, `story1_text`, `story2_date`, `story2_img`, `story2_text`, `story3_date`, `story3_img`, `story3_text`, `bank`, `norek`, `atasNama`, `musik`, `warna_model`, `model`, `nama_pria`, `slug_nama_pria`, `instagram_pria`, `bapa_pria`, `ibu_pria`, `nama_wanita`, `slug_nama_wanita`, `instagram_wanita`, `bapa_wanita`, `ibu_wanita`, `tempat_akad`, `tanggal_akad`, `jam_akad`, `tempat_resepsi`, `tanggal_resepsi`, `jam_resepsi`, `iframe`, `mengundang`, `linkIg`, `created_at`, `updated_at`) VALUES
(1, 'rizaldi-rina', 'The Wedding Of Rizaldi Rina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mp3/TcBeFzaNFQkGzcGWimAesHahkqoPdJKoH5MomqPa.mp3', 'gremy', 'simplify', 'Rizaldi Arifin', 'Izal', 'zallxyz', 'Suryanto Prasetyo', 'Sri Wahyuni', 'Rina Susanti', 'Rina', 'kertas_a4', 'Pribadi Griya', 'Triani Fitriani', 'Desa Konoha, Gernowell, Kabupaten Bandung Barat, Jawa Barat', '2027-12-31', '10:50', 'Desa Konoha, Gernowell, Kabupaten Bandung Barat, Jawa Barat', '2027-12-31', '15:00', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.4341396639575!2d107.60014427424201!3d-6.838440266894359!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e129b9277643%3A0x25b8530421e2245c!2sDesa%20Konoha!5e0!3m2!1sid!2sid!4v1688815045224!5m2!1sid!2sid\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, '', '2023-07-08 04:21:44', '2023-07-08 04:45:38'),
(2, 'dicky-desi', 'The Wedding Of Dicky Desi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mp3/TcBeFzaNFQkGzcGWimAesHahkqoPdJKoH5MomqPa.mp3', 'bream', 'simplify', 'Dicky Firmansyah', 'Dicky', 'kyy_tzy', 'Suryanto Prasetyo', 'Sri Wahyuni', 'Desi Yulianti', 'Desi', 'desi_doang', 'Pribadi Griya', 'Triani Fitriani', 'Desa Konoha, Gernowell, Kabupaten Bandung Barat, Jawa Barat', '2027-12-31', '10:50', 'Desa Konoha, Gernowell, Kabupaten Bandung Barat, Jawa Barat', '2027-12-31', '15:00', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.4341396639575!2d107.60014427424201!3d-6.838440266894359!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e129b9277643%3A0x25b8530421e2245c!2sDesa%20Konoha!5e0!3m2!1sid!2sid!4v1688815045224!5m2!1sid!2sid\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, '', '2023-07-08 04:21:44', '2023-07-08 04:45:38'),
(3, 'yoga-sarah', 'The Wedding Of Yoga Sarah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mp3/TcBeFzaNFQkGzcGWimAesHahkqoPdJKoH5MomqPa.mp3', 'pinky', 'simplify', 'Yoga Kusuma', 'Yoga', 'ogaaaa', 'Suryanto Prasetyo', 'Sri Wahyuni', 'Sarah Anggraini', 'Sarah', 'Ereeen', 'Pribadi Griya', 'Triani Fitriani', 'Desa Konoha, Gernowell, Kabupaten Bandung Barat, Jawa Barat', '2027-12-31', '10:50', 'Desa Konoha, Gernowell, Kabupaten Bandung Barat, Jawa Barat', '2027-12-31', '15:00', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.4341396639575!2d107.60014427424201!3d-6.838440266894359!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e129b9277643%3A0x25b8530421e2245c!2sDesa%20Konoha!5e0!3m2!1sid!2sid!4v1688815045224!5m2!1sid!2sid\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, '', '2023-07-08 04:21:44', '2023-07-08 04:45:38'),
(4, 'rizky-amalia', 'The Wedding Of Rizky Amalia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mp3/TcBeFzaNFQkGzcGWimAesHahkqoPdJKoH5MomqPa.mp3', 'navue', 'simplify', 'Rizky Pratama', 'Rizky', 'ikyyy', 'Suryanto Prasetyo', 'Sri Wahyuni', 'Amalia Fitriani', 'Amalia', 'kishunsiii', 'Pribadi Griya', 'Triani Fitriani', 'Desa Konoha, Gernowell, Kabupaten Bandung Barat, Jawa Barat', '2027-12-31', '10:50', 'Desa Konoha, Gernowell, Kabupaten Bandung Barat, Jawa Barat', '2027-12-31', '15:00', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.4341396639575!2d107.60014427424201!3d-6.838440266894359!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e129b9277643%3A0x25b8530421e2245c!2sDesa%20Konoha!5e0!3m2!1sid!2sid!4v1688815045224!5m2!1sid!2sid\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, '', '2023-07-08 04:21:44', '2023-07-08 04:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_customer` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nama_customer` varchar(255) DEFAULT NULL,
  `jumlah_transaksi` int(11) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_customer`, `id`, `nama_customer`, `jumlah_transaksi`, `tanggal_transaksi`) VALUES
(1, 1001, 'John Doe', 500, '2024-02-06'),
(2, 1002, 'Jane Smith', 750, '2024-02-06'),
(3, 1003, 'Michael Brown', 300, '2024-02-05'),
(1, 1004, 'John Doe', 200, '2024-02-05'),
(2, 1005, 'Jane Smith', 1000, '2024-02-04');

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
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$lqS1sJtEer4a//N8cCWpR.KYhktS5gyvi9h1q6wgbc9dJ9cK1uAS2', NULL, '2023-07-07 06:18:56', '2023-07-07 06:18:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
weddingweddingweddingwedding