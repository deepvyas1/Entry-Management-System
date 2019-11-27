-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 12:28 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `entry management`
--

-- --------------------------------------------------------

--
-- Table structure for table `entered`
--

CREATE TABLE `entered` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` bigint(20) NOT NULL,
  `Host_name` varchar(255) NOT NULL,
  `Host_email` varchar(255) NOT NULL,
  `Host_phone` bigint(20) NOT NULL,
  `Check_in` bigint(20) NOT NULL,
  `Check_out` bigint(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entered`
--

INSERT INTO `entered` (`id`, `Name`, `Email`, `Phone`, `Host_name`, `Host_email`, `Host_phone`, `Check_in`, `Check_out`, `status`) VALUES
(1, 'Deep Vyas', 'deepvyas2016@gmail.com', 7223926161, 'Sundar Pichai', 'sq@dd', 1234567890, 1574889328, 0, 1),
(2, 'ddef', 'de@dd', 121221, 'SDSF`', 'SDS@SS', 1126, 1574891816, 0, 1),
(3, 'sdjaj', 'ds@as', 1231, 'dfsd`', '1ns@asa', 21212, 1574891931, 0, 0),
(5, 'Ashish', 'as@as', 121, 'Deep Vyas', 'deepvyas2016@gmail.com', 7223926161, 1574892027, 0, 1),
(6, 'Akshay', 'as@qq', 1212, 'Deep Vyas', 'deepvyas2016@gmail.com', 7223926161, 1574892264, 0, 0),
(7, 'Sarthak', 'sdA@ss', 127, 'Deep Vyas', 'deepvyas2016@gmail.com', 7223926161, 1574892507, 0, 1),
(8, 'Sundar', 's@sp', 1234567890, 'Deep Vyas', 'deepvyas2016@gmail.com', 7223926161, 1574892675, 1574892689, 0),
(9, 'aabhash', 'a@aa', 1234567890, 'Deep Vyas', 'deepvyas2016@gmail.com', 7223926161, 1574893686, 1574893704, 0),
(10, 'Sanjay Sir', 's@jainsir', 1234567890, 'Deep Vyas', 'deepvyas2016@gmail.com', 7223926161, 1574893849, 1574893865, 0),
(11, 'aa', 'asd@asd', 1234567890, 'Deep Vyas', 'deepvyas2016@gmail.com', 7223926161, 1574894004, 1574894017, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entered`
--
ALTER TABLE `entered`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entered`
--
ALTER TABLE `entered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
