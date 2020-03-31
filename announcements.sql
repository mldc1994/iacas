-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2020 at 08:34 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iacas`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `author2` varchar(50) DEFAULT NULL,
  `title2` varchar(255) DEFAULT NULL,
  `datee3` varchar(255) NOT NULL,
  `datee4` varchar(255) DEFAULT NULL,
  `content2` varchar(255) DEFAULT NULL,
  `imagee2` varchar(255) DEFAULT NULL,
  `id2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`author2`, `title2`, `datee3`, `datee4`, `content2`, `imagee2`, `id2`) VALUES
('Marc ', 'This is an Announcement Title', 'Mar 10 2020', '17:30:20', 'This is an Announcement Content', 'img/', 1),
('Marc ', 'This is an Announcement Title', 'Mar 10 2020', '17:31:46', 'This is an Announcement Content', 'img/', 2),
('Marc ', 'This is an Announcement Title', 'Mar 10 2020', '17:36:11', 'as', 'img/basicIV.jpg', 3),
('Marc ', 'This is an Announcement Title', 'Mar 10 2020', '17:36:48', 'sa', 'img/ga.jpg', 4),
('Marc ', 'This is an Announcement Title', 'Mar 10 2020', '17:38:08', 'sa', 'img/ga.jpg', 5),
('Marc ', 'This is an Announcement Title', 'Mar 10 2020', '17:38:17', 'as', 'img/iaaslogotop.png', 6),
('Marc ', 'This is an Announcement Title', 'Mar 10 2020', '17:39:02', 'as', 'img/iaaslogotop2.png', 7),
('Marc ', 'This is an Announcement Title', 'Mar 10 2020', '17:39:58', 'sas', 'img/iaaslogotop.png', 8),
('Marc ', 'This is an Announcement Title', 'Mar 10 2020', '17:40:32', 'sas', 'img/iaaslogotop.png', 9),
('Marc ', 'wewew', 'Mar 10 2020', '17:49:08', 'wewewe', 'img/basicIV.jpg', 10),
('HydroFlask', 'This is an Announcement Title', 'Mar 12 2020', '20:37:24', 'Awoo Awoo', 'img/ga.jpg', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id2`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
