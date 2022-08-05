-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Agu 2022 pada 01.56
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freasefin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `advantage_service`
--

CREATE TABLE `advantage_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `advantage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `advantage_service`
--

INSERT INTO `advantage_service` (`id`, `service_id`, `advantage`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'murah', NULL, '2022-07-25 01:19:40', '2022-07-25 01:19:40'),
(2, 1, 'murah', NULL, '2022-07-25 01:19:40', '2022-07-25 01:19:40'),
(3, 1, 'murah', NULL, '2022-07-25 01:19:40', '2022-07-25 01:19:40'),
(4, 1, 'murah', NULL, '2022-07-25 01:19:40', '2022-07-25 01:19:40'),
(5, 2, '1', NULL, '2022-07-26 08:13:51', '2022-07-26 08:13:51'),
(6, 2, '2', NULL, '2022-07-26 08:13:51', '2022-07-26 08:13:51'),
(7, 2, '3', NULL, '2022-07-26 08:13:51', '2022-07-26 08:13:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `advantage_user`
--

CREATE TABLE `advantage_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `advantage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `advantage_user`
--

INSERT INTO `advantage_user` (`id`, `service_id`, `advantage`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'nyaman', NULL, '2022-07-25 01:19:40', '2022-07-25 01:19:40'),
(2, 1, 'Clean data Copy paste Convert data Fix format', NULL, '2022-07-25 01:19:40', '2022-07-25 01:19:40'),
(3, 1, 'nyaman', NULL, '2022-07-25 01:19:40', '2022-07-25 01:19:40'),
(4, 2, '1', NULL, '2022-07-26 08:13:51', '2022-07-26 08:13:51'),
(5, 2, '2', NULL, '2022-07-26 08:13:51', '2022-07-26 08:13:51'),
(6, 2, '3', NULL, '2022-07-26 08:13:51', '2022-07-26 08:13:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_user`
--

CREATE TABLE `detail_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED DEFAULT NULL,
  `photo` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_rekening` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_pemilik_rek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_user`
--

INSERT INTO `detail_user` (`id`, `users_id`, `photo`, `role`, `contact_number`, `biography`, `no_rekening`, `nama_pemilik_rek`, `bank`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '', 'Website Developer', '', '', NULL, NULL, NULL, NULL, '2022-07-25 01:16:48', '2022-07-25 01:16:48'),
(2, 2, '', 'UI Designer', '', '', NULL, NULL, NULL, NULL, '2022-07-25 01:16:48', '2022-07-25 01:16:48'),
(3, 4, 'assets/photo/o792roEWe5wkDIPy3pTY6Vk0n4UijNph6HpW79kL.jpg', 'IT Support', '62825520745875', 'aku adalah sesuatu', '1234567890', 'faishol susilo', 'BRI', NULL, '2022-07-25 01:17:59', '2022-07-25 01:21:24'),
(4, 5, 'assets/photo/fEJwA3EsN6drfYo8XVV7BZ0uCzERe6NmRO3tNccj.jpg', 'it support', '6243217788900', 'aku adalah', '1234567890', 'udin', 'CIMBNIAGA', NULL, '2022-07-25 01:22:07', '2022-07-25 01:33:44'),
(5, 6, 'assets/photo/de75FI3ZB6REIClyBvfMacr7exY5m3bamHWWdyw0.jpg', 'IT support', '628552975678', 'aku adalah', '9000291901009', 'asep', 'BRI', NULL, '2022-07-25 01:37:01', '2022-07-26 08:16:50'),
(6, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 08:44:45', '2022-07-26 08:44:45'),
(7, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31 23:36:24', '2022-07-31 23:36:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `experience_user`
--

CREATE TABLE `experience_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `detail_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `experience_user`
--

INSERT INTO `experience_user` (`id`, `detail_user_id`, `experience`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, '1', NULL, '2022-07-25 01:21:24', '2022-07-25 01:21:24'),
(2, 3, '2', NULL, '2022-07-25 01:21:24', '2022-07-25 01:21:24'),
(3, 3, '3', NULL, '2022-07-25 01:21:24', '2022-07-25 01:21:24'),
(4, 4, '1', NULL, '2022-07-25 01:26:56', '2022-07-25 01:26:56'),
(5, 4, '2', NULL, '2022-07-25 01:26:57', '2022-07-25 01:26:57'),
(6, 4, '3', NULL, '2022-07-25 01:26:57', '2022-07-25 01:26:57'),
(7, 5, '1', NULL, '2022-07-26 08:16:50', '2022-07-26 08:16:50'),
(8, 5, '2', NULL, '2022-07-26 08:16:50', '2022-07-26 08:16:50'),
(9, 5, '3', NULL, '2022-07-26 08:16:50', '2022-07-26 08:16:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2022_06_03_033845_create_sessions_table', 1),
(10, '2022_06_03_040128_create_detail_user_table', 1),
(11, '2022_06_03_041204_create_experience_user_table', 1),
(12, '2022_06_03_042114_create_service_table', 1),
(13, '2022_06_03_042145_create_advantage_user_table', 1),
(14, '2022_06_03_042217_create_tagline_table', 1),
(15, '2022_06_03_042239_create_advantage_service_table', 1),
(16, '2022_06_03_042302_create_thumbnail_service_table', 1),
(17, '2022_06_03_044414_create_order_table', 1),
(18, '2022_06_03_044450_create_order_status_table', 1),
(19, '2022_06_03_053721_add_foreign_keys_detail_user', 1),
(20, '2022_06_03_053931_add_foreign_keys_experience_user', 1),
(21, '2022_06_03_055448_add_foreign_keys_service', 1),
(22, '2022_06_03_061646_add_foreign_keys_advantage_user', 1),
(23, '2022_06_03_061707_add_foreign_keys_tagline', 1),
(24, '2022_06_03_061928_add_foreign_keys_advantage_service', 1),
(25, '2022_06_03_062002_add_foreign_keys_thumbnail_service', 1),
(26, '2022_06_03_062804_add_foreign_keys_order', 1),
(27, '2022_07_07_134011_tb_tansaksi', 1),
(28, '2022_07_16_043804_tb_konfirmasi', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `freelancer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired` date DEFAULT NULL,
  `order_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order`
--

INSERT INTO `order` (`id`, `buyer_id`, `freelancer_id`, `service_id`, `file`, `note`, `expired`, `order_status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 5, 4, 1, 'assets/order/attachment/vxC8XBUhfTRJxXWeaXJzSZypI5rN7V4Cohe4May9.zip', 'Pesan Sekarang', '2022-08-01', 1, NULL, '2022-07-25 01:22:56', '2022-07-25 01:48:28'),
(2, 6, 4, 1, NULL, NULL, '2022-08-01', 2, NULL, '2022-07-25 01:37:22', '2022-07-25 01:42:45'),
(3, 6, 5, 2, NULL, NULL, '2022-08-05', 4, NULL, '2022-07-26 08:14:31', '2022-07-26 08:14:31'),
(4, 4, 5, 2, NULL, NULL, '2022-08-05', 4, NULL, '2022-07-26 08:21:27', '2022-07-26 08:21:27'),
(5, 7, 4, 1, NULL, NULL, '2022-08-02', 4, NULL, '2022-07-26 08:44:58', '2022-07-26 08:44:58'),
(6, 7, 4, 1, NULL, NULL, '2022-08-08', 4, NULL, '2022-07-31 23:30:09', '2022-07-31 23:30:09'),
(7, 7, 5, 2, NULL, NULL, '2022-08-11', 4, NULL, '2022-07-31 23:32:10', '2022-07-31 23:32:10'),
(8, 8, 4, 1, NULL, NULL, '2022-08-08', 4, NULL, '2022-07-31 23:36:42', '2022-07-31 23:36:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_status`
--

CREATE TABLE `order_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Approved', NULL, '2022-07-25 01:16:48', '2022-07-25 01:16:48'),
(2, 'Progress', NULL, '2022-07-25 01:16:48', '2022-07-25 01:16:48'),
(3, 'Rejected', NULL, '2022-07-25 01:16:48', '2022-07-25 01:16:48'),
(4, 'Waiting', NULL, '2022-07-25 01:16:48', '2022-07-25 01:16:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `service`
--

CREATE TABLE `service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time` int(11) DEFAULT NULL,
  `revision_limit` int(11) DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `service`
--

INSERT INTO `service` (`id`, `users_id`, `title`, `description`, `delivery_time`, `revision_limit`, `price`, `note`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 4, 'Website Online', 'jual website jual websitejual websitejual websitejual websitejual websitejual websitejual websitejual websitejual websitejual website', 7, 1, '100000', 'Pesan Sekarang', NULL, '2022-07-25 01:19:40', '2022-07-25 01:19:40'),
(2, 5, 'aku adalah', 'jual website jual websitejual websitejual websitejual websitejual websitejual websitejual websitejual websitejual websitejual website', 10, 1, '100000', 'bismilah', NULL, '2022-07-26 08:13:51', '2022-07-26 08:13:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
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
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jHzaX5Vy7xngUfx65TFCvUf9tGHtlnf2YKF38yId', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVjIxWTN4OFBRcGQ2aXNCdEI2eG9tTHl3QTBWTmJaNDZDWnJuUWN0MCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxfYm9va2luZy84Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODt9', 1659335824),
('lyz240xtwevjSf4wmDjpcJOgfTNgZsGoUwHliGh6', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZUJYZW1NUDdDSEdVUWlPQ0YyZGdsc1UzUTNqVmpwMllGb3ZIMTVRayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1659575043),
('pk6x3KZ1yKIAxotwbBO8WaB97ktWggj9Mveyq33e', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGU3c0ZSVWE5MDczSXM3UXBkNllHTUpDNktlY1FzM3liRHQ5WTdsOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1659334708);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagline`
--

CREATE TABLE `tagline` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tagline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tagline`
--

INSERT INTO `tagline` (`id`, `service_id`, `tagline`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://github.com/abuhaniifa97', NULL, '2022-07-25 01:19:41', '2022-07-25 01:19:41'),
(2, 2, 'https://github.com/faishol17', NULL, '2022-07-26 08:13:51', '2022-07-26 08:13:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_konfirmasi`
--

CREATE TABLE `tb_konfirmasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_order` int(11) DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_transfer` date DEFAULT NULL,
  `unggah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_konfirmasi`
--

INSERT INTO `tb_konfirmasi` (`id`, `id_order`, `note`, `tgl_transfer`, `unggah`, `created_at`, `updated_at`) VALUES
(1, 1, 'sudah saya transfer', '2022-07-25', '112.jpg', '2022-07-25 03:16:38', '2022-07-25 03:16:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_buyer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_report` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `id_buyer`, `id_order`, `status`, `detail_report`, `created_at`, `updated_at`) VALUES
(1, '5', '1', 'settlement', 'a:12:{s:11:\"status_code\";s:3:\"200\";s:14:\"status_message\";s:29:\"Success, transaction is found\";s:14:\"transaction_id\";s:36:\"de508cae-47a6-4616-873d-364bb164a20d\";s:8:\"order_id\";s:14:\"220725082301-1\";s:12:\"gross_amount\";s:9:\"104000.00\";s:12:\"payment_type\";s:13:\"bank_transfer\";s:16:\"transaction_time\";s:19:\"2022-07-25 15:23:08\";s:18:\"transaction_status\";s:10:\"settlement\";s:10:\"va_numbers\";a:1:{i:0;a:2:{s:4:\"bank\";s:3:\"bri\";s:9:\"va_number\";s:18:\"757350378809117490\";}}s:12:\"fraud_status\";s:6:\"accept\";s:7:\"pdf_url\";s:94:\"https://app.sandbox.midtrans.com/snap/v1/transactions/c4a40ecf-d18e-4f1c-87ca-95c3a5e6711a/pdf\";s:19:\"finish_redirect_url\";s:88:\"http://example.com?order_id=220725082301-1&status_code=200&transaction_status=settlement\";}', '2022-07-25 01:23:44', '2022-07-25 01:23:44'),
(2, '6', '2', 'settlement', 'a:13:{s:11:\"status_code\";s:3:\"200\";s:14:\"status_message\";s:29:\"Success, transaction is found\";s:14:\"transaction_id\";s:36:\"befd513d-0142-40b2-a1ea-1734d4d56e73\";s:8:\"order_id\";s:14:\"220725083728-2\";s:12:\"gross_amount\";s:9:\"104000.00\";s:12:\"payment_type\";s:13:\"bank_transfer\";s:16:\"transaction_time\";s:19:\"2022-07-25 15:37:55\";s:18:\"transaction_status\";s:10:\"settlement\";s:10:\"va_numbers\";a:1:{i:0;a:2:{s:4:\"bank\";s:3:\"bca\";s:9:\"va_number\";s:11:\"75735384785\";}}s:12:\"fraud_status\";s:6:\"accept\";s:13:\"bca_va_number\";s:11:\"75735384785\";s:7:\"pdf_url\";s:94:\"https://app.sandbox.midtrans.com/snap/v1/transactions/154a4f13-1a1f-4b1e-92d4-754f47939720/pdf\";s:19:\"finish_redirect_url\";s:88:\"http://example.com?order_id=220725083728-2&status_code=200&transaction_status=settlement\";}', '2022-07-25 01:38:32', '2022-07-25 01:38:32'),
(3, '6', '3', 'settlement', 'a:13:{s:11:\"status_code\";s:3:\"200\";s:14:\"status_message\";s:29:\"Success, transaction is found\";s:14:\"transaction_id\";s:36:\"095907fc-a7a6-4201-bc9a-5296b1906832\";s:8:\"order_id\";s:14:\"220726031435-3\";s:12:\"gross_amount\";s:9:\"104000.00\";s:12:\"payment_type\";s:13:\"bank_transfer\";s:16:\"transaction_time\";s:19:\"2022-07-26 22:14:42\";s:18:\"transaction_status\";s:10:\"settlement\";s:10:\"va_numbers\";a:1:{i:0;a:2:{s:4:\"bank\";s:3:\"bca\";s:9:\"va_number\";s:11:\"75735713742\";}}s:12:\"fraud_status\";s:6:\"accept\";s:13:\"bca_va_number\";s:11:\"75735713742\";s:7:\"pdf_url\";s:94:\"https://app.sandbox.midtrans.com/snap/v1/transactions/96951660-1c1e-4ae9-b76e-7a5927dbe296/pdf\";s:19:\"finish_redirect_url\";s:88:\"http://example.com?order_id=220726031435-3&status_code=200&transaction_status=settlement\";}', '2022-07-26 08:15:21', '2022-07-26 08:15:21'),
(4, '4', '4', 'settlement', 'a:13:{s:11:\"status_code\";s:3:\"200\";s:14:\"status_message\";s:29:\"Success, transaction is found\";s:14:\"transaction_id\";s:36:\"2fda7c13-5041-4351-99da-978e51ae6e46\";s:8:\"order_id\";s:14:\"220726032141-4\";s:12:\"gross_amount\";s:9:\"104000.00\";s:12:\"payment_type\";s:13:\"bank_transfer\";s:16:\"transaction_time\";s:19:\"2022-07-26 22:21:54\";s:18:\"transaction_status\";s:10:\"settlement\";s:10:\"va_numbers\";a:1:{i:0;a:2:{s:4:\"bank\";s:3:\"bca\";s:9:\"va_number\";s:11:\"75735110399\";}}s:12:\"fraud_status\";s:6:\"accept\";s:13:\"bca_va_number\";s:11:\"75735110399\";s:7:\"pdf_url\";s:94:\"https://app.sandbox.midtrans.com/snap/v1/transactions/1bc2b0a6-13d2-43a4-90d8-a60f266d7440/pdf\";s:19:\"finish_redirect_url\";s:88:\"http://example.com?order_id=220726032141-4&status_code=200&transaction_status=settlement\";}', '2022-07-26 08:22:11', '2022-07-26 08:22:11'),
(5, '7', '5', 'pending', 'a:12:{s:11:\"status_code\";s:3:\"201\";s:14:\"status_message\";s:25:\"Transaksi sedang diproses\";s:14:\"transaction_id\";s:36:\"21220a14-5209-41e3-b2ad-8838c39adbef\";s:8:\"order_id\";s:14:\"220726034617-5\";s:12:\"gross_amount\";s:9:\"104000.00\";s:12:\"payment_type\";s:6:\"cstore\";s:16:\"transaction_time\";s:19:\"2022-07-26 22:46:30\";s:18:\"transaction_status\";s:7:\"pending\";s:12:\"fraud_status\";s:6:\"accept\";s:12:\"payment_code\";s:16:\"5381067385900685\";s:7:\"pdf_url\";s:94:\"https://app.sandbox.midtrans.com/snap/v1/transactions/2741abe7-129d-45cc-809f-f3c8e2cbb746/pdf\";s:19:\"finish_redirect_url\";s:85:\"http://example.com?order_id=220726034617-5&status_code=201&transaction_status=pending\";}', '2022-07-26 08:46:14', '2022-07-26 08:46:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 4, 'faishol\'s Team', 1, '2022-07-25 01:17:58', '2022-07-25 01:17:58'),
(2, 5, 'udin\'s Team', 1, '2022-07-25 01:22:07', '2022-07-25 01:22:07'),
(3, 6, 'asep\'s Team', 1, '2022-07-25 01:37:01', '2022-07-25 01:37:01'),
(4, 7, 'borni\'s Team', 1, '2022-07-26 08:44:45', '2022-07-26 08:44:45'),
(5, 8, 'imam\'s Team', 1, '2022-07-31 23:36:23', '2022-07-31 23:36:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `thumbnail_service`
--

CREATE TABLE `thumbnail_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `thumbnail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `thumbnail_service`
--

INSERT INTO `thumbnail_service` (`id`, `service_id`, `thumbnail`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/service/thumbnail/4f3Sdo8ddBkhgJEP2uNTQHSj8QedrkbWkD3jW8NS.jpg', NULL, '2022-07-25 01:19:41', '2022-07-25 01:19:41'),
(2, 2, 'assets/service/thumbnail/i0c2HfmXXr8vo1XxPBlTcwotB2hYE2zMtNseWbzh.jpg', NULL, '2022-07-26 08:13:51', '2022-07-26 08:13:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `user_akses` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `user_akses`, `remember_token`, `current_team_id`, `profile_photo_path`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@mail.com', NULL, '$2y$10$/1xJGzmBVoPXa6Ypl7Bsx.qBBAzPsV3RrgmuzEov9EBTs59LhxJ1a', NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '2022-07-25 01:16:47', '2022-07-25 01:16:47'),
(2, 'Jane Doe', 'jane@mail.com', NULL, '$2y$10$V.sCwnP5hClnSt0m/PGS8O9yiEHZLq35Vj34zujJuXsA.mZgmSX7C', NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '2022-07-25 01:16:47', '2022-07-25 01:16:47'),
(3, 'Admin', 'admin@mail.com', NULL, '$2y$10$IPuUE6JOrOyy/ZM.SIaTP.ofnPmxgJkLPYfa5oIHsM8BtBCYMqQky', NULL, NULL, NULL, 'admin', NULL, NULL, NULL, NULL, '2022-07-25 01:16:47', '2022-07-25 01:16:47'),
(4, 'faishol', 'isol@gmail.com', NULL, '$2y$10$7U/NMRH23eHt9PtYa8ooXem4ih5WyxFwjSD54hpPDwsS94e2Uil6a', NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '2022-07-25 01:17:58', '2022-07-25 01:17:58'),
(5, 'udin', 'udin@gmail.com', NULL, '$2y$10$PMB3/nEhVv2mUJriTyXOHucdP8rYRXD3QPm9vw8Sm60A6nn4XDr.a', NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '2022-07-25 01:22:06', '2022-07-25 01:22:06'),
(6, 'asep', 'asep@gmail.com', NULL, '$2y$10$CKOv6Hm3Unl.ceCOOScimOabYpLp7wYAIVIZ1rSIOPNuqIvsbT1Sy', NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '2022-07-25 01:37:01', '2022-07-25 01:37:01'),
(7, 'borni', 'bornis@gmail.com', NULL, '$2y$10$mBGpCVdIlqkN9pv60DcDdeIY3HHE2l4SvxDmTH6MVma0IjV/6Q8YG', NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '2022-07-26 08:44:45', '2022-07-26 08:44:45'),
(8, 'imam', 'imam@gmail.com', NULL, '$2y$10$ZEvrRTrNWFHPsDrvaPt0g.wvluobZtDV2Pj64VQ3VMXoa/tZD11BS', NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '2022-07-31 23:36:23', '2022-07-31 23:36:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `advantage_service`
--
ALTER TABLE `advantage_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_advantage_service_to_service` (`service_id`);

--
-- Indeks untuk tabel `advantage_user`
--
ALTER TABLE `advantage_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_advantage_user_to_service` (`service_id`);

--
-- Indeks untuk tabel `detail_user`
--
ALTER TABLE `detail_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detail_user_to_users` (`users_id`);

--
-- Indeks untuk tabel `experience_user`
--
ALTER TABLE `experience_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_experience_user_to_detail_user` (`detail_user_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_buyer_to_users` (`buyer_id`),
  ADD KEY `fk_order_freelancer_to_users` (`freelancer_id`),
  ADD KEY `fk_order_to_service` (`service_id`),
  ADD KEY `fk_order_to_order_status` (`order_status_id`);

--
-- Indeks untuk tabel `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service_to_users` (`users_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `tagline`
--
ALTER TABLE `tagline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tagline_to_service` (`service_id`);

--
-- Indeks untuk tabel `tb_konfirmasi`
--
ALTER TABLE `tb_konfirmasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indeks untuk tabel `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indeks untuk tabel `thumbnail_service`
--
ALTER TABLE `thumbnail_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_thumbnail_service_to_service` (`service_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `advantage_service`
--
ALTER TABLE `advantage_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `advantage_user`
--
ALTER TABLE `advantage_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `detail_user`
--
ALTER TABLE `detail_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `experience_user`
--
ALTER TABLE `experience_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `service`
--
ALTER TABLE `service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tagline`
--
ALTER TABLE `tagline`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_konfirmasi`
--
ALTER TABLE `tb_konfirmasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `thumbnail_service`
--
ALTER TABLE `thumbnail_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `advantage_service`
--
ALTER TABLE `advantage_service`
  ADD CONSTRAINT `fk_advantage_service_to_service` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `advantage_user`
--
ALTER TABLE `advantage_user`
  ADD CONSTRAINT `fk_advantage_user_to_service` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_user`
--
ALTER TABLE `detail_user`
  ADD CONSTRAINT `fk_detail_user_to_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `experience_user`
--
ALTER TABLE `experience_user`
  ADD CONSTRAINT `fk_experience_user_to_detail_user` FOREIGN KEY (`detail_user_id`) REFERENCES `detail_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_order_buyer_to_users` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_freelancer_to_users` FOREIGN KEY (`freelancer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_to_order_status` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_to_service` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `fk_service_to_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tagline`
--
ALTER TABLE `tagline`
  ADD CONSTRAINT `fk_tagline_to_service` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `thumbnail_service`
--
ALTER TABLE `thumbnail_service`
  ADD CONSTRAINT `fk_thumbnail_service_to_service` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
