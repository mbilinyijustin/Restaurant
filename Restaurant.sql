-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2024 at 04:20 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customer ID` int(6) NOT NULL,
  `First name` varchar(10) NOT NULL,
  `Last name` varchar(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Phone no` varchar(15) NOT NULL,
  `Birthday` date NOT NULL,
  `Address` varchar(10) NOT NULL,
  `City` varchar(10) NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customer ID`, `First name`, `Last name`, `Email`, `Phone no`, `Birthday`, `Address`, `City`, `Status`) VALUES
(1, 'Elias', 'Mwita', 'eliasmwita86@gmail.c', '0710518820', '1970-12-14', '131', 'mbeya', 'Single'),
(2, 'Raphael', 'Robert', 'msigwaraphael20@gmai', '0747866975', '1999-04-19', '130', 'Dodoma', 'Single'),
(3, 'Mathew', 'Kidehele', 'mkidehele@gmail.com', '0658367245', '2004-06-26', '345', 'Njombe', 'Single'),
(4, 'Ruth', 'Robert', 'rmsigwa@gmail.com', '0717474717', '2003-05-18', '135', 'Dodoma', 'Single'),
(5, 'Robert', 'Raphael', 'msigwarobert@gmail.c', '0762407499', '2002-04-19', '135', 'Dodoma', 'Married'),
(6, 'Mussa', 'Mmewa', 'mmmewa@gmail.com', '0745567389', '2012-09-30', '567', 'Iringa', 'Single'),
(7, 'Rachel', 'Ngowi', 'rngowi@gmail.com', '0763567839', '1983-07-28', '3454', 'Moshi', 'Married'),
(8, 'Rehoboth', 'Msigwa', 'rmsigwa@gmail.com', '0612456798', '2017-02-25', '135', 'Dodoma', 'Single'),
(9, 'Restina', 'Robert', 'rrobert@gmail.com', '0756784699', '2008-09-19', '167', 'Arusha', 'Single'),
(10, 'Willium', 'Mbilinyi', 'mbilinyiwillium@gmai', '0754636796', '2002-04-01', '123', 'Njombe', 'Single'),
(11, 'Fredrick', 'Munuo', 'munuofredrick@gmail.', '0683347695', '2000-08-20', '234', 'Dodoma', 'Single'),
(12, 'Faraja', 'Matandara', 'fmatandara@gmail.com', '0756789643', '1996-10-24', '987', 'Iringa', 'Married'),
(13, 'Lydier', 'Newson', 'lmsigwa@gmail.com', '0752678963', '2000-09-20', '345', 'Dar es saa', 'Single'),
(14, 'Ahadi', 'Kidehele', 'akidehele@gmail.com', '0745678329', '1985-05-08', '246', 'Njombe', 'Married'),
(15, 'Yohana', 'Emmanuel', 'emsongole@gmail.com', '0745678329', '2001-03-21', '456', 'Dar es saa', 'Single'),
(16, 'Kabehe', 'Elias', 'kabehe@gmail.com', '0616784987', '2001-06-17', '876', 'Tabora', 'Single'),
(17, 'Grady', 'Mlowe', 'mlowegrady@gmail.com', '0747867599', '2000-01-01', '785', 'Arusha', 'Single'),
(18, 'Athuman', 'Abdalah', 'aathuman@gmail.com', '0756784532', '2002-03-19', '567', 'Kahama', 'Single'),
(19, 'Kevoo', 'Martin', 'martinkevoo@gmail.co', '0783765895', '2001-05-20', '456', 'Kahama', 'Single'),
(20, 'Amos', 'Mmary', 'mmaryamos@gmail.com', '0683567894', '1996-12-20', '457', 'Moshi', 'Single');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `Dish ID` int(6) NOT NULL,
  `Description` text NOT NULL,
  `Price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`Dish ID`, `Description`, `Price`) VALUES
