-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2020 at 10:54 AM
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
-- Table structure for table `blog`
--

CREATE TABLE blog (
author varchar(14) DEFAULT NULL,
title varchar(40) DEFAULT NULL,
datee varchar(255) DEFAULT NULL,
datee2 varchar(255) NOT NULL,
content varchar(255) DEFAULT NULL,
imagee varchar(255) DEFAULT NULL,
id int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`author`, `title`, `datee`, `datee2`, `content`, `imagee`, `id`, `clicked`, `clicked2`, `created`) VALUES
('marc dela cruz', 'Lorem Ipsum Lorem Ipsum Dx', 'Feb 25 2020', '15:05:21', 'WOWOWOWOOWOWOWOWOOWOWOWOOWWOWOWOWOOWOWOWOWOOWOWOWOOWWOWOWOWOOWOWOWOWOOWOWOWOOWWOWOWOWOOWOWOWOWOOWOWOWOOWWOWOWOWOOWOWOWOWOOWOWOWOOWWOWOWOWOOWOWOWOWOOWOWOWOOW', 'img/ga.jpg', 49, '', '', ''),
('marc dela cruz', 'Lorem Ipsum Lorem Ipsum Dx', 'Feb 25 2020', '15:05:36', 'POPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPO', 'img/iaaslogotop.png', 50, '', '', ''),
('marc dela cruz', 'Lorem Ipsum Lorem Ipsum Dx', 'Feb 25 2020', '15:05:47', 'LOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLO', 'img/', 51, '', '', ''),
('marc dela cruz', 'Lorem Ipsum Lorem Ipsum Dx', 'Feb 25 2020', '15:07:21', 'xuxuxuuxuxuxuxuuxuxuxuxuuxuxx', 'img/', 52, '', '', ''),
('sad', 'sad', 'Feb 25 2020', '18:13:32', 'sas', 'img/', 54, '', '', '0'),
('marc dela cruz', 'Lorem Ipsum Lorem Ipsum Dx', 'Feb 25 2020', '18:16:36', 's', 'img/', 55, '', '', '18:16:36'),
('kokol', 'kokol', 'Feb 25 2020', '18:17:21', 'kokol', 'img/', 56, '', '', '18:17:21'),
('sew', 'serw', 'Feb 25 2020', '18:17:27', 'sewq', 'img/', 57, '', '', '18:17:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
