-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 04, 2022 at 12:00 PM
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
-- Table structure for table `Address`
--

CREATE TABLE `Address` (
  `addressID` int(100) NOT NULL,
  `AddressLine1` text NOT NULL,
  `AddressLine2` text NOT NULL,
  `Town` text NOT NULL,
  `CountyCity` text NOT NULL,
  `Eircode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`addressID`, `AddressLine1`, `AddressLine2`, `Town`, `CountyCity`, `Eircode`) VALUES
(1, 'aline1', 'aline2', 'atown', 'kuld', 'eirc'),
(2, 'E', 'F', 'G', 'H', 'I'),
(5, 'e', 'd', 'r', 'h', ''),
(6, '108 OCER', 'walkers way', 'huni', 'vort', ''),
(7, '32', 'fssd', '32', 'fgs', '34'),
(8, '32', 'gba', '32', 'fgs', '562'),
(9, 'secret', 'v', 'villa', 'no county', ''),
(10, 'ding dong', '', 'la la land', 'foecount', ''),
(11, 'fghhh', 'bbbbbb', 'fffffff', '44444', ''),
(12, '12 the lane ', '', 'Newbridge', 'Kildare', ''),
(15, 'HGF', '', 'DCV', 'KJH', ''),
(16, 'asdds', '', 'dsdsd', 'dsdwe', ''),
(17, 'FDSDS', 'WEWE', 'SDSD', 'SDFWE', 'WEEWW'),
(18, 'B', '', '4GT', 'HD', ''),
(19, 'GDDS', '', 'BVBVBN', 'HFGGFS', ''),
(20, 'NNFGFDGF', '', 'CVXCVXC', 'SDSDSDDDS', ''),
(21, 'DSFSDF', '', 'VCC', 'SDSAA', ''),
(22, 'SASDA', '', 'SDAAS', 'ASDADAS', ''),
(23, 'SASDASD', '', 'ASDSD', 'FBGGFFGB', ''),
(24, 'SAASAS', '', 'SDDSDS', 'SFSDFFSDF', ''),
(25, 'vcsdfaf', '', 'sadasdwqed', 'qwdwqdwq', ''),
(26, 'DFDFSD', '', 'SDFSD', 'SDFSD', ''),
(27, 'DSDSDS', '', 'SDSDDS', 'VVVFF', ''),
(28, 'WQW', '', 'SDS', 'SDAS', ''),
(29, 'THDTDR', '', 'FGDFG', 'DFGDWEW', ''),
(30, 'HRHT', '', 'DSFEWF', 'FSDFSD', ''),
(31, 'GREGR', '', 'EWFWEFE', 'WEFSDD', ''),
(32, 'DSDASD', '', 'ASDWQDD', 'ADSADWQ', ''),
(33, 'FDVDFFDV', '', 'DVDFV', 'DQWQW', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Address`
--
ALTER TABLE `Address`
  ADD UNIQUE KEY `UNIQUE` (`addressID`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Address`
--
ALTER TABLE `Address`
  MODIFY `addressID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Address`
--
ALTER TABLE `Address`
  ADD CONSTRAINT `Address_ibfk_1` FOREIGN KEY (`addressID`) REFERENCES `USERS` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
