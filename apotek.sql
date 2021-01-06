-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 07:19 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `petugas` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `creator` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `creator_update` varchar(100) NOT NULL,
  `created_update` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `nama`, `email`, `no_telp`, `petugas`, `pesan`, `creator`, `created`, `creator_update`, `created_update`) VALUES
(1, 'James', 'James@gmail.com', '08123456789', 'John', 'meeting', 'aldrianraihan', '2020-11-17 05:48:39.000000', '', '0000-00-00 00:00:00.000000'),
(2, 'George', 'george@gmail.com', '0888999112', 'dr. William', 'check up tanggal 18 november 2020', 'aldrianraihan', '2020-11-17 05:53:41.000000', '', '0000-00-00 00:00:00.000000'),
(3, 'George', 'george@gmail.com', '0888999112', 'dr. William', 'meeting', 'aldrianraihan', '2020-11-17 06:12:10.000000', '', '0000-00-00 00:00:00.000000'),
(4, 'Michael', 'mic12@gmail.com', '081234532123', 'dr. Tirta', 'check up', 'aldrianraihan', '2020-11-17 10:53:13.000000', '', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` int(10) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `id_gender` int(10) NOT NULL,
  `creator` varchar(50) NOT NULL,
  `created` datetime(6) NOT NULL,
  `creator_update` varchar(50) NOT NULL,
  `created_update` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(10) NOT NULL,
  `jenis_gender` text NOT NULL,
  `creator` varchar(50) NOT NULL,
  `created` datetime(6) NOT NULL,
  `creator_update` datetime(6) NOT NULL,
  `created_update` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `jenis_gender`, `creator`, `created`, `creator_update`, `created_update`) VALUES
(1, 'Laki-laki', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', ''),
(2, 'Perempuan', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '');

-- --------------------------------------------------------

--
-- Table structure for table `history_keluhan`
--

CREATE TABLE `history_keluhan` (
  `id` int(10) NOT NULL,
  `id_pasien` int(10) NOT NULL,
  `id_gender` int(10) NOT NULL,
  `creator` varchar(50) NOT NULL,
  `created` datetime(6) NOT NULL,
  `creator_update` varchar(50) NOT NULL,
  `created_update` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history_obat`
--

CREATE TABLE `history_obat` (
  `id` int(10) NOT NULL,
  `id_pasien` int(10) NOT NULL,
  `id_obat` int(10) NOT NULL,
  `creator` varchar(50) NOT NULL,
  `created` datetime(6) NOT NULL,
  `creator_update` varchar(50) NOT NULL,
  `created_update` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history_tindakan`
--

CREATE TABLE `history_tindakan` (
  `id` int(10) NOT NULL,
  `id_pasien` int(10) NOT NULL,
  `id_gender` int(10) NOT NULL,
  `id_keluhan` int(10) NOT NULL,
  `creator` varchar(50) NOT NULL,
  `created` datetime(6) NOT NULL,
  `created_update` datetime(6) NOT NULL,
  `creator_update` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(10) NOT NULL,
  `nama_pasien` text NOT NULL,
  `tanggal_lahir` datetime(6) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `id_gender` int(10) NOT NULL,
  `id_keluhan` int(10) NOT NULL,
  `id_tindakan` int(10) NOT NULL,
  `id_obat` int(10) NOT NULL,
  `creator` varchar(50) NOT NULL,
  `created` datetime(6) NOT NULL,
  `creator_update` varchar(50) NOT NULL,
  `created_update` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `creator` varchar(50) NOT NULL,
  `created` datetime(6) NOT NULL,
  `created_update` datetime(6) NOT NULL,
  `creator_update` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`, `creator`, `created`, `created_update`, `creator_update`) VALUES
(1, 'admin klinik', 'admin', 'admin', 'admin', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', ''),
(2, 'aldrian nurrahman raihan', 'aldrianraihan', 'aldrian123', 'user', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_keluhan`
--
ALTER TABLE `history_keluhan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_obat`
--
ALTER TABLE `history_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_tindakan`
--
ALTER TABLE `history_tindakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history_keluhan`
--
ALTER TABLE `history_keluhan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_obat`
--
ALTER TABLE `history_obat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_tindakan`
--
ALTER TABLE `history_tindakan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
