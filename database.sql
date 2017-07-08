-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 08, 2017 at 02:07 PM
-- Server version: 10.1.23-MariaDB
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employees`
--
CREATE DATABASE IF NOT EXISTS `employees` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `employees`;

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

--
-- Dumping data for table `analisa_alternatif`
--

INSERT INTO `analisa_alternatif` (`alternatif_pertama`, `nilai_analisa_alternatif`, `hasil_analisa_alternatif`, `alternatif_kedua`, `id_kriteria`) VALUES
('A1', 1, 0.69230769230769, 'A1', 'C1'),
('A1', 1, 0.69230769230769, 'A1', 'C2'),
('A1', 1, 0.09375, 'A1', 'C3'),
('A1', 1, 0.087366689383339, 'A1', 'C4'),
('A1', 1, 0.69230769230769, 'A1', 'C5'),
('A1', 9, 0.87096774193548, 'A2', 'C1'),
('A1', 9, 0.87096774193548, 'A2', 'C2'),
('A1', 3, 0.22237002490505, 'A2', 'C3'),
('A1', 4, 0.39204144101719, 'A2', 'C4'),
('A1', 9, 0.87096774193548, 'A2', 'C5'),
('A1', 9, 0.46820809248555, 'A3', 'C1'),
('A1', 9, 0.46820809248555, 'A3', 'C2'),
('A1', 3, 0.29268292682927, 'A3', 'C3'),
('A1', 5, 0.3804347826087, 'A3', 'C4'),
('A1', 9, 0.46820809248555, 'A3', 'C5'),
('A1', 9, 0.3201581027668, 'A4', 'C1'),
('A1', 9, 0.3201581027668, 'A4', 'C2'),
('A1', 0.25, 0.043475740536781, 'A4', 'C3'),
('A1', 0.143, 0.015930780942478, 'A4', 'C4'),
('A1', 9, 0.3201581027668, 'A4', 'C5'),
('A1', 9, 0.24324324324324, 'A5', 'C1'),
('A1', 9, 0.24324324324324, 'A5', 'C2'),
('A1', 0.2, 0.041814760610496, 'A5', 'C3'),
('A1', 0.333, 0.064459930313589, 'A5', 'C4'),
('A1', 9, 0.24324324324324, 'A5', 'C5'),
('A2', 0.11111111111111, 0.076923076923076, 'A1', 'C1'),
('A2', 0.11111111111111, 0.076923076923076, 'A1', 'C2'),
('A2', 0.33333333333333, 0.03125, 'A1', 'C3'),
('A2', 0.25, 0.021841672345835, 'A1', 'C4'),
('A2', 0.11111111111111, 0.076923076923076, 'A1', 'C5'),
('A2', 1, 0.096774193548387, 'A2', 'C1'),
('A2', 1, 0.096774193548387, 'A2', 'C2'),
('A2', 1, 0.074123341635016, 'A2', 'C3'),
('A2', 1, 0.098010360254297, 'A2', 'C4'),
('A2', 1, 0.096774193548387, 'A2', 'C5'),
('A2', 9, 0.46820809248555, 'A3', 'C1'),
('A2', 9, 0.46820809248555, 'A3', 'C2'),
('A2', 2, 0.19512195121951, 'A3', 'C3'),
('A2', 5, 0.3804347826087, 'A3', 'C4'),
('A2', 9, 0.46820809248555, 'A3', 'C5'),
('A2', 9, 0.3201581027668, 'A4', 'C1'),
('A2', 9, 0.3201581027668, 'A4', 'C2'),
('A2', 0.167, 0.029041794678569, 'A4', 'C3'),
('A2', 0.5, 0.055702031267407, 'A4', 'C4'),
('A2', 9, 0.3201581027668, 'A4', 'C5'),
('A2', 9, 0.24324324324324, 'A5', 'C1'),
('A2', 9, 0.24324324324324, 'A5', 'C2'),
('A2', 0.333, 0.069621576416475, 'A5', 'C3'),
('A2', 0.333, 0.064459930313589, 'A5', 'C4'),
('A2', 9, 0.24324324324324, 'A5', 'C5'),
('A3', 0.11111111111111, 0.076923076923076, 'A1', 'C1'),
('A3', 0.11111111111111, 0.076923076923076, 'A1', 'C2'),
('A3', 0.33333333333333, 0.03125, 'A1', 'C3'),
('A3', 0.2, 0.017473337876668, 'A1', 'C4'),
('A3', 0.11111111111111, 0.076923076923076, 'A1', 'C5'),
('A3', 0.11111111111111, 0.010752688172043, 'A2', 'C1'),
('A3', 0.11111111111111, 0.010752688172043, 'A2', 'C2'),
('A3', 0.5, 0.037061670817508, 'A2', 'C3'),
('A3', 0.2, 0.019602072050859, 'A2', 'C4'),
('A3', 0.11111111111111, 0.010752688172043, 'A2', 'C5'),
('A3', 1, 0.052023121387283, 'A3', 'C1'),
('A3', 1, 0.052023121387283, 'A3', 'C2'),
('A3', 1, 0.097560975609756, 'A3', 'C3'),
('A3', 1, 0.076086956521739, 'A3', 'C4'),
('A3', 1, 0.052023121387283, 'A3', 'C5'),
('A3', 9, 0.3201581027668, 'A4', 'C1'),
('A3', 9, 0.3201581027668, 'A4', 'C2'),
('A3', 4, 0.69561184858849, 'A4', 'C3'),
('A3', 7, 0.7798284377437, 'A4', 'C4'),
('A3', 9, 0.3201581027668, 'A4', 'C5'),
('A3', 9, 0.24324324324324, 'A5', 'C1'),
('A3', 9, 0.24324324324324, 'A5', 'C2'),
('A3', 0.25, 0.052268450763119, 'A5', 'C3'),
('A3', 0.5, 0.096786682152536, 'A5', 'C4'),
('A3', 9, 0.24324324324324, 'A5', 'C5'),
('A4', 0.11111111111111, 0.076923076923076, 'A1', 'C1'),
('A4', 0.11111111111111, 0.076923076923076, 'A1', 'C2'),
('A4', 4, 0.375, 'A1', 'C3'),
('A4', 6.993006993007, 0.61095586981356, 'A1', 'C4'),
('A4', 0.11111111111111, 0.076923076923076, 'A1', 'C5'),
('A4', 0.11111111111111, 0.010752688172043, 'A2', 'C1'),
('A4', 0.11111111111111, 0.010752688172043, 'A2', 'C2'),
('A4', 5.9880239520958, 0.44385234511986, 'A2', 'C3'),
('A4', 2, 0.19602072050859, 'A2', 'C4'),
('A4', 0.11111111111111, 0.010752688172043, 'A2', 'C5'),
('A4', 0.11111111111111, 0.0057803468208092, 'A3', 'C1'),
('A4', 0.11111111111111, 0.0057803468208092, 'A3', 'C2'),
('A4', 0.25, 0.024390243902439, 'A3', 'C3'),
('A4', 0.14285714285714, 0.010869565217391, 'A3', 'C4'),
('A4', 0.11111111111111, 0.0057803468208092, 'A3', 'C5'),
('A4', 1, 0.035573122529644, 'A4', 'C1'),
('A4', 1, 0.035573122529644, 'A4', 'C2'),
('A4', 1, 0.17390296214712, 'A4', 'C3'),
('A4', 1, 0.11140406253481, 'A4', 'C4'),
('A4', 1, 0.035573122529644, 'A4', 'C5'),
('A4', 9, 0.24324324324324, 'A5', 'C1'),
('A4', 9, 0.24324324324324, 'A5', 'C2'),
('A4', 3, 0.62722140915743, 'A5', 'C3'),
('A4', 3, 0.58072009291521, 'A5', 'C4'),
('A4', 9, 0.24324324324324, 'A5', 'C5'),
('A5', 0.11111111111111, 0.076923076923076, 'A1', 'C1'),
('A5', 0.11111111111111, 0.076923076923076, 'A1', 'C2'),
('A5', 5, 0.46875, 'A1', 'C3'),
('A5', 3.003003003003, 0.2623624305806, 'A1', 'C4'),
('A5', 0.11111111111111, 0.076923076923076, 'A1', 'C5'),
('A5', 0.11111111111111, 0.010752688172043, 'A2', 'C1'),
('A5', 0.11111111111111, 0.010752688172043, 'A2', 'C2'),
('A5', 3.003003003003, 0.22259261752257, 'A2', 'C3'),
('A5', 3.003003003003, 0.29432540616906, 'A2', 'C4'),
('A5', 0.11111111111111, 0.010752688172043, 'A2', 'C5'),
('A5', 0.11111111111111, 0.0057803468208092, 'A3', 'C1'),
('A5', 0.11111111111111, 0.0057803468208092, 'A3', 'C2'),
('A5', 4, 0.39024390243902, 'A3', 'C3'),
('A5', 2, 0.15217391304348, 'A3', 'C4'),
('A5', 0.11111111111111, 0.0057803468208092, 'A3', 'C5'),
('A5', 0.11111111111111, 0.0039525691699604, 'A4', 'C1'),
('A5', 0.11111111111111, 0.0039525691699604, 'A4', 'C2'),
('A5', 0.33333333333333, 0.05796765404904, 'A4', 'C3'),
('A5', 0.33333333333333, 0.037134687511604, 'A4', 'C4'),
('A5', 0.11111111111111, 0.0039525691699604, 'A4', 'C5'),
('A5', 1, 0.027027027027027, 'A5', 'C1'),
('A5', 1, 0.027027027027027, 'A5', 'C2'),
('A5', 1, 0.20907380305248, 'A5', 'C3'),
('A5', 1, 0.19357336430507, 'A5', 'C4'),
('A5', 1, 0.027027027027027, 'A5', 'C5'),
('A6', 1, 0, 'A6', 'C1');

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
('C1', 1, 0.69230769230769, 'C1'),
('C1', 9, 0.87096774193548, 'C2'),
('C1', 9, 0.46820809248555, 'C3'),
('C1', 9, 0.3201581027668, 'C4'),
('C1', 9, 0.24324324324324, 'C5'),
('C2', 0.11111111111111, 0.076923076923076, 'C1'),
('C2', 1, 0.096774193548387, 'C2'),
('C2', 9, 0.46820809248555, 'C3'),
('C2', 9, 0.3201581027668, 'C4'),
('C2', 9, 0.24324324324324, 'C5'),
('C3', 0.11111111111111, 0.076923076923076, 'C1'),
('C3', 0.11111111111111, 0.010752688172043, 'C2'),
('C3', 1, 0.052023121387283, 'C3'),
('C3', 9, 0.3201581027668, 'C4'),
('C3', 9, 0.24324324324324, 'C5'),
('C4', 0.11111111111111, 0.076923076923076, 'C1'),
('C4', 0.11111111111111, 0.010752688172043, 'C2'),
('C4', 0.11111111111111, 0.0057803468208092, 'C3'),
('C4', 1, 0.035573122529644, 'C4'),
('C4', 9, 0.24324324324324, 'C5'),
('C5', 0.11111111111111, 0.076923076923076, 'C1'),
('C5', 0.11111111111111, 0.010752688172043, 'C2'),
('C5', 0.11111111111111, 0.0057803468208092, 'C3'),
('C5', 0.11111111111111, 0.0039525691699604, 'C4'),
('C5', 1, 0.027027027027027, 'C5');

-- --------------------------------------------------------

--
-- Table structure for table `data_alternatif`
--

CREATE TABLE `data_alternatif` (
  `id_alternatif` varchar(2) NOT NULL,
  `nik` char(18) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kelamin` enum('pria','wanita') NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `hasil_akhir` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_alternatif`
--

INSERT INTO `data_alternatif` (`id_alternatif`, `nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `kelamin`, `alamat`, `jabatan`, `tanggal_masuk`, `pendidikan`, `hasil_akhir`) VALUES
('A1', '2147126186', 'Rizky', 'Indramayu', '1900-12-20', 'wanita', 'Losarang', 'Staff', '2017-07-08', 'Statistika', 0.3351653404287869),
('A2', '230932094823', 'Syarif', 'Padang', '1900-12-07', 'pria', 'Padang', 'Pegawai', '1900-12-28', 'Sistem Informasi', 0.1787407990391654),
('A3', '01749874934', 'Said', 'Blitang', '1901-01-27', 'pria', 'Blitang', 'Kurir', '1900-12-27', 'Sistem Informasi', 0.15810625424562932),
('A4', '4587349857', 'Tyo', 'Kalimantan Barat', '1900-12-29', 'pria', 'Kalimantan Barat', 'Wakil Ketua', '1900-12-16', 'Sistem Informasi', 0.1878573922066305),
('A5', '6096214124', 'Warham', 'Sulawesi', '1900-12-20', 'pria', 'Sulawesi', 'Satpam', '1900-12-29', 'Sistem Informasi', 0.14013021407978402);

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
('C1', 'Kejujuran', 1.4444444444444402, 0.5189769745477519),
('C2', 'Loyalitas', 10.333333333333332, 0.2410613417934106),
('C3', 'Komitmen', 19.22222222222222, 0.14062004649848842),
('C4', 'Kedisiplinan', 28.11111111111111, 0.07445449553776244),
('C5', 'Kerjasama', 37, 0.02488714162258312);

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

