-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 03 Sep 2018 pada 12.32
-- Versi server: 5.7.23
-- Versi PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `subang_smm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `balance_history`
--

CREATE TABLE `balance_history` (
  `id` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `action` enum('Add Balance','Cut Balance') COLLATE utf8_swedish_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `msg` text COLLATE utf8_swedish_ci NOT NULL,
  `date` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `time` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` date NOT NULL,
  `jenis` enum('INFO','WARNING','UPDATE') NOT NULL,
  `warna` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `isi`, `tanggal`, `jenis`, `warna`) VALUES
(1, 'Facebook : Andra Prawira Kusumah', '2018-03-17', 'INFO', 'Blue');

-- --------------------------------------------------------

--
-- Struktur dari tabel `deposits_history`
--

CREATE TABLE `deposits_history` (
  `id` int(10) NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `pengirim` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `get_balance` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `link_confirm` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `method` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `date` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `time` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('Pending','Processing','Error','Success') COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `deposits_history`
--

INSERT INTO `deposits_history` (`id`, `user`, `code`, `quantity`, `pengirim`, `get_balance`, `link_confirm`, `method`, `date`, `time`, `status`) VALUES
(635, 'demo', 'RP-DEPOSIT-nI26ew', '10000', '085323110930', '0', '', 'Telkomsel', '2018-08-27', '20:01:02', 'Error');

-- --------------------------------------------------------

--
-- Struktur dari tabel `deposits_method`
--

CREATE TABLE `deposits_method` (
  `id` int(10) NOT NULL,
  `tipe` enum('Bank','Pulsa') COLLATE utf8_swedish_ci NOT NULL,
  `method` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `rate` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `note` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `deposits_method`
--

INSERT INTO `deposits_method` (`id`, `tipe`, `method`, `rate`, `note`) VALUES
(3, 'Pulsa', 'Telkomsel', 'no rate', '082275385780');

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_topup`
--

CREATE TABLE `history_topup` (
  `id` int(11) NOT NULL,
  `provider` enum('XL','TSEL') CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `jumlah_transfer` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `no_pengirim` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` enum('NO','YES','CANCEL') CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `type` enum('WEB','API','REG') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `history_topup`
--

INSERT INTO `history_topup` (`id`, `provider`, `amount`, `jumlah_transfer`, `username`, `no_pengirim`, `date`, `time`, `status`, `type`) VALUES
(288, 'TSEL', '5000', '5000', 'bogorpedia', '6282112235774', '2018-01-08', '20:44:26', 'YES', 'WEB'),
(287, 'TSEL', '5000', '5000', 'bogorpedia', '6282112235775', '2018-01-08', '20:25:52', 'NO', 'WEB'),
(289, 'TSEL', '99999', '99999', 'demo', '6281385604834', '2018-02-14', '00:48:40', 'NO', 'WEB'),
(290, 'TSEL', '316164', '316164', 'admin', '6289628282', '2018-02-14', '15:17:17', 'NO', 'WEB'),
(291, 'TSEL', '12421', '12421', 'admin', '628232414141', '2018-02-17', '23:41:46', 'NO', 'WEB'),
(292, 'TSEL', '10000', '10000', 'admin', '6281286996517', '2018-02-17', '23:43:09', 'NO', 'WEB'),
(293, 'TSEL', '633232', '633232', 'admin', '626505948', '2018-02-17', '23:45:40', 'NO', 'WEB'),
(294, 'TSEL', '25115', '25115', 'admin', '', '2018-02-17', '23:54:45', 'NO', 'WEB'),
(295, 'TSEL', '10000', '10000', 'admin', '', '2018-02-18', '16:29:14', 'NO', 'WEB'),
(296, 'TSEL', '2166126', '2166126', 'Faizal', '', '2018-02-24', '19:42:31', 'NO', 'WEB'),
(297, 'TSEL', '100000', '100000', 'demo', '62822264747483', '2018-02-26', '20:12:28', 'NO', 'WEB'),
(298, 'TSEL', '10000', '10000', 'demo', '6282225457282', '2018-02-26', '21:58:33', 'NO', 'WEB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `date` date NOT NULL,
  `content` text COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `date`, `content`) VALUES
(1, '2017-12-08', 'Ada Pertanyaan Silahkan Kontak Admin / Developers terdekat :)'),
(2, '2017-12-08', 'Whatsapp : 085711852764'),
(31, '2018-03-15', 'Fitur Pulsa & SosMed WORK 100% Masuk Joss'),
(32, '2018-03-15', 'Di sini Tersedia Fitur Pulsa, SosMed, Voucher Game dan Convert Saldo ke bank :)'),
(33, '2018-03-15', 'Facebook : https://wwww.facebook.com/Regionalstat'),
(34, '2018-03-20', 'Semua Service berjalan dengan lancar silahkan memakai seluruh service yg ada dengan baik ^<>^');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `poid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `service` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `link` text COLLATE utf8_swedish_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `remains` int(10) NOT NULL,
  `start_count` int(10) NOT NULL,
  `price` double NOT NULL,
  `status` enum('Pending','Processing','Error','Partial','Success') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `provider` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `place_from` enum('WEB','API') COLLATE utf8_swedish_ci NOT NULL,
  `refund` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `oid`, `poid`, `user`, `service`, `link`, `quantity`, `remains`, `start_count`, `price`, `status`, `date`, `provider`, `place_from`, `refund`) VALUES
(1, '7143754', '6259070', 'developer', 'Instagram Followers SMMM Promo 6', 'http://instagram.com/rival_290', 1000, 0, 0, 2000, 'Pending', '2018-08-20', 'ILHPEDIA', 'WEB', 0),
(2, '5302256', '', 'developer', 'Instagram Followers Indonesia IRV Aktip [BONUS++] [INSTAN]', 'https://www.instagram.com/dzulfiqor_gaming404/', 1000, 0, 0, 42500, 'Pending', '2018-08-23', 'IRV', 'WEB', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_bank`
--

CREATE TABLE `orders_bank` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `service` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `price` double NOT NULL,
  `phone` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('Pending','Processing','Error','Success','Waiting','In Progress','Completed','Partial','Canceled') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `place_from` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'WEB',
  `refund` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `orders_bank`
--

INSERT INTO `orders_bank` (`id`, `oid`, `user`, `service`, `price`, `phone`, `status`, `date`, `place_from`, `refund`) VALUES
(1, '', 'michael', 'TELKOMSEL 5000', 8000, '082177809657', '', '2018-03-09', 'WEB', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_dm`
--

CREATE TABLE `orders_dm` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `poid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `service` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `nickname` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `user_id` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `zone_id` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `price` double NOT NULL,
  `status` enum('Pending','Processing','Error','Partial','Success') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `provider` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `place_from` enum('WEB','API') COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_line`
--

CREATE TABLE `orders_line` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `service` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `note` text COLLATE utf8_swedish_ci NOT NULL,
  `price` double NOT NULL,
  `status` enum('Pending','Processing','Error','Success') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `place_from` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'WEB'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_pulsa`
--

CREATE TABLE `orders_pulsa` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `service` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `price` double NOT NULL,
  `phone` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('Pending','Processing','Error','Success','Waiting','In Progress','Completed','Partial','Canceled') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `place_from` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'WEB',
  `refund` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_history`
--

CREATE TABLE `order_history` (
  `id` int(10) NOT NULL,
  `order_id` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `poid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `provider` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `buyer` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `service` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `price` int(10) NOT NULL,
  `startcount` int(10) NOT NULL,
  `remains` int(10) NOT NULL,
  `status` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `status_refund` enum('NO','YES') COLLATE utf8_swedish_ci NOT NULL,
  `date` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `time` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan_tsel`
--

CREATE TABLE `pesan_tsel` (
  `id` int(11) NOT NULL,
  `isi` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('UNREAD','READ') NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesan_tsel`
--

INSERT INTO `pesan_tsel` (`id`, `isi`, `status`, `date`) VALUES
(269, 'Anda mendapatkan penambahan pulsa Rp 5000 dari nomor 6282112235774 tgl 2018-01-08. Cek pulsa melalui *888#. Info CS: 188', 'UNREAD', '2018-01-08'),
(270, 'Anda mendapatkan penambahan pulsa Rp 70000 dari nomor 6281385604834 tgl 2018-02-14. Cek pulsa melalui *888#. Info CS: 188', 'UNREAD', '2018-02-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `provider`
--

CREATE TABLE `provider` (
  `id` int(10) NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `api_key` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `provider`
--

INSERT INTO `provider` (`id`, `code`, `link`, `api_key`) VALUES
(1, 'IRV', 'http://irvankede-smm.co.id/api/order', 'm4iUFWs-8VsXp2x-CZ3Rn4B-27cujvT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `provider_pulsa`
--

CREATE TABLE `provider_pulsa` (
  `id` int(10) NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `api_key` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `provider_pulsa`
--

INSERT INTO `provider_pulsa` (`id`, `code`, `link`, `api_key`, `status`) VALUES
(1, '', 'http://ilhpedia.xyz/api_doc_pulsa.php', 'NvoXXSgoprHqJRa5n65s', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` int(10) NOT NULL,
  `sid` int(10) NOT NULL,
  `category` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `service` text COLLATE utf8_swedish_ci NOT NULL,
  `note` text COLLATE utf8_swedish_ci NOT NULL,
  `min` int(10) NOT NULL,
  `max` int(10) NOT NULL,
  `price` double NOT NULL,
  `status` enum('Active','Not active') COLLATE utf8_swedish_ci NOT NULL,
  `pid` int(10) NOT NULL,
  `provider` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `sid`, `category`, `service`, `note`, `min`, `max`, `price`, `status`, `pid`, `provider`) VALUES
(1, 1, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia IRV Aktip [BONUS++] [INSTAN]', '', 100, 2000, 42500, 'Active', 1, 'IRV'),
(2, 2, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers IRV  1', '', 100, 5000, 9999, 'Active', 2, 'IRV'),
(3, 3, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers IRV 2', '', 300, 15000, 11000, 'Active', 3, 'IRV'),
(4, 4, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers IRV 3 [REAL]', '', 200, 10000, 12500, 'Active', 4, 'IRV'),
(5, 5, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers IRV 4', '', 200, 5000, 13100, 'Active', 5, 'IRV'),
(6, 9, 'Instagram Likes', 'Instagram Likes IRV 1', '', 100, 5000, 3750, 'Active', 9, 'IRV'),
(7, 10, 'Instagram Likes', 'Instagram Likes IRV 2 [5K] [INSTANT]', '', 100, 5000, 4300, 'Active', 10, 'IRV'),
(8, 11, 'Instagram Likes', 'Instagram Likes IRV 3 âš¡ï¸ SUPER INSTANT', '', 100, 9000, 4500, 'Active', 11, 'IRV'),
(9, 12, 'Instagram Views', 'Instagram Views IRV 1 [999K] [REAL - INSTANT]', '', 100, 999000, 3199, 'Active', 12, 'IRV'),
(10, 17, 'Instagram Auto Comments / Impressions / Saves', 'Instagram Auto View', '', 20, 1000000, 4500, 'Active', 17, 'IRV'),
(11, 27, 'Youtube Likes / Comments / Favs...', ' Youtube Shares', '', 500, 150000, 37500, 'Active', 27, 'IRV'),
(12, 38, 'SoundCloud', 'SoundCloud Followers R1', '', 20, 1000000, 36500, 'Active', 38, 'IRV'),
(13, 39, 'SoundCloud', 'SoundCloud Likes R1', '', 20, 1000000, 29500, 'Active', 39, 'IRV'),
(14, 40, 'SoundCloud', ' SoundCloud Plays', '', 20, 10000000, 4000, 'Active', 40, 'IRV'),
(15, 42, 'Pinterest', 'Pinterest Followers', '', 20, 1000000000, 44500, 'Active', 42, 'IRV'),
(16, 43, 'Pinterest', 'Pinterest Pin Likes', '', 200, 1000000, 44500, 'Active', 43, 'IRV'),
(17, 44, 'Pinterest', 'Pinterest RePins', '', 20, 1000000, 44500, 'Active', 44, 'IRV'),
(18, 49, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers IRV 11 HOT [INSTANT] (NO REFILL NO REFUND)', '', 100, 6000, 9500, 'Active', 49, 'IRV'),
(19, 54, 'Instagram Likes', 'Instagram Likes IRV 4 [.50K] [REAL - INSTANT]', '', 20, 50000, 5500, 'Active', 54, 'IRV'),
(20, 63, 'Instagram Likes', 'Instagram Likes IRVANKEDE 1 [ New & Best Server ]', '', 100, 15000, 4300, 'Active', 63, 'IRV'),
(21, 107, 'Telegram', ' Telegram Channel Members', '', 100, 25000, 107500, 'Active', 107, 'IRV'),
(22, 108, 'Telegram', 'Telegram Post Views', '', 100, 5000, 71500, 'Active', 108, 'IRV'),
(23, 116, 'Google', 'Google Followers', '', 100, 7000, 114500, 'Active', 116, 'IRV'),
(24, 117, 'Google', 'Google Website +1', '', 50, 5000, 262500, 'Active', 117, 'IRV'),
(25, 118, 'Google', 'Google Post +1', '', 20, 2000, 127500, 'Active', 118, 'IRV'),
(26, 119, 'Google', 'Google Reshares', '', 20, 2000, 137500, 'Active', 119, 'IRV'),
(27, 120, 'Instagram Auto Likes', '80 Auto Likes + Views - 7 Days', '', 1, 1, 35002500, 'Active', 120, 'IRV'),
(28, 121, 'Instagram Auto Likes', ' 	150 Auto Likes + Views - 7 Days', '', 1, 1, 70002500, 'Active', 121, 'IRV'),
(29, 122, 'Instagram Auto Likes', '300 Auto Likes + Views - 7 Days', '', 1, 1, 105002500, 'Active', 122, 'IRV'),
(30, 123, 'Instagram Auto Likes', '600 Auto Likes + Views - 7 Days', '', 1, 1, 175002500, 'Active', 123, 'IRV'),
(31, 124, 'Instagram Auto Likes', ' 	1500 Auto Likes + Views - 7 Days', '', 1, 1, 314002500, 'Active', 124, 'IRV'),
(32, 125, 'Instagram Auto Likes', ' 	80 Auto Likes + Views - 30 Days', '', 1, 1, 140002500, 'Active', 125, 'IRV'),
(33, 126, 'Instagram Auto Likes', '150 Auto Likes + Views - 30 Days', '', 1, 1, 228002500, 'Active', 126, 'IRV'),
(34, 128, 'Instagram Views', 'Instagram Views  [300k Per Day]', '', 100, 999000, 4400, 'Active', 128, 'IRV'),
(35, 163, 'Instagram Auto Likes', '300 Auto Likes + Views - 30 Days', '', 1, 1, 314002500, 'Active', 163, 'IRV'),
(36, 164, 'Instagram Auto Likes', '600 Auto Likes + Views - 30 Days', '', 1, 1, 490002500, 'Active', 164, 'IRV'),
(37, 165, 'Instagram Auto Likes', '1500 Auto Likes + Views - 30 Days', '', 1, 1, 820002500, 'Active', 165, 'IRV'),
(38, 176, 'Instagram Story / Impressions / Saves', 'Instagram Story Views UNLIMITED (USERNAME ONLY) (S1)', '', 50, 10000000, 16500, 'Active', 176, 'IRV'),
(39, 177, 'Instagram Story / Impressions / Saves', 'Instagram Story Views [20k] (USERNAME ONLY) (S2)', '', 100, 20000, 12000, 'Active', 177, 'IRV'),
(40, 178, 'Instagram Story / Impressions / Saves', 'Instagram Impressions [20k] [INSTANT] (S1)', '', 500, 20000, 3500, 'Active', 178, 'IRV'),
(41, 179, 'Instagram Story / Impressions / Saves', 'Instagram Saves [UNLIMITED] [20k/Day - INSTANT]', '', 20, 30000, 18500, 'Active', 179, 'IRV'),
(42, 183, 'Instagram Likes', 'Instagram Likes [70K] [BRAZIL - INSTANT]', '', 20, 70000, 7500, 'Active', 183, 'IRV'),
(43, 186, 'Instagram Likes', 'Instagram Likes [35K] [RUSSIA - INSTANT - HQ]', '', 20, 35000, 7500, 'Active', 186, 'IRV'),
(44, 187, 'Instagram Likes', 'Instagram Likes [3k] [JAPAN - HQ - INSTANT]', '', 20, 3000, 7500, 'Active', 187, 'IRV'),
(45, 197, 'Instagram Auto Comments / Impressions / Saves', 'Instagram Auto Likes (USA - MAX 30K)', '', 20, 30000, 8500, 'Active', 197, 'IRV'),
(46, 201, 'Instagram Auto Comments / Impressions / Saves', 'Instagram Auto Likes (CHINA - MAX 30K)', '', 10, 30000, 9500, 'Active', 201, 'IRV'),
(47, 202, 'Instagram Auto Comments / Impressions / Saves', 'Instagram Auto Likes + Impressions (30k Max)', '', 50, 30000, 8500, 'Active', 202, 'IRV'),
(48, 204, 'Instagram Auto Comments / Impressions / Saves', '	Instagram Auto Views (Fast Speed)', '', 100, 60000, 5500, 'Active', 204, 'IRV'),
(49, 207, 'Instagram Auto Comments / Impressions / Saves', '	Instagram Auto Impressions (MAX UNLIMITED)', '', 20, 1000000, 49500, 'Active', 207, 'IRV'),
(50, 236, 'Facebook Video Views / Live Stream', 'Facebook Live Stream Views [30 Mins Watch]', '', 100, 1000, 322500, 'Active', 236, 'IRV'),
(51, 266, 'Twitter Views / Impressions / Live / Comments', 'Twitter Views (INSTANT)', '', 100, 1000000, 26500, 'Active', 266, 'IRV'),
(52, 267, 'Twitter Views / Impressions / Live / Comments', 'Twitter Impressions (INSTANT)', '', 100, 1000000, 26500, 'Active', 267, 'IRV'),
(53, 279, 'Instagram Likes', 'Instagram Likes + Impressions [30K] [REAL - INSTANT]', '', 100, 30000, 6900, 'Active', 279, 'IRV'),
(54, 280, 'Instagram Auto Likes - 7 Days Subscription', '80 Auto Likes + Views - 7 Days', '', 1, 1, 35002500, 'Active', 280, 'IRV'),
(55, 281, 'Instagram Auto Likes - 7 Days Subscription', '150 Auto Likes + Views - 7 Days', '', 1, 1, 69502500, 'Active', 281, 'IRV'),
(56, 282, 'Instagram Auto Likes - 7 Days Subscription', '300 Auto Likes + Views - 7 Days', '', 1, 1, 103002500, 'Active', 282, 'IRV'),
(57, 284, 'Instagram Auto Likes - 7 Days Subscription', '1500 Auto Likes + Views - 7 Days', '', 1, 1, 308002500, 'Active', 284, 'IRV'),
(58, 285, 'Instagram Auto Likes - 7 Days Subscription', '	80 Auto Likes + Views - 30 Days', '', 1, 1, 128002500, 'Active', 285, 'IRV'),
(59, 286, 'Instagram Auto Likes - 7 Days Subscription', '150 Auto Likes + Views - 30 Days', '', 1, 1, 223002500, 'Active', 286, 'IRV'),
(60, 287, 'Instagram Auto Likes - 7 Days Subscription', '300 Auto Likes + Views - 30 Days', '', 1, 1, 308002500, 'Active', 287, 'IRV'),
(61, 301, 'Instagram Followers No Refill/Not Guaranteed', 'MURAH HOT FAST INTAGRAM SERVER VIP 2  [10k]', '', 100, 10000, 10000, 'Active', 301, 'IRV'),
(62, 304, 'Instagram Likes', 'Instagram Likes VIP .', '', 50, 4000, 3200, 'Active', 304, 'IRV'),
(63, 307, 'Instagram Likes', 'Instagram Likes VIP 2', '', 100, 7000, 3300, 'Active', 307, 'IRV'),
(64, 321, 'Instagram Likes', 'Instagram Likes VIP 3 [7K] [REAL]', '', 50, 7000, 2940, 'Active', 321, 'IRV'),
(65, 346, 'Instagram Views', 'NEW CHEAP Instagram Views [800K] [REAL]', '', 50, 800000, 2950, 'Active', 346, 'IRV'),
(66, 349, 'Facebook Post Likes / Comments / Shares / Events', 'Facebook Post Likes [15K] âš¡', '', 100, 15000, 11050, 'Active', 349, 'IRV'),
(67, 350, 'Facebook Post Likes / Comments / Shares / Events', 'Facebook Post Likes [15K] S2', '', 100, 15000, 11050, 'Active', 350, 'IRV'),
(68, 355, 'Instagram Views', 'Instagram Views [30K] [REAL] CHEAP', '', 10, 30000, 2770, 'Active', 355, 'IRV'),
(69, 361, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers IKP2 MAX 5K - INSTANT 5 MIN START', '', 100, 5000, 12500, 'Active', 361, 'IRV'),
(70, 362, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers IKP MAX 7K - 1 MÄ°N START', '', 100, 7000, 16200, 'Active', 362, 'IRV'),
(71, 372, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers IKP 3 - [ Min 200 - Max 30K ] INSTNT', '', 100, 30000, 12500, 'Active', 372, 'IRV'),
(72, 373, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers IKP 4 [Max 7K - 1 MÄ°N START Minimum Drop]', '', 100, 7000, 19600, 'Active', 373, 'IRV'),
(73, 374, 'Instagram Followers No Refill/Not Guaranteed', 'Ä°nstagram Followers IKP 5 - ( Max 25k - UltraFast ) ( Working Less Drop )', '', 100, 25000, 19600, 'Active', 374, 'IRV'),
(74, 379, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers IKP 10 MAX 10K||5 MENIT START', '', 100, 10000, 11050, 'Active', 379, 'IRV'),
(75, 387, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia IKP 1 FAST', '', 100, 5000, 47500, 'Active', 387, 'IRV'),
(76, 388, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Semarang', '', 100, 1000, 37500, 'Active', 388, 'IRV'),
(77, 389, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Magelang', '', 50, 1000, 37500, 'Active', 389, 'IRV'),
(78, 390, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Sukabumi', '', 50, 1000, 37500, 'Active', 390, 'IRV'),
(79, 391, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Bandung', '', 50, 2000, 42500, 'Active', 391, 'IRV'),
(80, 392, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Bekasi', '', 50, 1000, 39500, 'Active', 392, 'IRV'),
(81, 393, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Bali', '', 50, 1000, 45500, 'Active', 393, 'IRV'),
(82, 394, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Jakarta', '', 50, 2000, 43500, 'Active', 394, 'IRV'),
(83, 395, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Cirebon', '', 50, 1000, 39500, 'Active', 395, 'IRV'),
(84, 396, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Lampung', '', 50, 1000, 41500, 'Active', 396, 'IRV'),
(85, 397, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Palembang', '', 100, 1000, 42500, 'Active', 397, 'IRV'),
(86, 398, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Aceh', '', 50, 1000, 42500, 'Active', 398, 'IRV'),
(87, 399, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Surabaya', '', 50, 1000, 41500, 'Active', 399, 'IRV'),
(88, 400, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Bogor', '', 50, 1000, 42500, 'Active', 400, 'IRV'),
(89, 401, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Cimahi', '', 50, 999, 41500, 'Active', 401, 'IRV'),
(90, 402, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Tangerang', '', 100, 1000, 42500, 'Active', 402, 'IRV'),
(91, 403, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Purbalingga', '', 100, 1000, 40500, 'Active', 403, 'IRV'),
(92, 404, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Sulawesi', '', 50, 1000, 42500, 'Active', 404, 'IRV'),
(93, 405, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Kalimantan', '', 100, 1000, 41500, 'Active', 405, 'IRV'),
(94, 406, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Makasar', '', 100, 1000, 43500, 'Active', 406, 'IRV'),
(95, 407, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Solo', '', 150, 1000, 39500, 'Active', 407, 'IRV'),
(96, 410, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia AKTIP SPECIAL MAX 15K FOLLOWERS INDONESIA', '', 50, 5000, 49500, 'Active', 410, 'IRV'),
(97, 411, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers IKP 11 FASTSERVICE', '', 500, 50000, 16050, 'Active', 411, 'IRV'),
(98, 412, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers IKP 12  ( Min 200 | MAX 5K ) ( 0-6 hours start )', '', 200, 50000, 12200, 'Active', 412, 'IRV'),
(99, 413, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers IKP 13  ( 0-6 hours Start ) Min 500 -MAX 5K', '', 500, 5000, 11400, 'Active', 413, 'IRV'),
(100, 414, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers IKP 14 5 Mint Delivery Max 2K - No refill, No refund', '', 200, 2000, 16500, 'Active', 414, 'IRV'),
(101, 426, 'Youtube Subscribers ', 'Youtube Subscribers S2 1-5 DAYS [ Real | 250-500/day 40% Drop | Max 30k ] ( NO Refill )', '', 500, 30000, 107500, 'Active', 426, 'IRV'),
(102, 438, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers VIP 4 MAX 4k', '', 200, 4000, 9500, 'Active', 438, 'IRV'),
(103, 444, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Dani Aktip FAST [MAX 2K CHEAP IN THE MARKET]', '', 100, 2000, 37500, 'Active', 444, 'IRV'),
(104, 445, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers VVIIPP 1 - [ Min 100 - Max 6K ]', '', 100, 5000, 10500, 'Active', 445, 'IRV'),
(105, 448, 'Instagram Views', 'Instagram Views Cheapest In Market Murahnya Gila [MAX10K]', '', 50, 10000, 2597, 'Active', 448, 'IRV'),
(106, 459, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers Privat S2 instant Work Norefund No refill CUMA DI IRVANKEDE', '', 200, 4500, 11590, 'Active', 459, 'IRV'),
(107, 460, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers Privat S3 instant Work Norefund No refill CUMA DI IRVANKEDE', '', 100, 4500, 9100, 'Active', 460, 'IRV'),
(108, 461, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers VVIIPP 2 [6K]', '', 100, 6000, 7400, 'Active', 461, 'IRV'),
(109, 462, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers VVIIPP 3 [3K]', '', 100, 3000, 7600, 'Active', 462, 'IRV'),
(110, 464, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers VVIIPP 5 [5K] [NO REFILL NO REFUND] [1MENIT START]', '', 200, 5000, 9400, 'Active', 464, 'IRV'),
(111, 475, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers VVIIPP 7 INSTAN', '', 100, 4000, 8600, 'Active', 475, 'IRV'),
(112, 487, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers Khusus IRVANKEDE S2 NO REFILL NO REFUND [2,5K] CHEAP', '', 100, 2500, 6500, 'Active', 487, 'IRV'),
(113, 492, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers VVIIPP 13 [NoRefund No Refill - Max 5k ] [ 0 - 1Hrs Complete ]', '', 300, 5000, 13500, 'Active', 492, 'IRV'),
(114, 508, 'Facebook Post Likes / Comments / Shares / Events', 'Facebook - Post Likes Real S1 ( Instant, Real, Superfast, Fanpage & Profile post, Max 5k )', '', 25, 1000, 7500, 'Active', 508, 'IRV'),
(115, 509, 'Facebook Post Likes / Comments / Shares / Events', 'Facebook - Post Likes S2 ( Instant, Real, Ultra fast, Fanpage & Profile post, Max 3k )', '', 100, 5000, 8400, 'Active', 509, 'IRV'),
(116, 520, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Khusus Irvankede S4 SUPER FAST [10K] [MIN 300]', '', 300, 10000, 7600, 'Active', 520, 'IRV'),
(117, 526, 'Instagram Auto Comments / Impressions / Saves', 'Instagram Impressions [1M]', '', 100, 1000000, 4600, 'Active', 526, 'IRV'),
(118, 527, 'Instagram Story / Impressions / Saves', 'Instagram Story Views [30K]', '', 100, 30000, 16000, 'Active', 527, 'IRV'),
(119, 530, 'Facebook Post Likes / Comments / Shares / Events', 'Facebook Post Likes [1K] [EMOTICONS] [HAHA]', '', 10, 1000, 11000, 'Active', 530, 'IRV'),
(120, 531, 'Facebook Post Likes / Comments / Shares / Events', 'Facebook Post Likes [1K] [EMOTICONS] [WOW]', '', 10, 1000, 11000, 'Active', 531, 'IRV'),
(121, 532, 'Facebook Post Likes / Comments / Shares / Events', 'Facebook Post Likes [1K] [EMOTICONS] [SAD]', '', 10, 1000, 11000, 'Active', 532, 'IRV'),
(122, 533, 'Facebook Post Likes / Comments / Shares / Events', 'Facebook Post Likes [1K] [EMOTICONS] [ANGRY]', '', 100, 1000, 11000, 'Active', 533, 'IRV'),
(123, 541, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers Media 5 SUPER FAST 5-10 MENIT 10K', '', 100, 10000, 11900, 'Active', 541, 'IRV'),
(124, 544, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Real Aktip Murah S1', '', 50, 1000, 27500, 'Active', 544, 'IRV'),
(125, 554, 'Instagram Story / Impressions / Saves', 'Instagram Last Story S1 - Only Username - No Refund', '', 500, 10000, 5150, 'Active', 554, 'IRV'),
(126, 555, 'Instagram Story / Impressions / Saves', 'Instagram last Story - 1 Mint Delivery - Only Username - No refund', '', 400, 10000, 7100, 'Active', 555, 'IRV'),
(127, 560, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [10K] [INSTANT DELIVERY', '', 100, 10000, 9700, 'Active', 560, 'IRV'),
(128, 561, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [4K] [NO REFUND NO REFILL]', '', 100, 4000, 6500, 'Active', 561, 'IRV'),
(129, 562, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [1.5K] [START 1AM] [NOREFILL NO REFUND]', '', 100, 1500, 6200, 'Active', 562, 'IRV'),
(130, 573, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [5K] - INSTANT 5 MIN START ( Very Less Drop )', '', 100, 5000, 12500, 'Active', 573, 'IRV'),
(131, 574, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [10K] NO REFUND NO REFILL', '', 200, 10000, 9300, 'Active', 574, 'IRV'),
(132, 578, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Hitungan Detik [6K]', '', 50, 6000, 37500, 'Active', 578, 'IRV'),
(133, 581, 'Instagram Likes', 'Instagram Likes [15K] [INSTANT]', '', 100, 15000, 4500, 'Active', 581, 'IRV'),
(134, 589, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Instant Cheap[2K]', '', 50, 2000, 33500, 'Active', 589, 'IRV'),
(135, 592, 'Instagram Likes', 'Instagram Likes INDONESIA INSTAN S6 (Hitungan Detik) MAX 7K BACA NOTE', '', 25, 7000, 6400, 'Active', 592, 'IRV'),
(136, 595, 'Instagram Likes', 'Instagram Likes Min 50 MAX 15K [ Recommended ] FAST INSTANT', '', 50, 15000, 2950, 'Active', 595, 'IRV'),
(137, 596, 'Instagram Likes', 'Instagram Likes [15K] [INSTANT START 1 MENIT]', '', 20, 15000, 3100, 'Active', 596, 'IRV'),
(138, 598, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers 2K SUPER FAST', '', 100, 4000, 5500, 'Active', 598, 'IRV'),
(139, 601, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers MAX 30K Instant Porses', '', 100, 10000, 11500, 'Active', 601, 'IRV'),
(140, 604, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [ 6K ] Super Fast Cheap', '', 200, 6000, 5000, 'Active', 604, 'IRV'),
(141, 613, 'Instagram Views', 'Instagram Views Cheapest In Market ( Min 50 Max 10M )', '', 50, 100000000, 2550, 'Active', 613, 'IRV'),
(142, 621, 'Instagram TV', 'Instagram TV Likes - Instant Start', '', 500, 3000, 4400, 'Active', 621, 'IRV'),
(143, 622, 'Facebook Followers / Friends / Group Members', 'Facebook Followers [50K] [REFILL30 DAYS]', '', 100, 50000, 22400, 'Active', 622, 'IRV'),
(144, 623, 'Facebook Followers / Friends / Group Members', 'Facebook Group Members [500K]', '', 500, 500000, 24200, 'Active', 623, 'IRV'),
(145, 625, 'Instagram TV', 'Instagram TV Views [ULTRA FAST] ( Min 100 | Max 1 Million )', '', 100, 100000000, 2765, 'Active', 625, 'IRV'),
(146, 626, 'Facebook Post Likes / Comments / Shares / Events', 'Facebook Emoticons Love Instant Start', '', 50, 4000, 7500, 'Active', 626, 'IRV'),
(147, 631, 'Instagram TV', 'IGTV Random Comments [1M]', '', 10, 10000000, 34500, 'Active', 631, 'IRV'),
(148, 632, 'Instagram TV', 'IGTV Random Emoji Comments [1M]', '', 10, 10000000, 34500, 'Active', 632, 'IRV'),
(149, 636, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers (Super Fast) (15 Days Refill ) | (MIN 1000 - Max - 10k)', '', 1000, 100000, 24000, 'Active', 636, 'IRV'),
(150, 650, 'Instagram Views', 'Instagram Views [300K] [SUPER FAST]', '', 100, 300000, 2560, 'Active', 650, 'IRV'),
(151, 651, 'Instagram Views', 'Instagram Views [3M] [SUPER FAST]', '', 100, 30000000, 2575, 'Active', 651, 'IRV'),
(152, 652, 'Instagram Views', 'Instagram Views + Impressions [FAST] [1M]', '', 100, 100000000, 2600, 'Active', 652, 'IRV'),
(153, 653, 'Instagram Views', 'Instagram Views + Impressions [TRENDING HITS] [1M]', '', 100, 10000000, 2650, 'Active', 653, 'IRV'),
(154, 659, 'Facebook Page Likes', 'Real Facebook Page Likes - [ Non drop ] [ 5k-10k/day ] [ Max - 100k ] INSTANT', '', 100, 100000, 81500, 'Active', 659, 'IRV'),
(155, 663, 'Youtube Views', 'Youtube - Views IK 4 [ 100k-300k/day ] ( AUTO REFILL ) [ Life Time Guaranteed ] INSTANT', '', 1000, 10000000, 5900, 'Active', 663, 'IRV'),
(156, 664, 'Youtube Views', 'Youtube - Views IK 5 [ 1M-1.5M/DAY ] ( AUTO REFILL ) [ Life Time Guaranteed ] INSTANT', '', 5000, 1000000000, 9000, 'Active', 664, 'IRV'),
(157, 666, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers IK-1 [ Superfast ] [ Real ] [ Max 5k ] INSTANT-4hrs', '', 300, 5000, 8350, 'Active', 666, 'IRV'),
(158, 667, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers IK-2  ( Max - 10k ) ( SUPERFAST, NO REFILL ) INSTANT', '', 100, 10000, 9000, 'Active', 667, 'IRV'),
(159, 674, 'Instagram Likes', 'Instagram Likes Fast Instant Min 50 MAX 15K', '', 50, 15000, 2930, 'Active', 674, 'IRV'),
(160, 675, 'Instagram Likes', 'Instagram Likes ( Min 20 - Max 15k )( Super Fast ) Complete in less then 1 min', '', 20, 15000, 3050, 'Active', 675, 'IRV'),
(161, 680, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers Super Fast [Max 15k]', '', 100, 6000, 7500, 'Active', 680, 'IRV'),
(162, 684, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [ 6K ] 0-3Hours', '', 100, 6000, 5400, 'Active', 684, 'IRV'),
(163, 686, 'Instagram Story / Impressions / Saves', 'Instagram Story Views [5K] - All Story', '', 100, 5000, 3800, 'Active', 686, 'IRV'),
(164, 687, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [ Superfast ] [ Real ] [ Max 5k ] INSTANT', '', 100, 5000, 7750, 'Active', 687, 'IRV'),
(165, 689, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Aktip Langsung Masuk[4K],', '', 100, 4000, 34500, 'Active', 689, 'IRV'),
(166, 690, 'Instagram Views', 'Instagram Views [1M] FAST MURAH', '', 50, 100000000, 2523, 'Active', 690, 'IRV'),
(167, 695, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers 5K SuperFast Hanya di IRV', '', 100, 5000, 5850, 'Active', 695, 'IRV'),
(168, 696, 'Instagram Live Video', 'Ä°nstagram Live Video Max 1', '', 100, 1000, 19200, 'Active', 696, 'IRV'),
(169, 699, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers Max 10K - 1 Mint START [Less Drop]', '', 100, 10000, 8900, 'Active', 699, 'IRV'),
(170, 709, 'Instagram TV', 'Instagram TV Views- Cheapest In Market [1M] 10K/DAY', '', 100, 100000000, 2650, 'Active', 709, 'IRV'),
(171, 711, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers KDRT 1  ( Max - 5k ) ( NO REFILL ) INSTANT-6hrs', '', 100, 5000, 5550, 'Active', 711, 'IRV'),
(172, 712, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers KDRT 2 ( Max - 5k ) ( NO REFILL ) INSTANT-6hrs', '', 100, 5000, 6300, 'Active', 712, 'IRV'),
(173, 713, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers KDRT 3 ( Max - 6k ) ( NO REFILL ) INSTANT', '', 100, 6000, 6700, 'Active', 713, 'IRV'),
(174, 714, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers KDRT 4 [ Superfast ] [ Real ] [ Max 10k ] INSTANT-4hrs', '', 100, 10000, 8400, 'Active', 714, 'IRV'),
(175, 715, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers KDRT 5 ( Max - 10k ) ( SUPERFAST, NO REFILL ) INSTANT', '', 100, 10000, 9300, 'Active', 715, 'IRV'),
(176, 716, 'Instagram Followers Indonesia', 'Instagram Followers Manado', '', 50, 2000, 39500, 'Active', 716, 'IRV'),
(177, 718, 'Instagram Likes Indonesia', 'Instagram Likes Indonesia Instant NEW DB MAX 10K', '', 100, 5000, 6500, 'Active', 718, 'IRV'),
(178, 720, 'Youtube Subscribers ', 'Youtube Subribers Instant- 20k/Day-Lifetime Guarantee [MAX60K]', '', 100, 60000, 87500, 'Active', 720, 'IRV'),
(179, 721, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers ( Max - 5k ) ( NO REFILL ) INSTANT-6hrs', '', 100, 5000, 5499, 'Active', 721, 'IRV'),
(180, 723, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia [NEW][MAX 12K] INSTANT S2', '', 100, 5000, 40500, 'Active', 723, 'IRV'),
(181, 724, 'Instagram Followers Indonesia', 'Instagram Followers Aktip Maluku', '', 50, 1300, 40500, 'Active', 724, 'IRV'),
(182, 725, 'Instagram Followers Indonesia', 'Instagram Followers Aktip Nusa Tenggara Barat', '', 100, 1500, 42500, 'Active', 725, 'IRV'),
(183, 726, 'Instagram Followers Indonesia', 'Instagram Followers Aktip Cilegon', '', 100, 2000, 42500, 'Active', 726, 'IRV'),
(184, 727, 'Instagram Followers Indonesia', ' 	Instagram Followers Aktip  Serang ', '', 100, 3500, 41500, 'Active', 727, 'IRV'),
(185, 728, 'Instagram Followers Indonesia', 'Instagram Followers Aktip Jambi', '', 100, 1200, 42500, 'Active', 728, 'IRV'),
(186, 729, 'Instagram Followers Indonesia', 'Instagram Followers Banjar Indonesia', '', 100, 2000, 41500, 'Active', 729, 'IRV'),
(187, 730, 'Instagram Followers Indonesia', 'Instagram Followers Pekalongan Indonesia', '', 100, 1600, 42500, 'Active', 730, 'IRV'),
(188, 731, 'Instagram Followers Indonesia', ' 	Instagram Followers Purwokerto Indonesia', '', 100, 1800, 39500, 'Active', 731, 'IRV'),
(189, 743, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers - [NoRefill Norefund - Max 10k ] INSTANT', '', 100, 10000, 6900, 'Active', 743, 'IRV'),
(190, 747, 'Instagram Likes', 'Instagram Likes [ Max 30k ] INSTANT (Recommended )', '', 100, 30000, 3090, 'Active', 747, 'IRV'),
(191, 749, 'Instagram Comments', 'Instagram Custom Comments Indonesia', '', 2, 1000, 10500, 'Active', 749, 'IRV'),
(192, 750, 'Instagram Story / Impressions / Saves', 'VIew Story Indonesia', '', 100, 2001, 8500, 'Active', 750, 'IRV'),
(193, 755, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [CHEAP] MAX 2K ', '', 100, 2000, 4900, 'Active', 755, 'IRV'),
(194, 760, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers - [ Norefill Norefund- Max 3K ] INSTANT', '', 100, 3000, 9000, 'Active', 760, 'IRV'),
(195, 763, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers KW 1 MAX 15K INSTANT', '', 100, 15000, 7500, 'Active', 763, 'IRV'),
(196, 764, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [45K] [INSTANT] PERDAY 500-2K', '', 100, 45000, 8650, 'Active', 764, 'IRV'),
(197, 765, 'Instagram Likes', 'Instagram Likes - [ ULTRAFAST ] [ Max - 10k ] [ 10 Seconds Start ]', '', 100, 10000, 3200, 'Active', 765, 'IRV'),
(198, 766, 'Instagram Views', 'Instagram Views [400K] [SLOW]', '', 100, 400000, 2536, 'Active', 766, 'IRV'),
(199, 767, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [ 6K ] INSTANT', '', 100, 6000, 5600, 'Active', 767, 'IRV'),
(200, 768, 'Instagram Followers No Refill/Not Guaranteed', 'INSTAGRAM FOLLOWERS MAX 6K - INSTANT START [Recommended]', '', 100, 6000, 7700, 'Active', 768, 'IRV'),
(201, 769, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia INSTANT MAX 15K ', '', 100, 5000, 41500, 'Active', 769, 'IRV'),
(202, 771, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [ Max - 15k ] [ No refill ] INSTANT- FASTEST', '', 100, 15000, 5750, 'Active', 771, 'IRV'),
(203, 772, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers - [ Norefill Norefund- Max 3K ]FASTEST', '', 100, 3000, 5450, 'Active', 772, 'IRV'),
(204, 774, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram FOLLOWERS baby S1 TERMURAH  FASTEST', '', 100, 2000, 4700, 'Active', 774, 'IRV'),
(205, 776, 'Website Traffic', 'Website Traffic [1M] ', '', 1000, 100000000, 4900, 'Active', 776, 'IRV'),
(206, 777, 'Website Traffic', 'Website Traffic [10M] [WW]', '', 100, 100000000, 11700, 'Active', 777, 'IRV'),
(207, 778, 'Website Traffic', 'Website Traffic From Facebook [10M] [WW]', '', 100, 1000000000, 11700, 'Active', 778, 'IRV'),
(208, 779, 'Website Traffic', 'Website Traffic From Instagram [10M] [WW] ', '', 100, 1000000000, 11700, 'Active', 779, 'IRV'),
(209, 781, 'Youtube Subscribers ', 'Youtube Subscribers 0-12 Hour Start-Fastest and Cheapest-4k/day', '', 25, 7000, 152500, 'Active', 781, 'IRV'),
(210, 786, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers MAX 30K 10-15K/DAY ', '', 100, 30000, 7400, 'Active', 786, 'IRV'),
(211, 793, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers Baby 2 CHEAP', '', 200, 2000, 4500, 'Active', 793, 'IRV'),
(212, 797, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers Baby 6 { No Refill} [MAX5K]', '', 100, 5000, 4650, 'Active', 797, 'IRV'),
(213, 800, 'Instagram Likes Indonesia', 'Like Indonesia Server Sementara MAX 1K ', '', 100, 1000, 4200, 'Active', 800, 'IRV'),
(214, 801, 'Instagram Live Video', 'Comment Live Indonesia', '', 5, 700, 11400, 'Active', 801, 'IRV'),
(215, 802, 'Instagram Live Video', 'Like Live Indonesia', '', 5, 700, 11500, 'Active', 802, 'IRV'),
(216, 811, 'Youtube Subscribers ', 'YouTube Subscriber 100k(8-10K/Day)-Lifetime Guarantee Inatant', '', 100, 100000000, 60599, 'Active', 811, 'IRV'),
(217, 822, 'Youtube Subscribers ', 'Youtube Subscribers [50K]  REFILL 7 DAYS ', '', 100, 50000, 87500, 'Active', 822, 'IRV'),
(218, 828, 'Instagram Likes', 'Instagram Likes [25K] [REAL] [INDIA / INDONESIA MIX] ', '', 50, 25000, 4500, 'Active', 828, 'IRV'),
(219, 830, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers  [Max 2K ] [ULTRAFAST] 1H START', '', 100, 2000, 4200, 'Active', 830, 'IRV'),
(220, 833, 'Instagram Story / Impressions / Saves', 'Instagram Cheapest Story Views - All story', '', 100, 10000, 2680, 'Active', 833, 'IRV'),
(221, 839, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers MAX 5 {Promo - No Refill} NO KOMPLEN ', '', 100, 5000, 4600, 'Active', 839, 'IRV'),
(222, 840, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers[NoRefill NoRefund] [Max8K]', '', 300, 8000, 5800, 'Active', 840, 'IRV'),
(223, 841, 'Facebook Page Likes', 'Facebook Page Likes [HQ] [Non Drop, 30 Days Auto Refill, Super Fast] - INSTANT', '', 100, 100000, 85500, 'Active', 841, 'IRV'),
(224, 842, 'Youtube Subscribers ', 'Youtube Subscribers [50K] [REFILL30 DAYS ]', '', 25, 50000, 53500, 'Active', 842, 'IRV'),
(225, 848, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers Promo Termurah SEDUNIA 2 ', '', 1000, 1000, 3600, 'Active', 848, 'IRV'),
(226, 856, 'Youtube Views', 'Youtube Views [ 50K-500k/day ] [ 30 days REFILL ] INSTANT', '', 100, 2147483647, 4100, 'Active', 856, 'IRV'),
(227, 857, 'Youtube Subscribers ', 'YouTube Subscriber 80k(8-10K/Day)-Lifetime Guarantee', '', 25, 80000, 52000, 'Active', 857, 'IRV'),
(228, 858, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [ Max - 10K ] [ No refill ] INSTANT Special Service', '', 500, 10000, 5600, 'Active', 858, 'IRV'),
(229, 859, 'Instagram Views', 'Instagram Views {Speed 100K - Instant Start}', '', 1000, 100000000, 2546, 'Active', 859, 'IRV'),
(230, 860, 'Instagram Live Video', 'Instagram - Live Video Likes ( INSTANT )', '', 200, 100000, 11400, 'Active', 860, 'IRV'),
(231, 861, 'Instagram Live Video', ' 	Instagram - Live Video Custom Comments ( INSTANT )', '', 5, 400, 182500, 'Active', 861, 'IRV'),
(232, 862, 'Instagram Likes / Likes + Impressions', 'Instagram Likes + Impressions [50K] REAL ', '', 50, 50000, 5300, 'Active', 862, 'IRV'),
(233, 863, 'Instagram Likes / Likes + Impressions', 'Instagram Impressions [1M] REAL', '', 100, 10000000, 3800, 'Active', 863, 'IRV'),
(234, 864, 'Instagram Likes / Likes + Impressions', 'Instagram Impressions [100K] ', '', 10, 1000000, 6050, 'Active', 864, 'IRV'),
(235, 865, 'Facebook Video Views / Live Stream', 'Facebook Video Views (10K-20K) Instant Start', '', 1000, 100000000, 6350, 'Active', 865, 'IRV'),
(236, 867, 'Twitter Likes', 'Twitter Likes / Favorite ( Worldwide )', '', 50, 1000000000, 65500, 'Active', 867, 'IRV'),
(237, 871, 'Instagram TV', ' 	Instagram - TV Random Comments [ Instant ]', '', 10, 1000000, 37650, 'Active', 871, 'IRV'),
(238, 872, 'Instagram TV', 'Instagram - TV Random Emoji [ Instant ]', '', 10, 1000000000, 37650, 'Active', 872, 'IRV'),
(239, 873, 'Instagram TV', 'Instagram TV Custom MALE Comments [ Instant-1HRS ]', '', 20, 100, 320000, 'Active', 873, 'IRV'),
(240, 874, 'Instagram TV', 'Instagram TV Random MALE Comments [ Instant-1HRS ]', '', 10, 100, 258000, 'Active', 874, 'IRV'),
(241, 875, 'Instagram TV', 'Instagram TV Random FEMALE Comments [ Instant-1HRS ]', '', 10, 150, 258000, 'Active', 875, 'IRV'),
(242, 876, 'Instagram TV', ' 	Instagram TV Custom FEMALE Comments [ Instant-1HRS ]', '', 20, 150, 320000, 'Active', 876, 'IRV'),
(243, 877, 'Instagram TV', 'Instagram - TV Likes S2 [ Instant ]', '', 400, 2500, 6950, 'Active', 877, 'IRV'),
(244, 878, 'Instagram Story / Impressions / Saves', 'Instagram Story Views [15K] [ALL POSTS]', '', 100, 15000, 2650, 'Active', 878, 'IRV'),
(245, 879, 'Instagram Story / Impressions / Saves', 'Instagram Story Views ALL story', '', 100, 15000, 5800, 'Active', 879, 'IRV'),
(246, 880, 'Instagram Story / Impressions / Saves', 'Instagram Impressions [10M] [EXPLORE - HOME - LOCATION - PROFILE] ', '', 100, 2147483647, 3850, 'Active', 880, 'IRV'),
(247, 881, 'Instagram Story / Impressions / Saves', 'Instagram Story Views [MALE] [30K] ', '', 20, 30000, 9650, 'Active', 881, 'IRV'),
(248, 882, 'Instagram Story / Impressions / Saves', 'Instagram Story Views [FEMALE] [30K] ', '', 20, 30000, 9650, 'Active', 882, 'IRV'),
(249, 885, 'Instagram Live Video', 'Ä°nstagram Live Video Max 3K', '', 250, 3000, 16650, 'Active', 885, 'IRV'),
(250, 886, 'Instagram Story / Impressions / Saves', 'Ä°nstagram Saves 15K', '', 100, 15000, 2685, 'Active', 886, 'IRV'),
(251, 889, 'Youtube Likes / Comments / Favs...', 'YouTube Custom Comments ( Worldwide ) 0-10 Mints Start', '', 25, 50000, 87400, 'Active', 889, 'IRV'),
(252, 891, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [5K] [NO REFILL] ', '', 100, 5000, 3900, 'Active', 891, 'IRV'),
(253, 892, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers RANDOM ASIA+INDONESIA SUPER FAST MAX 60K', '', 50, 60000, 11200, 'Active', 892, 'IRV'),
(254, 893, 'Instagram TV', 'Instagram TV Views {6M} ', '', 1000, 600000000, 3445, 'Active', 893, 'IRV'),
(255, 894, 'Instagram TV', ' 	Instagram TV Views {2M}', '', 2000, 2147483647, 3300, 'Active', 894, 'IRV'),
(256, 895, 'Facebook Post Likes / Comments / Shares / Events', 'Facebook Post Likes S2 [5K]', '', 100, 5000, 3600, 'Active', 895, 'IRV'),
(257, 897, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers Max [100K] - INSTANT ALWAYS', '', 100, 100000, 14900, 'Active', 897, 'IRV'),
(258, 898, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [ULTRAFAST - 1H START] ', '', 100, 2000, 4599, 'Active', 898, 'IRV'),
(259, 899, 'Instagram Followers No Refill/Not Guaranteed', 'Inatagram Followers Max 80K- Instant Start', '', 200, 80000, 10700, 'Active', 899, 'IRV'),
(260, 900, 'Instagram Likes', 'Instagram Likes [INSTANT] [ Max -5k ] INSTANT', '', 50, 5000, 2950, 'Active', 900, 'IRV'),
(261, 901, 'Youtube Subscribers ', 'Youtube Subscribers  [ Max - 500k ] [ Life Time Guaranteed ] INSTANT 2 ', '', 100, 500000, 111500, 'Active', 901, 'IRV'),
(262, 902, 'Youtube Likes / Comments / Favs...', 'Youtube - Likes [ Ultrafast ] [ Max 400k ] SUPER INSTANT', '', 100, 400000, 147500, 'Active', 902, 'IRV'),
(263, 903, 'Twitter Views / Impressions / Live / Comments', 'Twitter Video Views [ 100k/day ] INSTANT', '', 100, 2147483647, 25100, 'Active', 903, 'IRV'),
(264, 904, 'Twitter Views / Impressions / Live / Comments', 'Twitter Live Views [ 500 Max ] [ 15 Mins Time View ] INSTANT 2 ', '', 20, 500, 111500, 'Active', 904, 'IRV'),
(265, 905, 'Twitter Views / Impressions / Live / Comments', 'Twitter Impression [ 100k/day ] INTANT FAST', '', 100, 2147483647, 25100, 'Active', 905, 'IRV'),
(266, 906, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers - [ Max - 60k ] [ NO PARTIAL ] SUPER INSTANT', '', 50, 60000, 12500, 'Active', 906, 'IRV'),
(267, 908, 'Instagram Likes', 'Instagram Likes [ Superfast ] [ Real ] [ Max -5k ] INSTANT !', '', 50, 5000, 2890, 'Active', 908, 'IRV'),
(268, 909, 'Facebook Page Likes', 'Facebook Page Likes - [ Max - 500k ] [ 10k-20k/day ] INSTANT ', '', 100, 2147483647, 90500, 'Active', 909, 'IRV'),
(269, 910, 'Twitter Retweets', 'Twitter Retweets [ HQ ] [ Worldwide ] [ No Refill ] INSTANT', '', 10, 200000, 147500, 'Active', 910, 'IRV'),
(270, 911, 'Twitter Poll Votes', 'Twitter Poll Votes [100M] !', '', 100, 1000000000, 56800, 'Active', 911, 'IRV'),
(271, 912, 'Twitter Poll Votes', 'Twitter Poll Votes [10M] !', '', 100, 2147483647, 17100, 'Active', 912, 'IRV'),
(272, 915, 'Youtube Subscribers ', 'Youtube Subscribers [20K] [REAL - 250-500/DAY ] 0-48HR', '', 500, 20000, 34850, 'Active', 915, 'IRV'),
(273, 916, 'Youtube Views', ' Youtube Views [ 10k-50k/day ] [ HR ] [ No Refill Guarantee ] INSTANT', '', 500, 3000000, 16000, 'Active', 916, 'IRV'),
(274, 917, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [ Max - 12k ] [ No refill ] INSTANT', '', 100, 12000, 5800, 'Active', 917, 'IRV'),
(275, 919, 'Youtube Views', 'Youtube Views [250K] [NO REFILL]', '', 5000, 2500000, 17800, 'Active', 919, 'IRV'),
(276, 920, 'Facebook Page Likes', 'Facebook Page Likes [1K] [NO REFILL] ', '', 100, 1000, 23300, 'Active', 920, 'IRV'),
(277, 921, 'Facebook Page Likes', 'Facebook Page Likes [20K] ', '', 500, 20000, 27700, 'Active', 921, 'IRV'),
(278, 922, 'Youtube Views', 'Youtube Views - [ Norefill Norefund - Min 1K ] [ 80% RETENTION - Desktop Watch Page ]', '', 1000, 50000000, 16900, 'Active', 922, 'IRV'),
(279, 923, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers MAX 4K TERMURAH NO REFILL ', '', 100, 4000, 3500, 'Active', 923, 'IRV'),
(280, 924, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers Max 10K INSTAN  NO REFILL ', '', 100, 10000, 4900, 'Active', 924, 'IRV'),
(281, 925, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers Max 7K - Very Less Drop', '', 100, 7000, 6100, 'Active', 925, 'IRV'),
(282, 926, 'Facebook Page Likes', 'Facebook Page Like Min 100 Max 5000{0-3H Start}{15 days refill}', '', 200, 5000, 43000, 'Active', 926, 'IRV'),
(283, 927, 'Instagram Likes', 'Instagram Likes [1 Million ] [Real] [ 100k/Day - Instant]', '', 100, 10000000, 3750, 'Active', 927, 'IRV'),
(284, 928, 'Instagram Likes', 'Instagram Female Likes - 5K', '', 10, 5000, 4600, 'Active', 928, 'IRV'),
(285, 929, 'Instagram Likes', 'Instagram Male Likes - 2K', '', 100, 2000, 4600, 'Active', 929, 'IRV'),
(286, 930, 'Twitter Followers', 'Twitter Followers [5K] [MIX] [7 DAYS REFILL]', '', 20, 5000, 74500, 'Active', 930, 'IRV'),
(287, 932, 'Youtube Likes / Comments / Favs...', 'Youtube Likes [ Max 5K ] [ Speed 50 - 100/DAYS ] - NON DROP ', '', 10, 5000, 57000, 'Active', 932, 'IRV'),
(288, 933, 'Facebook Post Likes / Comments / Shares / Events', 'Facebook Photo Likes 5K Instant Start ', '', 100, 5000, 4500, 'Active', 933, 'IRV'),
(289, 934, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers - [ Max 5K ] [ Super FAST ] - No Partial!', '', 100, 5000, 14400, 'Active', 934, 'IRV'),
(290, 935, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [No refill Norefund] - Max 10K Min 500', '', 500, 10000, 5300, 'Active', 935, 'IRV'),
(291, 936, 'Instagram Views', 'Instagram Views MAX 2K  Rp 5', '', 500, 2000, 2505, 'Active', 936, 'IRV'),
(292, 937, 'Youtube Views', 'Youtube Views Lifetime Guarantee ( Recommended Service ) ( CEK NOTE )', '', 100, 10000000, 16050, 'Active', 937, 'IRV'),
(293, 938, 'Instagram Likes', 'Instagram Likes [3K] [AKTIP]', '', 100, 3000, 2700, 'Active', 938, 'IRV'),
(294, 939, 'Facebook Post Likes / Comments / Shares / Events', 'Facebook Post Likes [1K] REAL', '', 100, 1000, 5200, 'Active', 939, 'IRV'),
(295, 940, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers [20K] [NO REFILL NO REFUDN ]', '', 100, 20000, 6180, 'Active', 940, 'IRV');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services_bank`
--

CREATE TABLE `services_bank` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `oprator` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `price` double NOT NULL,
  `status` enum('Active','Not Active') COLLATE utf8_swedish_ci NOT NULL,
  `provider` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `provider_id` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `services_bank`
--

INSERT INTO `services_bank` (`id`, `name`, `oprator`, `price`, `status`, `provider`, `provider_id`) VALUES
(1, 'Transfer BANK BCA Rp 25.000', 'BCA', 26000, 'Active', 'soulmatepulsa', '1229'),
(2, 'Transfer BANK BCA Rp 50.000', 'BCA', 51200, 'Active', 'soulmatepulsa', '1230'),
(3, 'Transfer BANK BCA Rp 100.000', 'BCA', 101499, 'Active', 'soulmatepulsa', '1231'),
(4, 'Transfer BANK BCA Rp 200.000', 'BCA', 200100, 'Active', 'soulmatepulsa', '1232'),
(5, 'Transfer BANK BNI Rp 20.000', 'BNI', 29000, 'Active', 'soulmatepulsa', '1219'),
(6, 'Transfer BANK BNI Rp 50.000', 'BNI', 59000, 'Active', 'soulmatepulsa', '1220'),
(7, 'Transfer BANK BNI Rp 100.000', 'BNI', 109000, 'Active', 'soulmatepulsa', '1221'),
(8, 'Transfer BANK BNI Rp 150.000', 'BNI', 159000, 'Active', 'soulmatepulsa', '1222'),
(9, 'Transfer BANK BNI Rp 200.000', 'BNI', 209000, 'Active', 'soulmatepulsa', '1223'),
(10, 'Transfer BANK BRI Rp 20.000', 'BRI', 29000, 'Active', 'soulmatepulsa', '1225'),
(11, 'Transfer BANK BRI Rp 50.000', 'BRI', 59000, 'Active', 'soulmatepulsa', '1226'),
(12, 'Transfer BANK BRI Rp 100.000', 'BRI', 109000, 'Active', 'soulmatepulsa', '1227'),
(13, 'Transfer BANK BRI Rp 200.000', 'BRI', 209000, 'Active', 'soulmatepulsa', '1228'),
(14, 'Transfer BANK MANDIRI Rp 20.000', 'MANDIRI', 29000, 'Active', 'soulmatepulsa', '1233'),
(15, 'Transfer BANK MANDIRI Rp 50.000', 'MANDIRI', 59000, 'Active', 'soulmatepulsa', '1234'),
(16, 'Transfer BANK MANDIRI Rp 100.000', 'MANDIRI', 109000, 'Active', 'soulmatepulsa', '1236'),
(17, 'Transfer BANK MANDIRI Rp 150.000', 'MANDIRI', 159000, 'Active', 'soulmatepulsa', '1237'),
(18, 'Transfer BANK MANDIRI Rp 200.000', 'MANDIRI', 209000, 'Active', 'soulmatepulsa', '1238');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services_dm`
--

CREATE TABLE `services_dm` (
  `id` int(10) NOT NULL,
  `sid` int(10) NOT NULL,
  `category` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `service` text COLLATE utf8_swedish_ci NOT NULL,
  `price` double NOT NULL,
  `status` enum('Active','Not active') COLLATE utf8_swedish_ci NOT NULL,
  `pid` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `provider` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `services_dm`
--

INSERT INTO `services_dm` (`id`, `sid`, `category`, `service`, `price`, `status`, `pid`, `provider`) VALUES
(1, 1, 'DM', '11 Diamond Mobile Legends	', 3000, 'Active', '5501', 'soulmategame'),
(2, 2, 'DM', '14 Diamond Mobile Legends', 4000, 'Active', '5502', 'soulmategame');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services_line`
--

CREATE TABLE `services_line` (
  `id` int(10) NOT NULL,
  `category` enum('S&T','PPT') COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `services_pulsa`
--

CREATE TABLE `services_pulsa` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `oprator` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `price` double NOT NULL,
  `status` enum('Active','Not Active') COLLATE utf8_swedish_ci NOT NULL,
  `provider` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `provider_id` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `services_pulsa`
--

INSERT INTO `services_pulsa` (`id`, `name`, `oprator`, `price`, `status`, `provider`, `provider_id`) VALUES
(1, 'THREE 1000', 'THREE', 2000, 'Active', 'ILHPEDIA', '165');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_cat`
--

CREATE TABLE `service_cat` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `service_cat`
--

INSERT INTO `service_cat` (`id`, `name`, `code`) VALUES
(1, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia'),
(2, 'Instagram Views', 'Instagram Views'),
(4, 'Instagram Followers No Refill/Not Guaranteed', 'Instagram Followers No Refill/Not Guaranteed'),
(5, 'Instagram Likes', 'Instagram Likes'),
(6, 'Instagram Likes / Likes + Impressions', 'Instagram Likes / Likes + Impressions'),
(7, 'Instagram Story / Impressions / Saves', 'Instagram Story / Impressions / Saves'),
(8, 'Youtube Subscribers', 'Youtube Subscribers'),
(9, 'Youtube Views', 'Youtube Views'),
(10, 'Youtube Likes / Comments / Favs...', 'Youtube Likes / Comments / Favs...'),
(11, 'Facebook Followers / Friends / Group Members', 'Facebook Followers / Friends / Group Members'),
(12, 'Facebook Post Likes / Comments / Shares / Events', 'Facebook Post Likes / Comments / Shares / Events');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `subject` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `message` text COLLATE utf8_swedish_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `status` enum('Pending','Responded','Closed','Waiting') COLLATE utf8_swedish_ci NOT NULL,
  `seen_user` int(1) NOT NULL DEFAULT '1',
  `seen_admin` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `tickets`
--

INSERT INTO `tickets` (`id`, `user`, `subject`, `message`, `datetime`, `last_update`, `status`, `seen_user`, `seen_admin`) VALUES
(74, 'admin', 'sfafa', 'ffasf', '2018-02-17 23:56:38', '2018-02-17 23:56:38', 'Pending', 1, 1),
(75, 'Faizal', 'sgaag', 'asgagag', '2018-02-25 09:17:16', '2018-02-25 09:17:16', 'Pending', 1, 1),
(76, 'Faizal', 'fqwfqf', 'fasaf', '2018-02-28 18:26:36', '2018-02-28 18:29:19', 'Responded', 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets_message`
--

CREATE TABLE `tickets_message` (
  `id` int(10) NOT NULL,
  `ticket_id` int(10) NOT NULL,
  `sender` enum('Member','Admin') COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `message` text COLLATE utf8_swedish_ci NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `tickets_message`
--

INSERT INTO `tickets_message` (`id`, `ticket_id`, `sender`, `user`, `message`, `datetime`) VALUES
(1, 76, 'Admin', 'Faizal', 'asfafaf', '2018-02-28 18:29:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `top`
--

CREATE TABLE `top` (
  `id` int(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL,
  `hadiah` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `topbuyer`
--

CREATE TABLE `topbuyer` (
  `id` int(8) NOT NULL,
  `username` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL,
  `hadiah` varchar(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `topup`
--

CREATE TABLE `topup` (
  `id` int(11) NOT NULL,
  `method` enum('Telkomsel','BCA') NOT NULL,
  `username` varchar(200) NOT NULL,
  `pengirim` varchar(200) NOT NULL,
  `jumlah` varchar(200) NOT NULL,
  `status` enum('Waiting','Completed','Canceled') NOT NULL,
  `time` varchar(200) NOT NULL,
  `kode` varchar(200) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transfer_balance`
--

CREATE TABLE `transfer_balance` (
  `id` int(10) NOT NULL,
  `sender` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `receiver` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `transfer_balance`
--

INSERT INTO `transfer_balance` (`id`, `sender`, `receiver`, `quantity`, `date`) VALUES
(1, 'yohana', 'sabell_22', 20000, '2018-01-10'),
(2, 'yohana', 'saifulhadi12345', 15000, '2018-01-10'),
(3, 'yohana', 'ikatrianamustika', 5000, '2018-01-10'),
(4, 'yohana', '_alyafm', 20000, '2018-01-10'),
(5, 'yohana', 'felix', 8000, '2018-01-10'),
(6, 'yohana', 'rachelbeatraxer', 25000, '2018-01-10'),
(7, 'yohana', 'frantzmandy', 100000, '2018-01-10'),
(8, 'yohana', 'ahdy2018', 100000, '2018-01-10'),
(9, 'yohana', 'aldnco', 10000, '2018-01-11'),
(10, 'yohana', 'rifandi', 20000, '2018-01-11'),
(11, 'yohana', 'Ikatrianamustika', 50000, '2018-01-11'),
(12, 'yohana', 'babyjasmine.id', 50000, '2018-01-11'),
(13, 'yohana', 'priskilaputrii', 20000, '2018-01-11'),
(14, 'yohana', 'aldnco', 20000, '2018-01-11'),
(15, 'yohana', 'Tommy87', 10000, '2018-01-11'),
(16, 'yohana', 'teniaash', 20000, '2018-01-11'),
(17, 'yohana', 'Trirahardjo', 9000, '2018-01-11'),
(18, 'yohana', 'rachelbeatraxer', 100000, '2018-01-11'),
(19, 'yohana', 'Saa1441', 10000, '2018-01-12'),
(20, 'yohana', 'Kekedos', 50000, '2018-01-12'),
(21, 'yohana', 'rye90ziel', 30000, '2018-01-12'),
(22, 'yohana', 'sumailala', 10000, '2018-01-12'),
(23, 'yohana', 'sabell_22', 20000, '2018-01-12'),
(24, 'yohana', 'kentang042', 8800, '2018-01-12'),
(25, 'yohana', 'rahmanda', 20000, '2018-01-12'),
(26, 'yohana', 'ahdy2018', 35000, '2018-01-12'),
(27, 'yohana', 'rahmanda', 20000, '2018-01-12'),
(28, 'yohana', 'abrisam', 70000, '2018-01-12'),
(29, 'yohana', 'avibestiva', 15000, '2018-01-12'),
(30, 'yohana', 'golip_wew12', 25000, '2018-01-12'),
(31, 'yohana', 'fajrida', 20000, '2018-01-12'),
(32, 'yohana', 'Ranipuspita', 400000, '2018-01-12'),
(33, 'yohana', 'Meiimeii99', 50000, '2018-01-12'),
(34, 'yohana', 'Kinikostore', 10000, '2018-01-12'),
(35, 'yohana', 'tlisalia', 40000, '2018-01-12'),
(36, 'yohana', 'fridaputri', 70000, '2018-01-12'),
(37, 'yohana', 'willyanerico', 50000, '2018-01-12'),
(38, 'yohana', 'teniaash', 20000, '2018-01-12'),
(39, 'yohana', 'hsfashionandsport', 5000, '2018-01-12'),
(40, 'yohana', 'FITRIA', 50000, '2018-01-12'),
(41, 'yohana', 'Andry.vn', 10000, '2018-01-12'),
(42, 'yohana', 'Labibavegah', 25000, '2018-01-12'),
(43, 'yohana', 'Sabell_22', 50000, '2018-01-13'),
(44, 'yohana', 'kekedos', 100000, '2018-01-13'),
(45, 'yohana', 'rachelbeatraxer', 100000, '2018-01-13'),
(46, 'yohana', 'Liajulya', 20000, '2018-01-13'),
(47, 'yohana', 'Saa1441', 20000, '2018-01-13'),
(48, 'yohana', 'rye90ziel', 20000, '2018-01-14'),
(49, 'yohana', 'rikafazri', 25000, '2018-01-14'),
(50, 'yohana', 'gween_nath', 50000, '2018-01-14'),
(51, 'yohana', 'andry.vn', 20000, '2018-01-14'),
(52, 'yohana', 'venenoc', 50000, '2018-01-14'),
(53, 'yohana', 'Vennymareta', 10000, '2018-01-14'),
(54, 'yohana', 'Junnoraa', 20000, '2018-01-14'),
(55, 'yohana', 'Aya07', 20000, '2018-01-14'),
(56, 'yohana', 'Vinaprpurnama', 100000, '2018-01-15'),
(57, 'yohana', 'Nurjaannah', 25000, '2018-01-15'),
(58, 'yohana', 'echadelaa', 30000, '2018-01-15'),
(59, 'yohana', 'GENDHIS', 100000, '2018-01-15'),
(60, 'yohana', 'Kinikostore', 5000, '2018-01-15'),
(61, 'yohana', 'indahps', 20000, '2018-01-15'),
(62, 'yohana', 'icha_rizkya', 100000, '2018-01-15'),
(63, 'yohana', 'novita', 50000, '2018-01-15'),
(64, 'yohana', 'Indahps', 50000, '2018-01-15'),
(65, 'yohana', 'aldnco', 100000, '2018-01-15'),
(66, 'yohana', 'Wahyunuriati1', 20000, '2018-01-15'),
(67, 'yohana', 'dika.andikaa', 20000, '2018-01-15'),
(68, 'yohana', 'Rahmanda', 30000, '2018-01-16'),
(69, 'yohana', 'Keke', 50000, '2018-01-16'),
(70, 'yohana', 'Keke', 100000, '2018-01-16'),
(71, 'yohana', 'rachelbeatraxer', 50000, '2018-01-16'),
(72, 'yohana', 'Novita', 100000, '2018-01-17'),
(73, 'yohana', 'Navisha', 50000, '2018-01-17'),
(74, 'yohana', 'samantha16', 50000, '2018-01-17'),
(75, 'yohana', 'novita', 8300, '2018-01-17'),
(76, 'yohana', 'novita', 31620, '2018-01-17'),
(77, 'yohana', 'nurjaannah', 9500, '2018-01-17'),
(78, 'yohana', 'abrisam', 18500, '2018-01-17'),
(79, 'yohana', 'aya07', 10000, '2018-01-17'),
(80, 'yohana', 'FITRIA', 9000, '2018-01-17'),
(81, 'yohana', 'indahps', 9000, '2018-01-17'),
(82, 'yohana', 'icha_rizkya', 100000, '2018-01-17'),
(83, 'yohana', 'wahyunuriati1', 18600, '2018-01-17'),
(84, 'yohana', 'golip_wew12', 25000, '2018-01-17'),
(85, 'Faridriawan', 'Farisys40', 50000, '2018-01-18'),
(86, 'Faridriawan', 'Dzaki', 17000, '2018-01-18'),
(87, 'Faridriawan', 'Idhata', 50000, '2018-01-22'),
(88, 'Faridriawan', 'Hadipermana', 35000, '2018-01-23'),
(89, 'Faridriawan', 'Rafialsaidi', 8000, '2018-01-23'),
(90, 'Faridriawan', 'Ayuindri13', 145000, '2018-01-23'),
(91, 'Faridriawan', 'Farisys40', 50000, '2018-01-23'),
(92, 'Faridriawan', 'Zhee', 145000, '2018-01-23'),
(93, 'Faridriawan', 'agung2104', 180000, '2018-01-23'),
(94, 'Faridriawan', 'agung2104', 160000, '2018-01-25'),
(95, 'Faridriawan', 'Bayuardiantoro', 30000, '2018-01-25'),
(96, 'Faridriawan', 'RahmatShubhi', 15000, '2018-01-25'),
(97, 'Faridriawan', 'Becil27062000', 16000, '2018-01-25'),
(98, 'Faridriawan', 'Bayuardiantoro', 50000, '2018-01-25'),
(99, 'Faridriawan', 'Imambukhari', 40000, '2018-01-26'),
(100, 'Faridriawan', 'Idhata', 40000, '2018-01-26'),
(101, 'Faridriawan', 'Adelhs', 30000, '2018-01-27'),
(102, 'Faridriawan', 'agung2104', 200000, '2018-01-27'),
(103, 'Faridriawan', 'Prasetyou18', 50000, '2018-01-28'),
(104, 'Faridriawan', 'Bayuardiantoro', 10000, '2018-01-28'),
(105, 'Faridriawan', 'Bayuardiantoro', 1003000, '2018-01-28'),
(106, 'Faridriawan', 'Bayuardiantoro', 103000, '2018-01-28'),
(107, 'Bayuardiantoro', 'Farisys40', 103000, '2018-01-28'),
(108, 'Faridriawan', 'Farisys40', 50000, '2018-01-28'),
(109, 'Faridriawan', 'Prasetyou18', 50000, '2018-01-29'),
(110, 'Faridriawan', 'Imambukhari', 80000, '2018-01-29'),
(111, 'Faridriawan', 'Bayuardiantoro', 50000, '2018-01-30'),
(112, 'Faridriawan', 'Farisys40', 100000, '2018-01-30'),
(113, 'Faridriawan', 'Faridriawan', 150000, '2018-01-31'),
(114, 'Faridriawan', 'Farisys40', 150000, '2018-01-31'),
(115, 'Faridriawan', 'Farisys40', 100000, '2018-02-01'),
(116, 'Faridriawan', 'Budiarto', 100000, '2018-02-01'),
(117, 'Faridriawan', 'Mukhibin85', 100000, '2018-02-01'),
(118, 'Faridriawan', 'Rahman', 25000, '2018-02-01'),
(119, 'Faridriawan', 'Faridriawan', 100000, '2018-02-01'),
(120, 'Faridriawan', 'Farisys40', 100000, '2018-02-01'),
(121, 'Farisys40', 'ferdika093', 50000, '2018-02-02'),
(122, 'Faridriawan', 'Mukhibin85', 290000, '2018-02-02'),
(123, 'Faridriawan', 'Dhafa.Store', 90000, '2018-02-02'),
(124, 'Faridriawan', 'Ayuindri13', 90000, '2018-02-02'),
(125, 'Faridriawan', 'Rama29', 40000, '2018-02-02'),
(126, 'Faridriawan', 'Bayuardiantoro', 50000, '2018-02-02'),
(127, 'Faridriawan', 'Prasetyou18', 50000, '2018-02-03'),
(128, 'Faridriawan', 'IkahennyS', 80000, '2018-02-03'),
(129, 'Faridriawan', 'Farisys40', 120000, '2018-02-03'),
(130, 'Faridriawan', 'sakinah', 100000, '2018-02-03'),
(131, 'Faridriawan', 'Adelhs', 100000, '2018-02-03'),
(132, 'Farisys40', 'giraldyhudatama19', 10000, '2018-02-04'),
(133, 'Faridriawan', 'IkahennyS', 50000, '2018-02-04'),
(134, 'Faridriawan', 'Adelhs', 200000, '2018-02-04'),
(135, 'Farisys40', 'Ramadhan_sadewo', 25000, '2018-02-05'),
(136, 'Faridriawan', 'tulusm_01', 45000, '2018-02-06'),
(137, 'Faridriawan', 'Bayuardiansyahp', 100000, '2018-02-06'),
(138, 'Faridriawan', 'Sandisetann', 75000, '2018-02-07'),
(139, 'Faridriawan', 'Bayuardiantoro', 55000, '2018-02-07'),
(140, 'Faridriawan', 'Budiarto', 200000, '2018-02-07'),
(141, 'Faridriawan', 'giraldyhudatama19', 190000, '2018-02-08'),
(142, 'Faridriawan', 'Yogipray', 200000, '2018-02-09'),
(143, 'Faridriawan', 'Bayuardiantoro', 55000, '2018-02-10'),
(144, 'Faridriawan', 'Mukhibin85', 200000, '2018-02-10'),
(145, 'Faridriawan', 'Prasetyou18', 50000, '2018-02-10'),
(146, 'Faizal', 'faizalyl', 9910200, '2018-02-25'),
(147, 'admin', 'dodoy123', 10700, '2018-03-16'),
(148, 'admin', 'azzawi', 1000, '2018-03-16'),
(149, 'admin', 'qtut', 15000, '2018-03-18'),
(150, 'admin', 'Fakhrirmdhn', 5000, '2018-03-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `balance` double NOT NULL,
  `level` enum('Member','Agen','Reseller','Admin','Developers') COLLATE utf8_swedish_ci NOT NULL,
  `registered` date NOT NULL,
  `status` enum('Active','Suspended') COLLATE utf8_swedish_ci NOT NULL,
  `api_key` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `uplink` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `balance`, `level`, `registered`, `status`, `api_key`, `uplink`) VALUES
(75, 'subangsmm', '150402ds075', 9.99999999999999e18, 'Developers', '2018-08-30', 'Active', '', ''),
(76, 'demo', 'ping123', 0, 'Member', '2018-08-31', 'Active', 'X68qcA4F2qbaKDzVoA8z', 'subangsmm');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `deposits_history`
--
ALTER TABLE `deposits_history`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `deposits_method`
--
ALTER TABLE `deposits_method`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `history_topup`
--
ALTER TABLE `history_topup`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders_bank`
--
ALTER TABLE `orders_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders_dm`
--
ALTER TABLE `orders_dm`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders_line`
--
ALTER TABLE `orders_line`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders_pulsa`
--
ALTER TABLE `orders_pulsa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `pesan_tsel`
--
ALTER TABLE `pesan_tsel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `provider_pulsa`
--
ALTER TABLE `provider_pulsa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services_bank`
--
ALTER TABLE `services_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services_dm`
--
ALTER TABLE `services_dm`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services_line`
--
ALTER TABLE `services_line`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services_pulsa`
--
ALTER TABLE `services_pulsa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `service_cat`
--
ALTER TABLE `service_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tickets_message`
--
ALTER TABLE `tickets_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indeks untuk tabel `top`
--
ALTER TABLE `top`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `topbuyer`
--
ALTER TABLE `topbuyer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `topup`
--
ALTER TABLE `topup`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transfer_balance`
--
ALTER TABLE `transfer_balance`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `deposits_history`
--
ALTER TABLE `deposits_history`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=636;

--
-- AUTO_INCREMENT untuk tabel `deposits_method`
--
ALTER TABLE `deposits_method`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=542;

--
-- AUTO_INCREMENT untuk tabel `history_topup`
--
ALTER TABLE `history_topup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `orders_bank`
--
ALTER TABLE `orders_bank`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orders_dm`
--
ALTER TABLE `orders_dm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `orders_line`
--
ALTER TABLE `orders_line`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `orders_pulsa`
--
ALTER TABLE `orders_pulsa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesan_tsel`
--
ALTER TABLE `pesan_tsel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT untuk tabel `provider`
--
ALTER TABLE `provider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `provider_pulsa`
--
ALTER TABLE `provider_pulsa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT untuk tabel `services_bank`
--
ALTER TABLE `services_bank`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `services_dm`
--
ALTER TABLE `services_dm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `services_line`
--
ALTER TABLE `services_line`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `services_pulsa`
--
ALTER TABLE `services_pulsa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT untuk tabel `tickets_message`
--
ALTER TABLE `tickets_message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `top`
--
ALTER TABLE `top`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT untuk tabel `topbuyer`
--
ALTER TABLE `topbuyer`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `topup`
--
ALTER TABLE `topup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transfer_balance`
--
ALTER TABLE `transfer_balance`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
