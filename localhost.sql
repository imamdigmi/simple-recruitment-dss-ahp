-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 05, 2016 at 11:53 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spk_ahp`
--
CREATE DATABASE `spk_ahp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `spk_ahp`;

-- --------------------------------------------------------

--
-- Table structure for table `ahp_analisa_alternatif`
--

DROP TABLE IF EXISTS `ahp_analisa_alternatif`;
CREATE TABLE IF NOT EXISTS `ahp_analisa_alternatif` (
  `alternatif_pertama` varchar(2) NOT NULL,
  `nilai_analisa_alternatif` double NOT NULL,
  `hasil_analisa_alternatif` double NOT NULL,
  `alternatif_kedua` varchar(2) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL,
  PRIMARY KEY (`alternatif_pertama`,`alternatif_kedua`,`id_kriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ahp_analisa_alternatif`
--

INSERT INTO `ahp_analisa_alternatif` (`alternatif_pertama`, `nilai_analisa_alternatif`, `hasil_analisa_alternatif`, `alternatif_kedua`, `id_kriteria`) VALUES
('A1', 1, 0.1462771798814, 'A1', 'C1'),
('A1', 1, 0.47058823529412, 'A1', 'C2'),
('A1', 1, 0.09375, 'A1', 'C3'),
('A1', 1, 0.087366689383339, 'A1', 'C4'),
('A1', 1, 0.073657552474568, 'A1', 'C5'),
('A1', 2, 0.16326530612245, 'A2', 'C1'),
('A1', 6, 0.34123222748815, 'A2', 'C2'),
('A1', 3, 0.22237002490505, 'A2', 'C3'),
('A1', 4, 0.39204144101719, 'A2', 'C4'),
('A1', 0.143, 0.021799888205701, 'A2', 'C5'),
('A1', 3, 0.26080146195014, 'A3', 'C1'),
('A1', 2, 0.16326530612245, 'A3', 'C2'),
('A1', 3, 0.29268292682927, 'A3', 'C3'),
('A1', 5, 0.3804347826087, 'A3', 'C4'),
('A1', 3, 0.17448954689661, 'A3', 'C5'),
('A1', 0.5, 0.057142857142857, 'A4', 'C1'),
('A1', 8, 0.65024774829749, 'A4', 'C2'),
('A1', 0.25, 0.043475740536781, 'A4', 'C3'),
('A1', 0.143, 0.015930780942478, 'A4', 'C4'),
('A1', 0.2, 0.043994691571449, 'A4', 'C5'),
('A1', 0.333, 0.16118102613746, 'A5', 'C1'),
('A1', 3, 0.26471366804906, 'A5', 'C2'),
('A1', 0.2, 0.041814760610496, 'A5', 'C3'),
('A1', 0.333, 0.064459930313589, 'A5', 'C4'),
('A1', 4, 0.27907625758739, 'A5', 'C5'),
('A2', 0.5, 0.073138589940699, 'A1', 'C1'),
('A2', 0.16666666666667, 0.078431372549021, 'A1', 'C2'),
('A2', 0.33333333333333, 0.03125, 'A1', 'C3'),
('A2', 0.25, 0.021841672345835, 'A1', 'C4'),
('A2', 6.993006993007, 0.51508777954243, 'A1', 'C5'),
('A2', 1, 0.081632653061224, 'A2', 'C1'),
('A2', 1, 0.056872037914692, 'A2', 'C2'),
('A2', 1, 0.074123341635016, 'A2', 'C3'),
('A2', 1, 0.098010360254297, 'A2', 'C4'),
('A2', 1, 0.15244677066924, 'A2', 'C5'),
('A2', 4, 0.34773528260018, 'A3', 'C1'),
('A2', 4, 0.3265306122449, 'A3', 'C2'),
('A2', 2, 0.19512195121951, 'A3', 'C3'),
('A2', 5, 0.3804347826087, 'A3', 'C4'),
('A2', 6, 0.34897909379322, 'A3', 'C5'),
('A2', 0.25, 0.028571428571429, 'A4', 'C1'),
('A2', 0.1, 0.0081280968537187, 'A4', 'C2'),
('A2', 0.167, 0.029041794678569, 'A4', 'C3'),
('A2', 0.5, 0.055702031267407, 'A4', 'C4'),
('A2', 0.2, 0.043994691571449, 'A4', 'C5'),
('A2', 0.2, 0.096805421103582, 'A5', 'C1'),
('A2', 3, 0.26471366804906, 'A5', 'C2'),
('A2', 0.333, 0.069621576416475, 'A5', 'C3'),
('A2', 0.333, 0.064459930313589, 'A5', 'C4'),
('A2', 4, 0.27907625758739, 'A5', 'C5'),
('A3', 0.33333333333333, 0.048759059960465, 'A1', 'C1'),
('A3', 0.5, 0.23529411764706, 'A1', 'C2'),
('A3', 0.33333333333333, 0.03125, 'A1', 'C3'),
('A3', 0.2, 0.017473337876668, 'A1', 'C4'),
('A3', 0.33333333333333, 0.024552517491522, 'A1', 'C5'),
('A3', 0.25, 0.020408163265306, 'A2', 'C1'),
('A3', 0.25, 0.014218009478673, 'A2', 'C2'),
('A3', 0.5, 0.037061670817508, 'A2', 'C3'),
('A3', 0.2, 0.019602072050859, 'A2', 'C4'),
('A3', 0.16666666666667, 0.025407795111541, 'A2', 'C5'),
('A3', 1, 0.086933820650046, 'A3', 'C1'),
('A3', 1, 0.081632653061224, 'A3', 'C2'),
('A3', 1, 0.097560975609756, 'A3', 'C3'),
('A3', 1, 0.076086956521739, 'A3', 'C4'),
('A3', 1, 0.058163182298869, 'A3', 'C5'),
('A3', 2, 0.22857142857143, 'A4', 'C1'),
('A3', 0.2, 0.016256193707437, 'A4', 'C2'),
('A3', 4, 0.69561184858849, 'A4', 'C3'),
('A3', 7, 0.7798284377437, 'A4', 'C4'),
('A3', 0.143, 0.031456204473586, 'A4', 'C5'),
('A3', 0.333, 0.16118102613746, 'A5', 'C1'),
('A3', 4, 0.35295155739875, 'A5', 'C2'),
('A3', 0.25, 0.052268450763119, 'A5', 'C3'),
('A3', 0.5, 0.096786682152536, 'A5', 'C4'),
('A3', 5, 0.34884532198423, 'A5', 'C5'),
('A4', 2, 0.29255435976279, 'A1', 'C1'),
('A4', 0.125, 0.058823529411765, 'A1', 'C2'),
('A4', 4, 0.375, 'A1', 'C3'),
('A4', 6.993006993007, 0.61095586981356, 'A1', 'C4'),
('A4', 5, 0.36828776237284, 'A1', 'C5'),
('A4', 4, 0.3265306122449, 'A2', 'C1'),
('A4', 10, 0.56872037914692, 'A2', 'C2'),
('A4', 5.9880239520958, 0.44385234511986, 'A2', 'C3'),
('A4', 2, 0.19602072050859, 'A2', 'C4'),
('A4', 5, 0.76223385334621, 'A2', 'C5'),
('A4', 0.5, 0.043466910325023, 'A3', 'C1'),
('A4', 5, 0.40816326530612, 'A3', 'C2'),
('A4', 0.25, 0.024390243902439, 'A3', 'C3'),
('A4', 0.14285714285714, 0.010869565217391, 'A3', 'C4'),
('A4', 6.993006993007, 0.40673554055153, 'A3', 'C5'),
('A4', 1, 0.11428571428571, 'A4', 'C1'),
('A4', 1, 0.081280968537187, 'A4', 'C2'),
('A4', 1, 0.17390296214712, 'A4', 'C3'),
('A4', 1, 0.11140406253481, 'A4', 'C4'),
('A4', 1, 0.21997345785725, 'A4', 'C5'),
('A4', 0.2, 0.096805421103582, 'A5', 'C1'),
('A4', 0.333, 0.029383217153446, 'A5', 'C2'),
('A4', 3, 0.62722140915743, 'A5', 'C3'),
('A4', 3, 0.58072009291521, 'A5', 'C4'),
('A4', 0.333, 0.02323309844415, 'A5', 'C5'),
('A5', 3.003003003003, 0.43927081045465, 'A1', 'C1'),
('A5', 0.33333333333333, 0.15686274509804, 'A1', 'C2'),
('A5', 5, 0.46875, 'A1', 'C3'),
('A5', 3.003003003003, 0.2623624305806, 'A1', 'C4'),
('A5', 0.25, 0.018414388118642, 'A1', 'C5'),
('A5', 5, 0.40816326530612, 'A2', 'C1'),
('A5', 0.33333333333333, 0.018957345971564, 'A2', 'C2'),
('A5', 3.003003003003, 0.22259261752257, 'A2', 'C3'),
('A5', 3.003003003003, 0.29432540616906, 'A2', 'C4'),
('A5', 0.25, 0.03811169266731, 'A2', 'C5'),
('A5', 3.003003003003, 0.26106252447461, 'A3', 'C1'),
('A5', 0.25, 0.020408163265306, 'A3', 'C2'),
('A5', 4, 0.39024390243902, 'A3', 'C3'),
('A5', 2, 0.15217391304348, 'A3', 'C4'),
('A5', 0.2, 0.011632636459774, 'A3', 'C5'),
('A5', 5, 0.57142857142857, 'A4', 'C1'),
('A5', 3.003003003003, 0.24408699260416, 'A4', 'C2'),
('A5', 0.33333333333333, 0.05796765404904, 'A4', 'C3'),
('A5', 0.33333333333333, 0.037134687511604, 'A4', 'C4'),
('A5', 3.003003003003, 0.66058095452627, 'A4', 'C5'),
('A5', 1, 0.48402710551791, 'A5', 'C1'),
('A5', 1, 0.088237889349687, 'A5', 'C2'),
('A5', 1, 0.20907380305248, 'A5', 'C3'),
('A5', 1, 0.19357336430507, 'A5', 'C4'),
('A5', 1, 0.069769064396846, 'A5', 'C5');

-- --------------------------------------------------------

--
-- Table structure for table `ahp_analisa_kriteria`
--

DROP TABLE IF EXISTS `ahp_analisa_kriteria`;
CREATE TABLE IF NOT EXISTS `ahp_analisa_kriteria` (
  `kriteria_pertama` varchar(2) NOT NULL,
  `nilai_analisa_kriteria` double NOT NULL,
  `hasil_analisa_kriteria` double NOT NULL,
  `kriteria_kedua` varchar(2) NOT NULL,
  PRIMARY KEY (`kriteria_pertama`,`kriteria_kedua`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ahp_analisa_kriteria`
--

INSERT INTO `ahp_analisa_kriteria` (`kriteria_pertama`, `nilai_analisa_kriteria`, `hasil_analisa_kriteria`, `kriteria_kedua`) VALUES
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
-- Table structure for table `ahp_data_alternatif`
--

DROP TABLE IF EXISTS `ahp_data_alternatif`;
CREATE TABLE IF NOT EXISTS `ahp_data_alternatif` (
  `id_alternatif` varchar(2) NOT NULL,
  `nama_alternatif` varchar(45) NOT NULL,
  `hasil_akhir` double NOT NULL,
  PRIMARY KEY (`id_alternatif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ahp_data_alternatif`
--

INSERT INTO `ahp_data_alternatif` (`id_alternatif`, `nama_alternatif`, `hasil_akhir`) VALUES
('A1', 'Alternatif 1', 0.2189778979593347),
('A2', 'Alternatif 2', 0.1391947845043199),
('A3', 'Alternatif 3', 0.1411623330305593),
('A4', 'Alternatif 4', 0.25360877002933696),
('A5', 'Alternatif 5', 0.2470562144764433);

-- --------------------------------------------------------

--
-- Table structure for table `ahp_data_kriteria`
--

DROP TABLE IF EXISTS `ahp_data_kriteria`;
CREATE TABLE IF NOT EXISTS `ahp_data_kriteria` (
  `id_kriteria` varchar(2) NOT NULL,
  `nama_kriteria` varchar(45) NOT NULL,
  `jumlah_kriteria` double NOT NULL,
  `bobot_kriteria` double NOT NULL,
  PRIMARY KEY (`id_kriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ahp_data_kriteria`
--

INSERT INTO `ahp_data_kriteria` (`id_kriteria`, `nama_kriteria`, `jumlah_kriteria`, `bobot_kriteria`) VALUES
('C1', 'Kriteria 1', 1.4444444444444402, 0.5189769745477519),
('C2', 'Kriteria 2', 10.333333333333332, 0.2410613417934106),
('C3', 'Kriteria 3', 19.22222222222222, 0.14062004649848842),
('C4', 'Kriteria 4', 28.11111111111111, 0.07445449553776244),
('C5', 'Kriteria 5', 37, 0.02488714162258312);

-- --------------------------------------------------------

--
-- Table structure for table `ahp_jum_alt_kri`
--

DROP TABLE IF EXISTS `ahp_jum_alt_kri`;
CREATE TABLE IF NOT EXISTS `ahp_jum_alt_kri` (
  `id_alternatif` varchar(2) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL,
  `jumlah_alt_kri` double NOT NULL,
  `skor_alt_kri` double NOT NULL,
  `hasil_alt_kri` double NOT NULL,
  PRIMARY KEY (`id_alternatif`,`id_kriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ahp_jum_alt_kri`
--

INSERT INTO `ahp_jum_alt_kri` (`id_alternatif`, `id_kriteria`, `jumlah_alt_kri`, `skor_alt_kri`, `hasil_alt_kri`) VALUES
('A1', 'C1', 6.8363363363363305, 0.19624240121472752, 0.10184528766041),
('A1', 'C2', 2.125, 0.26787150164855766, 0.064573463615617),
('A1', 'C3', 10.66666666666666, 0.22485389795781163, 0.031618965586194),
('A1', 'C4', 11.44600999601, 0.2156521046816235, 0.016056268665727),
('A1', 'C5', 13.576340326340329, 0.19624240121472752, 0.0048839124313867),
('A2', 'C1', 12.25, 0.14887004787166533, 0.077260127045216),
('A2', 'C2', 17.58333333333333, 0.1362559162888506, 0.032846034007881),
('A2', 'C3', 13.4910269550988, 0.11744785512253837, 0.016515522848479),
('A2', 'C4', 10.203003003003001, 0.11910833018139519, 0.008868150638001),
('A2', 'C5', 6.55966666666667, 0.14887004787166533, 0.0037049499647429),
('A3', 'C1', 11.503003003003, 0.14552645933447894, 0.075524881582054),
('A3', 'C2', 12.25, 0.1246206029877851, 0.030041209771339),
('A3', 'C3', 10.25, 0.1439972650437816, 0.020248902106112),
('A3', 'C4', 13.14285714285714, 0.1574868231001113, 0.011725601967764),
('A3', 'C5', 17.193006993007, 0.14552645933447894, 0.0036217376032903),
('A4', 'C1', 8.75, 0.27819261444663335, 0.14437556138704),
('A4', 'C2', 12.303003003002999, 0.2020014377277443, 0.048694737622848),
('A4', 'C3', 5.75033333333333, 0.24429208917361944, 0.034352364938807),
('A4', 'C4', 8.976333333333331, 0.25871758242969267, 0.019262687086552),
('A4', 'C5', 4.546003003003, 0.27819261444663335, 0.00692341899409),
('A5', 'C1', 2.066, 0.2311684771324953, 0.11997111687303),
('A5', 'C2', 11.333, 0.2692505413470617, 0.064905896775725),
('A5', 'C3', 4.7829999999999995, 0.26940889270224844, 0.037884291018896),
('A5', 'C4', 5.166, 0.249035159607177, 0.018541787179719),
('A5', 'C5', 14.333, 0.2311684771324953, 0.0057531226290733);

-- --------------------------------------------------------

--
-- Table structure for table `ahp_nilai`
--

DROP TABLE IF EXISTS `ahp_nilai`;
CREATE TABLE IF NOT EXISTS `ahp_nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `jum_nilai` double NOT NULL,
  `ket_nilai` text NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `ahp_nilai`
--

INSERT INTO `ahp_nilai` (`id_nilai`, `jum_nilai`, `ket_nilai`) VALUES
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
-- Table structure for table `ahp_pengguna`
--

DROP TABLE IF EXISTS `ahp_pengguna`;
CREATE TABLE IF NOT EXISTS `ahp_pengguna` (
  `id_pengguna` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pengguna`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ahp_pengguna`
--

INSERT INTO `ahp_pengguna` (`id_pengguna`, `nama_lengkap`, `username`, `password`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Guest', 'user', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `ahp_rangking`
--

DROP TABLE IF EXISTS `ahp_rangking`;
CREATE TABLE IF NOT EXISTS `ahp_rangking` (
  `kriteria` varchar(2) NOT NULL,
  `skor_bobot` double NOT NULL,
  `alternatif` varchar(2) NOT NULL,
  PRIMARY KEY (`kriteria`,`alternatif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
