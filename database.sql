-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 30, 2017 at 03:12 PM
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

--
-- Dumping data for table `analisa_alternatif`
--

INSERT INTO `analisa_alternatif` (`alternatif_pertama`, `nilai_analisa_alternatif`, `hasil_analisa_alternatif`, `alternatif_kedua`, `id_kriteria`) VALUES
('A1', 1, 0.33898305084746, 'A1', 'C1'),
('A1', 1, 0.28301886792453, 'A1', 'C2'),
('A1', 1, 0.29268292682927, 'A1', 'C3'),
('A1', 1, 0.31578947368421, 'A1', 'C4'),
('A1', 4, 0.53333333333333, 'A2', 'C1'),
('A1', 5, 0.6, 'A2', 'C2'),
('A1', 2, 0.42553191489362, 'A2', 'C3'),
('A1', 3, 0.47368421052632, 'A2', 'C4'),
('A1', 5, 0.51724137931034, 'A3', 'C1'),
('A1', 3, 0.33333333333333, 'A3', 'C2'),
('A1', 3, 0.33333333333333, 'A3', 'C3'),
('A1', 3, 0.38297872340426, 'A3', 'C4'),
('A1', 2, 0.24242424242424, 'A4', 'C1'),
('A1', 2, 0.24489795918367, 'A4', 'C2'),
('A1', 3, 0.24324324324324, 'A4', 'C3'),
('A1', 3, 0.31578947368421, 'A4', 'C4'),
('A1', 4, 0.25751072961373, 'A5', 'C1'),
('A1', 2, 0.18181818181818, 'A5', 'C2'),
('A1', 4, 0.28571428571429, 'A5', 'C3'),
('A1', 2, 0.2, 'A5', 'C4'),
('A1', 2, 0.16, 'A6', 'C1'),
('A1', 2, 0.16, 'A6', 'C2'),
('A1', 2, 0.16, 'A6', 'C3'),
('A1', 3, 0.24, 'A6', 'C4'),
('A1', 4, 0.2, 'A7', 'C1'),
('A1', 2, 0.15384615384615, 'A7', 'C2'),
('A1', 2, 0.15384615384615, 'A7', 'C3'),
('A1', 3, 0.1875, 'A7', 'C4'),
('A2', 0.25, 0.084745762711864, 'A1', 'C1'),
('A2', 0.2, 0.056603773584906, 'A1', 'C2'),
('A2', 0.5, 0.14634146341463, 'A1', 'C3'),
('A2', 0.33333333333333, 0.10526315789474, 'A1', 'C4'),
('A2', 1, 0.13333333333333, 'A2', 'C1'),
('A2', 1, 0.12, 'A2', 'C2'),
('A2', 1, 0.21276595744681, 'A2', 'C3'),
('A2', 1, 0.15789473684211, 'A2', 'C4'),
('A2', 2, 0.20689655172414, 'A3', 'C1'),
('A2', 3, 0.33333333333333, 'A3', 'C2'),
('A2', 3, 0.33333333333333, 'A3', 'C3'),
('A2', 2, 0.25531914893617, 'A3', 'C4'),
('A2', 2, 0.24242424242424, 'A4', 'C1'),
('A2', 2, 0.24489795918367, 'A4', 'C2'),
('A2', 5, 0.40540540540541, 'A4', 'C3'),
('A2', 2, 0.21052631578947, 'A4', 'C4'),
('A2', 2, 0.12875536480687, 'A5', 'C1'),
('A2', 2, 0.18181818181818, 'A5', 'C2'),
('A2', 3, 0.21428571428571, 'A5', 'C3'),
('A2', 2, 0.2, 'A5', 'C4'),
('A2', 2, 0.16, 'A6', 'C1'),
('A2', 2, 0.16, 'A6', 'C2'),
('A2', 3, 0.24, 'A6', 'C3'),
('A2', 2, 0.16, 'A6', 'C4'),
('A2', 2, 0.1, 'A7', 'C1'),
('A2', 2, 0.15384615384615, 'A7', 'C2'),
('A2', 2, 0.15384615384615, 'A7', 'C3'),
('A2', 3, 0.1875, 'A7', 'C4'),
('A3', 0.2, 0.067796610169492, 'A1', 'C1'),
('A3', 0.33333333333333, 0.094339622641509, 'A1', 'C2'),
('A3', 0.33333333333333, 0.097560975609755, 'A1', 'C3'),
('A3', 0.33333333333333, 0.10526315789474, 'A1', 'C4'),
('A3', 0.5, 0.066666666666667, 'A2', 'C1'),
('A3', 0.33333333333333, 0.04, 'A2', 'C2'),
('A3', 0.33333333333333, 0.070921985815602, 'A2', 'C3'),
('A3', 0.5, 0.078947368421053, 'A2', 'C4'),
('A3', 1, 0.10344827586207, 'A3', 'C1'),
('A3', 1, 0.11111111111111, 'A3', 'C2'),
('A3', 1, 0.11111111111111, 'A3', 'C3'),
('A3', 1, 0.12765957446809, 'A3', 'C4'),
('A3', 2, 0.24242424242424, 'A4', 'C1'),
('A3', 2, 0.24489795918367, 'A4', 'C2'),
('A3', 2, 0.16216216216216, 'A4', 'C3'),
('A3', 2, 0.21052631578947, 'A4', 'C4'),
('A3', 6, 0.3862660944206, 'A5', 'C1'),
('A3', 2, 0.18181818181818, 'A5', 'C2'),
('A3', 2, 0.14285714285714, 'A5', 'C3'),
('A3', 2, 0.2, 'A5', 'C4'),
('A3', 2, 0.16, 'A6', 'C1'),
('A3', 2, 0.16, 'A6', 'C2'),
('A3', 2, 0.16, 'A6', 'C3'),
('A3', 2, 0.16, 'A6', 'C4'),
('A3', 2, 0.1, 'A7', 'C1'),
('A3', 2, 0.15384615384615, 'A7', 'C2'),
('A3', 2, 0.15384615384615, 'A7', 'C3'),
('A3', 3, 0.1875, 'A7', 'C4'),
('A4', 0.5, 0.16949152542373, 'A1', 'C1'),
('A4', 0.5, 0.14150943396226, 'A1', 'C2'),
('A4', 0.33333333333333, 0.097560975609755, 'A1', 'C3'),
('A4', 0.33333333333333, 0.10526315789474, 'A1', 'C4'),
('A4', 0.5, 0.066666666666667, 'A2', 'C1'),
('A4', 0.5, 0.06, 'A2', 'C2'),
('A4', 0.2, 0.042553191489362, 'A2', 'C3'),
('A4', 0.5, 0.078947368421053, 'A2', 'C4'),
('A4', 0.5, 0.051724137931034, 'A3', 'C1'),
('A4', 0.5, 0.055555555555556, 'A3', 'C2'),
('A4', 0.5, 0.055555555555556, 'A3', 'C3'),
('A4', 0.5, 0.063829787234043, 'A3', 'C4'),
('A4', 1, 0.12121212121212, 'A4', 'C1'),
('A4', 1, 0.12244897959184, 'A4', 'C2'),
('A4', 1, 0.081081081081081, 'A4', 'C3'),
('A4', 1, 0.10526315789474, 'A4', 'C4'),
('A4', 2, 0.12875536480687, 'A5', 'C1'),
('A4', 3, 0.27272727272727, 'A5', 'C2'),
('A4', 3, 0.21428571428571, 'A5', 'C3'),
('A4', 2, 0.2, 'A5', 'C4'),
('A4', 2, 0.16, 'A6', 'C1'),
('A4', 3, 0.24, 'A6', 'C2'),
('A4', 2, 0.16, 'A6', 'C3'),
('A4', 2, 0.16, 'A6', 'C4'),
('A4', 4, 0.2, 'A7', 'C1'),
('A4', 2, 0.15384615384615, 'A7', 'C2'),
('A4', 2, 0.15384615384615, 'A7', 'C3'),
('A4', 2, 0.125, 'A7', 'C4'),
('A5', 0.25, 0.084745762711864, 'A1', 'C1'),
('A5', 0.5, 0.14150943396226, 'A1', 'C2'),
('A5', 0.25, 0.073170731707317, 'A1', 'C3'),
('A5', 0.5, 0.15789473684211, 'A1', 'C4'),
('A5', 0.5, 0.066666666666667, 'A2', 'C1'),
('A5', 0.5, 0.06, 'A2', 'C2'),
('A5', 0.33333333333333, 0.070921985815602, 'A2', 'C3'),
('A5', 0.5, 0.078947368421053, 'A2', 'C4'),
('A5', 0.16666666666667, 0.017241379310345, 'A3', 'C1'),
('A5', 0.5, 0.055555555555556, 'A3', 'C2'),
('A5', 0.5, 0.055555555555556, 'A3', 'C3'),
('A5', 0.5, 0.063829787234043, 'A3', 'C4'),
('A5', 0.5, 0.060606060606061, 'A4', 'C1'),
('A5', 0.33333333333333, 0.040816326530612, 'A4', 'C2'),
('A5', 0.33333333333333, 0.027027027027027, 'A4', 'C3'),
('A5', 0.5, 0.052631578947368, 'A4', 'C4'),
('A5', 1, 0.064377682403433, 'A5', 'C1'),
('A5', 1, 0.090909090909091, 'A5', 'C2'),
('A5', 1, 0.071428571428571, 'A5', 'C3'),
('A5', 1, 0.1, 'A5', 'C4'),
('A5', 3, 0.24, 'A6', 'C1'),
('A5', 2, 0.16, 'A6', 'C2'),
('A5', 2, 0.16, 'A6', 'C3'),
('A5', 2, 0.16, 'A6', 'C4'),
('A5', 5, 0.25, 'A7', 'C1'),
('A5', 2, 0.15384615384615, 'A7', 'C2'),
('A5', 2, 0.15384615384615, 'A7', 'C3'),
('A5', 2, 0.125, 'A7', 'C4'),
('A6', 0.5, 0.16949152542373, 'A1', 'C1'),
('A6', 0.5, 0.14150943396226, 'A1', 'C2'),
('A6', 0.5, 0.14634146341463, 'A1', 'C3'),
('A6', 0.33333333333333, 0.10526315789474, 'A1', 'C4'),
('A6', 0.5, 0.066666666666667, 'A2', 'C1'),
('A6', 0.5, 0.06, 'A2', 'C2'),
('A6', 0.33333333333333, 0.070921985815602, 'A2', 'C3'),
('A6', 0.5, 0.078947368421053, 'A2', 'C4'),
('A6', 0.5, 0.051724137931034, 'A3', 'C1'),
('A6', 0.5, 0.055555555555556, 'A3', 'C2'),
('A6', 0.5, 0.055555555555556, 'A3', 'C3'),
('A6', 0.5, 0.063829787234043, 'A3', 'C4'),
('A6', 0.5, 0.060606060606061, 'A4', 'C1'),
('A6', 0.33333333333333, 0.040816326530612, 'A4', 'C2'),
('A6', 0.5, 0.040540540540541, 'A4', 'C3'),
('A6', 0.5, 0.052631578947368, 'A4', 'C4'),
('A6', 0.33333333333333, 0.021459227467811, 'A5', 'C1'),
('A6', 0.5, 0.045454545454545, 'A5', 'C2'),
('A6', 0.5, 0.035714285714286, 'A5', 'C3'),
('A6', 0.5, 0.05, 'A5', 'C4'),
('A6', 1, 0.08, 'A6', 'C1'),
('A6', 1, 0.08, 'A6', 'C2'),
('A6', 1, 0.08, 'A6', 'C3'),
('A6', 1, 0.08, 'A6', 'C4'),
('A6', 2, 0.1, 'A7', 'C1'),
('A6', 2, 0.15384615384615, 'A7', 'C2'),
('A6', 2, 0.15384615384615, 'A7', 'C3'),
('A6', 2, 0.125, 'A7', 'C4'),
('A7', 0.25, 0.084745762711864, 'A1', 'C1'),
('A7', 0.5, 0.14150943396226, 'A1', 'C2'),
('A7', 0.5, 0.14634146341463, 'A1', 'C3'),
('A7', 0.33333333333333, 0.10526315789474, 'A1', 'C4'),
('A7', 0.5, 0.066666666666667, 'A2', 'C1'),
('A7', 0.5, 0.06, 'A2', 'C2'),
('A7', 0.5, 0.1063829787234, 'A2', 'C3'),
('A7', 0.33333333333333, 0.052631578947368, 'A2', 'C4'),
('A7', 0.5, 0.051724137931034, 'A3', 'C1'),
('A7', 0.5, 0.055555555555556, 'A3', 'C2'),
('A7', 0.5, 0.055555555555556, 'A3', 'C3'),
('A7', 0.33333333333333, 0.042553191489361, 'A3', 'C4'),
('A7', 0.25, 0.03030303030303, 'A4', 'C1'),
('A7', 0.5, 0.061224489795918, 'A4', 'C2'),
('A7', 0.5, 0.040540540540541, 'A4', 'C3'),
('A7', 0.5, 0.052631578947368, 'A4', 'C4'),
('A7', 0.2, 0.012875536480687, 'A5', 'C1'),
('A7', 0.5, 0.045454545454545, 'A5', 'C2'),
('A7', 0.5, 0.035714285714286, 'A5', 'C3'),
('A7', 0.5, 0.05, 'A5', 'C4'),
('A7', 0.5, 0.04, 'A6', 'C1'),
('A7', 0.5, 0.04, 'A6', 'C2'),
('A7', 0.5, 0.04, 'A6', 'C3'),
('A7', 0.5, 0.04, 'A6', 'C4'),
('A7', 1, 0.05, 'A7', 'C1'),
('A7', 1, 0.076923076923077, 'A7', 'C2'),
('A7', 1, 0.076923076923077, 'A7', 'C3'),
('A7', 1, 0.0625, 'A7', 'C4');

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
  `id_alternatif` varchar(3) NOT NULL,
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
('A1', '135610101', 'Rizky', 'Indramayu', '1900-12-20', 'wanita', 'Losarang', '089123456789', 0.307124432177772),
('A2', '135610102', 'Syarif', 'Padang', '1900-12-07', 'pria', 'Padang', '098765432123', 0.16603598912643702),
('A3', '135610103', 'Said', 'Blitang', '1901-01-27', 'pria', 'Blitang', '081235678765', 0.153418312693986),
('A4', '135610104', 'Tyo', 'Kalimantan Barat', '1900-12-29', 'pria', 'Kalimantan Barat', '087676545435', 0.131548105755193),
('A5', '135610105', 'Warham', 'Sulawesi', '2017-07-31', 'pria', 'Sulawesi', '081224898765', 0.10705877564731299),
('A6', '105610113', 'Imam Taufiq', 'Kalimantan Barat', '2017-08-13', 'pria', 'Kalimantan Barat', '082667765785', 0.0798600435560913),
('A7', '125610113', 'Hidayat Simanjuntak', 'Mandailing Natal', '2017-08-20', 'pria', 'Mandailing Natal', '083667765787', 0.0549543410432005);

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
('A1', 'C1', 2.95, 0.3213561050755857, 0.14179198833864),
('A1', 'C2', 3.5333333333333297, 0.3004576594024972, 0.080543772422718),
('A1', 'C3', 3.41666666666666, 0.29051233759499334, 0.0510997331214),
('A1', 'C4', 3.1666666666666496, 0.2934464632426379, 0.033688938295014),
('A2', 'C1', 7.5, 0.15087932214292057, 0.066572499317537),
('A2', 'C2', 8.33333333333333, 0.1647610469119057, 0.044167541919189),
('A2', 'C3', 4.69999999999999, 0.19107774688089144, 0.033609663368804),
('A2', 'C4', 6.33333333333333, 0.1888977158557575, 0.021686284520907),
('A3', 'C1', 9.66666666666667, 0.16094312707758127, 0.071012953036635),
('A3', 'C2', 9, 0.150901065581692, 0.040452092679973),
('A3', 'C3', 9, 0.14338449759740982, 0.025220648532966),
('A3', 'C4', 7.83333333333333, 0.14574895950424854, 0.016732618444412),
('A4', 'C1', 8.25, 0.12826425943434588, 0.056594052799156),
('A4', 'C2', 8.16666666666666, 0.13885265798024976, 0.037222272538804),
('A4', 'C3', 12.33333333333333, 0.13089618493291008, 0.023024013961176),
('A4', 'C4', 9.5, 0.12811154839413172, 0.014707766456057),
('A5', 'C1', 15.53333333333333, 0.11194822167119571, 0.049394925725777),
('A5', 'C2', 11, 0.1061624366072885, 0.028458995357093),
('A5', 'C3', 14, 0.09991543513725056, 0.017574647990819),
('A5', 'C4', 10, 0.10130455747595844, 0.011630206573624),
('A6', 'C1', 12.5, 0.07856394544218614, 0.034664777983153),
('A6', 'C2', 12.5, 0.0805092595317447, 0.02158214069344),
('A6', 'C3', 12.5, 0.08143093420624721, 0.014323312531967),
('A6', 'C4', 12.5, 0.08091862538672841, 0.0092898123475313),
('A7', 'C1', 20, 0.048045019156183144, 0.021198908899897),
('A7', 'C2', 13, 0.05835587398461701, 0.015643476165969),
('A7', 'C3', 13, 0.06278286365029183, 0.011043205957056),
('A7', 'C4', 16, 0.061572130140534476, 0.0070687500202785);

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
