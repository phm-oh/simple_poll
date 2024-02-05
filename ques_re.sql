-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 05, 2024 at 10:33 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `1`
--

-- --------------------------------------------------------

--
-- Table structure for table `ques_re`
--

CREATE TABLE `ques_re` (
  `idqr` int(11) NOT NULL,
  `idq` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ques_re`
--

INSERT INTO `ques_re` (`idqr`, `idq`, `score`) VALUES
(1, 1, 5),
(2, 2, 3),
(3, 3, 4),
(4, 4, 1),
(5, 1, 3),
(6, 2, 4),
(7, 3, 3),
(8, 4, 1),
(9, 1, 1),
(10, 2, 1),
(11, 3, 5),
(12, 4, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ques_re`
--
ALTER TABLE `ques_re`
  ADD PRIMARY KEY (`idqr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ques_re`
--
ALTER TABLE `ques_re`
  MODIFY `idqr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
