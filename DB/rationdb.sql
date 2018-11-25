-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2018 at 03:57 PM
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
-- Table structure for table `adminitem`
--

CREATE TABLE `adminitem` (
  `AdminItemId` int(10) NOT NULL,
  `ItemId` int(10) NOT NULL,
  `TotalQty` int(10) NOT NULL,
  `BalanceQty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminitem`
--

INSERT INTO `adminitem` (`AdminItemId`, `ItemId`, `TotalQty`, `BalanceQty`) VALUES
(1, 9, 0, 0),
(2, 8, 0, 0),
(3, 6, 100, 44),
(4, 7, 0, 0),
(5, 10, 0, 0),
(6, 11, 0, 0),
(7, 12, 0, 0),
(8, 13, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryId` int(10) NOT NULL,
  `CategoryName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryId`, `CategoryName`) VALUES
(5, 'Priority'),
(6, 'Antyodaya Anna Yojana (AYY)'),
(7, 'Non Priority Subsidy'),
(8, 'Non-Priority ');

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
  `ContactNo` varchar(12) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `ShopOwnerId` varchar(50) NOT NULL,
  `CategoryId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerId`, `CustomerName`, `RationCardNo`, `Address`, `AadharNo`, `DOB`, `EmailId`, `ContactNo`, `Gender`, `ShopOwnerId`, `CategoryId`) VALUES
(5, 'Sumith S Nair', 'ration 1', 'Thethothil', '1245', '12-12-1989', 'sumith@gmail.com', '9656761101', 'Male', 'sumith@gmail.com', 8),
(7, 'Hari PSSS', '1045876310/PHH', 'Harisree Nilayam ', '321451268471', '02/09/94', 'hari@gmail.com', '919621354788', 'Male', 'afsal@gmail.com', 6),
(10, 'Sreehari', '3214565412/PHH', 'sreenilayam', '125436521489', '02/03/1995', 'sree@gmail.com', '919130123016', 'Male', 'afsal@gmail.com', 7),
(11, 'Jaison Jose', '3652325632/PHH', 'Murimattathil (h), Varikoli P.O,Mattakuzhi', '253214563210', '02/03/1985', 'jaison@gmail.com', '919587452136', 'Male', 'afsal@gmail.com', 5),
(13, 'Anu', '324422', 'sddsd', '12122121', '12-12-12', 'anu@gmail.com', 'sq', 'Female', 'afsal@gmail.com', 6),
(14, 'Ajay', '123456789', '4556', '313113', '12-09-18', 'anu@gmail.com', '1212121212', 'Female', 'afsal@gmail.com', 6),
(15, 'Anu', '123456789', '4556', '313113', '12-09-18', 'anu@gmail.com', '1212121212', 'Female', 'afsal@gmail.com', 6),
(16, 'Anu', '123456789', '4556', '313113', '12-09-18', 'anu@gmail.com', '1212121212', 'Female', 'afsal@gmail.com', 6),
(17, 'Anu', '123456789', '4556', '313113', '12-09-18', 'anu@gmail.com', '1212121212', 'Female', 'afsal@gmail.com', 6);

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
(3, 'Quota Not Recived', 'assa', '2018-11-09 19:11:52', '5', 'jaison@gmail.com', 3),
(4, 'Test', 'sdds', '2018-11-09 19:16:00', 'sumith@gmail.com', 'admin', 2),
(5, 'Hai Admin', 'Test Msg', '2018-11-09 19:59:16', 'sumith@gmail.com', 'admin', 2),
(6, 'New Stok Added', 'Test', '2018-11-09 19:59:30', 'sumith@gmail.com', '5', 2),
(7, 'Question', 'Is Sugar available this month???', '2018-11-10 12:37:36', 'afsal@gmail.com', 'admin', 2),
(8, 'Question', 'kerosene shortage', '2018-11-10 16:04:12', 'afsal@gmail.com', 'admin', 2),
(14, 'Test Feed', 'sdsds', '2018-11-16 12:33:28', 'afsal@gmail.com', 'jaison@gmail.com', 3);

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
(6, 'Wheat', 'Gujarath', 1),
(7, 'Aatta', 'Aashirvad', 1),
(8, 'Kerosene', 'First Quality', 1),
(9, 'Sugar', 'First Quality', 1),
(10, 'Pachari', 'First Quality', 1),
(11, 'Kuthari', 'First Quality', 1),
(12, 'Chakkari', 'First Quality', 1),
(13, 'Puzhukkalari', 'First Quality', 1);

--
-- Triggers `item`
--
DELIMITER $$
CREATE TRIGGER `InsertItem` AFTER INSERT ON `item` FOR EACH ROW INSERT INTO `adminitem` (`ItemId`, `TotalQty`, `BalanceQty`) VALUES (New.ItemId,0,0)
$$
DELIMITER ;

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
(4, 'Pazhamthottam', 12),
(7, 'Vaikom', 11),
(8, 'Kaduthuruthy', 11),
(9, 'Tripunithura', 12),
(10, 'Vytilla', 12),
(11, 'Kottayam', 0),
(12, 'Ernakulam', 0),
(13, 'Iduki', 0),
(14, 'Thodupuzha', 13),
(15, 'Kattapana', 13),
(16, 'Wayanad', 0),
(17, 'Kalpatta', 16),
(18, 'Thrissur', 0),
(19, 'Guruvayoor', 18),
(20, 'Chalakkudy', 18);

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
(25, 'hari@gmail.com', '5267', 1),
(26, 'admin@gg.vom', 'admin', 3),
(27, 'admin@dd.vom', 'admin', 3),
(28, 'sumith@minusbugs.com', '123', 2),
(29, 'sumith2112@minusbugs.com', '123', 1),
(30, 'sumith2112@minusbugs.com', '123', 1),
(31, 'afsal@gmail.com', 'admin', 3),
(32, 'afsal@gmail.com', 'admin', 3),
(33, 'hari@gmail.com', 'hari', 1),
(34, 'manju@gmail.com', 'manju', 1),
(35, 'manju@gmail.com', 'manju', 1),
(36, 'manju@gmail.com', 'manju', 1),
(37, 'admin', 'admin', 1),
(38, 'S@S.COM', '1234', 1),
(39, 'sree@gmail.com', 'sree', 1),
(40, 'jaison@gmail.com', 'jaison', 1),
(41, 'anu@gmail.com', '123456789', 1),
(42, 'anu@gmail.com', '123', 1),
(43, 'anu@gmail.com', '123', 1),
(44, 'anu@gmail.com', '123', 1),
(45, 'vijaya@gmail.com', '123456', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `NotificationId` int(10) NOT NULL,
  `Title` varchar(10) NOT NULL,
  `Description` varchar(20) NOT NULL,
  `RoleType` int(20) NOT NULL COMMENT '1.user,2.admin,3.shop',
  `CategoryType` int(11) NOT NULL,
  `Date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `Status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `PurchaseId` varchar(50) NOT NULL,
  `SupplierId` int(20) NOT NULL,
  `InvoiceDate` varchar(50) NOT NULL,
  `DueDate` varchar(50) NOT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`PurchaseId`, `SupplierId`, `InvoiceDate`, `DueDate`, `CreatedDate`) VALUES
('PU0260700', 1, 'Sun Nov 25 01:01:10 IST 2018', '2018-11-26', '2018-11-24 19:32:31');

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
(27, 'PU0497679', 50, 6, 200, 10000),
(28, 'PU0260700', 50, 6, 50, 2500);

--
-- Triggers `purchaseitem`
--
DELIMITER $$
CREATE TRIGGER `UpdateAdminItemQty` AFTER INSERT ON `purchaseitem` FOR EACH ROW update adminitem set TotalQty=(TotalQty+New.Quantity),BalanceQty=(BalanceQty+New.Quantity) where ItemId=New.ItemId
$$
DELIMITER ;

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
(24, 5, 6, 2, 4, '12-02-2018'),
(25, 5, 7, 2, 3, '12-02-2018'),
(26, 5, 8, 5, 5, '12-02-2018'),
(27, 6, 6, 2, 2.5, '12-02-2018'),
(28, 6, 9, 5, 5.99, '12-02-2018'),
(29, 7, 12, 5, 5, '12-02-2018'),
(30, 8, 13, 2, 3, '12-02-2018');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `CustomerId` int(10) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Contact` varchar(12) NOT NULL,
  `Email` varchar(50) NOT NULL,
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
  `SalesId` varchar(50) NOT NULL,
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
  `SalesId` varchar(100) NOT NULL COMMENT 'ForeignKey',
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
  `Address` varchar(150) NOT NULL,
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
(12, 'admin', '1738055', 'Afsal', 'Pazhamthottam P.o\r\nPazhamthottam', '2018-11-08', 'Male', '9874589622', 'afsal@gmail.com', 12, '683565', '1'),
(13, '123456', '4567897', 'Vijaya', 'Vaikom PO,Kottayam', '2018-11-08', 'Male', '9656761101', 'vijaya@gmail.com', 11, '686141', '1');

-- --------------------------------------------------------

--
-- Table structure for table `stockassign`
--

CREATE TABLE `stockassign` (
  `stockassignId` int(10) NOT NULL,
  `shopownerId` varchar(50) NOT NULL,
  `itemId` int(10) NOT NULL,
  `quota` int(10) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `month` varchar(100) NOT NULL,
  `CreatedDate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockassign`
--

INSERT INTO `stockassign` (`stockassignId`, `shopownerId`, `itemId`, `quota`, `amount`, `month`, `CreatedDate`) VALUES
(1, 'afsal@gmail.com', 6, 14, '16', '2018-11-15', '2018-11-25 07:25:01.401404');

--
-- Triggers `stockassign`
--
DELIMITER $$
CREATE TRIGGER `DecreseQouta` AFTER INSERT ON `stockassign` FOR EACH ROW update adminitem set BalanceQty=(BalanceQty-New.quota) where ItemId=New.itemId
$$
DELIMITER ;

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
(1, 'Rajesh', 'Rajasree Food Mills', '9656761101', 'supplier1@gmail.com', 14),
(2, 'Pradeep Dhadha\r\n', 'Ranganadhan Food Mills', '9687458632', 'supplier2@gmail.com', 12),
(3, 'Vishnu ', 'Vee And Vee', '9656880761', 'Vishnu@gmail.com', 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminitem`
--
ALTER TABLE `adminitem`
  ADD PRIMARY KEY (`AdminItemId`);

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
  ADD PRIMARY KEY (`ItemId`),
  ADD UNIQUE KEY `ItemName` (`ItemName`);

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
-- AUTO_INCREMENT for table `adminitem`
--
ALTER TABLE `adminitem`
  MODIFY `AdminItemId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `complaintsId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedBackId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ItemId` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LocationId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `LoginId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `NotificationId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  MODIFY `PurchaseItemId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `rationallotment`
--
ALTER TABLE `rationallotment`
  MODIFY `AllotmentId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `ShopOwnerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `stockassign`
--
ALTER TABLE `stockassign`
  MODIFY `stockassignId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplierid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
