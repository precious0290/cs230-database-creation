-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 04, 2022 at 11:59 AM
-- Server version: 10.3.31-MariaDB-0+deb10u1
-- PHP Version: 7.3.31-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230_u210320`
--

-- --------------------------------------------------------

--
-- Table structure for table `ShippingAddress`
--

CREATE TABLE `ShippingAddress` (
  `shippingID` int(100) NOT NULL,
  `AddressLine1S` text NOT NULL,
  `AddressLine2S` text NOT NULL,
  `TownS` text NOT NULL,
  `CountyCityS` text NOT NULL,
  `EircodeS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ShippingAddress`
--

INSERT INTO `ShippingAddress` (`shippingID`, `AddressLine1S`, `AddressLine2S`, `TownS`, `CountyCityS`, `EircodeS`) VALUES
(1, 'aine', 'furn', 'ript', 'kurc', 'eirc'),
(2, 'J', 'K', 'L', 'M', 'N'),
(5, 'ewdewde', 'g', 'd', 'c', ''),
(6, 'postal', 'service', 'support', 'flore', ''),
(9, 'post', '', 'alise', 'vurt', ''),
(10, 'ding don', '', 'la la land', 'foecount', ''),
(11, '55555', 'gggg', 'ffdddaas', 'vdssdsdse', ''),
(12, '12 The paddocks the lane', '', 'Newbridge', 'Kildare', ''),
(13, 'un', '', 'deux', 'trois', ''),
(15, 'RGS', '', 'DGHS', 'SDG', ''),
(16, 'wewe2233', '', 'gererf', 'dssddeqqw', ''),
(17, 'DCSCDD', 'SDSCDS', 'CCXZX', 'SSDSSDSD', 'WQWQW'),
(18, 'GSS', '', 'NFF', 'BFD', ''),
(19, 'KJJHHJJ', '', 'DDSDSSD', 'JJHG', ''),
(20, 'ASDASDD', '', 'NVGHGGN', 'XCZCXWE', ''),
(21, 'NVBBVD', '', 'SDSDS', 'NVBBVN', ''),
(22, 'ASDASSA', '', 'ASDASDSA', 'ASDASD', ''),
(23, 'WDQWDQW', '', 'DSSDDF', 'WFEEWWE', ''),
(24, 'SDADSA', '', 'WEFEWF', 'DCSDSDFF', ''),
(25, 'qwdqwdwqd', '', 'qwdqwd', 'wqdqwd', ''),
(26, 'SDFSFDS', '', 'SDFDSFS', 'SDFDSFDSF', ''),
(27, 'DDSDS', '', 'NHF', 'FDFSDDS', ''),
(28, 'ASDAS', '', 'ASDASW', 'QWQQ', ''),
(29, 'DEQDWQ', '', 'ASDASDAS', 'ASDASDSA', ''),
(30, 'SDFSDFS', '', 'SDFSFEW', 'SADWQ', ''),
(31, 'DSCWEF', '', 'WEDQED', 'QWDQWDQ', ''),
(32, 'WQDQWD', '', 'SAADW', 'WQEQWE', ''),
(33, 'WQW', '', 'SDDSEW', 'SDCWEW', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ShippingAddress`
--
ALTER TABLE `ShippingAddress`
  ADD UNIQUE KEY `UNIQUE` (`shippingID`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ShippingAddress`
--
ALTER TABLE `ShippingAddress`
  MODIFY `shippingID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ShippingAddress`
--
ALTER TABLE `ShippingAddress`
  ADD CONSTRAINT `ShippingAddress_ibfk_1` FOREIGN KEY (`shippingID`) REFERENCES `USERS` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
