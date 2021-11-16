-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16 Nov 2021 pada 19.45
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mykasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasirapp_terjual`
--

CREATE TABLE `kasirapp_terjual` (
  `id` bigint(20) NOT NULL,
  `kode_barang` varchar(5) NOT NULL,
  `qtyterjual` int(11) NOT NULL,
  `tglterjual` date NOT NULL,
  `nama_barang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Trigger `kasirapp_terjual`
--
DELIMITER $$
CREATE TRIGGER `stokterjual` BEFORE INSERT ON `kasirapp_terjual` FOR EACH ROW BEGIN	
	UPDATE kasirapp_product SET jumlah = jumlah - NEW.qtyterjual
    WHERE kode_barang = NEW.Kode_barang;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kasirapp_terjual`
--
ALTER TABLE `kasirapp_terjual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_barang` (`kode_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kasirapp_terjual`
--
ALTER TABLE `kasirapp_terjual`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
