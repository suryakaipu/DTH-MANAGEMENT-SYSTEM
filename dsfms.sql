-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2020 at 07:38 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dfsms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UpdationDate`) VALUES
(1, 'Admin', 'admin', 1234567899, 'admin@test.com', 'f925916e2754e5e03f75dd58a5733251', '2020-01-22 18:30:00', '2020-11-04 18:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(200) DEFAULT NULL,
  `categoryCode` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `categoryName`, `categoryCode`, `PostingDate`) VALUES
(2, 'SPORTS', 'P1', '2020-09-11 16:27:59'),
(3, 'MOVIES', 'P2', '2020-06-12 16:28:12'),
(4, 'MUSIC', 'P3', '2020-06-05 16:29:18'),
(5, 'DEVOTIONAL', 'P4', '2020-08-14 16:29:58'),
(7, 'KIDS', 'P5', '2020-07-04 14:52:08'),
(8, 'NEWS', 'P6', '2020-10-25 03:40:07'),
(10, 'FASHION', 'P7', '2020-11-01 23:03:41'),
(14, 'sports', 's11', '2020-11-04 17:51:22'),
(15, 'abca1', 'a1', '2020-11-04 17:51:48'),
(16, 'music', 'p1', '2020-11-04 18:07:05'),
(17, 'music', '11', '2020-11-04 18:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblchannel`
--

CREATE TABLE `tblchannel` (
  `package` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblchannel`
--

INSERT INTO `tblchannel` (`package`, `company`, `name`, `price`) VALUES
('SPORTS', 'UrDTH', 'star sports', 22);

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `id` int(11) NOT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`id`, `CompanyName`, `PostingDate`) VALUES
(14, 'UrDTH', '2020-11-01 23:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbldealer`
--

CREATE TABLE `tbldealer` (
  `id` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `mobilenumber` bigint(11) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldealer`
--

INSERT INTO `tbldealer` (`id`, `name`, `mobilenumber`, `address`) VALUES
(1, 'NISHANTH', 9865321470, 'CHENNAI'),
(2, 'SURYA', 7418529630, 'HYDERABAD'),
(3, 'MOHIT', 8529637410, 'DELHI'),
(5, 'DEVESH', 7780350167, 'BANGLORE');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `InvoiceNumber` int(11) DEFAULT NULL,
  `CustomerName` varchar(150) DEFAULT NULL,
  `CustomerContactNo` bigint(12) DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `InvoiceGenDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `ProductId`, `Quantity`, `InvoiceNumber`, `CustomerName`, `CustomerContactNo`, `PaymentMode`, `InvoiceGenDate`) VALUES
(1, 4, 2, 753947547, 'Anuj', 9354778033, 'cash', '2020-09-04 08:32:47'),
(2, 1, 1, 753947547, 'Anuj', 9354778033, 'cash', '2020-08-13 08:32:47'),
(3, 1, 1, 979148350, 'Sanjeen', 1234567890, 'card', '2020-04-09 11:38:08'),
(4, 4, 1, 979148350, 'Sanjeen', 1234567890, 'card', '2020-08-07 11:38:08'),
(5, 1, 1, 861354457, 'Rahul', 9876543210, 'cash', '2020-09-19 11:43:48'),
(7, 5, 1, 276794782, 'Sarita', 1122334455, 'cash', '2020-08-27 11:48:06'),
(8, 6, 1, 276794782, 'Sarita', 1122334455, 'cash', '2020-08-22 11:48:06'),
(9, 6, 2, 744608164, 'Babu Pandey', 123458962, 'card', '2020-06-25 12:07:50'),
(10, 2, 2, 744608164, 'Babu Pandey', 123458962, 'card', '2020-07-11 12:07:50'),
(11, 7, 1, 139640585, 'John', 45632147892, 'cash', '2020-07-11 14:54:24'),
(12, 5, 1, 139640585, 'John', 45632147892, 'cash', '2020-06-13 14:54:24'),
(13, 1, 1, 778298061, 'devesh', 8509637410, 'cash', '2020-10-26 17:07:07'),
(14, 2, 1, 361869558, 'devesh', 8509637410, 'cash', '2020-10-26 17:09:59'),
(15, 1, 1, 939456427, 'quess', 8509637418, 'card', '2020-10-26 17:10:41'),
(16, 1, 1, 503996426, 'devesh', 8509637418, 'card', '2020-11-01 22:15:34'),
(17, 1, 1, 885121961, 'devesh', 8509637410, 'cash', '2020-11-01 23:06:16'),
(18, 1, 1, 457682506, 'ram', 8509637417, 'card', '2020-11-04 00:25:43'),
(19, 1, 9, 849570002, 'ram3', 8509637418, 'card', '2020-11-04 00:26:34'),
(20, 2, 1, 497039903, 'abc', 123456, 'card', '2020-11-04 18:20:48'),
(21, 1, 1, 497039903, 'abc', 123456, 'card', '2020-11-04 18:20:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblpackage`
--

CREATE TABLE `tblpackage` (
  `Name` varchar(20) NOT NULL,
  `ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpackage`
--

INSERT INTO `tblpackage` (`Name`, `ID`) VALUES
('music', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `ProductName` varchar(150) DEFAULT NULL,
  `ProductPrice` decimal(10,0) DEFAULT current_timestamp(),
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`id`, `CategoryName`, `CompanyName`, `ProductName`, `ProductPrice`, `PostingDate`, `UpdationDate`) VALUES
(1, 'SPORTS', 'UrDTH', 'STAR SPORTS 1', '22', '2020-11-04 17:26:02', '2020-11-04 17:26:02'),
(2, 'MOVIES', 'UrDTH', 'SONY MOVIES', '42', '2020-11-04 17:26:05', '2020-11-04 17:26:05'),
(3, 'MUSIC', 'UrDTH', 'MUSIC4U', '26', '2020-11-04 17:26:08', '2020-11-04 17:26:08'),
(4, 'NEWS', 'UrDTH', 'BBC', '50', '2020-11-04 17:26:11', '2020-11-04 17:26:11'),
(5, 'DEVOTIONAL', 'UrDTH', 'BHAKTI', '46', '2020-11-04 17:26:13', '2020-11-04 17:26:13'),
(6, 'NEWS', 'UrDTH', 'AAJ TAK', '30', '2020-11-04 17:26:16', '2020-11-04 17:26:16'),
(7, 'SPORTS', 'UrDTH', 'STAR SPORTS 3', '35', '2020-11-04 17:26:32', '2020-11-04 17:26:32'),
(8, 'MOVIES', 'UrDTH', 'MAA MOVIES', '20', '2020-11-04 17:26:23', '2020-11-04 17:26:23'),
(9, 'MOVIES', 'UrDTH', 'star sports', '22', '2020-11-04 17:52:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `id` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `gender` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `address` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `mobilenumber` bigint(11) DEFAULT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`id`, `name`, `gender`, `date`, `address`, `mobilenumber`, `salary`) VALUES
(1, 'SURYA', 'm', '2020-10-02', '1-4 rajhmundry', 9865321477, 8000),
(2, 'NISHANTH', 'm', '2020-10-01', '1-5,hyd', 7418529688, 9000),
(5, 'MOHIT', 'm', '2020-10-25', '1-9 LUTUKURRU', 7741852963, 8000),
(6, 'DEVESH', 'm', '2020-11-02', '1-9 LUTUKURRU', 987452365, 8000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldealer`
--
ALTER TABLE `tbldealer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbldealer`
--
ALTER TABLE `tbldealer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
