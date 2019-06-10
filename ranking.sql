-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2019 at 10:54 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ranking`
--

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `teacher_welfare` float NOT NULL,
  `competance_of_faculty` float NOT NULL,
  `acd_reputation` float NOT NULL,
  `co_curi_edu` float NOT NULL,
  `sports` float NOT NULL,
  `life_skill` float NOT NULL,
  `individual_attention` float NOT NULL,
  `mgm_quality` float NOT NULL,
  `parental_involve` float NOT NULL,
  `infrastructure` float NOT NULL,
  `internationalism` float NOT NULL,
  `special_needs` float NOT NULL,
  `value_for_money` float NOT NULL,
  `comm_service` float NOT NULL,
  `research` float NOT NULL,
  `score` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `rank`, `teacher_welfare`, `competance_of_faculty`, `acd_reputation`, `co_curi_edu`, `sports`, `life_skill`, `individual_attention`, `mgm_quality`, `parental_involve`, `infrastructure`, `internationalism`, `special_needs`, `value_for_money`, `comm_service`, `research`, `score`) VALUES
(46, 3, 20, 30, 20, 10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 91),
(47, 1, 20, 29, 29, 20, 20, 11, 23, 11, 12, 1, 1, 1, 1, 1, 1, 181),
(48, 3, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91),
(49, 5, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90),
(50, 2, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93);

-- --------------------------------------------------------

--
-- Table structure for table `ranks`
--

CREATE TABLE `ranks` (
  `id` int(11) NOT NULL,
  `schoolname` varchar(80) NOT NULL,
  `address` varchar(100) NOT NULL,
  `cityname` varchar(60) NOT NULL,
  `statename` varchar(60) NOT NULL,
  `pin` int(11) NOT NULL,
  `startingclass` varchar(20) NOT NULL,
  `endingclass` varchar(30) NOT NULL,
  `contactperson` varchar(80) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `regno` int(11) NOT NULL,
  `board` varchar(20) NOT NULL,
  `other` varchar(80) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `website` text NOT NULL,
  `active` int(11) NOT NULL,
  `picsource` varchar(500) NOT NULL,
  `certfile` varchar(200) NOT NULL,
  `points_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ranks`
--

INSERT INTO `ranks` (`id`, `schoolname`, `address`, `cityname`, `statename`, `pin`, `startingclass`, `endingclass`, `contactperson`, `phone`, `mobile`, `regno`, `board`, `other`, `email`, `password`, `website`, `active`, `picsource`, `certfile`, `points_fk`) VALUES
(102, 'KV Roukela', '23/2 Macchi Mart Lane No 3', 'Roukela', 'Orissa', 232322, 'playgroup', '11', 'Ram Prasad', 8126253597, 8126253597, 897231, 'cbse', '', 'kvroukela@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'www.kvroukela.com', 0, '', '', 46),
(103, 'KV ONGC', 'Ajabpur Khurd , Mothorawala Road', 'Dehradun', 'Uttarakhand', 248121, '1', '12', 'Ram Prasad', 8126253597, 8126253597, 323422, 'cbse', '', 'kvongc@gmail.com', 'cbfad02f9ed2a8d1e08d8f74f5303e9eb93637d47f82ab6f1c15871cf8dd0481', 'www.kvongc.com', 0, '', '', 47),
(104, 'Kanchan Vidya Mandir', 'Lane No .3 Ajabpur Khurd , Mothorawala Road', 'Dehradun', 'Uttarakhand', 248121, '1', '10', 'Rita', 8126253597, 632232232, 12121, 'icse', '', 'kvm@gmail.com', 'cbfad02f9ed2a8d1e08d8f74f5303e9eb93637d47f82ab6f1c15871cf8dd0481', 'www.kvm.com', 0, '', '', 48),
(105, 'Mt Zion Mission', 'Purnia ', 'Purnia', 'Bihar', 854301, 'playgroup', '10', 'Prashant K Dey', 8126253597, 8126253597, 332221, 'cbse', '', 'aa@gg.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', 'www.mzms.com', 0, '', '', 49),
(106, 'Milia Convent', 'Purnia ', 'Purnia', 'Bihar', 854301, 'playgroup', '12', 'Pr', 8126253597, 8126253597, 22345, 'cbse', '', 'add@ee.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'www.milia.com', 0, '', '', 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ranks_ibfk_1` (`points_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ranks`
--
ALTER TABLE `ranks`
  ADD CONSTRAINT `ranks_ibfk_1` FOREIGN KEY (`points_fk`) REFERENCES `points` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