(1, 'WALI NYAMA,JUICE', '3000'),
(2, 'PIZA,MANGO JUICE', '16000'),
(3, 'UGALI NYAMA,BANANA', '2000'),
(4, 'PILAU,NYAMA YA KUKU,SODA', '8000'),
(5, 'CHIPS KUKU,JUICE', '6000'),
(6, 'UGALI NA NYAMA,MBOGA ZA MAJANI', '7000'),
(7, 'NDIZI ZA KUPIKWA', '2000'),
(8, 'UGALI NA NYAMA', '3000'),
(9, 'WALI MAHARAGE,SODA', '5000'),
(10, 'VIAZI VITAMU,JUICE', '3000'),
(11, 'WALI NYAMA,MBOGA ZA MAJANI', '6000'),
(12, 'UGALI,MBOGA ZA MAJANI', '3000'),
(13, 'CHIPS KUKU NA JUICE', '8000'),
(14, 'PIZA NA SODA', '16000'),
(15, 'UGALI NA NYAMA,MBOGA ZA MAJANI', '9000'),
(16, 'WALI,NYAMA,MBOGA ZA MAJANI', '6000'),
(17, 'PILAU KUKU,SODA', '5000'),
(18, 'WALI NA MAHARAGE', '3000'),
(19, 'CHIPS YAI,JUICE', '5000'),
(20, 'UGALI,NYAMA YA NG\'OMBE,JUICE', '7000');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `Event ID` int(6) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`Event ID`, `Name`, `Description`) VALUES
(1, 'Birthday', 'itakuwa na watu 200,mda wa chakul ni sa nane kamili'),
(2, 'Sendoff', 'ita anza 08:30pm,pitakua na watu 300'),
(3, 'Harusi', 'itakua na watu 500 na ita anza saa 9:00pm'),
(4, 'Kipaimara', 'ita anza sa 3:00pm,itakua na watu 100'),
(5, 'Ubatizo', 'ita anza sa 4:00pm, itakua na wati 200'),
(6, 'kitchen pa', 'ita anza sa 9:00,itakua na wat 100'),
(7, 'wedding ca', 'ita anza saa 7:00, itakua na watu 200'),
(8, 'CCM meetin', 'ita anza sa 9:00am,itakua na watu 50'),
(9, 'COICT week', 'ita anza saa 9:00,itakua na watu 700'),
(10, 'Birthday', 'ita anza sa 8:00am,itakua na watu 50'),
(11, 'CHADEMA me', 'ita anza sa 10:00am,itakua na watu 100'),
(12, 'kitchen pa', 'ita anza saa9:00pm,itakua na watu 200'),
(13, 'wedding ce', 'ita anza sa 9:00pm,itakua na watu 500'),
(14, 'Birthday p', 'ita anza sa 8:00pm,itakua na watu 300'),
(15, 'Simba sc m', 'ita anza sa 11:00am,itakua na watu 50'),
(16, 'yanga sc m', 'ita anza saa 12:00pm,itakua na watu 40'),
(17, 'Wedding ce', 'ita anza sa 9:00pm,itakua na watu 400'),
(18, 'Birthday p', 'ita anza sa 8:00pm,itakua na watu 30'),
(19, 'COSTE week', 'ita anza sa 9:00am,itakua na watu 600'),
(20, 'Birthday p', 'itakua na watu 20,ita anza saa 9:00pm');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Orders ID` int(6) NOT NULL,
  `Customer ID` int(6) NOT NULL,
  `Date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Orders ID`, `Customer ID`, `Date`) VALUES
(1, 1, '2024-05-07 22:00:00.000000'),
(2, 2, '2024-06-09 00:00:00.000000'),
(3, 3, '2025-08-27 00:00:00.000000'),
(4, 4, '2024-06-23 00:00:00.000000'),
(5, 5, '2024-05-06 00:00:00.000000'),
(6, 6, '2024-09-16 00:00:00.000000'),
(7, 7, '2024-10-29 00:00:00.000000'),
(8, 8, '2024-11-12 00:00:00.000000'),
(9, 9, '2024-12-26 00:00:00.000000'),
(10, 10, '2025-01-01 00:00:00.000000'),
(11, 11, '2024-10-10 00:00:00.000000'),
(12, 12, '2024-09-12 00:00:00.000000'),
(13, 13, '2024-12-13 00:00:00.000000'),
(14, 14, '2024-07-26 00:00:00.000000'),
(15, 15, '2024-09-18 00:00:00.000000'),
(16, 16, '2024-10-11 00:00:00.000000'),
(17, 17, '2025-01-02 00:00:00.000000'),
(18, 18, '2024-09-29 00:00:00.000000'),
(19, 19, '2024-10-10 00:00:00.000000'),
(20, 20, '2024-12-25 00:00:00.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customer ID`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`Dish ID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`Event ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Orders ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Customer ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `Dish ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `Event ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Orders ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
