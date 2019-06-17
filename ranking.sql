-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2019 at 10:43 AM
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
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `cmsid` int(11) NOT NULL,
  `schoolname` varchar(80) NOT NULL,
  `establish` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `board` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `overview` text NOT NULL,
  `academics` text NOT NULL,
  `uniques` text NOT NULL,
  `admission` text NOT NULL,
  `students` int(11) NOT NULL,
  `teachers` int(11) NOT NULL,
  `campus` int(11) NOT NULL,
  `keyword` varchar(400) NOT NULL,
  `description` varchar(800) NOT NULL,
  `cms_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`cmsid`, `schoolname`, `establish`, `type`, `board`, `gender`, `overview`, `academics`, `uniques`, `admission`, `students`, `teachers`, `campus`, `keyword`, `description`, `cms_fk`) VALUES
(7, 'KV Roukela', 2000, 'public', 'cbse', 'co-ed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus.', 2000, 50, 200, 'kv roukela orissa', 'zdkvjnjrns ksn this is no 1 school in orissa', 46),
(8, 'KV ONGC', 2001, 'public', 'cbse', 'co-ed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus.', 3000, 70, 250, 'kv ongc', 'csnkvnk  ndsvk', 47),
(9, 'Kanchan Vidya Mandir', 2008, 'private', 'icse', 'co-ed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus.', 2000, 60, 150, 'kanchan vidya mandir', 'cmskvn jcjiewo', 48),
(10, 'Mt Zion Mission', 2002, 'public', 'cbse', 'co-ed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus', 2300, 65, 123, 'mt zion mission', 'mcksdn dkscnv', 49),
(11, 'Milia Convent', 2004, 'public', 'cbse', 'co-ed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tortor augue, faucibus sed luctus vitae, congue ut velit. Curabitur convallis condimentum vulputate. Integer efficitur purus non enim ornare hendrerit fermentum nec eros. Quisque pharetra facilisis est, nec faucibus odio auctor in. Nam sit amet bibendum nisl, eget tempus ante. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at quam arcu. Aenean tincidunt velit tincidunt lorem dapibus, et accumsan felis ornare. Cras lobortis nunc felis, eu auctor odio accumsan a. Nulla arcu lectus, suscipit sit amet efficitur ac, hendrerit in massa. Morbi hendrerit gravida ipsum sollicitudin ullamcorper. Vestibulum tincidunt feugiat nunc, sed porttitor urna blandit vel. Curabitur interdum sodales velit non rhoncus.', 2400, 60, 120, 'milia convent', 'cmknk cajfkas sjeooed', 50),
(13, 'Raja Ram Mohan Roy', 2007, 'private', 'icse', 'co-ed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 2000, 67, 210, 'rrmr raj ram mohan', 'this is raja ram', 101);

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `pid` int(11) NOT NULL,
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
  `score` float NOT NULL,
  `points_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`pid`, `rank`, `teacher_welfare`, `competance_of_faculty`, `acd_reputation`, `co_curi_edu`, `sports`, `life_skill`, `individual_attention`, `mgm_quality`, `parental_involve`, `infrastructure`, `internationalism`, `special_needs`, `value_for_money`, `comm_service`, `research`, `score`, `points_fk`) VALUES
(46, 3, 20, 30, 20, 10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 91, 102),
(47, 1, 20, 29, 29, 20, 20, 11, 23, 11, 12, 1, 1, 1, 1, 1, 1, 181, 103),
(48, 3, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 104),
(49, 5, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 105),
(50, 2, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 106),
(101, 6, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 164);

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
  `picsource` varchar(500) NOT NULL DEFAULT 'stuadmin/default.jpg',
  `certfile` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ranks`
--

INSERT INTO `ranks` (`id`, `schoolname`, `address`, `cityname`, `statename`, `pin`, `startingclass`, `endingclass`, `contactperson`, `phone`, `mobile`, `regno`, `board`, `other`, `email`, `password`, `website`, `active`, `picsource`, `certfile`) VALUES
(102, 'KV Roukela', '23/2 Macchi Mart Lane No 3', 'Roukela', 'Orissa', 232322, 'playgroup', '11', 'Ram Prasad', 8126253597, 8126253597, 897231, 'cbse', '', 'kvroukela@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'www.kvroukela.com', 1, 'stuadmin/ 5d05d2551b0fc7.36856108.jpg', ''),
(103, 'KV ONGC', 'Ajabpur Khurd , Mothorawala Road', 'Dehradun', 'Uttarakhand', 248121, '1', '12', 'Ram Prasad', 8126253597, 8126253597, 323422, 'cbse', '', 'kvongc@gmail.com', 'cbfad02f9ed2a8d1e08d8f74f5303e9eb93637d47f82ab6f1c15871cf8dd0481', 'www.kvongc.com', 1, 'stuadmin/default.jpg', ''),
(104, 'Kanchan Vidya Mandir', 'Lane No .3 Ajabpur Khurd , Mothorawala Road', 'Dehradun', 'Uttarakhand', 248121, '1', '10', 'Rita', 8126253597, 632232232, 12121, 'icse', '', 'kvm@gmail.com', 'cbfad02f9ed2a8d1e08d8f74f5303e9eb93637d47f82ab6f1c15871cf8dd0481', 'www.kvm.com', 0, 'stuadmin/default.jpg', ''),
(105, 'Mt Zion Mission', 'Purnia ', 'Purnia', 'Bihar', 854301, 'playgroup', '10', 'Prashant K Dey', 8126253597, 8126253597, 332221, 'cbse', '', 'aa@gg.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', 'www.mzms.com', 0, 'stuadmin/default.jpg', ''),
(106, 'Milia Convent', 'Purnia ', 'Purnia', 'Bihar', 854301, 'playgroup', '12', 'Pr', 8126253597, 8126253597, 22345, 'cbse', '', 'add@ee.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'www.milia.com', 0, 'stuadmin/default.jpg', ''),
(164, 'Raja Ram Mohan Roy', 'Lane No 10  Ajabpur Khurd , Mothorawala Road', 'Dehradun', 'Uttarakhand', 248121, '1', '12', 'Prashant K Dey', 8126253597, 8126253597, 224332, 'icse', '', 'rrmr@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'http://dirifurek.000webhostapp.com/', 0, 'stuadmin/default.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`cmsid`),
  ADD KEY `cms_fk` (`cms_fk`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `cmsp_fk` (`points_fk`);

--
-- Indexes for table `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `cmsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cms`
--
ALTER TABLE `cms`
  ADD CONSTRAINT `cms_ibfk_1` FOREIGN KEY (`cms_fk`) REFERENCES `points` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`points_fk`) REFERENCES `ranks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
