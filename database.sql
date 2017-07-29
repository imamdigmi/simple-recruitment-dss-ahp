-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 29, 2017 at 10:46 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recruitment`
--
CREATE DATABASE IF NOT EXISTS `recruitment` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `recruitment`;

-- --------------------------------------------------------

--
-- Table structure for table `analisa_alternatif`
--

CREATE TABLE `analisa_alternatif` (
  `alternatif_pertama` varchar(2) NOT NULL,
  `nilai_analisa_alternatif` double NOT NULL,
  `hasil_analisa_alternatif` double NOT NULL,
  `alternatif_kedua` varchar(2) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `analisa_kriteria`
--

CREATE TABLE `analisa_kriteria` (
  `kriteria_pertama` varchar(2) NOT NULL,
  `nilai_analisa_kriteria` double NOT NULL,
  `hasil_analisa_kriteria` double NOT NULL,
  `kriteria_kedua` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analisa_kriteria`
--

INSERT INTO `analisa_kriteria` (`kriteria_pertama`, `nilai_analisa_kriteria`, `hasil_analisa_kriteria`, `kriteria_kedua`) VALUES
('C1', 1, 0.37037037037037, 'C1'),
('C1', 2, 0, 'C2'),
('C1', 2, 0, 'C3'),
('C1', 2, 0, 'C4'),
('C1', 5, 0, 'C5'),
('C2', 0.5, 0, 'C1'),
('C2', 1, 0.13333333333333, 'C2'),
('C2', 0.5, 0, 'C3'),
('C2', 0.5, 0, 'C4'),
('C2', 2, 0, 'C5'),
('C3', 0.5, 0, 'C1'),
('C3', 2, 0, 'C2'),
('C3', 1, 0.16666666666667, 'C3'),
('C3', 0.5, 0, 'C4'),
('C3', 2, 0, 'C5'),
('C4', 0.5, 0, 'C1'),
('C4', 2, 0, 'C2'),
('C4', 2, 0, 'C3'),
('C4', 1, 0.22222222222222, 'C4'),
('C4', 2, 0, 'C5'),
('C5', 0.2, 0, 'C1'),
('C5', 0.5, 0, 'C2'),
('C5', 0.5, 0, 'C3'),
('C5', 0.5, 0, 'C4'),
('C5', 1, 0.083333333333333, 'C5');

-- --------------------------------------------------------

--
-- Table structure for table `data_alternatif`
--

CREATE TABLE `data_alternatif` (
  `id_alternatif` varchar(2) NOT NULL,
  `nim` char(9) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kelamin` enum('pria','wanita') NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `hasil_akhir` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_alternatif`
--

INSERT INTO `data_alternatif` (`id_alternatif`, `nim`, `nama`, `tempat_lahir`, `tanggal_lahir`, `kelamin`, `alamat`, `no_hp`, `hasil_akhir`) VALUES
('A1', '135610101', 'Rizky', 'Indramayu', '1900-12-20', 'wanita', 'Losarang', '089123456789', 0.3351653404287869),
('A2', '135610102', 'Syarif', 'Padang', '1900-12-07', 'pria', 'Padang', '098765432123', 0.1787407990391654),
('A3', '135610103', 'Said', 'Blitang', '1901-01-27', 'pria', 'Blitang', '081235678765', 0.15810625424562932),
('A4', '135610104', 'Tyo', 'Kalimantan Barat', '1900-12-29', 'pria', 'Kalimantan Barat', '087676545435', 0.1878573922066305),
('A5', '135610105', 'Warham', 'Sulawesi', '2017-07-31', 'pria', 'Sulawesi', '081224898765', 0.14013021407978402);

-- --------------------------------------------------------

--
-- Table structure for table `data_kriteria`
--

CREATE TABLE `data_kriteria` (
  `id_kriteria` varchar(2) NOT NULL,
  `nama_kriteria` varchar(45) NOT NULL,
  `jumlah_kriteria` double NOT NULL,
  `bobot_kriteria` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kriteria`
--

INSERT INTO `data_kriteria` (`id_kriteria`, `nama_kriteria`, `jumlah_kriteria`, `bobot_kriteria`) VALUES
('C1', 'Kejujuran', 2.7, 0.074074074074074),
('C2', 'Loyalitas', 7.5, 0.026666666666666),
('C3', 'Komitmen', 6, 0.033333333333334),
('C4', 'Kedisiplinan', 4.5, 0.044444444444443995),
('C5', 'Kerjasama', 12, 0.0166666666666666);

-- --------------------------------------------------------

--
-- Table structure for table `jum_alt_kri`
--

CREATE TABLE `jum_alt_kri` (
  `id_alternatif` varchar(2) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL,
  `jumlah_alt_kri` double NOT NULL,
  `skor_alt_kri` double NOT NULL,
  `hasil_alt_kri` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `jum_nilai` double NOT NULL,
  `ket_nilai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `jum_nilai`, `ket_nilai`) VALUES
(2, 9, 'Mutlak sangat penting dari'),
(3, 8, 'Mendekati mutlak dari'),
(8, 7, 'Sangat penting dari'),
(9, 6, 'Mendekati sangat penting dari'),
(10, 5, 'Lebih penting dari'),
(11, 4, 'Mendekati lebih penting dari'),
(12, 3, 'Sedikit lebih penting dari'),
(13, 2, 'Mendekati sedikit lebih penting dari'),
(14, 1, 'Sama penting dengan'),
(15, 0.5, '1 bagi mendekati sedikit lebih penting dari'),
(16, 0.333, '1 bagi sedikit lebih penting dari'),
(17, 0.25, '1 bagi mendekati lebih penting dari'),
(18, 0.2, '1 bagi lebih penting dari'),
(19, 0.167, '1 bagi mendekati sangat penting dari'),
(20, 0.143, '1 bagi sangat penting dari'),
(21, 0.125, '1 bagi mendekati mutlak dari'),
(22, 0.1, '1 bagi mutlak sangat penting dari');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `role` enum('operator','wakil','ketua') NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `role`, `username`, `password`) VALUES
(1, 'Imam Digmi', 'operator', 'operator', '4b583376b2767b923c3e1da60d10de59'),
(2, 'Wakil Ketua', 'wakil', 'wakil', '28d866e5f30ae6386be9f1921e0b2a58'),
(3, 'Kamu', 'operator', 'kamu', '48ec8af8df4bf4347d9b1de4ee7bb092');

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `kriteria` varchar(2) NOT NULL,
  `skor_bobot` double NOT NULL,
  `alternatif` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analisa_alternatif`
--
ALTER TABLE `analisa_alternatif`
  ADD PRIMARY KEY (`alternatif_pertama`,`alternatif_kedua`,`id_kriteria`);

--
-- Indexes for table `analisa_kriteria`
--
ALTER TABLE `analisa_kriteria`
  ADD PRIMARY KEY (`kriteria_pertama`,`kriteria_kedua`);

--
-- Indexes for table `data_alternatif`
--
ALTER TABLE `data_alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `data_kriteria`
--
ALTER TABLE `data_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `jum_alt_kri`
--
ALTER TABLE `jum_alt_kri`
  ADD PRIMARY KEY (`id_alternatif`,`id_kriteria`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`kriteria`,`alternatif`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
