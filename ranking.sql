-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2019 at 07:58 PM
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
(13, 'Raja Ram Mohan Roy', 2007, 'private', 'icse', 'co-ed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 2000, 67, 210, 'rrmr raj ram mohan', 'this is raja ram', 101),
(17, 'KV IIT Chennai', 1999, 'public', 'cbse', 'co-ed', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nec nisl euismod, tincidunt mauris ac, luctus nulla. Pellentesque tortor turpis, mattis in tempus et, varius sit amet odio. Vivamus tincidunt molestie blandit. Curabitur luctus volutpat lectus. Suspendisse auctor facilisis vestibulum. Cras maximus, ipsum non commodo consequat, nisl purus suscipit sapien, ut euismod neque nibh euismod elit. Sed congue tempor est, eu sagittis diam tincidunt sit amet.', 'text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 3432, 89, 210, 'kv iit chennai ', 'This page give info about kv iit chennai', 102),
(18, 'The Mother\'s International School', 1956, 'public', 'cbse', 'co-ed', 'The school was founded on 23 April 1956 by founder Shri Surendra Nath Jauhar \"Faquir\", with the blessings of The Mother, Mirra Alfassa, a spiritualist, the spiritual partner and collaborator of Sri Aurobindo.\r\n\r\nThe school\'s motto \"More True, Forever More True\" was given by the Mirra Alfassa, known as the Mother, and the school\'s emblem portrays a bird in flight rising towards heaven. When asked about the date of the school\'s opening, the Mother replied \"23456\". And as the only possible date was 23 April 1956, it was this day that the school first opened.\r\n\r\nWhen the school started out, a batch (or a grade) was of about 15 children, but today a batch has 180 students. The school has three wings, the Pre-Primary, Primary and Secondary. The pre-primary program of The Mother\'s International School replaced Mira Nursery, a pre-primary school it previously shared campus with.', 'The school teaches four languages: English, Hindi, Sanskrit and French. It also teaches mathematics, science and social studies till Class 10. There are three main streams for study beyond Class 10: Science, Commerce and Humanities.\r\n\r\nFor classes 1 and 2, there is only 1-3 teachers and they teach all the subjects; in the 3rd grade and above, there is a different teacher for each subject, with one class teacher. The student/teacher ratio is approximately 1 teacher for every 62 students.\r\n\r\nIn 2001, Outlook\'s \"C-Fore Best School Survey\" has ranked MIS as one of the top 10 schools in India, and the best school in Delhi', 'Students are allowed to choose extracurricular activities that they are interested in, including art and crafts, classical dance, a range of sports activities, vocal and instrumental music.\r\n\r\nThe school also offers a range of facilities for those interested in pottery and clay modeling, carpentry, drama, quizzing, yoga, taekwondo, gymnastics, s.education, music (instrumental as well as vocal) and art groups. The school actively hosts inter-school competitions for the above.\r\n\r\nEach year, inter-house competitions are held in the school as well - including the Bag drama, oral interpretation, poem festivals, and debates. The school also holds a talent show on 23 April, which is also the school foundation day.', 'The school has an annual magazine, Navchetna (\"new thoughts\" in Sanskrit). The magazine contains poems and articles submitted by the students themselves. On the school\'s 60th Anniversary, it was themed upon the spaces in the school which students, teachers and alumni could relate to. This magazine is considered to be very special by the students of the school, as no matter how ostentatiously or simply the articles are written, they are extremely poignant. The editorial board of the Navchetna is changed annually for all the four languages that are there in the magazine: Hindi, English, Sanskrit and French. The English editorial board plays a major role in creating a framework for the magazine.', 2223, 112, 232, 'the mother\'s international school aurbindo ', 'This is delhi\'s no.1 school', 103),
(19, 'Doon International School', 1989, 'private', 'cbse', 'co-ed', 'Thank you for showing interest in admitting your child to Doon International School. Few decisions are more important than the choice of the right school for your child and this website provides you with a glimpse of what our school has to offer. We believe that Doon International School offers an educational experience like no other to our children and will give them the qualifications and confidence they will need to play a leading role in tomorrow\'s society. We constantly endeavor to provide our students with a learning environment in which they have as many opportunities as possible in which to excel and also distinguish themselves in academics and a range of co-curricular and extracurricular activities.\r\n\r\nI am sure that every child admitted to the school will find the staff and general environment warm, friendly and supportive as well as an atmosphere which breeds co-operation and trust. We look forward to welcoming your child to Doon International School!', 'Doon International School is from Nursery level to Class 12 and follows the curriculum laid down by the Central Board of Secondary Education, New Delhi. The course of studies is international in its scope and ambit and includes subjects like English, Hindi, Mathematics, Sciences, History, Geography, Arts and Craft, Physical Education ,Yoga ,several languages etc. \r\nStudents at the senior secondary level are offered a variety of subjects to choose from, giving the students the widest possible opportunity to specialize in their chosen areas of interest. Academic excellence remains a key area of focus for the school. The school provides all its students unrivalled opportunities to realize their full academic potential. \r\nThere are over hundred full time members of the teaching staff who are chosen not only for their own intellectual skills but also for their ability and enthusiasm in communicating them to boys and girls of all ages. The teachers are well supported by several technicians and other ancillary and administrative staff. Teachers are encouraged to be flexible and individual in their approach. \r\nThe commitment of the school to excellence in academics is reflected in the consistently outstanding performance of its students in the annual examinations conducted by the CBSE. The school students have consistently achieved 100% results in the Board exams conducted by the CBSE. The school is recognised as a Centre for Academic Excellence and a large number of students regularly clear Competitive Exams and enter reputed Universities in India and abroad. \r\nThe school academic year is from April to March, and is divided into two terms, as per the pattern prevalent in all English medium public schools in the country. Examinations may not be the true test of a child\'s ability, but regular classroom tests and periodic assessment at the school level are indicative of scholastic achievement. The results enable the teachers as well as students to reassess their orientation and take corrective measures, if required, to accord due attention to subjects and topics in which the child may need additional assistance. \r\nApart from the unit tests, results of which are intimated to parents, terminal examinations are organized twice each year. The half-yearly examinations take place in September/October while the final examinations are conducted in March every year.', 'Thank you for showing interest in admitting your child to Doon International School. Few decisions are more important than the choice of the right school for your child and this website provides you with a glimpse of what our school has to offer. We believe that Doon International School offers an educational experience like no other to our children and will give them the qualifications and confidence they will need to play a leading role in tomorrow\'s society. We constantly endeavor to provide our students with a learning environment in which they have as many opportunities as possible in which to excel and also distinguish themselves in academics and a range of co-curricular and extracurricular activities.\r\n\r\nI am sure that every child admitted to the school will find the staff and general environment warm, friendly and supportive as well as an atmosphere which breeds co-operation and trust. We look forward to welcoming your child to Doon International School!', 'Thank you for showing interest in admitting your child to Doon International School. Few decisions are more important than the choice of the right school for your child and this website provides you with a glimpse of what our school has to offer. We believe that Doon International School offers an educational experience like no other to our children and will give them the qualifications and confidence they will need to play a leading role in tomorrow\'s society. We constantly endeavor to provide our students with a learning environment in which they have as many opportunities as possible in which to excel and also distinguish themselves in academics and a range of co-curricular and extracurricular activities.\r\n\r\nI am sure that every child admitted to the school will find the staff and general environment warm, friendly and supportive as well as an atmosphere which breeds co-operation and trust. We look forward to welcoming your child to Doon International School!', 3202, 99, 221, 'doon international school dehradun ', 'This page give info about doon international school', 105),
(20, 'Dhirubhai Ambani International School', 2003, 'private', 'icse', 'co-ed', 'The Dhirubhai Ambani International School (DAIS) is a private co-educational LKG-12 day school in Mumbai, Maharashtra, India, built by Reliance Industries, named after the late patriarch of the conglomerate, Dhirubhai Ambani. The school was established in 2003 and has been an IB World School since January 2003. It offers the International Baccalaureate Program in its Diploma form. Nita Ambani, wife of Mukesh Ambani is the chairperson of the school.', 'DAIS prepares students for the ICSE (Indian Certificate of Secondary Education), the IGCSE (International General Certificate of Secondary Education), and the IBDP (International Baccalaureate Diploma Programme) examinations. The School is a member of the CIPP (Cambridge International Primary Programme). Classes I to V have an independent and integrated programme drawing on the best elements of the National (ICSE) and International (Cambridge International Primary Programme up to Class V) curricula. In Secondary school (Classes VIII to X), students pursue either the ICSE or the IGCSE. Class VIII serves as a foundational and preparatory programme for the ICSE or the IGCSE curriculum for which the students opt in Class IX and X. In Class XI and XII, the IB Diploma is offered.', 'The school building is seven storied with lawns, landscaped gardens and playgrounds. The school premises house 130,000 square feet (12,000 m2) of teaching space containing classrooms and laboratories.[8]\r\n\r\nEvery classroom has a public address system, display and writing boards, lockers for students, broadband Internet access and air conditioning. There is schoolwide Wi-Fi internet access for the students of grades 8-10 affiliated with the IGCSE board and its 11th and 12th graders. There are laboratories for Physics, Chemistry and Biology and teaching rooms for Art, Music, Social Science, Languages, Computer Studies, and Mathematics.\r\n\r\nThe school has a Learning Centre with access to periodicals and audio-visual resources, the internet and photocopying/printing facilities. It shares a playground with the American School of Bombay with an astroturf, tennis and basketball courts for outdoor sports. The Dhirubhai Ambani International School Study and Activity Centre situated in Matheran, 100  km from Mumbai, opened in 2008. It is used for cross-curricular, recreational activities as well as for weekend training camps and Physical Education activities.', 'DAIS prepares students for the ICSE (Indian Certificate of Secondary Education), the IGCSE (International General Certificate of Secondary Education), and the IBDP (International Baccalaureate Diploma Programme) examinations. The School is a member of the CIPP (Cambridge International Primary Programme). Classes I to V have an independent and integrated programme drawing on the best elements of the National (ICSE) and International (Cambridge International Primary Programme up to Class V) curricula. In Secondary school (Classes VIII to X), students pursue either the ICSE or the IGCSE. Class VIII serves as a foundational and preparatory programme for the ICSE or the IGCSE curriculum for which the students opt in Class IX and X. In Class XI and XII, the IB Diploma is offered.', 1000, 50, 300, 'dais dhirubhai ambani international school', 'This page give info about dhirubhai ambani international school', 106),
(21, 'JBCN International School', 2003, 'private', 'icse', 'co-ed', 'JBCN Education is proud to announce an Entrepreneurship Summer Programme conducted exclusively by Columbia Business School (CBS), as a part of their Summer School Activities. Columbia Business School (CBS) is the Business school of Columbia University in Manhattan, New York City. It is one of the six Ivy League Business schools, and is among the most selective of top business schools in the world. The school belongs to the M7 group of elite MBA programs which recognize each other as peers and consist of Chicago Booth, Columbia, Harvard, Kellogg, MIT Sloan, Stanford, and Wharton.', 'JBCN Education leads three International Schools in Mumbai that adopts a range of curricula of the IBO (DP), CIE (CIPP, IGCSE, A levels) & ICSE, implemented through a unique method of learning through understanding that makes school a foundation for lifelong learning.\r\n\r\nPowered by a dynamic team, driven by a strong vision, and incorporating the latest educational research practised globally, JBCN Education has been responsible for the creation of JBCN International School, one of the finest International Schools in Mumbai.', 'JBCN Education leads three International Schools in Mumbai that adopts a range of curricula of the IBO (DP), CIE (CIPP, IGCSE, A levels) & ICSE, implemented through a unique method of learning through understanding that makes school a foundation for lifelong learning.\r\n\r\nPowered by a dynamic team, driven by a strong vision, and incorporating the latest educational research practised globally, JBCN Education has been responsible for the creation of JBCN International School, one of the finest International Schools in Mumbai.', 'JBCN Education leads three International Schools in Mumbai that adopts a range of curricula of the IBO (DP), CIE (CIPP, IGCSE, A levels) & ICSE, implemented through a unique method of learning through understanding that makes school a foundation for lifelong learning.\r\n\r\nPowered by a dynamic team, driven by a strong vision, and incorporating the latest educational research practised globally, JBCN Education has been responsible for the creation of JBCN International School, one of the finest International Schools in Mumbai.', 1009, 53, 100, 'jbnc school mumbai', 'This page give info about jbnc school mumbai', 107),
(22, 'St. Joseph\'s Academy', 1995, 'private', 'icse', 'co-ed', 'St. Josephâ€™s Academy, located in the heart of the Doon Valley in a sprawling seventeen acres campus was established by the Patrician Brothers on 2nd March, 1934. Beginning with a mere 15 students and 7 staff members and under the guidance of Bro. Adrian Keogh, the first principal, and a community of Brothers, the school grew rapidly, acquiring the status of a premier educational institution of Dehradun.', 'St. Josephâ€™s Academy, located in the heart of the Doon Valley in a sprawling seventeen acres campus was established by the Patrician Brothers on 2nd March, 1934. Beginning with a mere 15 students and 7 staff members and under the guidance of Bro. Adrian Keogh, the first principal, and a community of Brothers, the school grew rapidly, acquiring the status of a premier educational institution of Dehradun.', 'St. Josephâ€™s Academy, located in the heart of the Doon Valley in a sprawling seventeen acres campus was established by the Patrician Brothers on 2nd March, 1934. Beginning with a mere 15 students and 7 staff members and under the guidance of Bro. Adrian Keogh, the first principal, and a community of Brothers, the school grew rapidly, acquiring the status of a premier educational institution of Dehradun.', 'St. Josephâ€™s Academy, located in the heart of the Doon Valley in a sprawling seventeen acres campus was established by the Patrician Brothers on 2nd March, 1934. Beginning with a mere 15 students and 7 staff members and under the guidance of Bro. Adrian Keogh, the first principal, and a community of Brothers, the school grew rapidly, acquiring the status of a premier educational institution of Dehradun.', 2001, 112, 150, 'st joseph academy', 'This page give info about st joseph academy', 108);

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
(46, 9, 20, 30, 20, 10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 91, 102),
(47, 6, 20, 29, 29, 20, 20, 11, 23, 11, 12, 1, 1, 1, 1, 1, 1, 181, 103),
(48, 9, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 104),
(49, 11, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 105),
(50, 8, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 106),
(101, 12, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 164),
(102, 2, 60, 20, 20, 10, 5, 30, 50, 22, 27, 44, 22, 11, 1, 1, 1, 324, 165),
(103, 1, 100, 80, 10, 20, 39, 57, 92, 7, 10, 20, 10, 1, 1, 1, 1, 449, 166),
(105, 3, 90, 20, 49, 32, 23, 2, 2, 3, 2, 2, 1, 40, 1, 1, 30, 298, 168),
(106, 4, 20, 30, 30, 40, 20, 45, 57, 1, 1, 4, 8, 8, 6, 1, 1, 272, 169),
(107, 7, 30, 29, 19, 19, 1, 1, 1, 1, 1, 1, 1, 44, 1, 1, 1, 151, 170),
(108, 5, 20, 10, 30, 10, 100, 10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 189, 171);

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
(164, 'Raja Ram Mohan Roy', 'Lane No 10  Ajabpur Khurd , Mothorawala Road', 'Dehradun', 'Uttarakhand', 248121, '1', '12', 'Prashant K Dey', 8126253597, 8126253597, 224332, 'icse', '', 'rrmr@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'http://dirifurek.000webhostapp.com/', 0, 'stuadmin/default.jpg', ''),
(165, 'KV IIT Chennai', 'Bonn Avenue, Chennai, Tamil Nadu 600036', 'Chennai', 'Tamil Nadu', 603203, '1', '12', 'Prashant K Dey', 44, 8126253597, 838388, 'cbse', '', 'kviitchennai@gmail.com', 'cbfad02f9ed2a8d1e08d8f74f5303e9eb93637d47f82ab6f1c15871cf8dd0481', 'www.kviitchennai.ac.in', 0, 'stuadmin/default.jpg', ''),
(166, 'The Mother\'s International School', 'Sri Aurobindo Marg, Vijay Mandal Enclave, Kalu Sarai', 'Delhi', 'Delhi', 110016, '1', '12', 'Smt. Sangamitra Ghosh', 11, 11, 877998, 'cbse', '', 'mis@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'www.themis.in', 0, 'stuadmin/default.jpg', ''),
(168, 'Doon International School', '32 Curzon Road Opp Gandhi Shatabdi Eye Hospital Pari Mahal ', 'Dehradun', 'Uttarakhand', 248121, '1', '12', 'Prashant K Dey', 8126253597, 7550173202, 769000, 'cbse', '', 'dis@gmail.com', '38083c7ee9121e17401883566a148aa5c2e2d55dc53bc4a94a026517dbff3c6b', 'https://disdehradun.com', 0, 'stuadmin/default.jpg', ''),
(169, 'Dhirubhai Ambani International School', 'g block, 46, Trident Road, G Block BKC, Bandra Kurla Complex, Bandra East', 'Mumbai', 'Maharashtra', 400098, 'playgroup', '12', 'Nita Ambani', 8126253597, 8126253597, 886878, 'icse', '', 'bhai@gmail.com', '40510175845988f13f6162ed8526f0b09f73384467fa855e1e79b44a56562a58', 'www.da-is.org', 0, 'stuadmin/default.jpg', ''),
(170, 'JBCN International School', 'Plot CTS No. 96, Remison Towers, Near Bhagwati Hospital, Baburao Ranade Marg, Opp Union Bank Staff Q', 'Mumbai', 'Maharashtra', 400103, '1', '12', 'Prashant K Dey', 7550173202, 8126253597, 324532, 'icse', '', 'jbcn@x.com', 'dee2645537527f693754c5e6994bfa1a9d9fed6b1b1b34e59cd6a3fdf8479f3b', 'http://www.jbcnschool.edu.in/', 0, 'stuadmin/default.jpg', ''),
(171, 'St. Joseph\'s Academy', 'Ajabpur Khurd , Mothorawala Road', 'Dehradun', 'Uttarakhand', 248121, '1', '12', 'Prashant K Dey', 8126253597, 8126253597, 864680, 'icse', '', 'as@x.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'http://www.cj.com', 0, 'stuadmin/default.jpg', '');

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
  MODIFY `cmsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

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
