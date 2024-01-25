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
-- Table structure for table `USERS`
--

CREATE TABLE `USERS` (
  `userID` int(100) NOT NULL,
  `Title` text NOT NULL,
  `FName` text NOT NULL,
  `LName` text NOT NULL,
  `email` text NOT NULL,
  `mobile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `USERS`
--

INSERT INTO `USERS` (`userID`, `Title`, `FName`, `LName`, `email`, `mobile`) VALUES
(1, 'Mx (pronounced \"mix\" or \"mux\"', 'Precious', 'Deremo', 'pderemo567@gmail.com', '12345678'),
(2, 'Mx (pronounced \"mix\" or \"mux\"', 'A', 'B', 'C', '0282'),
(5, 'Ind (abbreviation of individual)', 'Sakuta', 'Aszugawa', 'bunnilova@outlook.ie', '983'),
(6, 'Mx (pronounced \"mix\" or \"mux\"', 'Rio', 'Futaba', 'baddiegenius@gmail.com', '033823'),
(7, 'Ind (abbreviation of individual)', 'Minnie', 'Mouse', 'disneyhq@outlook.ie', '0673923'),
(8, 'Mx (pronounced \"mix\" or \"mux\"', 'Mickey', 'Mouse', 'disneyhq@outlook.ie', '0673923'),
(9, 'Ind (abbreviation of individual)', 'Peter', 'Parker', 'spidey.com', '082932'),
(10, 'Ind (abbreviation of individual)', 'beep', 'boop', 'beepboop@gmail.com', '6942069'),
(11, 'Ind (abbreviation of individual)', 'viola', 'lolie', 'lvolie@gmail.com', '0862293'),
(12, 'Ind (abbreviation of individual)', 'Mike', 'Oxlong', 'MikeOxlong@gmail.com', '292461048746'),
(13, 'Ind (abbreviation of individual)', 'Phoenix', 'Flamboi', 'ferverntflames@gmai.com', '045821'),
(14, 'Ind (abbreviation of individual)', 'Fred', 'Dern', 'cvassaa', '343121'),
(15, 'Ind (abbreviation of individual)', 'A', 'D', 'cdas', '36312'),
(16, 'Mr', 'Nathanael', 'Macasaet', 'css@css.com', '0895667869'),
(17, 'Ind (abbreviation of individual)', 'ffd', 'dfdf', 'dsffg', '5432'),
(18, 'Ind (abbreviation of individual)', 'KKSK', 'SAASA', 'xzcsdcd', '3244546546'),
(19, 'Ind (abbreviation of individual)', 'Z', 'F', 'G', '482'),
(20, 'Mx (pronounced \"mix\" or \"mux\"', 'YT', 'FGH', 'fdsdss', '3534567'),
(21, 'Mx (pronounced \"mix\" or \"mux\"', 'JHGFGFG', 'FDSSSDSFD', 'nbnnbn', '837434'),
(22, 'Mx (pronounced \"mix\" or \"mux\"', 'MNNN', 'DFDSFSD', 'sdsdsdf', '8768678'),
(23, 'Mx (pronounced \"mix\" or \"mux\"', 'BCVVB', 'VCBCVB', 'xcxc', '435334'),
(24, 'Mx (pronounced \"mix\" or \"mux\"', 'VBCVVBC', 'SADSDAQW', 'hnghnhgng', '876754454'),
(25, 'Mx (pronounced \"mix\" or \"mux\"', 'FFFD', 'BBFGFG', 'JGHHGJ', '7563'),
(26, 'Mx (pronounced \"mix\" or \"mux\"', 'gdfgdfg', 'sadsd', 'asdasdasd', '234326435'),
(27, 'Ind (abbreviation of individual)', 'BVBBCVDF', 'DFDGFGDF', 'SFDSZD', '768754'),
(28, 'Ind (abbreviation of individual)', 'TTTT', 'FFF', 'DSDSDS', '43424'),
(29, 'Ind (abbreviation of individual)', 'ASSAS', 'DSDSD', 'NBVN', '8674'),
(30, 'Ind (abbreviation of individual)', 'FDSSD', 'SDSDS', 'asaassa', '324234234'),
(31, 'Ind (abbreviation of individual)', 'FDFD', 'DSSDAADS', 'sdadqedq', '23432423'),
(32, 'Ind (abbreviation of individual)', 'SDSE', 'QWEQWE', 'hrhr', '68774323'),
(33, 'Ind (abbreviation of individual)', 'DFVDF', 'WEFWEFW', 'SASDWQ', '234342'),
(34, 'Ind (abbreviation of individual)', 'BDFBDF', 'DSCEW', 'wewed', '34543');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `USERS`
--
ALTER TABLE `USERS`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `USERS`
--
ALTER TABLE `USERS`
  MODIFY `userID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
