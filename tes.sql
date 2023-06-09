-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 06:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tes`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id` int(11) NOT NULL,
  `mhs_id` int(11) NOT NULL,
  `mhs_nim` varchar(255) NOT NULL,
  `mhs_nama` varchar(255) NOT NULL,
  `mhs_angkatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id`, `mhs_id`, `mhs_nim`, `mhs_nama`, `mhs_angkatan`) VALUES
(1, 1, '20180001', 'Jono', 2018),
(2, 2, '20180002', 'Taufik', 2018),
(3, 3, '20180003', 'Maria', 2018),
(4, 4, '20190001', 'Sari', 2019),
(5, 5, '20190002', 'Bambang', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa_nilai`
--

CREATE TABLE `tb_mahasiswa_nilai` (
  `msh_nilai_id` int(11) NOT NULL,
  `mhs_id` int(11) NOT NULL,
  `mk_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mahasiswa_nilai`
--

INSERT INTO `tb_mahasiswa_nilai` (`msh_nilai_id`, `mhs_id`, `mk_id`, `nilai`) VALUES
(1, 1, 1, 70),
(2, 1, 1, 80),
(3, 2, 1, 82),
(4, 2, 2, 74),
(5, 4, 1, 76),
(6, 4, 2, 80),
(7, 5, 1, 60);

-- --------------------------------------------------------

--
-- Table structure for table `tb_matakuliah`
--

CREATE TABLE `tb_matakuliah` (
  `mk_id` int(11) NOT NULL,
  `mk_kode` varchar(50) NOT NULL,
  `mk_sks` int(11) NOT NULL,
  `mk_nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_matakuliah`
--

INSERT INTO `tb_matakuliah` (`mk_id`, `mk_kode`, `mk_sks`, `mk_nama`) VALUES
(1, 'MK202', 3, 'OOP'),
(2, 'MK303', 2, 'Basis Data');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mahasiswa_nilai`
--
ALTER TABLE `tb_mahasiswa_nilai`
  ADD PRIMARY KEY (`msh_nilai_id`);

--
-- Indexes for table `tb_matakuliah`
--
ALTER TABLE `tb_matakuliah`
  ADD PRIMARY KEY (`mk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_mahasiswa_nilai`
--
ALTER TABLE `tb_mahasiswa_nilai`
  MODIFY `msh_nilai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_matakuliah`
--
ALTER TABLE `tb_matakuliah`
  MODIFY `mk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- Soal no 2
SELECT mhs_nama
FROM tb_mahasiswa
JOIN tb_mahasiswa_nilai  ON tb_mahasiswa.mhs_id = tb_mahasiswa_nilai.mhs_id
JOIN tb_matakuliah mk ON tb_mahasiswa_nilai.msh_nilai_id = mk.mk_kode
WHERE mk.mk_kode = 'MK303'
ORDER BY tb_mahasiswa_nilai.nilai DESC
LIMIT 1;