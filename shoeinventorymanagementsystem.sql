-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2020 at 06:49 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoeinventorymanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `Id` int(11) NOT NULL,
  `Brand` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`Id`, `Brand`, `Status`) VALUES
(1, 'Nike', 'Active'),
(2, 'Adidas', 'Active'),
(3, 'Fila', 'Active'),
(4, 'Mango', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `Id` int(11) NOT NULL,
  `Username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`Id`, `Username`, `Password`, `Status`) VALUES
(1, 'Yashi', 'Yashi', 'Active'),
(2, 'Amal', 'Amal', 'Active'),
(3, 'Bhavesh', 'Bhavesh', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Id` int(11) NOT NULL,
  `Category` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Id`, `Category`, `Status`) VALUES
(1, 'Flip-Flops', 'Active'),
(2, 'Sneakers', 'Active'),
(3, 'Pump Heels', 'Active'),
(4, 'Wedges', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Id` int(11) NOT NULL,
  `Product` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Description` text CHARACTER SET latin1 NOT NULL,
  `Cat_ID` int(11) NOT NULL,
  `Brand_ID` int(11) NOT NULL,
  `Cost_Price` int(11) NOT NULL,
  `Retail_Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Barcode` int(11) NOT NULL,
  `Status` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Id`, `Product`, `Description`, `Cat_ID`, `Brand_ID`, `Cost_Price`, `Retail_Price`, `Quantity`, `Barcode`, `Status`) VALUES
(1, 'AIR MAX DIA Sneakers', 'Designed specifically for a woman\'s foot, the Nike Air Max Dia delivers a lifted look, an airy aesthetic and a sleek shape. The minimal upper modernises the look, while the Max Air unit, surrounded by clear TPU, is amplified even further by an exaggerated midsole for a boost of style.\n\nMaterial & Care\nTextile and synthetic\nWipe with a clean, dry cloth to remove dust', 2, 1, 9000, 10000, 903, 111, 'Active'),
(2, 'W Sneakers', 'Synthetic Leather\nColour: Beige', 2, 3, 1733, 2899, 912, 112, 'Active'),
(3, 'Women Navy Blue', 'Pointed Toe\nColour: Navy Blue', 3, 4, 4000, 7000, 800, 222, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `Id` int(11) NOT NULL,
  `Date` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Cashier` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Subtotal` int(11) NOT NULL,
  `Pay` int(11) NOT NULL,
  `Balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`Id`, `Date`, `Cashier`, `Subtotal`, `Pay`, `Balance`) VALUES
(1, '2020/06/13', '', 493485, 500000, 6515),
(2, '2020/06/13', '', 103192, 110000, 6808),
(3, '2020/06/13', '', 128990, 200000, 71010),
(4, '2020/06/13', '', 128990, 130000, 1010),
(5, '2020/06/13', '', 25798, 30000, 4202),
(6, '2020/06/13', '', 12899, 13000, 101),
(7, '2020/06/13', '', 257980, 260000, 2020),
(8, '2020/06/13', '', 228990, 300000, 71010),
(9, '2020/06/13', '', 12899, 13000, 101),
(10, '2020/06/13', '', 120000, 120000, 0),
(11, '2020/06/13', '', 34788, 35000, 212),
(12, '2020/06/13', '', 0, 12, 12),
(13, '2020/06/13', '', 14495, 20000, 5505),
(14, '2020/06/13', '', 14495, 15000, 505),
(15, '2020/06/13', '', 50000, 0, -50000),
(16, '2020/06/13', '', 20000, 20000, 0),
(17, '2020/06/13', '', 14495, 15000, 505),
(18, '2020/06/13', '', 14495, 15000, 505),
(19, '2020/06/13', '', 50000, 50000, 0),
(20, '2020/06/13', '', 50000, 50000, 0),
(21, '2020/06/13', '', 64495, 70000, 5505),
(22, '2020/06/13', '', 8697, 10000, 1303),
(23, '2020/06/13', 'Bhavesh', 50000, 50000, 0),
(24, '2020/06/13', 'Amal', 28990, 30000, 1010),
(25, '2020/06/13', 'Yashi', 20000, 30000, 10000),
(26, '2020/06/13', 'Yashi', 20000, 20000, 0),
(27, '2020/06/13', 'Yashi', 2899, 2899, 0),
(28, '2020/06/13', 'Yashi', 38697, 40000, 1303),
(29, '2020/06/13', 'Amal', 68697, 70000, 1303),
(30, '2020/06/13', 'Bhavesh', 40000, 100000, 60000);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `Id` int(11) NOT NULL,
  `Sales_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Selling_Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`Id`, `Sales_ID`, `Product_ID`, `Selling_Price`, `Quantity`, `Total`) VALUES
(1, 2, 111, 10000, 8, 80000),
(2, 2, 112, 2899, 8, 23192),
(3, 3, 111, 10000, 10, 100000),
(4, 3, 112, 2899, 10, 28990),
(5, 4, 111, 10000, 10, 100000),
(6, 4, 112, 2899, 10, 28990),
(7, 5, 111, 10000, 2, 20000),
(8, 5, 112, 2899, 2, 5798),
(9, 6, 111, 10000, 1, 10000),
(10, 6, 112, 2899, 1, 2899),
(11, 7, 111, 10000, 20, 200000),
(12, 7, 112, 2899, 20, 57980),
(13, 8, 111, 10000, 20, 200000),
(14, 8, 112, 2899, 10, 28990),
(15, 9, 111, 10000, 1, 10000),
(16, 9, 112, 2899, 1, 2899),
(17, 10, 111, 10000, 12, 120000),
(18, 11, 112, 2899, 12, 34788),
(19, 12, 111, 10000, 0, 0),
(20, 13, 112, 2899, 5, 14495),
(21, 14, 112, 2899, 5, 14495),
(22, 15, 111, 10000, 5, 50000),
(23, 16, 111, 10000, 2, 20000),
(24, 17, 112, 2899, 5, 14495),
(25, 18, 112, 2899, 5, 14495),
(26, 19, 111, 10000, 5, 50000),
(27, 20, 111, 10000, 5, 50000),
(28, 21, 111, 10000, 5, 50000),
(29, 21, 112, 2899, 5, 14495),
(30, 22, 112, 2899, 3, 8697),
(31, 23, 111, 10000, 5, 50000),
(32, 24, 112, 2899, 10, 28990),
(33, 25, 111, 10000, 2, 20000),
(34, 26, 111, 10000, 2, 20000),
(35, 27, 112, 2899, 1, 2899),
(36, 28, 111, 10000, 3, 30000),
(37, 28, 112, 2899, 3, 8697),
(38, 29, 111, 10000, 6, 60000),
(39, 29, 112, 2899, 3, 8697),
(40, 30, 111, 10000, 4, 40000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cashier`
--
ALTER TABLE `cashier`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
