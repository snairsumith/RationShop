-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2018 at 04:03 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rationdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryId` int(10) NOT NULL,
  `CategoryName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryId`, `CategoryName`) VALUES
(1, 'BPL'),
(2, 'APL'),
(3, 'Genaral');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `complaintsId` int(10) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL,
  `RoleType` int(20) NOT NULL,
  `Date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `SenderId` int(20) NOT NULL,
  `ReceiverId` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerId` int(10) NOT NULL,
  `CustomerName` varchar(25) NOT NULL,
  `RationCardNo` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `AadharNo` varchar(50) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `EmailId` varchar(50) NOT NULL,
  `ContactNo` varchar(13) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `ShopOwnerId` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerId`, `CustomerName`, `RationCardNo`, `Address`, `AadharNo`, `DOB`, `EmailId`, `ContactNo`, `Gender`, `ShopOwnerId`) VALUES
(4, 'sad', 'ds', 'sd', 'jgj', 'jgjg', 'jg', 'jg', 'Female', 'sumith@gmail.com'),
(5, 'Sumith S Nair', 'ration 1', 'Thethothil', '1245', '12-12-1989', 'sumith@gmail.com', '9656761101', 'Female', 'sumith@gmail.com'),
(6, 'Hari', 'sdsd23424', 'sddssd', 'assas24442', '12-12-1989', 'sumith@minusbugs.com', '9656761101', 'M', 'sumith123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedBackId` int(10) NOT NULL,
  `FeedBackTitle` varchar(40) NOT NULL,
  `FeedBackDescription` varchar(50) NOT NULL,
  `CreatedOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SenderId` varchar(50) NOT NULL,
  `ReciverId` varchar(50) NOT NULL,
  `Type` int(3) NOT NULL COMMENT '1-Admin Send,2-Shop Send,3-Customer Send'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FeedBackId`, `FeedBackTitle`, `FeedBackDescription`, `CreatedOn`, `SenderId`, `ReciverId`, `Type`) VALUES
(2, 'Quota Not Recived', 'assa', '2018-11-09 19:11:47', 'sumith@gmail.com', 'admin', 2),
(3, 'Quota Not Recived', 'assa', '2018-11-09 19:11:52', '5', 'sumith@gmail.com', 3),
(4, 'Test', 'sdds', '2018-11-09 19:16:00', 'sumith@gmail.com', 'admin', 2),
(5, 'Hai Admin', 'Test Msg', '2018-11-09 19:59:16', 'sumith@gmail.com', 'admin', 2),
(6, 'New Stok Added', 'Test', '2018-11-09 19:59:30', 'sumith@gmail.com', '5', 2);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ItemId` int(1) NOT NULL,
  `ItemName` varchar(50) NOT NULL,
  `ItemDescription` varchar(50) NOT NULL,
  `ItemStatus` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ItemId`, `ItemName`, `ItemDescription`, `ItemStatus`) VALUES
(1, 'Rice', '', 0),
(2, 'OIL', '', 0),
(3, 'ddf', 'fd', 1),
(4, 'wheat', 'sff', 1),
(5, 'Item 2', 'khhkh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LocationId` int(10) NOT NULL,
  `LocationName` varchar(500) NOT NULL,
  `ParentId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LocationId`, `LocationName`, `ParentId`) VALUES
