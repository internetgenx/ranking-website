-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2019 at 05:17 PM
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
-- Table structure for table `ranks`
--

CREATE TABLE `ranks` (
  `id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
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
  `score` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ranks`
--

INSERT INTO `ranks` (`id`, `rank`, `schoolname`, `address`, `cityname`, `statename`, `pin`, `startingclass`, `endingclass`, `contactperson`, `phone`, `mobile`, `regno`, `board`, `other`, `email`, `password`, `website`, `score`, `active`) VALUES
(1, 1, 'Kendriya Vidyalaya ONGC', '', 'Dehradun', 'Uttarakhand', 0, '', '', '', 0, 0, 0, '', '', '', '', '', 95, 0),
(2, 2, 'Brightlands', '', 'Mumbai', 'Maharashtra', 0, '', '', '', 0, 0, 0, '', '', '', '', '', 93, 0),
(36, 0, 'hjsifho', 'jfksjjggg', 'jfijise', 'jfijisjfs', 656569, '3', '6', 'ifjifjosa', 875930532, 57939793, 59834843, 'cbse', '', 'ksdhifsi@nkdhdf.com', '44443', 'http://dfhissd.com', 0, 0),
(38, 0, 'csinivnd', 'cbcibss', 'snciadii', 'duhdudhs', 786757, 'playgroup', '8', 'cjshishs', 7157381111, 866826822, 738682, 'cbse', '', 'ugugsd@mc.com', 'e10adc3949ba59abbe56e057f20f883e', 'http://www.cj.com', 0, 0),
(39, 0, 'csinivnd', 'cbcibss', 'snciadii', 'duhdudhs', 786757, 'playgroup', '8', 'cjshishs', 7157381111, 866826822, 738682, 'cbse', '', 'ugugsd@mc.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'http://www.cj.com', 0, 0),
(40, 0, 'DPS RK PURAM', 'Ajabpur Khurd , Mothorawala Road', 'Delhi', 'Delhi', 248001, '1', '12', 'Ram Prasad', 8126253597, 9898011980, 446465, 'cbse', '', 'dpsrk@gmail.com', '581f6aa3c60372d02f732fd06d29c48410e25e18032c04c893e88ee2648922ce', 'http://www.dpsrk.com', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
