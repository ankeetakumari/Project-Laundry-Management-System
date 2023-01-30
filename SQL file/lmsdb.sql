-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 05:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `regDate`) VALUES
(1, 'ankeeta', 'admin', 1234567890, 'ankeeta@gmail.com', 'bad85baf2c328e0e9862bb04d97b8418', '2022-06-09 07:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbllaundryreq`
--

CREATE TABLE `tbllaundryreq` (
  `ID` int(10) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `DateofLaundry` date DEFAULT NULL,
  `TopWear` varchar(120) DEFAULT NULL,
  `BootomWear` varchar(120) DEFAULT NULL,
  `WoolenCloth` varchar(120) DEFAULT NULL,
  `Other` varchar(120) DEFAULT NULL,
  `Service` varchar(120) DEFAULT NULL,
  `PickupAddress` varchar(250) DEFAULT NULL,
  `ContactPerson` varchar(120) DEFAULT NULL,
  `Description` varchar(120) DEFAULT NULL,
  `Status` varchar(5) NOT NULL,
  `Othercharges` bigint(20) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `PaymentType` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllaundryreq`
--

INSERT INTO `tbllaundryreq` (`ID`, `UserID`, `DateofLaundry`, `TopWear`, `BootomWear`, `WoolenCloth`, `Other`, `Service`, `PickupAddress`, `ContactPerson`, `Description`, `Status`, `Othercharges`, `postingDate`, `PaymentType`) VALUES
(24, 11, '2022-06-09', '4', '2', '1', '0', 'dropservice', '', '+25442993535', '', '3', 0, '2022-06-09 10:36:32', 'Cash on Delivery'),
(25, 15, '2023-01-22', '2', '1', '6', 'no', 'dropservice', '', 'ankeeta kumari', '', '0', NULL, '2023-01-22 09:09:05', ''),
(26, 15, '2023-01-22', '2', '1', '6', 'no', 'dropservice', '', 'ankeeta kumari', '', '0', NULL, '2023-01-22 09:12:27', ''),
(27, 15, '2023-01-23', '1', '2', '1', 'no', 'pickupservice', 'kadma', '1234567891', '', '0', NULL, '2023-01-22 09:14:52', ''),
(28, 15, '2023-01-23', '2', '2', '2', 'no', 'dropservice', '', 'ankeeta', '', '0', NULL, '2023-01-22 09:29:07', ''),
(29, 15, '2023-01-23', '1', '1', '1', 'no', 'dropservice', '', 'ankeeta kumari', '', '0', NULL, '2023-01-22 09:37:12', ''),
(30, 16, '2023-01-26', '1', '2', '1', '0', 'dropservice', '', 'ankeeta kumari', '', '0', NULL, '2023-01-26 14:15:18', ''),
(31, 16, '2023-01-26', '1', '1', '1', '0', 'dropservice', '', '1245612359', '', '0', NULL, '2023-01-26 15:06:34', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblpricelist`
--

CREATE TABLE `tblpricelist` (
  `Id` int(11) NOT NULL,
  `TopWear` varchar(120) DEFAULT NULL,
  `BottomWear` varchar(120) DEFAULT NULL,
  `Woolen` varchar(120) DEFAULT NULL,
  `Suit` varchar(120) DEFAULT NULL,
  `Curtains` varchar(120) DEFAULT NULL,
  `Carpets` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpricelist`
--

INSERT INTO `tblpricelist` (`Id`, `TopWear`, `BottomWear`, `Woolen`, `Suit`, `Curtains`, `Carpets`) VALUES
(1, '50', '80', '100', '150', '200', '500');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `Id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(120) NOT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`Id`, `FullName`, `Email`, `MobileNumber`, `Password`, `regDate`) VALUES
(13, 'ankeeta kumari', 'ankeeta@gmail.com', 1234567891, '202cb962ac59075b964b07152d234b70', '2023-01-22 06:40:50'),
(14, 'ankeeta', 'ak@gmail.com', 123456, '827ccb0eea8a706c4c34a16891f84e7b', '2023-01-22 08:03:24'),
(15, 'ankeeta', 'ankeeta12@gmail.com', 1234567891, '202cb962ac59075b964b07152d234b70', '2023-01-22 08:04:30'),
(16, 'abc', 'abc@gmail.com', 1234567891, '202cb962ac59075b964b07152d234b70', '2023-01-26 13:54:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbllaundryreq`
--
ALTER TABLE `tbllaundryreq`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpricelist`
--
ALTER TABLE `tblpricelist`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbllaundryreq`
--
ALTER TABLE `tbllaundryreq`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblpricelist`
--
ALTER TABLE `tblpricelist`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