(1, 'India', 0),
(2, 'Kerala', 1),
(3, 'Kottayam', 2),
(4, 'Eranakulam', 2),
(5, 'Iduki', 2),
(6, 'Alapuzha', 2),
(7, 'Vaikom', 3),
(8, 'Kaduthuruthy', 3),
(9, 'Tripunithura', 4),
(10, 'Vytilla', 4);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `LoginId` int(10) NOT NULL,
  `UserName` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Role` int(10) NOT NULL COMMENT '1-User,2-Admin,3-Shop'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`LoginId`, `UserName`, `Password`, `Role`) VALUES
(1, 'admin', 'admin', 2),
(24, 'sumith@gmail.com', 'admin', 3),
(25, 'hari@gmail.com', '5267', 3),
(26, 'admin@gg.vom', 'admin', 3),
(27, 'admin@dd.vom', 'admin', 3),
(28, 'sumith@minusbugs.com', '123', 2),
(29, 'sumith2112@minusbugs.com', '123', 1),
(30, 'sumith2112@minusbugs.com', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `NotificationId` int(10) NOT NULL,
  `Title` varchar(10) NOT NULL,
  `Description` varchar(20) NOT NULL,
  `RoleType` int(20) NOT NULL COMMENT '1.user,2.admin,3.shop',
  `Date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `Status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`NotificationId`, `Title`, `Description`, `RoleType`, `Date`, `Status`) VALUES
(1, '', '', 0, '0000-00-00 00:00:00.000000', 0),
(2, 'Hai Admin', 'jjlj', 1, '2018-11-09 14:47:49.118243', 0),
(3, 'sa', 'as', 2, '2018-11-09 14:48:23.709090', 0),
(4, 'nEw Cust', 'kkjj', 1, '2018-11-09 14:48:43.899205', 0),
(5, 'as', 'as', 3, '2018-11-09 15:01:54.077429', 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `PurchaseId` varchar(25) NOT NULL,
  `SupplierId` int(20) NOT NULL,
  `InvoiceDate` varchar(20) NOT NULL,
  `DueDate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`PurchaseId`, `SupplierId`, `InvoiceDate`, `DueDate`) VALUES
