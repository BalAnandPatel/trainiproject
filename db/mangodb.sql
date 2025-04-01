-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2025 at 07:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mangodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `isDefault` int(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `mobile` bigint(11) DEFAULT NULL,
  `addressLine1` varchar(255) NOT NULL,
  `addressLine2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(100) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `postalCode` int(11) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedOn` timestamp NULL DEFAULT NULL,
  `createdBy` varchar(255) NOT NULL,
  `updatedBy` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '123', '2025-01-24 08:00:46', '');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(100,2) DEFAULT NULL,
  `total` float(100,2) NOT NULL,
  `size` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedOn` timestamp NULL DEFAULT NULL,
  `createdBy` varchar(255) NOT NULL,
  `updatedBy` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `categoriesImage` varchar(255) NOT NULL,
  `commision` float(10,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sgst` float(100,2) NOT NULL DEFAULT 0.00,
  `cgst` float(100,2) NOT NULL DEFAULT 0.00,
  `createdOn` datetime NOT NULL,
  `updatedOn` datetime NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `updatedBy` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `categoriesImage`, `commision`, `description`, `status`, `sgst`, `cgst`, `createdOn`, `updatedOn`, `createdBy`, `updatedBy`) VALUES
(1, 'seasonal', '1', 5.00, 'fg', 1, 20.00, 20.00, '2025-02-18 06:38:37', '0000-00-00 00:00:00', 'Admin', ''),
(2, 'haf', '2', 10.00, 'vhj', 1, 15.00, 15.00, '2025-02-18 07:28:45', '2025-02-18 07:47:44', 'Admin', ''),
(3, 'orange', '3', 4.00, 'udud', 1, 4.00, 4.00, '2025-02-19 02:08:22', '0000-00-00 00:00:00', 'Admin', ''),
(4, 'Banana', '4', 5.00, 'dsgefy', 1, 5.00, 5.00, '2025-02-19 02:08:49', '2025-02-20 04:36:36', 'Admin', ''),
(5, 'fresh', '5', 5.00, 'dddddv', 1, 4.00, 4.00, '2025-02-19 02:09:17', '0000-00-00 00:00:00', 'Admin', ''),
(6, 'grapes', '6', 4.00, 'fejkwfui ', 1, 4.00, 4.00, '2025-02-19 02:09:43', '0000-00-00 00:00:00', 'Admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `categorieshistory`
--

CREATE TABLE `categorieshistory` (
  `id` int(11) NOT NULL,
  `c_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sgst` float(100,2) NOT NULL,
  `cgst` float(100,2) NOT NULL,
  `categoriesImage` varchar(255) NOT NULL,
  `commision` float(10,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createdOn` datetime NOT NULL,
  `createdBy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categorieshistory`
--

INSERT INTO `categorieshistory` (`id`, `c_id`, `name`, `sgst`, `cgst`, `categoriesImage`, `commision`, `description`, `createdOn`, `createdBy`) VALUES
(1, '4', 'Banana', 0.00, 0.00, '4', 5.00, 'dsgefy', '2025-02-20 04:36:36', '4');

-- --------------------------------------------------------

--
-- Table structure for table `commision`
--

CREATE TABLE `commision` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` varchar(255) NOT NULL,
  `updatedOn` varchar(255) NOT NULL,
  `updatedBy` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commissionhistory`
--

CREATE TABLE `commissionhistory` (
  `id` int(11) NOT NULL DEFAULT 0,
  `categoriesId` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedOn` varchar(255) NOT NULL,
  `updatedBy` varchar(255) NOT NULL,
  `createdBy` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `id` int(11) NOT NULL,
  `offerId` varchar(255) NOT NULL,
  `offerAmount` float(10,2) NOT NULL,
  `offerName` varchar(255) NOT NULL,
  `offerDuration` varchar(255) NOT NULL,
  `offerCode` varchar(255) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedBy` varchar(255) NOT NULL,
  `createdBy` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `totalQuantity` float(100,2) NOT NULL DEFAULT 0.00,
  `subTotal` float(100,2) NOT NULL DEFAULT 0.00,
  `total` double(100,2) NOT NULL DEFAULT 0.00,
  `status` varchar(200) NOT NULL DEFAULT '''PENDING''',
  `deliveryId` varchar(255) DEFAULT NULL,
  `deliveryType` varchar(255) DEFAULT 'Standard Delivery',
  `paymentId` varchar(255) DEFAULT NULL,
  `verificationCode` varchar(255) DEFAULT NULL,
  `paymentResponse` varchar(100) NOT NULL DEFAULT '''PAID''',
  `sgst` float(100,2) NOT NULL DEFAULT 0.00,
  `cgst` float(100,2) NOT NULL DEFAULT 0.00,
  `adminCommision` float(10,2) NOT NULL DEFAULT 0.00,
  `deliveryInstruction` text DEFAULT NULL,
  `deliveryAddress` varchar(255) DEFAULT NULL,
  `sellerId` varchar(255) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedOn` timestamp NULL DEFAULT current_timestamp(),
  `createdBy` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL,
  `userId` varchar(999) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `subId` varchar(500) DEFAULT NULL,
  `productId` varchar(255) NOT NULL,
  `productSkuId` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `discount` float(10,2) NOT NULL DEFAULT 0.00,
  `price` float(10,2) NOT NULL DEFAULT 0.00,
  `subTotal` float(100,2) NOT NULL DEFAULT 0.00,
  `sellerId` varchar(255) DEFAULT NULL,
  `sellerName` varchar(255) DEFAULT NULL,
  `distance` float(100,2) DEFAULT NULL,
  `distanceRequestId` varchar(100) DEFAULT NULL,
  `total` float(10,2) NOT NULL DEFAULT 0.00,
  `langitude` int(100) NOT NULL DEFAULT 0,
  `longitude` int(100) NOT NULL DEFAULT 0,
  `sgst` float(10,2) NOT NULL DEFAULT 0.00,
  `cgst` float(10,2) NOT NULL DEFAULT 0.00,
  `adminCommision` float(100,2) NOT NULL DEFAULT 0.00,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedOn` timestamp NULL DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymentdetails`
--

CREATE TABLE `paymentdetails` (
  `id` int(11) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `refundId` varchar(255) DEFAULT NULL,
  `paymentMode` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` varchar(255) NOT NULL,
  `updatedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdBy` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popularity`
--

CREATE TABLE `popularity` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` varchar(255) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `updatedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popularityhistory`
--

CREATE TABLE `popularityhistory` (
  `id` int(11) NOT NULL DEFAULT 0,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productattributes`
--

CREATE TABLE `productattributes` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `skuId` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `producthistory`
--

CREATE TABLE `producthistory` (
  `id` int(11) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `sizeAttributeId` varchar(255) DEFAULT NULL,
  `colorAttributeId` varchar(255) DEFAULT NULL,
  `skuId` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `producthistory`
--

INSERT INTO `producthistory` (`id`, `productId`, `sizeAttributeId`, `colorAttributeId`, `skuId`, `price`, `quantity`, `discount`, `createdOn`, `createdBy`) VALUES
(1, '2', NULL, NULL, '15063', 200, 50, 10, '2025-02-18 01:13:15', '<BR /><B>WARNING</B>:  UNDEFINED GLOBAL VARIABLE $_SESSION IN <B>C:\\XAMPP\\HTDOCS\\MANGO\\ADMIN\\INSERT-PRODUCT.PHP</B> ON LINE <B>129</B><BR /><BR /><B>WARNING</B>:  TRYING TO ACCESS ARRAY OFFSET ON VALUE OF TYPE NULL IN <B>C:\\XAMPP\\HTDOCS\\MANGO\\ADMIN\\INSERT'),
(2, '3', NULL, NULL, '28521', 20, 55, 1, '2025-02-18 01:46:00', '1'),
(6, '6', NULL, NULL, '42099', 40, 80, 0, '2025-02-18 20:42:58', '1'),
(5, '5', NULL, NULL, '14232', 50, 50, 4, '2025-02-18 20:42:26', '1'),
(7, '7', NULL, NULL, '90241', 200, 100, 5, '2025-02-18 20:43:24', '1'),
(8, '8', NULL, NULL, '62013', 10, 100, 10, '2025-02-18 20:43:49', '1'),
(9, '9', NULL, NULL, '31606', 80, 400, 5, '2025-02-18 20:44:14', '1'),
(10, '10', NULL, NULL, '74797', 100, 200, 10, '2025-02-18 21:15:58', '1'),
(11, '11', NULL, NULL, '11120', 100, 50000000, 50, '2025-02-18 21:16:39', '1'),
(12, '12', NULL, NULL, '76328', 80, 400, 10, '2025-02-21 21:21:48', '1'),
(13, '13', NULL, NULL, '76148', 20, 200, 15, '2025-03-01 06:52:33', '1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `sellerId` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `additional_info` text DEFAULT NULL,
  `image` text NOT NULL,
  `mainImage` varchar(255) NOT NULL,
  `skuId` varchar(255) NOT NULL,
  `trending` varchar(255) DEFAULT NULL,
  `arrival` varchar(255) DEFAULT NULL,
  `categoriesId` varchar(255) NOT NULL,
  `subCategoryId` varchar(255) NOT NULL,
  `bestselling` varchar(255) DEFAULT NULL,
  `popular` varchar(255) DEFAULT NULL,
  `price` float(100,2) NOT NULL DEFAULT 0.00,
  `discount` float(10,2) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `shippingCharge` float NOT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `adminCommision` float(100,2) NOT NULL DEFAULT 0.00,
  `sgst` float(100,2) NOT NULL DEFAULT 0.00,
  `cgst` float(100,2) NOT NULL DEFAULT 0.00,
  `createdOn` datetime NOT NULL,
  `updatedOn` datetime NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `updatedBy` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sellerId`, `name`, `description`, `additional_info`, `image`, `mainImage`, `skuId`, `trending`, `arrival`, `categoriesId`, `subCategoryId`, `bestselling`, `popular`, `price`, `discount`, `status`, `shippingCharge`, `rating`, `adminCommision`, `sgst`, `cgst`, `createdOn`, `updatedOn`, `createdBy`, `updatedBy`) VALUES
(1, '1', 'Sample Product', 'This is a sample product description.', NULL, 'https://example.com/images/sample-product.jpg', '', '12345', NULL, NULL, '1', '2', NULL, NULL, 150.00, 15.00, 'active', 10.5, NULL, 0.00, 0.00, 0.00, '2025-02-18 12:34:56', '0000-00-00 00:00:00', 'admin', ''),
(2, '1', 'MANGO', 'EFV', NULL, '15063', '', '15063', NULL, NULL, '1', '1', NULL, NULL, 200.00, 10.00, 'IN STOCK', 20, NULL, 0.00, 0.00, 0.00, '2025-02-18 06:43:15', '0000-00-00 00:00:00', 'WARNING:  UNDEFINED GLOBAL VARIABLE $_SESSION IN C:\\XAMPP\\HTDOCS\\MANGO\\ADMIN\\INSERT-PRODUCT.PHP ON LINE 129WARNING:  TRYING TO ACCESS ARRAY OFFSET ON VALUE OF TYPE NULL IN C:\\XAMPP\\HTDOCS\\MANGO\\ADMIN\\INSERT-PRODUCT.PHP ON LINE 129', ''),
(13, '1', 'BANANA', 'W', NULL, '76148', '', '76148', NULL, NULL, '4', '4', NULL, NULL, 20.00, 15.00, 'IN STOCK', 20, NULL, 0.00, 0.00, 0.00, '2025-03-01 12:22:33', '0000-00-00 00:00:00', '1', ''),
(3, '1', 'MANGO', 'HV', NULL, '28521', '', '28521', NULL, NULL, '1', '1', NULL, NULL, 20.00, 1.00, 'IN STOCK', 20, NULL, 0.00, 0.00, 0.00, '2025-02-18 07:16:00', '0000-00-00 00:00:00', '1', ''),
(5, '1', 'BANANA', 'F', NULL, '14232', '', '14232', NULL, NULL, '4', '3', NULL, NULL, 50.00, 4.00, 'IN STOCK', 20, NULL, 0.00, 0.00, 0.00, '2025-02-19 02:12:26', '0000-00-00 00:00:00', '1', ''),
(6, '1', 'BANAAANA', 'EF', NULL, '42099', '', '42099', NULL, NULL, '4', '4', NULL, NULL, 40.00, 0.00, 'IN STOCK', 20, NULL, 0.00, 0.00, 0.00, '2025-02-19 02:12:58', '0000-00-00 00:00:00', '1', ''),
(7, '1', 'FRESH', 'DE', NULL, '90241', '', '90241', NULL, NULL, '5', '5', NULL, NULL, 200.00, 5.00, 'IN STOCK', 20, NULL, 0.00, 0.00, 0.00, '2025-02-19 02:13:24', '0000-00-00 00:00:00', '1', ''),
(8, '1', 'EFGB', 'F', NULL, '62013', '', '62013', NULL, NULL, '5', '6', NULL, NULL, 10.00, 10.00, 'IN STOCK', 20, NULL, 0.00, 0.00, 0.00, '2025-02-19 02:13:49', '0000-00-00 00:00:00', '1', ''),
(9, '1', 'ORANGE', 'FV', NULL, '31606', '', '31606', NULL, NULL, '3', '8', NULL, NULL, 80.00, 5.00, 'IN STOCK', 20, NULL, 0.00, 0.00, 0.00, '2025-02-19 02:14:14', '0000-00-00 00:00:00', '1', ''),
(10, '1', 'DBHGF', 'SF G', NULL, '74797', '', '74797', NULL, NULL, '2', '2', NULL, NULL, 100.00, 10.00, 'IN STOCK', 20, NULL, 0.00, 0.00, 0.00, '2025-02-19 02:45:58', '0000-00-00 00:00:00', '1', ''),
(11, '1', 'GRAPES', 'SDF', NULL, '11120', '', '11120', NULL, NULL, '6', '7', NULL, NULL, 100.00, 50.00, 'IN STOCK', 20, NULL, 0.00, 0.00, 0.00, '2025-02-19 02:46:39', '0000-00-00 00:00:00', '1', ''),
(12, '1', 'CHECK PRODUCT 1', 'D', NULL, '76328', '', '76328', NULL, NULL, '2', '2', NULL, NULL, 80.00, 10.00, 'IN STOCK', 20, NULL, 0.00, 0.00, 0.00, '2025-02-22 02:51:48', '0000-00-00 00:00:00', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `productskuid`
--

CREATE TABLE `productskuid` (
  `id` int(11) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `sizeAttributeId` varchar(255) NOT NULL,
  `colorAttributeId` varchar(255) NOT NULL,
  `skuId` varchar(255) NOT NULL,
  `price` float(100,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `createdOn` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `UpdatedOn` timestamp NULL DEFAULT NULL,
  `createdBy` varchar(255) NOT NULL,
  `updatedBy` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `productskuid`
--

INSERT INTO `productskuid` (`id`, `productId`, `sizeAttributeId`, `colorAttributeId`, `skuId`, `price`, `quantity`, `createdOn`, `UpdatedOn`, `createdBy`, `updatedBy`) VALUES
(1, '2', '', '', '15063', 200.00, 50, '2025-02-18 01:13:15', NULL, 'WARNING:  UNDEFINED GLOBAL VARIABLE $_SESSION IN C:\\XAMPP\\HTDOCS\\MANGO\\ADMIN\\INSERT-PRODUCT.PHP ON LINE 129WARNING:  TRYING TO ACCESS ARRAY OFFSET ON VALUE OF TYPE NULL IN C:\\XAMPP\\HTDOCS\\MANGO\\ADMIN\\INSERT-PRODUCT.PHP ON LINE 129', NULL),
(2, '3', '', '', '28521', 20.00, 55, '2025-02-18 01:46:00', NULL, '1', NULL),
(3, '4', '', '', '63966', 500.00, 5000, '2025-02-18 14:07:16', '2025-02-18 02:07:16', '1', '1'),
(4, '5', '', '', '14232', 50.00, 50, '2025-02-18 20:42:26', NULL, '1', NULL),
(5, '6', '', '', '42099', 40.00, 80, '2025-02-18 20:42:58', NULL, '1', NULL),
(6, '7', '', '', '90241', 200.00, 100, '2025-02-18 20:43:24', NULL, '1', NULL),
(7, '8', '', '', '62013', 10.00, 100, '2025-02-18 20:43:49', NULL, '1', NULL),
(8, '9', '', '', '31606', 80.00, 400, '2025-02-18 20:44:14', NULL, '1', NULL),
(9, '10', '', '', '74797', 100.00, 200, '2025-02-18 21:15:58', NULL, '1', NULL),
(10, '11', '', '', '11120', 100.00, 50000000, '2025-02-18 21:16:39', NULL, '1', NULL),
(11, '12', '', '', '76328', 80.00, 400, '2025-02-21 21:21:48', NULL, '1', NULL),
(12, '13', '', '', '76148', 20.00, 200, '2025-03-01 06:52:33', NULL, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `refunddetails`
--

CREATE TABLE `refunddetails` (
  `id` int(11) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `sellarId` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `totalAmount` float(10,2) NOT NULL,
  `createdBy` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedBy` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(11) NOT NULL,
  `sellerName` varchar(255) NOT NULL,
  `counterName` varchar(255) NOT NULL,
  `pan` varchar(255) NOT NULL,
  `gst` varchar(255) NOT NULL,
  `aadhar` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `phoneNo` bigint(11) NOT NULL,
  `regFee` float(10,2) NOT NULL,
  `longitude` int(100) NOT NULL DEFAULT 0,
  `langitude` int(19) NOT NULL DEFAULT 0,
  `depositAmount` float(10,2) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `createdOn` datetime NOT NULL,
  `updatedOn` datetime NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `updatedBy` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `selleraddress`
--

CREATE TABLE `selleraddress` (
  `id` int(11) NOT NULL,
  `sellerId` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `customerCareNo` int(11) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `teamMembers` varchar(11) DEFAULT NULL,
  `createdBy` varchar(255) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` varchar(255) NOT NULL,
  `updatedOn` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sellerbankdetails`
--

CREATE TABLE `sellerbankdetails` (
  `id` int(11) NOT NULL,
  `sellerId` varchar(255) NOT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `AccountHolderName` varchar(255) DEFAULT NULL,
  `ifscCode` varchar(255) DEFAULT NULL,
  `upiId` varchar(255) DEFAULT NULL,
  `accountNo` bigint(20) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` timestamp NULL DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedOn` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `parentId` varchar(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `subcategoriesImage` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `createdOn` datetime NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `updatedBy` varchar(255) NOT NULL,
  `updatedOn` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `parentId`, `name`, `description`, `subcategoriesImage`, `status`, `createdOn`, `createdBy`, `updatedBy`, `updatedOn`) VALUES
(1, '1', 'yellow mango', 'fbjk ', '', 1, '2025-02-18 06:39:11', '', '', '2025-02-18 06:39:11'),
(2, '2', 'jha', 'bjjj', '1', 1, '2025-02-18 07:28:59', '', '', '0000-00-00 00:00:00'),
(3, '4', 'banana', 'hegfyurf', '2', 1, '2025-02-19 02:10:20', '', '', '2025-02-19 02:10:20'),
(4, '4', 'fuehufre', 'fbyf', '3', 1, '2025-02-19 02:10:31', '', '', '2025-02-19 02:10:31'),
(5, '5', 'fresh fruit', 'bdjiudf', '4', 1, '2025-02-19 02:10:50', '', '', '2025-02-19 02:10:50'),
(6, '5', 'fresh', 'fdfu', '5', 1, '2025-02-19 02:11:10', '', '', '2025-02-19 02:11:10'),
(7, '6', 'grapes', 'ugfr', '6', 1, '2025-02-19 02:11:35', '', '', '2025-02-19 02:11:35'),
(8, '3', 'orange', 'dhvfyr', '7', 1, '2025-02-19 02:11:56', '', '', '2025-02-19 02:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `subcategorieshistory`
--

CREATE TABLE `subcategorieshistory` (
  `id` int(11) NOT NULL,
  `parentId` varchar(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subcategoriesImage` varchar(255) NOT NULL,
  `createdOn` datetime NOT NULL,
  `createdBy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategorieshistory`
--

INSERT INTO `subcategorieshistory` (`id`, `parentId`, `name`, `subcategoriesImage`, `createdOn`, `createdBy`) VALUES
(1, '2', 'jha', '2', '2025-02-18 07:49:11', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `useracountdetails`
--

CREATE TABLE `useracountdetails` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `bankName` varchar(255) NOT NULL,
  `AccountHolderName` varchar(255) NOT NULL,
  `ifscCode` varchar(255) NOT NULL,
  `accountNo` bigint(20) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `phoneNo` bigint(11) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `lastLogin` varchar(255) NOT NULL,
  `createdOn` datetime NOT NULL,
  `updatedOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` varchar(255) NOT NULL,
  `updatedBy` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userId`, `name`, `userName`, `email`, `password`, `dateOfBirth`, `phoneNo`, `pincode`, `status`, `lastLogin`, `createdOn`, `updatedOn`, `createdBy`, `updatedBy`) VALUES
(1, 'ABC@GMAIL.COM', 'ABC', 'abc@gmail.com', 'ABC@GMAIL.COM', '1234', '0000-00-00', 9595959595, '', 0, '', '2025-02-21 12:36:57', '2025-03-04 06:55:58', 'User', ''),
(2, 'GIPANAND@GMAIL.COM', 'ANAND', 'gipanand@gmail.com', 'GIPANAND@GMAIL.COM', '123', '0000-00-00', 9984087027, '', 0, '', '2025-03-04 05:18:01', '2025-03-04 11:48:01', 'User', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateOn` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `categorieshistory`
--
ALTER TABLE `categorieshistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commision`
--
ALTER TABLE `commision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderId` (`orderId`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderId` (`orderId`,`productId`);

--
-- Indexes for table `paymentdetails`
--
ALTER TABLE `paymentdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popularity`
--
ALTER TABLE `popularity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productattributes`
--
ALTER TABLE `productattributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producthistory`
--
ALTER TABLE `producthistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productskuid`
--
ALTER TABLE `productskuid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refunddetails`
--
ALTER TABLE `refunddetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selleraddress`
--
ALTER TABLE `selleraddress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellerbankdetails`
--
ALTER TABLE `sellerbankdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentId` (`parentId`);

--
-- Indexes for table `subcategorieshistory`
--
ALTER TABLE `subcategorieshistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useracountdetails`
--
ALTER TABLE `useracountdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categorieshistory`
--
ALTER TABLE `categorieshistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `commision`
--
ALTER TABLE `commision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymentdetails`
--
ALTER TABLE `paymentdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `popularity`
--
ALTER TABLE `popularity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productattributes`
--
ALTER TABLE `productattributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producthistory`
--
ALTER TABLE `producthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `productskuid`
--
ALTER TABLE `productskuid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `refunddetails`
--
ALTER TABLE `refunddetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `selleraddress`
--
ALTER TABLE `selleraddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sellerbankdetails`
--
ALTER TABLE `sellerbankdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcategorieshistory`
--
ALTER TABLE `subcategorieshistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `useracountdetails`
--
ALTER TABLE `useracountdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