--
-- Dumping data for table `jum_alt_kri`
--

INSERT INTO `jum_alt_kri` (`id_alternatif`, `id_kriteria`, `jumlah_alt_kri`, `skor_alt_kri`, `hasil_alt_kri`) VALUES
('A1', 'C1', 1.4444444444444402, 0.36592055813710767, 0.18990434418682),
('A1', 'C2', 1.4444444444444402, 0.36592055813710767, 0.088209300734325),
('A1', 'C3', 10.66666666666666, 0.22485389795781163, 0.031618965586194),
('A1', 'C4', 11.44600999601, 0.2156521046816235, 0.016056268665727),
('A1', 'C5', 1.4444444444444402, 0.3767592678145269, 0.0093764612557209),
('A2', 'C1', 10.333333333333332, 0.19570398111753304, 0.10156586002733),
('A2', 'C2', 10.333333333333332, 0.19570398111753304, 0.047176664282505),
('A2', 'C3', 13.4910269550988, 0.11744785512253837, 0.016515522848479),
('A2', 'C4', 10.203003003003001, 0.11910833018139519, 0.008868150638001),
('A2', 'C5', 10.333333333333332, 0.18542110270562234, 0.0046146012428504),
('A3', 'C1', 19.22222222222222, 0.16069852227257095, 0.083398832903313),
('A3', 'C2', 19.22222222222222, 0.16069852227257095, 0.038738201403244),
('A3', 'C3', 10.25, 0.1439972650437816, 0.020248902106112),
('A3', 'C4', 13.14285714285714, 0.1574868231001113, 0.011725601967764),
('A3', 'C5', 19.22222222222222, 0.16051324518406804, 0.0039947158651963),
('A4', 'C1', 28.11111111111111, 0.1710314652638168, 0.088761392395085),
('A4', 'C2', 28.11111111111111, 0.1710314652638168, 0.041229074505389),
('A4', 'C3', 5.75033333333333, 0.24429208917361944, 0.034352364938807),
('A4', 'C4', 8.976333333333331, 0.25871758242969267, 0.019262687086552),
('A4', 'C5', 28.11111111111111, 0.17084618817531388, 0.0042518732807975),
('A5', 'C1', 37, 0.10664547320896975, 0.055346545035204),
('A5', 'C2', 37, 0.10664547320896975, 0.025708100867947),
('A5', 'C3', 4.7829999999999995, 0.26940889270224844, 0.037884291018896),
('A5', 'C4', 5.166, 0.249035159607177, 0.018541787179719),
('A5', 'C5', 37, 0.10646019612046688, 0.002649489978018);

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
  `role` enum('atasan','pegawai','manajer') NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `role`, `username`, `password`) VALUES
(1, 'Imam Digmi', 'pegawai', 'pegawai', '047aeeb234644b9e2d4138ed3bc7976a'),
(2, 'Sriwani', 'atasan', 'atasan', '221ef2597affd3f083ac94af9e1b1e7f'),
(3, 'Dede', 'manajer', 'dede', 'b4be1c568a6dc02dcaf2849852bdb13e');

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