('', 0, '0000-0', ''),
('21', 0, '', ''),
('PU0072780', 1, '2018-11-12', '2018-11-16'),
('PU026294', 1, '2018-11-07', '2018-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitem`
--

CREATE TABLE `purchaseitem` (
  `PurchaseItemId` int(10) NOT NULL,
  `PurchaseId` varchar(20) NOT NULL COMMENT 'ForeignKey',
  `Quantity` int(20) NOT NULL,
  `ItemId` int(10) NOT NULL,
  `Rate` float NOT NULL,
  `TotalAmount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchaseitem`
--

INSERT INTO `purchaseitem` (`PurchaseItemId`, `PurchaseId`, `Quantity`, `ItemId`, `Rate`, `TotalAmount`) VALUES
(1, '0', 0, 0, 0, 0),
(2, 'p1', 4, 1, 21, 211),
(3, 'p1', 23, 1, 200, 200),
(4, 'p1', 23, 1, 200, 4600),
(5, 'p1', 2, 1, 200, 400),
(6, 'p1', 2, 1, 200, 400),
(7, 'PU0754645', 21, 2, 21, 441),
(8, 'PU0072780', 2, 1, 21, 42),
(9, 'PU0072780', 2, 2, 21, 42);

-- --------------------------------------------------------

--
-- Table structure for table `rationallotment`
--

CREATE TABLE `rationallotment` (
  `AllotmentId` int(10) NOT NULL,
  `CategoryId` int(10) NOT NULL COMMENT 'ForeignKey',
  `ItemId` int(10) NOT NULL,
  `Quantity` int(20) NOT NULL,
  `Rate` float NOT NULL,
  `date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rationallotment`
--

INSERT INTO `rationallotment` (`AllotmentId`, `CategoryId`, `ItemId`, `Quantity`, `Rate`, `date`) VALUES
(2, 1, 1, 23, 23, '0000-00-00'),
(3, 1, 1, 23, 23, '10-10-2012'),
(4, 1, 1, 23, 233, '2018-11-08'),
(5, 3, 2, 230, 234, '2018-11-23'),
(6, 2, 2, 12, 12, '2018-11-21'),
(7, 1, 1, 23, 23, '10-10-2012'),
(8, 1, 1, 23, 23, '10-10-2012');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `CustomerId` int(10) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Contact` int(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `AdharNumber` varchar(12) NOT NULL,
  `Status` varchar(20) NOT NULL COMMENT 'Verified or not'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `ReportId` int(10) NOT NULL,
  `Category` varchar(10) NOT NULL,
  `Date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `SalesId` varchar(25) NOT NULL,
  `CustomerId` int(10) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT '1',
  `DateOfSale` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salesitem`
--

CREATE TABLE `salesitem` (
  `SalesItemId` int(10) NOT NULL,
  `SalesId` varchar(10) NOT NULL COMMENT 'ForeignKey',
  `Quantity` int(20) NOT NULL,
  `ItemId` int(10) NOT NULL COMMENT 'ForeignKey',
  `Rate` float NOT NULL,
  `TotalAmount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shopownerregistration`
--

CREATE TABLE `shopownerregistration` (
  `ShopOwnerId` int(11) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `ARDNumber` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `DateOfBirth` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Locationid` int(10) NOT NULL,
  `PinCode` varchar(10) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopownerregistration`
--

INSERT INTO `shopownerregistration` (`ShopOwnerId`, `Password`, `ARDNumber`, `Name`, `Address`, `DateOfBirth`, `Gender`, `Contact`, `Email`, `Locationid`, `PinCode`, `Status`) VALUES
(8, 'admin', '323223', 'sads', 'sdsd', '2018-10-16', 'Male', '9656761101', 'sumith@gmail.com', 3, '686138', '1'),
(9, '5267', '787878787', 'Hari', 'Paravoor', '2002-12-05', 'Male', '9526909898', 'hari@gmail.com', 4, '686141', '1'),
(10, 'admin', '122112', 'assa', 'qqw', '2018-11-15', 'Male', '2121212121', 'admin@gg.vom', 3, '121212', '1'),
(11, 'admin', '1212121212', 'dadaad', '123', '2018-09-15', 'Male', '1212212121', 'admin@dd.vom', 3, '212120', '1');

-- --------------------------------------------------------

--
-- Table structure for table `stockassign`
--

CREATE TABLE `stockassign` (
  `stockassignId` int(10) NOT NULL,
  `shopownerId` varchar(20) NOT NULL,
  `itemId` int(10) NOT NULL,
  `quota` int(10) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `month` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockassign`
--

INSERT INTO `stockassign` (`stockassignId`, `shopownerId`, `itemId`, `quota`, `amount`, `month`) VALUES
(1, '0', 0, 0, '0', '0000-00-00'),
(2, 'sumith@gmail.com', 1, 21, '12', '2018-11-15');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplierid` int(11) NOT NULL,
  `suppliername` varchar(100) NOT NULL,
  `supplieraddress` varchar(200) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `LocationId` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplierid`, `suppliername`, `supplieraddress`, `contact`, `emailid`, `LocationId`) VALUES
(1, 'Sup1', 'hjsd', '9656761101', 'sup@gmail.com', 1),
(2, 'Sup 2', 'Thet', '9656761101', 'ss@ss.com', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`complaintsId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedBackId`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemId`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LocationId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`LoginId`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`NotificationId`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`PurchaseId`);

--
-- Indexes for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  ADD PRIMARY KEY (`PurchaseItemId`);

--
-- Indexes for table `rationallotment`
--
ALTER TABLE `rationallotment`
  ADD PRIMARY KEY (`AllotmentId`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`CustomerId`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`ReportId`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`SalesId`);

--
-- Indexes for table `salesitem`
--
ALTER TABLE `salesitem`
  ADD PRIMARY KEY (`SalesItemId`);

--
-- Indexes for table `shopownerregistration`
--
ALTER TABLE `shopownerregistration`
  ADD PRIMARY KEY (`ShopOwnerId`);

--
-- Indexes for table `stockassign`
--
ALTER TABLE `stockassign`
  ADD PRIMARY KEY (`stockassignId`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `complaintsId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedBackId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ItemId` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LocationId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `LoginId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `NotificationId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  MODIFY `PurchaseItemId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rationallotment`
--
ALTER TABLE `rationallotment`
  MODIFY `AllotmentId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `CustomerId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `ReportId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salesitem`
--
ALTER TABLE `salesitem`
  MODIFY `SalesItemId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopownerregistration`
--
ALTER TABLE `shopownerregistration`
  MODIFY `ShopOwnerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stockassign`
--
ALTER TABLE `stockassign`
  MODIFY `stockassignId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplierid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
