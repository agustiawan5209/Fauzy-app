-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 27, 2023 at 07:47 PM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oraclesi_fauzy`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatifs`
--

CREATE TABLE `alternatifs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alternatifs`
--

INSERT INTO `alternatifs` (`id`, `kode`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'A01', 'Alternatif 1', '2022-12-01 09:15:35', '2022-12-01 09:15:35'),
(2, 'A02', 'Alternatif 2', '2022-12-01 09:19:59', '2022-12-01 09:19:59'),
(3, 'A03', 'ALternatif 3', '2022-12-01 09:25:13', '2022-12-01 09:25:13'),
(4, 'A04', 'Alternatif 4', '2022-12-01 09:25:35', '2022-12-01 09:25:35'),
(5, 'A05', 'Alternatif 5', '2022-12-01 09:25:53', '2022-12-01 09:25:53'),
(6, 'A06', 'ALternatif11', '2022-12-01 11:33:07', '2022-12-01 11:33:07');

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
-- Table structure for table `kriterias`
--

CREATE TABLE `kriterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kriterias`
--

INSERT INTO `kriterias` (`id`, `kode`, `name`, `created_at`, `updated_at`) VALUES
(1, 'C01', 'Model', '2022-12-01 09:23:33', '2023-02-20 14:19:21'),
(2, 'C02', 'Ukuran', '2022-12-01 09:23:42', '2023-02-20 14:19:45'),
(3, 'C03', 'Material', '2022-12-01 09:23:53', '2023-02-20 14:20:02'),
(4, 'C04', 'Anggaran', '2022-12-01 09:24:01', '2023-02-20 14:20:31'),
(5, 'C05', 'Furniture', '2022-12-01 09:24:07', '2023-02-20 14:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `lokasis`
--

CREATE TABLE `lokasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alternatif_id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `lokasi` varchar(255) NOT NULL,
  `pemilik` varchar(255) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lokasis`
--

INSERT INTO `lokasis` (`id`, `alternatif_id`, `gambar`, `nama`, `lokasi`, `pemilik`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 1, '208153f6322de1851b094db5ec5733a0.jpg', 'Alternatif 1', 'Lokasi', 'Syarif', 'deksripsi', '2022-12-01 09:15:35', '2022-12-01 15:19:50'),
(2, 2, 'pomegranate-g7262827a5_1920.jpg', 'Alternatif 2', 'Lokasi', '1', '12', '2022-12-01 09:19:59', '2022-12-01 15:21:01'),
(3, 3, 'slide-markisa.jpg', 'ALternatif 3', 'lokasi', 'syarif', 'kafafoahfoah', '2022-12-01 09:25:13', '2022-12-01 15:21:53'),
(4, 4, 'pomegranate-g7262827a5_1920.jpg', 'Alternatif 4', 'lokasi', 'jajat', 'deskripsi', '2022-12-01 09:25:35', '2022-12-01 15:22:29'),
(5, 5, 'slide-avatar-shanai.png', 'Alternatif 5', 'lokasi', 'pemilik', 'aknfafoaef', '2022-12-01 09:25:53', '2022-12-01 15:22:58'),
(6, 6, 'slide-markisa.jpg', 'ALternatif11', '120', 'Kala', 'akjfkafka', '2022-12-01 11:33:07', '2022-12-01 15:23:46');

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
(5, '2022_11_14_174350_create_usahas_table', 1),
(6, '2022_11_14_174702_create_profiles_table', 1),
(7, '2022_11_21_200858_create_kriterias_table', 1),
(8, '2022_11_21_200916_create_alternatifs_table', 1),
(9, '2022_11_23_181050_create_nilai_prefensis_table', 1),
(10, '2022_11_23_182639_create_nilai_bobot_kriterias_table', 1),
(11, '2022_11_24_095145_create_nilai_bobot_alternatifs_table', 1),
(12, '2022_11_27_190213_create_nilai_matrices_table', 1),
(13, '2022_11_29_015526_create_lokasis_table', 1),
(14, '2022_11_30_021127_create_sub_kriterias_table', 1),
(15, '2022_11_30_021133_create_sub_alternatifs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_bobot_alternatifs`
--

CREATE TABLE `nilai_bobot_alternatifs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `kriteria_id` varchar(255) DEFAULT NULL,
  `nilai_banding` int(11) NOT NULL,
  `alternatif1` varchar(255) DEFAULT NULL,
  `alternatif2` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai_bobot_alternatifs`
--

INSERT INTO `nilai_bobot_alternatifs` (`id`, `kode`, `kriteria_id`, `nilai_banding`, `alternatif1`, `alternatif2`, `created_at`, `updated_at`) VALUES
(1, 'NBA01', 'C01', 1, 'A01', 'A01', NULL, NULL),
(2, 'NBA01', 'C01', 2, 'A01', 'A02', NULL, NULL),
(3, 'NBA01', 'C01', 7, 'A02', 'A01', NULL, NULL),
(4, 'NBA01', 'C01', 1, 'A02', 'A02', NULL, NULL),
(5, 'NBA02', 'C02', 1, 'A01', 'A01', NULL, NULL),
(6, 'NBA02', 'C02', 8, 'A01', 'A02', NULL, NULL),
(7, 'NBA02', 'C02', 4, 'A02', 'A01', NULL, NULL),
(8, 'NBA02', 'C02', 1, 'A02', 'A02', NULL, NULL),
(9, 'NBA03', 'C03', 1, 'A01', 'A01', NULL, NULL),
(10, 'NBA03', 'C03', 3, 'A01', 'A02', NULL, NULL),
(11, 'NBA03', 'C03', 3, 'A02', 'A01', NULL, NULL),
(12, 'NBA03', 'C03', 1, 'A02', 'A02', NULL, NULL),
(13, 'NBA04', 'C04', 1, 'A01', 'A01', NULL, NULL),
(14, 'NBA04', 'C04', 9, 'A01', 'A02', NULL, NULL),
(15, 'NBA04', 'C04', 4, 'A02', 'A01', NULL, NULL),
(16, 'NBA04', 'C04', 1, 'A02', 'A02', NULL, NULL),
(17, 'NBA05', 'C05', 1, 'A01', 'A01', NULL, NULL),
(18, 'NBA05', 'C05', 6, 'A01', 'A02', NULL, NULL),
(19, 'NBA05', 'C05', 2, 'A02', 'A01', NULL, NULL),
(20, 'NBA05', 'C05', 1, 'A02', 'A02', NULL, NULL),
(21, 'NBA06', 'C01', 1, 'A01', 'A03', NULL, NULL),
(22, 'NBA06', 'C01', 1, 'A02', 'A03', NULL, NULL),
(23, 'NBA06', 'C01', 2, 'A03', 'A01', NULL, NULL),
(24, 'NBA06', 'C01', 1, 'A03', 'A02', NULL, NULL),
(25, 'NBA06', 'C01', 1, 'A03', 'A03', NULL, NULL),
(26, 'NBA07', 'C02', 6, 'A01', 'A03', NULL, NULL),
(27, 'NBA07', 'C02', 9, 'A02', 'A03', NULL, NULL),
(28, 'NBA07', 'C02', 6, 'A03', 'A01', NULL, NULL),
(29, 'NBA07', 'C02', 7, 'A03', 'A02', NULL, NULL),
(30, 'NBA07', 'C02', 1, 'A03', 'A03', NULL, NULL),
(31, 'NBA08', 'C03', 7, 'A01', 'A03', NULL, NULL),
(32, 'NBA08', 'C03', 2, 'A02', 'A03', NULL, NULL),
(33, 'NBA08', 'C03', 7, 'A03', 'A01', NULL, NULL),
(34, 'NBA08', 'C03', 9, 'A03', 'A02', NULL, NULL),
(35, 'NBA08', 'C03', 1, 'A03', 'A03', NULL, NULL),
(36, 'NBA09', 'C04', 8, 'A01', 'A03', NULL, NULL),
(37, 'NBA09', 'C04', 5, 'A02', 'A03', NULL, NULL),
(38, 'NBA09', 'C04', 4, 'A03', 'A01', NULL, NULL),
(39, 'NBA09', 'C04', 5, 'A03', 'A02', NULL, NULL),
(40, 'NBA09', 'C04', 1, 'A03', 'A03', NULL, NULL),
(41, 'NBA10', 'C05', 7, 'A01', 'A03', NULL, NULL),
(42, 'NBA10', 'C05', 8, 'A02', 'A03', NULL, NULL),
(43, 'NBA10', 'C05', 2, 'A03', 'A01', NULL, NULL),
(44, 'NBA10', 'C05', 5, 'A03', 'A02', NULL, NULL),
(45, 'NBA10', 'C05', 1, 'A03', 'A03', NULL, NULL),
(46, 'NBA11', 'C01', 9, 'A01', 'A04', NULL, NULL),
(47, 'NBA11', 'C01', 7, 'A02', 'A04', NULL, NULL),
(48, 'NBA11', 'C01', 7, 'A03', 'A04', NULL, NULL),
(49, 'NBA11', 'C01', 5, 'A04', 'A01', NULL, NULL),
(50, 'NBA11', 'C01', 6, 'A04', 'A02', NULL, NULL),
(51, 'NBA11', 'C01', 4, 'A04', 'A03', NULL, NULL),
(52, 'NBA11', 'C01', 1, 'A04', 'A04', NULL, NULL),
(53, 'NBA12', 'C02', 8, 'A01', 'A04', NULL, NULL),
(54, 'NBA12', 'C02', 6, 'A02', 'A04', NULL, NULL),
(55, 'NBA12', 'C02', 3, 'A03', 'A04', NULL, NULL),
(56, 'NBA12', 'C02', 2, 'A04', 'A01', NULL, NULL),
(57, 'NBA12', 'C02', 5, 'A04', 'A02', NULL, NULL),
(58, 'NBA12', 'C02', 4, 'A04', 'A03', NULL, NULL),
(59, 'NBA12', 'C02', 1, 'A04', 'A04', NULL, NULL),
(60, 'NBA13', 'C03', 8, 'A01', 'A04', NULL, NULL),
(61, 'NBA13', 'C03', 6, 'A02', 'A04', NULL, NULL),
(62, 'NBA13', 'C03', 4, 'A03', 'A04', NULL, NULL),
(63, 'NBA13', 'C03', 4, 'A04', 'A01', NULL, NULL),
(64, 'NBA13', 'C03', 8, 'A04', 'A02', NULL, NULL),
(65, 'NBA13', 'C03', 8, 'A04', 'A03', NULL, NULL),
(66, 'NBA13', 'C03', 1, 'A04', 'A04', NULL, NULL),
(67, 'NBA14', 'C04', 3, 'A01', 'A04', NULL, '2022-12-01 09:36:53'),
(68, 'NBA14', 'C04', 6, 'A02', 'A04', NULL, NULL),
(69, 'NBA14', 'C04', 3, 'A03', 'A04', NULL, NULL),
(70, 'NBA14', 'C04', 8, 'A04', 'A01', NULL, '2022-12-01 09:36:27'),
(71, 'NBA14', 'C04', 7, 'A04', 'A02', NULL, NULL),
(72, 'NBA14', 'C04', 8, 'A04', 'A03', NULL, NULL),
(73, 'NBA14', 'C04', 1, 'A04', 'A04', NULL, NULL),
(74, 'NBA15', 'C05', 7, 'A01', 'A04', NULL, NULL),
(75, 'NBA15', 'C05', 9, 'A02', 'A04', NULL, NULL),
(76, 'NBA15', 'C05', 9, 'A03', 'A04', NULL, NULL),
(77, 'NBA15', 'C05', 2, 'A04', 'A01', NULL, NULL),
(78, 'NBA15', 'C05', 6, 'A04', 'A02', NULL, NULL),
(79, 'NBA15', 'C05', 2, 'A04', 'A03', NULL, NULL),
(80, 'NBA15', 'C05', 1, 'A04', 'A04', NULL, NULL),
(81, 'NBA16', 'C01', 8, 'A01', 'A05', NULL, NULL),
(82, 'NBA16', 'C01', 8, 'A02', 'A05', NULL, NULL),
(83, 'NBA16', 'C01', 3, 'A03', 'A05', NULL, NULL),
(84, 'NBA16', 'C01', 3, 'A04', 'A05', NULL, NULL),
(85, 'NBA16', 'C01', 2, 'A05', 'A01', NULL, NULL),
(86, 'NBA16', 'C01', 3, 'A05', 'A02', NULL, NULL),
(87, 'NBA16', 'C01', 4, 'A05', 'A03', NULL, NULL),
(88, 'NBA16', 'C01', 9, 'A05', 'A04', NULL, NULL),
(89, 'NBA16', 'C01', 1, 'A05', 'A05', NULL, NULL),
(90, 'NBA17', 'C02', 7, 'A01', 'A05', NULL, NULL),
(91, 'NBA17', 'C02', 8, 'A02', 'A05', NULL, NULL),
(92, 'NBA17', 'C02', 6, 'A03', 'A05', NULL, NULL),
(93, 'NBA17', 'C02', 8, 'A04', 'A05', NULL, NULL),
(94, 'NBA17', 'C02', 6, 'A05', 'A01', NULL, NULL),
(95, 'NBA17', 'C02', 1, 'A05', 'A02', NULL, NULL),
(96, 'NBA17', 'C02', 8, 'A05', 'A03', NULL, NULL),
(97, 'NBA17', 'C02', 3, 'A05', 'A04', NULL, NULL),
(98, 'NBA17', 'C02', 1, 'A05', 'A05', NULL, NULL),
(99, 'NBA18', 'C03', 1, 'A01', 'A05', NULL, NULL),
(100, 'NBA18', 'C03', 4, 'A02', 'A05', NULL, NULL),
(101, 'NBA18', 'C03', 7, 'A03', 'A05', NULL, NULL),
(102, 'NBA18', 'C03', 3, 'A04', 'A05', NULL, NULL),
(103, 'NBA18', 'C03', 9, 'A05', 'A01', NULL, NULL),
(104, 'NBA18', 'C03', 5, 'A05', 'A02', NULL, NULL),
(105, 'NBA18', 'C03', 6, 'A05', 'A03', NULL, NULL),
(106, 'NBA18', 'C03', 9, 'A05', 'A04', NULL, NULL),
(107, 'NBA18', 'C03', 1, 'A05', 'A05', NULL, NULL),
(108, 'NBA19', 'C04', 2, 'A01', 'A05', NULL, NULL),
(109, 'NBA19', 'C04', 2, 'A02', 'A05', NULL, NULL),
(110, 'NBA19', 'C04', 1, 'A03', 'A05', NULL, NULL),
(111, 'NBA19', 'C04', 7, 'A04', 'A05', NULL, NULL),
(112, 'NBA19', 'C04', 9, 'A05', 'A01', NULL, NULL),
(113, 'NBA19', 'C04', 8, 'A05', 'A02', NULL, NULL),
(114, 'NBA19', 'C04', 5, 'A05', 'A03', NULL, NULL),
(115, 'NBA19', 'C04', 2, 'A05', 'A04', NULL, NULL),
(116, 'NBA19', 'C04', 1, 'A05', 'A05', NULL, NULL),
(117, 'NBA20', 'C05', 1, 'A01', 'A05', NULL, NULL),
(118, 'NBA20', 'C05', 8, 'A02', 'A05', NULL, NULL),
(119, 'NBA20', 'C05', 3, 'A03', 'A05', NULL, NULL),
(120, 'NBA20', 'C05', 9, 'A04', 'A05', NULL, NULL),
(121, 'NBA20', 'C05', 8, 'A05', 'A01', NULL, NULL),
(122, 'NBA20', 'C05', 3, 'A05', 'A02', NULL, NULL),
(123, 'NBA20', 'C05', 7, 'A05', 'A03', NULL, NULL),
(124, 'NBA20', 'C05', 4, 'A05', 'A04', NULL, NULL),
(125, 'NBA20', 'C05', 1, 'A05', 'A05', NULL, NULL),
(151, 'NBA22', 'C01', 5, 'A01', 'A06', NULL, NULL),
(152, 'NBA22', 'C01', 7, 'A02', 'A06', NULL, NULL),
(153, 'NBA22', 'C01', 4, 'A03', 'A06', NULL, NULL),
(154, 'NBA22', 'C01', 7, 'A04', 'A06', NULL, NULL),
(155, 'NBA22', 'C01', 2, 'A05', 'A06', NULL, NULL),
(156, 'NBA22', 'C01', 7, 'A06', 'A01', NULL, NULL),
(157, 'NBA22', 'C01', 4, 'A06', 'A02', NULL, NULL),
(158, 'NBA22', 'C01', 8, 'A06', 'A03', NULL, NULL),
(159, 'NBA22', 'C01', 3, 'A06', 'A04', NULL, NULL),
(160, 'NBA22', 'C01', 4, 'A06', 'A05', NULL, NULL),
(161, 'NBA22', 'C01', 1, 'A06', 'A06', NULL, NULL),
(162, 'NBA23', 'C02', 4, 'A01', 'A06', NULL, NULL),
(163, 'NBA23', 'C02', 5, 'A02', 'A06', NULL, NULL),
(164, 'NBA23', 'C02', 9, 'A03', 'A06', NULL, NULL),
(165, 'NBA23', 'C02', 4, 'A04', 'A06', NULL, NULL),
(166, 'NBA23', 'C02', 3, 'A05', 'A06', NULL, NULL),
(167, 'NBA23', 'C02', 8, 'A06', 'A01', NULL, NULL),
(168, 'NBA23', 'C02', 5, 'A06', 'A02', NULL, NULL),
(169, 'NBA23', 'C02', 1, 'A06', 'A03', NULL, NULL),
(170, 'NBA23', 'C02', 7, 'A06', 'A04', NULL, NULL),
(171, 'NBA23', 'C02', 3, 'A06', 'A05', NULL, NULL),
(172, 'NBA23', 'C02', 1, 'A06', 'A06', NULL, NULL),
(173, 'NBA24', 'C03', 6, 'A01', 'A06', NULL, NULL),
(174, 'NBA24', 'C03', 8, 'A02', 'A06', NULL, NULL),
(175, 'NBA24', 'C03', 7, 'A03', 'A06', NULL, NULL),
(176, 'NBA24', 'C03', 7, 'A04', 'A06', NULL, NULL),
(177, 'NBA24', 'C03', 8, 'A05', 'A06', NULL, NULL),
(178, 'NBA24', 'C03', 6, 'A06', 'A01', NULL, NULL),
(179, 'NBA24', 'C03', 3, 'A06', 'A02', NULL, NULL),
(180, 'NBA24', 'C03', 6, 'A06', 'A03', NULL, NULL),
(181, 'NBA24', 'C03', 1, 'A06', 'A04', NULL, NULL),
(182, 'NBA24', 'C03', 4, 'A06', 'A05', NULL, NULL),
(183, 'NBA24', 'C03', 1, 'A06', 'A06', NULL, NULL),
(184, 'NBA25', 'C04', 9, 'A01', 'A06', NULL, NULL),
(185, 'NBA25', 'C04', 1, 'A02', 'A06', NULL, NULL),
(186, 'NBA25', 'C04', 6, 'A03', 'A06', NULL, NULL),
(187, 'NBA25', 'C04', 1, 'A04', 'A06', NULL, NULL),
(188, 'NBA25', 'C04', 4, 'A05', 'A06', NULL, NULL),
(189, 'NBA25', 'C04', 9, 'A06', 'A01', NULL, NULL),
(190, 'NBA25', 'C04', 8, 'A06', 'A02', NULL, NULL),
(191, 'NBA25', 'C04', 3, 'A06', 'A03', NULL, NULL),
(192, 'NBA25', 'C04', 9, 'A06', 'A04', NULL, NULL),
(193, 'NBA25', 'C04', 9, 'A06', 'A05', NULL, NULL),
(194, 'NBA25', 'C04', 1, 'A06', 'A06', NULL, NULL),
(195, 'NBA26', 'C05', 5, 'A01', 'A06', NULL, NULL),
(196, 'NBA26', 'C05', 4, 'A02', 'A06', NULL, NULL),
(197, 'NBA26', 'C05', 6, 'A03', 'A06', NULL, NULL),
(198, 'NBA26', 'C05', 8, 'A04', 'A06', NULL, NULL),
(199, 'NBA26', 'C05', 3, 'A05', 'A06', NULL, NULL),
(200, 'NBA26', 'C05', 9, 'A06', 'A01', NULL, NULL),
(201, 'NBA26', 'C05', 1, 'A06', 'A02', NULL, NULL),
(202, 'NBA26', 'C05', 6, 'A06', 'A03', NULL, NULL),
(203, 'NBA26', 'C05', 9, 'A06', 'A04', NULL, NULL),
(204, 'NBA26', 'C05', 8, 'A06', 'A05', NULL, NULL),
(205, 'NBA26', 'C05', 1, 'A06', 'A06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_bobot_kriterias`
--

CREATE TABLE `nilai_bobot_kriterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nilai_banding` int(11) NOT NULL,
  `kriteria1` varchar(255) DEFAULT NULL,
  `kriteria2` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai_bobot_kriterias`
--

INSERT INTO `nilai_bobot_kriterias` (`id`, `kode`, `nilai_banding`, `kriteria1`, `kriteria2`, `created_at`, `updated_at`) VALUES
(1, 'B01', 1, 'C01', 'C01', NULL, NULL),
(2, 'B02', 2, 'C01', 'C02', NULL, '2022-12-01 14:49:25'),
(3, 'B03', 3, 'C02', 'C01', NULL, '2022-12-01 15:25:39'),
(4, 'B04', 1, 'C02', 'C02', NULL, NULL),
(5, 'B05', 1, 'C01', 'C03', NULL, NULL),
(6, 'B06', 2, 'C02', 'C03', NULL, '2022-12-01 15:26:07'),
(7, 'B07', 1, 'C03', 'C01', NULL, NULL),
(8, 'B08', 3, 'C03', 'C02', NULL, NULL),
(9, 'B09', 1, 'C03', 'C03', NULL, NULL),
(10, 'B10', 2, 'C01', 'C04', NULL, '2022-12-01 15:24:53'),
(11, 'B11', 5, 'C02', 'C04', NULL, '2022-12-01 15:25:51'),
(12, 'B12', 3, 'C03', 'C04', NULL, NULL),
(13, 'B13', 3, 'C04', 'C01', NULL, NULL),
(14, 'B14', 2, 'C04', 'C02', NULL, NULL),
(15, 'B15', 1, 'C04', 'C03', NULL, NULL),
(16, 'B16', 1, 'C04', 'C04', NULL, NULL),
(17, 'B17', 1, 'C01', 'C05', NULL, NULL),
(18, 'B18', 6, 'C02', 'C05', NULL, '2022-12-01 15:26:24'),
(19, 'B19', 1, 'C03', 'C05', NULL, NULL),
(20, 'B20', 6, 'C04', 'C05', NULL, NULL),
(21, 'B21', 1, 'C05', 'C01', NULL, NULL),
(22, 'B22', 7, 'C05', 'C02', NULL, NULL),
(23, 'B23', 1, 'C05', 'C03', NULL, NULL),
(24, 'B24', 1, 'C05', 'C04', NULL, NULL),
(25, 'B25', 1, 'C05', 'C05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_matrices`
--

CREATE TABLE `nilai_matrices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `ranking` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai_matrices`
--

INSERT INTO `nilai_matrices` (`id`, `kode`, `nama`, `data`, `ranking`, `created_at`, `updated_at`) VALUES
(1, 'A01', 'Alternatif 1', '0.156/0.209/0.119/0.111/0.222', '0.158', '2023-02-08 14:20:27', '2023-02-27 13:45:13'),
(2, 'A02', 'Alternatif 2', '0.239/0.206/0.117/0.053/0.215', '0.155', '2023-02-08 14:20:27', '2023-02-27 13:45:13'),
(3, 'A03', 'ALternatif 3', '0.161/0.217/0.194/0.112/0.13', '0.165', '2023-02-08 14:20:27', '2023-02-27 13:45:13'),
(4, 'A04', 'Alternatif 4', '0.141/0.125/0.201/0.188/0.101', '0.157', '2023-02-08 14:20:27', '2023-02-27 13:45:13'),
(5, 'A05', 'Alternatif 5', '0.137/0.097/0.29/0.223/0.197', '0.196', '2023-02-08 14:20:27', '2023-02-27 13:45:13'),
(6, 'A06', 'ALternatif11', '0.166/0.148/0.079/0.312/0.136', '0.17', '2023-02-08 14:20:27', '2023-02-27 13:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_prefensis`
--

CREATE TABLE `nilai_prefensis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai_prefensis`
--

INSERT INTO `nilai_prefensis` (`id`, `kode`, `nama`, `created_at`, `updated_at`) VALUES
(1, '1', 'sangat penting', '2022-11-23 13:41:13', '2022-11-24 00:00:10'),
(2, '2', 'Mendekati sedikit lebih penting', '2022-11-23 13:41:26', '2022-11-23 23:59:54'),
(3, '3', 'Sedikit lebih penting dari', '2022-11-23 13:41:38', '2022-11-24 00:00:25'),
(4, '4', 'Mendekati lebih lebih penting dari', '2022-11-23 13:41:44', '2022-11-24 00:00:35'),
(5, '5', 'Lebih penting dari', '2022-11-24 00:00:47', '2022-11-24 00:00:47'),
(6, '6', 'Mendekati sangat penting dari', '2022-11-24 00:00:58', '2022-11-24 00:00:58'),
(7, '7', 'sangat penting dari', '2022-11-24 00:01:12', '2022-11-24 00:01:12'),
(8, '8', 'Mendekati mutlak dari', '2022-11-24 00:01:23', '2022-11-24 00:01:23'),
(9, '9', 'Mutlak sangat penting dari', '2022-11-24 00:01:36', '2022-11-24 00:01:36');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_alternatifs`
--

CREATE TABLE `sub_alternatifs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alternatif_id` bigint(20) UNSIGNED NOT NULL,
  `kriteria_kode` varchar(255) NOT NULL,
  `sub_kriteria` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_alternatifs`
--

INSERT INTO `sub_alternatifs` (`id`, `alternatif_id`, `kriteria_kode`, `sub_kriteria`, `created_at`, `updated_at`) VALUES
(1, 6, 'C01', '2 x 2', '2022-12-01 11:33:07', '2022-12-01 15:17:42'),
(2, 6, 'C06', '300 M', '2022-12-01 11:33:07', '2022-12-01 15:17:42'),
(3, 1, 'C02', 'Rp. 500.000', '2022-12-01 15:16:08', '2022-12-01 15:16:08'),
(4, 1, 'C03', '250 VA', '2022-12-01 15:16:08', '2022-12-01 15:16:08'),
(5, 1, 'C04', 'ADA', '2022-12-01 15:16:08', '2022-12-01 15:16:08'),
(6, 1, 'C05', 'RENDAH', '2022-12-01 15:16:08', '2022-12-01 15:16:08'),
(7, 1, 'C07', '1', '2022-12-01 15:16:08', '2022-12-01 15:16:08'),
(8, 1, 'C01', '3 x 3', '2022-12-01 15:19:50', '2022-12-01 15:19:50'),
(9, 1, 'C06', '300 M', '2022-12-01 15:19:50', '2022-12-01 15:19:50'),
(10, 2, 'C01', '2 x 2', '2022-12-01 15:21:01', '2022-12-01 15:21:01'),
(11, 2, 'C02', 'Rp. 500.000-1.000.000', '2022-12-01 15:21:01', '2022-12-01 15:21:01'),
(12, 2, 'C03', '450 VA', '2022-12-01 15:21:01', '2022-12-01 15:21:01'),
(13, 2, 'C04', 'TIDAK ADA', '2022-12-01 15:21:01', '2022-12-01 15:21:01'),
(14, 2, 'C05', 'SEDANG', '2022-12-01 15:21:01', '2022-12-01 15:21:01'),
(15, 2, 'C06', '200 M', '2022-12-01 15:21:01', '2022-12-01 15:21:01'),
(16, 2, 'C07', '2', '2022-12-01 15:21:01', '2022-12-01 15:21:01'),
(17, 3, 'C01', '1 x 1', '2022-12-01 15:21:53', '2022-12-01 15:21:53'),
(18, 3, 'C02', 'Rp. 500.000-1.000.000', '2022-12-01 15:21:53', '2022-12-01 15:21:53'),
(19, 3, 'C03', '250 VA', '2022-12-01 15:21:53', '2022-12-01 15:21:53'),
(20, 3, 'C04', 'ADA', '2022-12-01 15:21:53', '2022-12-01 15:21:53'),
(21, 3, 'C05', 'TINGGI', '2022-12-01 15:21:53', '2022-12-01 15:21:53'),
(22, 3, 'C06', '200 M', '2022-12-01 15:21:53', '2022-12-01 15:21:53'),
(23, 3, 'C07', '4', '2022-12-01 15:21:53', '2022-12-01 15:21:53'),
(24, 4, 'C01', '3 x 3', '2022-12-01 15:22:29', '2022-12-01 15:22:29'),
(25, 4, 'C02', 'Rp. 1.000.000-1.500.000', '2022-12-01 15:22:29', '2022-12-01 15:22:29'),
(26, 4, 'C03', '450 VA', '2022-12-01 15:22:29', '2022-12-01 15:22:29'),
(27, 4, 'C04', 'ADA', '2022-12-01 15:22:29', '2022-12-01 15:22:29'),
(28, 4, 'C05', 'SEDANG', '2022-12-01 15:22:29', '2022-12-01 15:22:29'),
(29, 4, 'C06', '400 M', '2022-12-01 15:22:29', '2022-12-01 15:22:29'),
(30, 4, 'C07', '3', '2022-12-01 15:22:29', '2022-12-01 15:22:29'),
(31, 5, 'C01', '2 x 2', '2022-12-01 15:22:58', '2022-12-01 15:22:58'),
(32, 5, 'C02', 'Rp. 500.000-1.000.000', '2022-12-01 15:22:58', '2022-12-01 15:22:58'),
(33, 5, 'C03', '450 VA', '2022-12-01 15:22:58', '2022-12-01 15:22:58'),
(34, 5, 'C04', 'ADA', '2022-12-01 15:22:58', '2022-12-01 15:22:58'),
(35, 5, 'C05', 'SEDANG', '2022-12-01 15:22:58', '2022-12-01 15:22:58'),
(36, 5, 'C06', '100 M', '2022-12-01 15:22:58', '2022-12-01 15:22:58'),
(37, 5, 'C07', '2', '2022-12-01 15:22:58', '2022-12-01 15:22:58'),
(38, 6, 'C01', '1 x 1', '2022-12-01 15:23:46', '2022-12-01 15:23:46'),
(39, 6, 'C02', 'Rp. 500.000', '2022-12-01 15:23:46', '2022-12-01 15:23:46'),
(40, 6, 'C03', '250 VA', '2022-12-01 15:23:46', '2022-12-01 15:23:46'),
(41, 6, 'C04', 'ADA', '2022-12-01 15:23:46', '2022-12-01 15:23:46'),
(42, 6, 'C05', 'RENDAH', '2022-12-01 15:23:46', '2022-12-01 15:23:46'),
(43, 6, 'C06', '100 M', '2022-12-01 15:23:46', '2022-12-01 15:23:46'),
(44, 6, 'C07', '1', '2022-12-01 15:23:46', '2022-12-01 15:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriterias`
--

CREATE TABLE `sub_kriterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_kriterias`
--

INSERT INTO `sub_kriterias` (`id`, `kriteria_id`, `nama`, `created_at`, `updated_at`) VALUES
(5, 2, 'Rp. 500.000', '2022-12-01 12:48:31', '2023-02-20 14:19:45'),
(6, 2, 'Rp. 500.000-1.000.000', '2022-12-01 12:48:31', '2023-02-20 14:19:45'),
(7, 2, 'Rp. 1.000.000-1.500.000', '2022-12-01 12:48:31', '2023-02-20 14:19:45'),
(8, 3, '250 VA', '2022-12-01 12:49:26', '2023-02-20 14:20:02'),
(9, 3, '450 VA', '2022-12-01 12:49:26', '2023-02-20 14:20:02'),
(10, 3, '900 VA', '2022-12-01 12:49:26', '2023-02-20 14:20:02'),
(11, 4, 'ADA', '2022-12-01 12:50:06', '2023-02-20 14:20:52'),
(12, 4, 'TIDAK ADA', '2022-12-01 12:50:06', '2023-02-20 14:20:52'),
(13, 5, 'RENDAH', '2022-12-01 12:50:47', '2023-02-20 14:21:13'),
(14, 5, 'SEDANG', '2022-12-01 12:50:47', '2023-02-20 14:21:13'),
(15, 5, 'TINGGI', '2022-12-01 12:50:47', '2023-02-20 14:21:13'),
(24, 1, '1 x 1', '2022-12-01 14:21:20', '2023-02-20 14:19:21'),
(25, 1, '2 x 2', '2022-12-01 14:21:20', '2023-02-20 14:19:21'),
(26, 1, '3 x 3', '2022-12-01 14:21:20', '2023-02-20 14:19:21'),
(27, 1, 'Classic', '2023-02-20 14:22:39', '2023-02-20 14:22:39'),
(28, 1, 'Minimalis', '2023-02-20 14:22:39', '2023-02-20 14:22:39'),
(29, 1, 'Kontemporer', '2023-02-20 14:22:39', '2023-02-20 14:22:39'),
(30, 1, 'Scandenavia', '2023-02-20 14:22:39', '2023-02-20 14:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `usahas`
--

CREATE TABLE `usahas` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'user', 'user@gmail.com', NULL, '$2y$10$3iLlxa53Zik/.1ZcK0BD5Op9cTWEae7JIIjP8/CyYBpnOc.fqBywu', NULL, '2022-12-01 09:10:43', '2022-12-01 09:10:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatifs`
--
ALTER TABLE `alternatifs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kriterias`
--
ALTER TABLE `kriterias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasis`
--
ALTER TABLE `lokasis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lokasis_alternatif_id_foreign` (`alternatif_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_bobot_alternatifs`
--
ALTER TABLE `nilai_bobot_alternatifs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_bobot_kriterias`
--
ALTER TABLE `nilai_bobot_kriterias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_matrices`
--
ALTER TABLE `nilai_matrices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_prefensis`
--
ALTER TABLE `nilai_prefensis`
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
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_alternatifs`
--
ALTER TABLE `sub_alternatifs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_alternatifs_alternatif_id_foreign` (`alternatif_id`);

--
-- Indexes for table `sub_kriterias`
--
ALTER TABLE `sub_kriterias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_kriterias_kriteria_id_foreign` (`kriteria_id`);

--
-- Indexes for table `usahas`
--
ALTER TABLE `usahas`
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
-- AUTO_INCREMENT for table `alternatifs`
--
ALTER TABLE `alternatifs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kriterias`
--
ALTER TABLE `kriterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lokasis`
--
ALTER TABLE `lokasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nilai_bobot_alternatifs`
--
ALTER TABLE `nilai_bobot_alternatifs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `nilai_bobot_kriterias`
--
ALTER TABLE `nilai_bobot_kriterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `nilai_matrices`
--
ALTER TABLE `nilai_matrices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nilai_prefensis`
--
ALTER TABLE `nilai_prefensis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_alternatifs`
--
ALTER TABLE `sub_alternatifs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `sub_kriterias`
--
ALTER TABLE `sub_kriterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `usahas`
--
ALTER TABLE `usahas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lokasis`
--
ALTER TABLE `lokasis`
  ADD CONSTRAINT `lokasis_alternatif_id_foreign` FOREIGN KEY (`alternatif_id`) REFERENCES `alternatifs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_alternatifs`
--
ALTER TABLE `sub_alternatifs`
  ADD CONSTRAINT `sub_alternatifs_alternatif_id_foreign` FOREIGN KEY (`alternatif_id`) REFERENCES `alternatifs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_kriterias`
--
ALTER TABLE `sub_kriterias`
  ADD CONSTRAINT `sub_kriterias_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriterias` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
