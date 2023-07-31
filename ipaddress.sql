-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2023 at 12:05 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipaddress`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_data`
--

CREATE TABLE `tb_data` (
  `id` int(11) NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `bot` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `asn` varchar(100) DEFAULT NULL,
  `asndescription` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_data`
--

INSERT INTO `tb_data` (`id`, `ip`, `bot`, `country`, `asn`, `asndescription`) VALUES
(10, '37.19.205.153', 'true', 'United Kingdom of Great Britain and Northern Irela', '212238', 'CDNEXT'),
(11, '103.102.177.130', 'false', 'Indonesia', '135464', 'IDNIC-WINETMEDIA-AS-ID Winet Media Persada'),
(12, '190.2.133.229', 'true', 'Netherlands', '49981', 'WORLDSTREAM'),
(13, '190.2.133.229', 'true', 'Netherlands', '49981', 'WORLDSTREAM'),
(15, '185.107.56.71', 'false', 'Netherlands', '43350', 'NFORCE'),
(16, '217.138.206.83', 'true', 'Romania', '9009', 'M247'),
(17, '217.138.206.83', 'true', 'Romania', '9009', 'M247'),
(18, '103.102.177.130', 'false', 'Indonesia', '135464', 'IDNIC-WINETMEDIA-AS-ID Winet Media Persada');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_data`
--
ALTER TABLE `tb_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_data`
--
ALTER TABLE `tb_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
