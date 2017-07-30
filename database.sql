-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 30, 2017 at 07:27 PM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id2405198_spk`
--
CREATE DATABASE IF NOT EXISTS `id2405198_spk` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id2405198_spk`;

-- --------------------------------------------------------

--
-- Table structure for table `analisa_alternatif`
--

CREATE TABLE `analisa_alternatif` (
  `alternatif_pertama` varchar(4) NOT NULL,
  `nilai_analisa_alternatif` double NOT NULL,
  `hasil_analisa_alternatif` double NOT NULL,
  `alternatif_kedua` varchar(4) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analisa_alternatif`
--

INSERT INTO `analisa_alternatif` (`alternatif_pertama`, `nilai_analisa_alternatif`, `hasil_analisa_alternatif`, `alternatif_kedua`, `id_kriteria`) VALUES
('A001', 1, 0.17964071856287, 'A001', 'C1'),
('A001', 5, 0.53097345132743, 'A002', 'C1'),
('A001', 5, 0.41095890410959, 'A003', 'C1'),
('A001', 2, 0.13483146067416, 'A004', 'C1'),
('A001', 2, 0.12903225806452, 'A005', 'C1'),
('A001', 2, 0.12631578947368, 'A006', 'C1'),
('A001', 3, 0.17142857142857, 'A007', 'C1'),
('A001', 2, 0.10666666666667, 'A008', 'C1'),
('A001', 3, 0.13953488372093, 'A009', 'C1'),
('A001', 2, 0.08695652173913, 'A010', 'C1'),
('A001', 2, 0.081632653061224, 'A011', 'C1'),
('A001', 2, 0.076923076923077, 'A012', 'C1'),
('A002', 0.2, 0.035928143712575, 'A001', 'C1'),
('A002', 1, 0.10619469026549, 'A002', 'C1'),
('A002', 3, 0.24657534246575, 'A003', 'C1'),
('A002', 4, 0.26966292134831, 'A004', 'C1'),
('A002', 4, 0.25806451612903, 'A005', 'C1'),
('A002', 4, 0.25263157894737, 'A006', 'C1'),
('A002', 2, 0.11428571428571, 'A007', 'C1'),
('A002', 3, 0.16, 'A008', 'C1'),
('A002', 2, 0.093023255813953, 'A009', 'C1'),
('A002', 3, 0.1304347826087, 'A010', 'C1'),
('A002', 3, 0.12244897959184, 'A011', 'C1'),
('A002', 3, 0.11538461538462, 'A012', 'C1'),
('A003', 0.2, 0.035928143712575, 'A001', 'C1'),
('A003', 0.33333333333333, 0.035398230088495, 'A002', 'C1'),
('A003', 1, 0.082191780821918, 'A003', 'C1'),
('A003', 4, 0.26966292134831, 'A004', 'C1'),
('A003', 3, 0.19354838709677, 'A005', 'C1'),
('A003', 2, 0.12631578947368, 'A006', 'C1'),
('A003', 3, 0.17142857142857, 'A007', 'C1'),
('A003', 3, 0.16, 'A008', 'C1'),
('A003', 2, 0.093023255813953, 'A009', 'C1'),
('A003', 4, 0.17391304347826, 'A010', 'C1'),
('A003', 3, 0.12244897959184, 'A011', 'C1'),
('A003', 3, 0.11538461538462, 'A012', 'C1'),
('A004', 0.5, 0.089820359281437, 'A001', 'C1'),
('A004', 0.25, 0.026548672566372, 'A002', 'C1'),
('A004', 0.25, 0.020547945205479, 'A003', 'C1'),
('A004', 1, 0.067415730337079, 'A004', 'C1'),
('A004', 2, 0.12903225806452, 'A005', 'C1'),
('A004', 2, 0.12631578947368, 'A006', 'C1'),
('A004', 2, 0.11428571428571, 'A007', 'C1'),
('A004', 2, 0.10666666666667, 'A008', 'C1'),
('A004', 2, 0.093023255813953, 'A009', 'C1'),
('A004', 2, 0.08695652173913, 'A010', 'C1'),
('A004', 2, 0.081632653061224, 'A011', 'C1'),
('A004', 3, 0.11538461538462, 'A012', 'C1'),
('A005', 0.5, 0.089820359281437, 'A001', 'C1'),
('A005', 0.25, 0.026548672566372, 'A002', 'C1'),
('A005', 0.33333333333333, 0.027397260273972, 'A003', 'C1'),
('A005', 0.5, 0.033707865168539, 'A004', 'C1'),
('A005', 1, 0.064516129032258, 'A005', 'C1'),
('A005', 2, 0.12631578947368, 'A006', 'C1'),
('A005', 2, 0.11428571428571, 'A007', 'C1'),
('A005', 2, 0.10666666666667, 'A008', 'C1'),
('A005', 2, 0.093023255813953, 'A009', 'C1'),
('A005', 2, 0.08695652173913, 'A010', 'C1'),
('A005', 2, 0.081632653061224, 'A011', 'C1'),
('A005', 2, 0.076923076923077, 'A012', 'C1'),
('A006', 0.5, 0.089820359281437, 'A001', 'C1'),
('A006', 0.25, 0.026548672566372, 'A002', 'C1'),
('A006', 0.5, 0.041095890410959, 'A003', 'C1'),
('A006', 0.5, 0.033707865168539, 'A004', 'C1'),
('A006', 0.5, 0.032258064516129, 'A005', 'C1'),
('A006', 1, 0.063157894736842, 'A006', 'C1'),
('A006', 2, 0.11428571428571, 'A007', 'C1'),
('A006', 2, 0.10666666666667, 'A008', 'C1'),
('A006', 2, 0.093023255813953, 'A009', 'C1'),
('A006', 2, 0.08695652173913, 'A010', 'C1'),
('A006', 3, 0.12244897959184, 'A011', 'C1'),
('A006', 2, 0.076923076923077, 'A012', 'C1'),
('A007', 0.33333333333333, 0.059880239520958, 'A001', 'C1'),
('A007', 0.5, 0.053097345132743, 'A002', 'C1'),
('A007', 0.33333333333333, 0.027397260273972, 'A003', 'C1'),
('A007', 0.5, 0.033707865168539, 'A004', 'C1'),
('A007', 0.5, 0.032258064516129, 'A005', 'C1'),
('A007', 0.5, 0.031578947368421, 'A006', 'C1'),
('A007', 1, 0.057142857142857, 'A007', 'C1'),
('A007', 2, 0.10666666666667, 'A008', 'C1'),
('A007', 2, 0.093023255813953, 'A009', 'C1'),
('A007', 2, 0.08695652173913, 'A010', 'C1'),
('A007', 2, 0.081632653061224, 'A011', 'C1'),
('A007', 2, 0.076923076923077, 'A012', 'C1'),
('A008', 0.5, 0.089820359281437, 'A001', 'C1'),
('A008', 0.33333333333333, 0.035398230088495, 'A002', 'C1'),
('A008', 0.33333333333333, 0.027397260273972, 'A003', 'C1'),
('A008', 0.5, 0.033707865168539, 'A004', 'C1'),
('A008', 0.5, 0.032258064516129, 'A005', 'C1'),
('A008', 0.5, 0.031578947368421, 'A006', 'C1'),
('A008', 0.5, 0.028571428571429, 'A007', 'C1'),
('A008', 1, 0.053333333333333, 'A008', 'C1'),
('A008', 4, 0.18604651162791, 'A009', 'C1'),
('A008', 2, 0.08695652173913, 'A010', 'C1'),
('A008', 2, 0.081632653061224, 'A011', 'C1'),
('A008', 2, 0.076923076923077, 'A012', 'C1'),
('A009', 0.33333333333333, 0.059880239520958, 'A001', 'C1'),
('A009', 0.5, 0.053097345132743, 'A002', 'C1'),
('A009', 0.5, 0.041095890410959, 'A003', 'C1'),
('A009', 0.5, 0.033707865168539, 'A004', 'C1'),
('A009', 0.5, 0.032258064516129, 'A005', 'C1'),
('A009', 0.5, 0.031578947368421, 'A006', 'C1'),
('A009', 0.5, 0.028571428571429, 'A007', 'C1'),
('A009', 0.25, 0.013333333333333, 'A008', 'C1'),
('A009', 1, 0.046511627906977, 'A009', 'C1'),
('A009', 2, 0.08695652173913, 'A010', 'C1'),
('A009', 2, 0.081632653061224, 'A011', 'C1'),
('A009', 2, 0.076923076923077, 'A012', 'C1'),
('A010', 0.5, 0.089820359281437, 'A001', 'C1'),
('A010', 0.33333333333333, 0.035398230088495, 'A002', 'C1'),
('A010', 0.25, 0.020547945205479, 'A003', 'C1'),
('A010', 0.5, 0.033707865168539, 'A004', 'C1'),
('A010', 0.5, 0.032258064516129, 'A005', 'C1'),
('A010', 0.5, 0.031578947368421, 'A006', 'C1'),
('A010', 0.5, 0.028571428571429, 'A007', 'C1'),
('A010', 0.5, 0.026666666666667, 'A008', 'C1'),
('A010', 0.5, 0.023255813953488, 'A009', 'C1'),
('A010', 1, 0.043478260869565, 'A010', 'C1'),
('A010', 2, 0.081632653061224, 'A011', 'C1'),
('A010', 2, 0.076923076923077, 'A012', 'C1'),
('A011', 0.5, 0.089820359281437, 'A001', 'C1'),
('A011', 0.33333333333333, 0.035398230088495, 'A002', 'C1'),
('A011', 0.33333333333333, 0.027397260273972, 'A003', 'C1'),
('A011', 0.5, 0.033707865168539, 'A004', 'C1'),
('A011', 0.5, 0.032258064516129, 'A005', 'C1'),
('A011', 0.33333333333333, 0.021052631578947, 'A006', 'C1'),
('A011', 0.5, 0.028571428571429, 'A007', 'C1'),
('A011', 0.5, 0.026666666666667, 'A008', 'C1'),
('A011', 0.5, 0.023255813953488, 'A009', 'C1'),
('A011', 0.5, 0.021739130434783, 'A010', 'C1'),
('A011', 1, 0.040816326530612, 'A011', 'C1'),
('A011', 2, 0.076923076923077, 'A012', 'C1'),
('A012', 0.5, 0.089820359281437, 'A001', 'C1'),
('A012', 0.33333333333333, 0.035398230088495, 'A002', 'C1'),
('A012', 0.33333333333333, 0.027397260273972, 'A003', 'C1'),
('A012', 0.33333333333333, 0.022471910112359, 'A004', 'C1'),
('A012', 0.5, 0.032258064516129, 'A005', 'C1'),
('A012', 0.5, 0.031578947368421, 'A006', 'C1'),
('A012', 0.5, 0.028571428571429, 'A007', 'C1'),
('A012', 0.5, 0.026666666666667, 'A008', 'C1'),
('A012', 0.5, 0.023255813953488, 'A009', 'C1'),
('A012', 0.5, 0.021739130434783, 'A010', 'C1'),
('A012', 0.5, 0.020408163265306, 'A011', 'C1'),
('A012', 1, 0.038461538461538, 'A012', 'C1');

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
('C1', 1, 0.46153846153846, 'C1'),
('C1', 3, 0.62068965517241, 'C2'),
('C1', 2, 0.30769230769231, 'C3'),
('C1', 3, 0.375, 'C4'),
('C2', 0.33333333333333, 0.15384615384615, 'C1'),
('C2', 1, 0.20689655172414, 'C2'),
('C2', 3, 0.46153846153846, 'C3'),
('C2', 2, 0.25, 'C4'),
('C3', 0.5, 0.23076923076923, 'C1'),
('C3', 0.33333333333333, 0.068965517241379, 'C2'),
('C3', 1, 0.15384615384615, 'C3'),
('C3', 2, 0.25, 'C4'),
('C4', 0.33333333333333, 0.15384615384615, 'C1'),
('C4', 0.5, 0.10344827586207, 'C2'),
('C4', 0.5, 0.076923076923077, 'C3'),
('C4', 1, 0.125, 'C4');

-- --------------------------------------------------------

--
-- Table structure for table `data_alternatif`
--

CREATE TABLE `data_alternatif` (
  `id_alternatif` varchar(4) NOT NULL,
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
('A001', '135610101', 'Imam', 'Jepara', '2017-08-13', 'pria', 'Jeparaaaaa', '08900000001', NULL),
('A002', '135610102', 'Syarif', 'Sumatera Barat', '2017-08-06', 'pria', 'Sumatera Barat', '08900000002', NULL),
('A003', '135610103', 'Said', 'Sumatera Barat', '2017-08-13', 'pria', 'Sumatera Barat', '08900000003', NULL),
('A004', '135610104', 'Yusuf Adi', 'Kalimantan Barat', '2017-08-23', 'pria', 'Sumatera Barat', '08900000004', NULL),
('A005', '135610105', 'Rizky', 'Indramayu', '2017-08-14', 'pria', 'Indramayuu', '08900000005', NULL),
('A006', '135610106', 'Reza', 'Kalimantan Barat', '2017-08-14', 'pria', 'Kalimantan Barat', '08900000006', NULL),
('A007', '135610107', 'Adi Catur', 'Kalimantan Barat', '2017-08-14', 'pria', 'Kalimantan Barat', '08900000007', NULL),
('A008', '135610108', 'Alan wahsahlan', 'Kalimantan Barat', '2017-08-14', 'pria', 'Kalimantan Barat', '08900000008', NULL),
('A009', '135610109', 'Guntur', 'Kalimantan Barat', '2017-08-21', 'pria', 'Kalimantan Barat', '08900000009', NULL),
('A010', '135610110', 'Santo', 'Kalimantan Barat', '2017-08-14', 'pria', 'Kalimantan Barat', '08900000010', NULL),
('A011', '135610111', 'Kalimata', 'Kalimantan Barat', '2018-08-14', 'pria', 'Kalimantan Barat', '08900000011', NULL),
('A012', '135610112', 'Virgo', 'Kalimantan Barat', '2017-08-14', 'pria', 'Kalimantan Barat', '08900000012', NULL);

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
('C1', 'Kejujuran', 2.16666666666666, 0.441230106100795),
('C2', 'Loyalitas', 4.83333333333333, 0.2680702917771875),
('C3', 'Komitmen', 6.5, 0.17589522546418976),
('C4', 'Kedisiplinan', 8, 0.11480437665782425);

-- --------------------------------------------------------

--
-- Table structure for table `jum_alt_kri`
--

CREATE TABLE `jum_alt_kri` (
  `id_alternatif` varchar(4) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL,
  `jumlah_alt_kri` double NOT NULL,
  `skor_alt_kri` double NOT NULL,
  `hasil_alt_kri` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jum_alt_kri`
--

INSERT INTO `jum_alt_kri` (`id_alternatif`, `id_kriteria`, `jumlah_alt_kri`, `skor_alt_kri`, `hasil_alt_kri`) VALUES
('A001', 'C1', 5.56666666666666, 0.18124124631265426, 0),
('A002', 'C1', 9.416666666666652, 0.15871954504611233, 0),
('A003', 'C1', 12.166666666666652, 0.13160364318658258, 0),
('A004', 'C1', 14.83333333333333, 0.08813584848998951, 0),
('A005', 'C1', 15.5, 0.07731616369050183, 0),
('A006', 'C1', 15.83333333333333, 0.07390774680838817, 0),
('A007', 'C1', 17.5, 0.06168872944397275, 0),
('A008', 'C1', 18.75, 0.06363535432942467, 0),
('A009', 'C1', 21.5, 0.04879558280440991, 0),
('A010', 'C1', 23, 0.04365327597282917, 0),
('A011', 'C1', 24.5, 0.03813390449896458, 0),
('A012', 'C1', 26, 0.03316895941616867, 0);

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
  `alternatif` varchar(4) NOT NULL
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
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
