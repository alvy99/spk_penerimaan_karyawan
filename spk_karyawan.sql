-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2022 at 03:59 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_karyawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `aspek`
--

CREATE TABLE `aspek` (
  `id_aspek` varchar(5) NOT NULL,
  `nm_aspek` varchar(100) NOT NULL,
  `presentase` float NOT NULL,
  `presentase_cf` float NOT NULL,
  `presentase_sf` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aspek`
--

INSERT INTO `aspek` (`id_aspek`, `nm_aspek`, `presentase`, `presentase_cf`, `presentase_sf`) VALUES
('A01', 'administrasi', 0.1, 0.55, 0.45),
('A02', 'kesiapan kerja', 0.5, 0.6, 0.4),
('A03', 'kepribadian', 0.4, 0.6, 0.4);

-- --------------------------------------------------------

--
-- Table structure for table `bobot`
--

CREATE TABLE `bobot` (
  `id_bobot` varchar(5) NOT NULL,
  `selisih` varchar(50) NOT NULL,
  `bobot_nilai` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bobot`
--

INSERT INTO `bobot` (`id_bobot`, `selisih`, `bobot_nilai`, `keterangan`) VALUES
('B01', '0', '5', 'Tidak ada selisih (Kompetensi sesuai dengan yang dibutuhkan)'),
('B02', '1', '4,5', 'Kompetensi individu kelebihan 1 tingkat/level'),
('B03', '-1', '4', 'Kompetensi individu kekurangan 1 tingkat/level'),
('B04', '2', '3,5', 'Kompetensi individu kelebihan 2 tingkat/level'),
('B05', '-2', '3', 'Kompetensi individu kekurangan 2 tingkat/level'),
('B06', '3', '2,5', 'Kompetensi individu kelebihan 3 tingkat/level'),
('B07', '-3', '2', 'Kompetensi individu kekurangan 3 tingkat/level'),
('B08', '4', '1,5', 'Kompetensi individu kelebihan 4 tingkat/level'),
('B09', '-4', '1', 'Kompetensi individu kekurangan 4 tingkat/level');

-- --------------------------------------------------------

--
-- Table structure for table `data_alternatif`
--

CREATE TABLE `data_alternatif` (
  `id_alternatif` int(5) NOT NULL,
  `id_user` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `terdaftar` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `no_hp` char(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `ktp` varchar(100) NOT NULL,
  `cv` varchar(100) NOT NULL,
  `ijazah` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `bidang` varchar(20) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=belum dinilai, 1=sudah dinilai'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_alternatif`
--

INSERT INTO `data_alternatif` (`id_alternatif`, `id_user`, `nama`, `terdaftar`, `alamat`, `tgl_lahir`, `no_hp`, `email`, `pendidikan`, `ktp`, `cv`, `ijazah`, `foto`, `bidang`, `status`) VALUES
(1, 26, 'Aldi Ahmad Barizi', '2022-01-14', 'Mertoyudan, Magelang', '1994-04-01', '085740825706', 'aljakartans@gmail.com', 'SMA N 1 Kota Mungkid', 'ktp1.pdf', 'cv1.pdf', 'ijazah1.pdf', 'aldi1.pdf', 'customer service', 1),
(2, 26, 'Zulfikri Prasesa Rafly', '2022-01-14', 'Madukara, Banjarnegara', '1998-12-29', '087728028844', 'zulfikryprasesarafly@gmail.com', 'SMA N 1 Bawang', 'KABUPATEN_BANJARNEGARA.pdf', 'zulfikri.pdf', 'IJAZAH_17_02_0081_ZULFIKRI_PRASESA_RAFLY.pdf', 'SSCASN_(1).pdf', 'customer service', 1),
(3, 26, 'Diah Ayung Ramadhanti', '2022-01-14', 'Mertoyudan, Magelang', '1998-01-09', '088224137701', 'ramadhantiayung@gmail.com', 'SMK N 6 YOGYAKARTA', 'Ktp2.pdf', 'DIAH_AYUNG_RAMADHANTI.pdf', 'ijazah2.pdf', 'TapScanner_08-01-2022-08꞉12.pdf', 'customer service', 1),
(4, 26, 'Fikar Tri Putra Lumaksono', '2022-01-14', 'Wonokerto, wonosobo', '1996-03-05', '087719068820', 'fikarputra@gmail.com', 'S1 Akprind Yogyakarta', 'ktp3.pdf', 'cv2.pdf', 'ijazah3.pdf', 'foto.pdf', 'customer service', 1),
(5, 26, 'Daffa Dzaqy Al Hakim', '2022-01-14', 'mungkid, magelang', '2000-06-03', '08952822895', 'daffa.dzaqy03@gmail.com', 'SMK N 1 MAGELANG', 'ktp4.pdf', 'cv3.pdf', 'ijazah4.pdf', 'foto_daffa.pdf', 'customer service', 1),
(6, 26, 'Mohammad Yusuf Alfiano', '2022-01-14', 'Mertoyudan, Magelang', '1999-09-04', '0895364840133', 'yusufalfiano@gmail.com', 'SMK N 1 MAGELANG', 'ktp5.pdf', 'cv4.pdf', 'ijazah5.pdf', 'foto1.pdf', 'customer service', 1),
(7, 26, 'Roykhan Rabbani', '2022-01-14', 'mungkid, magelang', '2001-11-16', '089649673184', 'robbanyroy16@gmail,com', 'SMK Muhammadiyah 1 Salam ', 'ktp_rehan.pdf', 'BIODATA_DIRI_rehan.pdf', 'ijazah_rehan.pdf', 'foto_(3).pdf', 'customer service', 1),
(8, 26, 'Dwiki Kurniawan', '2022-01-14', 'Magelang Utara, Magelang', '1998-04-16', '089649673184', 'kurniawandwiki@gmail.com', 'SMA N 5 Magelang', 'ktp6.pdf', 'BIODATA_DIRI_dwiki.pdf', 'Dokumen_Pindaian_(1).pdf', 'foto_(4).pdf', 'customer service', 1),
(9, 26, 'Adhitya Suharningsih', '2022-01-15', 'Depok, condongcatur', '1999-07-14', '081338314383', 'adhityasuharningsih@gmail.com', 'S1 Universitas Amikom Yogkarta', 'ktp.pdf', 'CV-front.pdf', 'ijazah.pdf', 'Pas foto-converted.pdf', 'operator', 1),
(10, 26, 'Amru Rizal Fakhriansyah Susilo', '2022-01-15', 'Mertoyudan, Magelang', '1999-02-21', '089508168866', 'amru.21@students.amikom.ac.id', 'S1 Universitas Amikom Yogkarta', 'KTP.pdf', 'CV Amru Rizal Fakhriansyah Susilo.pdf', 'ijazah.pdf', 'mas.pdf', 'operator', 1),
(12, 26, 'Tati Laeliah', '2022-01-15', 'Klirong, kebumen', '1995-12-21', '08978480804', 'tati_laeliah@yahoo.co.id', 'D3 Universitas Amikom Yogyakarta', 'ktp.pdf', 'Curriculum Vitae_Tati Laeliah-converted.pdf', 'ijasah.pdf', '13.02.8617.pdf', 'operator', 1),
(15, 26, 'salma', '2022-01-19', 'sirnoboyo', '2022-01-19', '085740825700', 'salma@gmail.com', 'SMK N 1 MAGELANG', 'foto.pdf', 'PAKTA INTEGRITAS_20.22.2385.pdf', '20.22.2385.pdf', 'PAKTA INTEGRITAS_20.22.2385.pdf', 'customer service', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_nilai`
--

CREATE TABLE `data_nilai` (
  `id_nilai` varchar(10) NOT NULL,
  `id_alternatif` int(5) NOT NULL,
  `id_subkriteria` varchar(5) NOT NULL,
  `nilai` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_nilai`
--

INSERT INTO `data_nilai` (`id_nilai`, `id_alternatif`, `id_subkriteria`, `nilai`) VALUES
('N01', 1, 'S01', '2'),
('N02', 1, 'S02', '2'),
('N03', 1, 'S03', '2'),
('N04', 1, 'S04', '3'),
('N05', 1, 'S05', '2'),
('N06', 1, 'S06', '2'),
('N07', 1, 'S07', '4'),
('N08', 1, 'S08', '2'),
('N09', 1, 'S09', '3'),
('N10', 1, 'S10', '1'),
('N100', 7, 'S10', '1'),
('N101', 7, 'S11', '2'),
('N102', 7, 'S12', '2'),
('N103', 7, 'S13', '3'),
('N104', 7, 'S14', '2'),
('N105', 7, 'S15', '2'),
('N106', 8, 'S01', '2'),
('N107', 8, 'S02', '2'),
('N108', 8, 'S03', '2'),
('N109', 8, 'S04', '3'),
('N11', 1, 'S11', '1'),
('N110', 8, 'S05', '2'),
('N111', 8, 'S06', '2'),
('N112', 8, 'S07', '2'),
('N113', 8, 'S08', '2'),
('N114', 8, 'S09', '4'),
('N115', 8, 'S10', '3'),
('N116', 8, 'S11', '2'),
('N117', 8, 'S12', '2'),
('N118', 8, 'S13', '4'),
('N119', 8, 'S14', '3'),
('N12', 1, 'S12', '2'),
('N120', 8, 'S15', '3'),
('N121', 9, 'S01', '2'),
('N122', 9, 'S02', '2'),
('N123', 9, 'S03', '2'),
('N124', 9, 'S04', '2'),
('N125', 9, 'S05', '2'),
('N126', 9, 'S06', '2'),
('N127', 9, 'S07', '1'),
('N128', 9, 'S08', '2'),
('N129', 9, 'S09', '4'),
('N13', 1, 'S13', '4'),
('N130', 9, 'S10', '2'),
('N131', 9, 'S11', '2'),
('N132', 9, 'S12', '4'),
('N133', 9, 'S13', '4'),
('N134', 9, 'S14', '3'),
('N135', 9, 'S15', '2'),
('N136', 10, 'S01', '2'),
('N137', 10, 'S02', '2'),
('N138', 10, 'S03', '2'),
('N139', 10, 'S04', '3'),
('N14', 1, 'S14', '2'),
('N140', 10, 'S05', '2'),
('N141', 10, 'S06', '2'),
('N142', 10, 'S07', '2'),
('N143', 10, 'S08', '2'),
('N144', 10, 'S09', '4'),
('N145', 10, 'S10', '2'),
('N146', 10, 'S11', '2'),
('N147', 10, 'S12', '4'),
('N148', 10, 'S13', '4'),
('N149', 10, 'S14', '4'),
('N15', 1, 'S15', '2'),
('N150', 10, 'S15', '2'),
('N151', 12, 'S01', '2'),
('N152', 12, 'S02', '2'),
('N153', 12, 'S03', '2'),
('N154', 12, 'S04', '3'),
('N155', 12, 'S05', '2'),
('N156', 12, 'S06', '2'),
('N157', 12, 'S07', '4'),
('N158', 12, 'S08', '2'),
('N159', 12, 'S09', '3'),
('N16', 2, 'S01', '2'),
('N160', 12, 'S10', '2'),
('N161', 12, 'S11', '2'),
('N162', 12, 'S12', '3'),
('N163', 12, 'S13', '4'),
('N164', 12, 'S14', '3'),
('N165', 12, 'S15', '2'),
('N166', 15, 'S01', '2'),
('N167', 15, 'S02', '2'),
('N168', 15, 'S03', '2'),
('N169', 15, 'S04', '2'),
('N17', 2, 'S02', '2'),
('N170', 15, 'S05', '2'),
('N171', 15, 'S06', '2'),
('N172', 15, 'S07', '4'),
('N173', 15, 'S08', '2'),
('N174', 15, 'S09', '3'),
('N175', 15, 'S10', '2'),
('N176', 15, 'S11', '4'),
('N177', 15, 'S12', '2'),
('N178', 15, 'S13', '3'),
('N179', 15, 'S14', '2'),
('N18', 2, 'S03', '2'),
('N180', 15, 'S15', '4'),
('N19', 2, 'S04', '3'),
('N20', 2, 'S05', '2'),
('N21', 2, 'S06', '2'),
('N22', 2, 'S07', '3'),
('N23', 2, 'S08', '2'),
('N24', 2, 'S09', '4'),
('N25', 2, 'S10', '2'),
('N26', 2, 'S11', '2'),
('N27', 2, 'S12', '2'),
('N28', 2, 'S13', '4'),
('N29', 2, 'S14', '3'),
('N30', 2, 'S15', '3'),
('N31', 3, 'S01', '2'),
('N32', 3, 'S02', '2'),
('N33', 3, 'S03', '2'),
('N34', 3, 'S04', '3'),
('N35', 3, 'S05', '2'),
('N36', 3, 'S06', '2'),
('N37', 3, 'S07', '4'),
('N38', 3, 'S08', '2'),
('N39', 3, 'S09', '3'),
('N40', 3, 'S10', '2'),
('N41', 3, 'S11', '3'),
('N42', 3, 'S12', '2'),
('N43', 3, 'S13', '4'),
('N44', 3, 'S14', '3'),
('N45', 3, 'S15', '3'),
('N46', 4, 'S01', '2'),
('N47', 4, 'S02', '2'),
('N48', 4, 'S03', '2'),
('N49', 4, 'S04', '3'),
('N50', 4, 'S05', '2'),
('N51', 4, 'S06', '2'),
('N52', 4, 'S07', '1'),
('N53', 4, 'S08', '2'),
('N54', 4, 'S09', '3'),
('N55', 4, 'S10', '2'),
('N56', 4, 'S11', '2'),
('N57', 4, 'S12', '4'),
('N58', 4, 'S13', '4'),
('N59', 4, 'S14', '3'),
('N60', 4, 'S15', '3'),
('N61', 5, 'S01', '2'),
('N62', 5, 'S02', '2'),
('N63', 5, 'S03', '2'),
('N64', 5, 'S04', '3'),
('N65', 5, 'S05', '2'),
('N66', 5, 'S06', '2'),
('N67', 5, 'S07', '3'),
('N68', 5, 'S08', '2'),
('N69', 5, 'S09', '4'),
('N70', 5, 'S10', '3'),
('N71', 5, 'S11', '3'),
('N72', 5, 'S12', '2'),
('N73', 5, 'S13', '4'),
('N74', 5, 'S14', '3'),
('N75', 5, 'S15', '3'),
('N76', 6, 'S01', '2'),
('N77', 6, 'S02', '2'),
('N78', 6, 'S03', '2'),
('N79', 6, 'S04', '3'),
('N80', 6, 'S05', '2'),
('N81', 6, 'S06', '2'),
('N82', 6, 'S07', '3'),
('N83', 6, 'S08', '2'),
('N84', 6, 'S09', '4'),
('N85', 6, 'S10', '2'),
('N86', 6, 'S11', '2'),
('N87', 6, 'S12', '2'),
('N88', 6, 'S13', '4'),
('N89', 6, 'S14', '3'),
('N90', 6, 'S15', '2'),
('N91', 7, 'S01', '2'),
('N92', 7, 'S02', '2'),
('N93', 7, 'S03', '2'),
('N94', 7, 'S04', '2'),
('N95', 7, 'S05', '2'),
('N96', 7, 'S06', '2'),
('N97', 7, 'S07', '2'),
('N98', 7, 'S08', '2'),
('N99', 7, 'S09', '4');

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE `parameter` (
  `id_parameter` int(5) NOT NULL,
  `id_subkriteria` varchar(5) NOT NULL,
  `parameter_nilai` varchar(100) NOT NULL,
  `bobot_parameter` varchar(4) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parameter`
--

INSERT INTO `parameter` (`id_parameter`, `id_subkriteria`, `parameter_nilai`, `bobot_parameter`, `keterangan`) VALUES
(1, 'S01', 'melampirkan', '2', 'cukup baik'),
(2, 'S01', 'tidak melampirkan', '1', 'kurang'),
(3, 'S02', 'melampirkan', '2', 'cukup baik'),
(4, 'S02', 'tidak melampirkan', '1', 'kurang'),
(5, 'S03', 'melampirkan', '2', 'cukup baik'),
(6, 'S03', 'tidak melampirkan', '1', 'kurang'),
(7, 'S04', 'kerapian CV, pengalaman organisasi, informasi tambahan, berbobot, pengalaman kerja, melampirkan', '3', 'baik sekali'),
(8, 'S04', 'Kerapian CV, Pengalaman Organisasi, Melampirkan', '2', 'Baik'),
(9, 'S04', 'Tidak Melampirkan', '1', 'Kurang'),
(10, 'S05', 'Tetap Tenang, Tetap Fokus, Tidak Egois, Sabar', '2', 'Baik'),
(11, 'S05', 'Mudah terpancing emosi, Gegabah', '1', 'Kurang'),
(12, 'S06', 'Sanggup', '2', 'Baik'),
(13, 'S06', 'Tidak Sanggup', '1', 'Kurang'),
(14, 'S07', 'Pengalaman lebih dari 2 th (CV)', '4', 'Baik Sekali'),
(15, 'S07', 'pengalaman 1 th (CV)', '3', 'Baik'),
(16, 'S07', 'Pengalaman kurang dari 1 th (CV)', '2', 'Cukup Baik'),
(17, 'S07', 'Belum memiliki pengalaman', '1', 'Kurang'),
(18, 'S08', 'Menyukai', '2', 'Baik sekali'),
(19, 'S08', 'Tidak Menyukai', '1', 'Kurang'),
(20, 'S09', '90-100%', '4', 'Baik Sekali'),
(21, 'S09', '80-90%', '3', 'Baik'),
(22, 'S09', '70-80%', '2', 'Cukup Baik'),
(23, 'S09', '60-70%', '1', 'Kurang'),
(24, 'S10', 'Sangat menguasai', '3', 'Baik'),
(25, 'S10', 'Cukup menguasai', '2', 'Cukup Baik'),
(26, 'S10', 'Kurang menguasai', '1', 'Kurang'),
(27, 'S11', '>6 kelebihan yang dimiliki', '4', 'Baik Sekali'),
(28, 'S11', '4-5 kelebihan yang dimiliki', '3', 'baik'),
(29, 'S11', '2-3 kelebihan yang dimiliki', '2', 'cukup baik'),
(30, 'S12', 'S1', '4', 'Baik sekali'),
(31, 'S12', 'D1-D3', '3', 'Baik'),
(32, 'S12', 'SMA-SMK', '2', 'Cukup baik'),
(33, 'S12', 'SMP', '1', 'Kurang'),
(34, 'S13', 'Sangat bertanggungjawab', '4', 'Baik sekali'),
(35, 'S13', 'Cukup bertanggungjawab', '3', 'Baik'),
(36, 'S13', 'Kurang bertanggungjawab', '2', 'Cukup baik'),
(37, 'S13', 'Tidak bertanggungjawab', '1', 'Kurang'),
(38, 'S14', 'sangat percaya diri', '4', 'baik sekali'),
(39, 'S14', 'cukup percaya diri', '3', 'baik'),
(40, 'S14', 'kurang percaya diri', '2', 'cukup baik'),
(41, 'S14', 'tidak percaya diri', '1', 'kurang'),
(42, 'S11', '≤ 1 kelebihan yang dimiliki', '1', 'Kurang'),
(43, 'S15', 'Baik sekali', '4', 'baik sekali'),
(44, 'S15', 'Baik', '3', 'Baik'),
(45, 'S15', 'Cukup Baik', '2', 'Cukup Baik'),
(46, 'S15', 'Kurang', '1', 'Kurang');

-- --------------------------------------------------------

--
-- Table structure for table `penerimaan`
--

CREATE TABLE `penerimaan` (
  `id_penerimaan` int(5) NOT NULL,
  `bidang` varchar(20) NOT NULL,
  `kuota` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penerimaan`
--

INSERT INTO `penerimaan` (`id_penerimaan`, `bidang`, `kuota`) VALUES
(1, 'customer service', 3),
(3, 'admin', 1),
(6, 'pajak', 0),
(7, 'operator', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `id_ranking` int(5) NOT NULL,
  `id_alternatif` int(5) NOT NULL,
  `nilai_akhir` varchar(5) NOT NULL,
  `core` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`id_ranking`, `id_alternatif`, `nilai_akhir`, `core`) VALUES
(123, 1, '4.327', 13.083),
(124, 2, '4.513', 14.167),
(125, 3, '4.607', 14.25),
(126, 4, '4.36', 13.25),
(127, 5, '4.627', 14.417),
(128, 6, '4.453', 13.917),
(129, 7, '4.125', 12.083),
(130, 8, '4.473', 14.083),
(131, 9, '4.305', 12.25),
(132, 10, '4.513', 13.583),
(133, 12, '4.547', 14),
(134, 15, '4.552', 13.25);

-- --------------------------------------------------------

--
-- Table structure for table `subkriteria`
--

CREATE TABLE `subkriteria` (
  `id_subkriteria` varchar(5) NOT NULL,
  `id_aspek` varchar(5) NOT NULL,
  `nm_kriteria` varchar(50) NOT NULL,
  `j_penilaian` varchar(50) NOT NULL,
  `nilai_ketetapan` int(2) NOT NULL,
  `pertanyaan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subkriteria`
--

INSERT INTO `subkriteria` (`id_subkriteria`, `id_aspek`, `nm_kriteria`, `j_penilaian`, `nilai_ketetapan`, `pertanyaan`) VALUES
('S01', 'A01', 'scan ijazah', 'Secondary Factor', 2, '(Validasi)'),
('S02', 'A01', 'scan KTP', 'Secondary Factor', 2, '(Validasi)'),
('S03', 'A01', 'Foto', 'Secondary Factor', 2, '(Validasi)'),
('S04', 'A01', 'CV', 'Core Factor', 3, '(Validasi)'),
('S05', 'A02', 'bekerja dibawah tekanan', 'Core Factor', 2, 'Jika anda mengalami masalah saat menjalankan tugas, apa yang akan anda lakukan?'),
('S06', 'A02', 'bekerja memenuhi deadline', 'Core Factor', 2, 'Apakah anda bersedia jika harus bekerja memenuhi deadline?'),
('S07', 'A02', 'pengalaman kerja', 'Core Factor', 4, 'ceritakan pengalaman kerja yang anda miliki (Validasi CV)'),
('S08', 'A02', 'kerja sama tim', 'Secondary Factor', 2, 'apakah anda lebih suka kerja sendiri atau kerjasama tim? Dan bagaimana perasaan anda jika bekerja dilingkungan tim?'),
('S09', 'A03', 'komitmen', 'Core Factor', 4, 'berapa persen komitmenmu jika diterima perusahaan ini? Bagaimana canda membuktikannya'),
('S10', 'A03', 'pengetahuan bidang (cs/admin/pajak/operator)', 'Core Factor', 3, 'Jelaskan apa yang anda ketahui tentang(CS/ Admin/ Pajak/ Operator)? dan berikan contoh tugas-tugasnya!'),
('S11', 'A03', 'soft skill', 'Secondary Factor', 4, 'Apa kelebihan dan kekurangan yang anda miliki?'),
('S12', 'A03', 'pendidikan terakhir', 'Secondary Factor', 4, '(Validasi Ijazah)'),
('S13', 'A03', 'tanggungjawab', 'Core Factor', 4, 'seberapa tanggungjawab anda ketika diberi amanah?'),
('S14', 'A03', 'Percaya diri', 'Secondary Factor', 4, 'Apa yang bisa meyakinkan kami untuk merekrut kamu?'),
('S15', 'A03', 'ketegasan berbicara', 'Core Factor', 4, '(validasi wawancara)');

-- --------------------------------------------------------

--
-- Table structure for table `syarat`
--

CREATE TABLE `syarat` (
  `id_syarat` int(5) NOT NULL,
  `id_penerimaan` int(5) NOT NULL,
  `syarat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `syarat`
--

INSERT INTO `syarat` (`id_syarat`, `id_penerimaan`, `syarat`) VALUES
(1, 1, 'scan ijazah (file harus jelas)'),
(3, 1, 'scan ktp (file harus jelas)'),
(4, 1, 'foto (file harus jelas)'),
(5, 1, 'CV'),
(6, 1, 'bersedia bekerja dibawah tekanan'),
(7, 1, 'bersedia berkeja memenuhi deadline'),
(8, 1, 'pengalaman kerja'),
(9, 1, 'kerja sama tim'),
(10, 1, 'komitmen'),
(11, 1, 'menguasai bidang customer service'),
(12, 1, 'percaya diri, bertanggung jawab');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role_id` int(5) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email`, `username`, `password`, `role_id`, `is_active`) VALUES
(17, 'alvy@gmail.com', '', '$2y$10$nOUiuhqEaUMAnFtDAQ08geQ14UH8g0orBNCeLo08VRnJINe0IlPIu', 1, 1),
(26, 'admin@gmail.com', '', '$2y$10$Eg80Z57mPfdOPg3Y2CAqR.HfN069b2WNnN1KN64vzFQ2Y1p5fdMyG', 1, 1),
(27, 'salma@gmail.com', '', '$2y$10$jPe5q60XzQ8Azhv5ShaSzuxw4KebWGySmtTWvGMIXN3HVaVrXkUSO', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(5) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'pelamar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aspek`
--
ALTER TABLE `aspek`
  ADD PRIMARY KEY (`id_aspek`);

--
-- Indexes for table `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`id_bobot`);

--
-- Indexes for table `data_alternatif`
--
ALTER TABLE `data_alternatif`
  ADD PRIMARY KEY (`id_alternatif`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `data_nilai`
--
ALTER TABLE `data_nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_alternatif` (`id_alternatif`),
  ADD KEY `id_subkriteria` (`id_subkriteria`);

--
-- Indexes for table `parameter`
--
ALTER TABLE `parameter`
  ADD PRIMARY KEY (`id_parameter`),
  ADD KEY `id_subkriteria` (`id_subkriteria`);

--
-- Indexes for table `penerimaan`
--
ALTER TABLE `penerimaan`
  ADD PRIMARY KEY (`id_penerimaan`);

--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id_ranking`),
  ADD KEY `id_alternatif` (`id_alternatif`);

--
-- Indexes for table `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id_subkriteria`),
  ADD KEY `id_aspek` (`id_aspek`);

--
-- Indexes for table `syarat`
--
ALTER TABLE `syarat`
  ADD PRIMARY KEY (`id_syarat`),
  ADD KEY `id_penerimaan` (`id_penerimaan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_alternatif`
--
ALTER TABLE `data_alternatif`
  MODIFY `id_alternatif` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
  MODIFY `id_parameter` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `penerimaan`
--
ALTER TABLE `penerimaan`
  MODIFY `id_penerimaan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ranking`
--
ALTER TABLE `ranking`
  MODIFY `id_ranking` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `syarat`
--
ALTER TABLE `syarat`
  MODIFY `id_syarat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_alternatif`
--
ALTER TABLE `data_alternatif`
  ADD CONSTRAINT `data_alternatif_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_nilai`
--
ALTER TABLE `data_nilai`
  ADD CONSTRAINT `data_nilai_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `data_alternatif` (`id_alternatif`),
  ADD CONSTRAINT `data_nilai_ibfk_2` FOREIGN KEY (`id_subkriteria`) REFERENCES `subkriteria` (`id_subkriteria`);

--
-- Constraints for table `parameter`
--
ALTER TABLE `parameter`
  ADD CONSTRAINT `parameter_ibfk_1` FOREIGN KEY (`id_subkriteria`) REFERENCES `subkriteria` (`id_subkriteria`);

--
-- Constraints for table `ranking`
--
ALTER TABLE `ranking`
  ADD CONSTRAINT `ranking_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `data_alternatif` (`id_alternatif`);

--
-- Constraints for table `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD CONSTRAINT `subkriteria_ibfk_1` FOREIGN KEY (`id_aspek`) REFERENCES `aspek` (`id_aspek`);

--
-- Constraints for table `syarat`
--
ALTER TABLE `syarat`
  ADD CONSTRAINT `syarat_ibfk_1` FOREIGN KEY (`id_penerimaan`) REFERENCES `penerimaan` (`id_penerimaan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
