-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2026 at 08:03 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ci3`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `kode_buku` varchar(20) NOT NULL,
  `judul_buku` varchar(200) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `tahun` year(4) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `lokasi_rak` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_buku`, `judul_buku`, `penulis`, `penerbit`, `tahun`, `id_kategori`, `stok`, `lokasi_rak`) VALUES
(1, 'BK001', 'Pemrograman Web dengan PHP', 'Andi Saputra', 'Gramedia', 2023, 7, 10, 'RAK A1'),
(2, 'BK002', 'Belajar MySQL dari Nol', 'Budi Raharjo', 'Informatika', 2022, 2, 5, 'RAK B2'),
(3, 'BK003', 'Framework CodeIgniter 3', 'Citra Dewi', 'Elex Media', 2024, 7, 8, 'RAK A3'),
(4, 'BK004', 'UI/UX Design Dasar', 'Dian Sastro', 'Andi Offset', 2021, 3, 3, 'RAK C1'),
(5, 'BK005', 'Algoritma dan Struktur Data', 'Eko Prasetyo', 'Graha Ilmu', 2023, 2, 12, 'RAK B1'),
(6, 'BK006', 'Javascript untuk Pemula', 'Fajar Nugroho', 'MediaKom', 2022, 7, 7, 'RAK A2'),
(7, 'BK007', 'Basis Data Terapan', 'Gina Lestari', 'Informatika', 2023, 3, 4, 'RAK C2'),
(8, 'BK008', 'Rekayasa Perangkat Lunak', 'Hendra Wijaya', 'Gramedia', 2024, 7, 6, 'RAK A4'),
(9, 'BK009', 'Keamanan Web', 'Indra Kusuma', 'Andi Offset', 2021, 2, 2, 'RAK B3'),
(10, 'BK010', 'Cloud Computing Dasar', 'Joko Susilo', 'Elex Media', 2023, 3, 9, 'RAK C3');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`) VALUES
(2, 'Database'),
(3, 'Desain'),
(7, 'computing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
