-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2021 at 08:20 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_credentials`
--

CREATE TABLE `admin_credentials` (
  `USERNAME` varchar(50) COLLATE utf16_bin NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `admin_credentials`
--

INSERT INTO `admin_credentials` (`USERNAME`, `PASSWORD`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) COLLATE utf16_bin NOT NULL,
  `CONTACT_NUMBER` varchar(10) COLLATE utf16_bin NOT NULL,
  `ADDRESS` varchar(100) COLLATE utf16_bin NOT NULL,
  `DOCTOR_NAME` varchar(20) COLLATE utf16_bin NOT NULL,
  `DOCTOR_ADDRESS` varchar(100) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `NAME`, `CONTACT_NUMBER`, `ADDRESS`, `DOCTOR_NAME`, `DOCTOR_ADDRESS`) VALUES
(10, 'Kiran Suthar', '1234567690', '45, Andheri East, Mumbai', 'Dr Anshari', '112, Andheri West, Mumbai'),
(11, 'Aditya', '7365687269', '56, Virar West, Mumbai', 'Dr Micheal', '12, Virar West, Mumbai'),
(12, 'Shivam Tiwari', '6862369896', '64, Dadar West, Mumbai', 'Dr Kapoor Yadav', '31, Andheri East, Mumbai'),
(13, 'Varsha Suthar', '7622369694', '67, Kumar Road, Mumbai', 'Dr Ramesh Kumar', 'Near Rani Station, Mumbai'),
(14, 'Prakash Bhattarai', '9802851472', '16, Pokhara, Mumbai', 'Dr Hari Bahadur', '50, Matepani, Mumbai'),
(15, 'Rohit', '9800011472', '32, Ganga Nagar, Mumbai', 'Dr Rajesh Gupta', '11, Krishna Colony, Delhi'),
(16, 'Aarav Singh', '8622369694', '77, Jodhpur Lane, Mumbai', 'Dr Anil Kumar', '123, Ganga Street, Mumbai'),
(17, 'Priya Verma', '7622369644', '65, Jayanagar, Mumbai', 'Dr Aarti Sharma', '876, Palm Grove Land, Mumbai'),
(18, 'Ankit Desai', '7622009694', '987, Krishna Colony, Mumbai', 'Dr Sunil Desai', '23, Ashoka Road, Mumbai'),
(19, 'Sanjay Mehta', '9802852472', '89, Gateway Road, Mumbai', 'Dr Ritu Shah', '66, Jamnagar, Mumbai'),
(20, 'Pooja Joshi', '9822851472', '901, Lotus Lane, Mumbai', 'Dr Akash Kapoor', '33, Sahyadri Avenue, Mumbai'),
(21, 'Rakesh Shah', '8702851472', '22, Malabar Hill, Mumbai', 'Dr Nisha Singh', '73, Sunrise Street, Mumbai'),
(22, 'Deepak Kaur', '9802851502', '23, Palm Beach, Mumbai', 'Dr Manish Deshmukh', '93, Monsoon Lane, Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `INVOICE_ID` int(11) NOT NULL,
  `NET_TOTAL` double NOT NULL DEFAULT 0,
  `INVOICE_DATE` date NOT NULL DEFAULT current_timestamp(),
  `CUSTOMER_ID` int(11) NOT NULL,
  `TOTAL_AMOUNT` double NOT NULL,
  `TOTAL_DISCOUNT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`INVOICE_ID`, `NET_TOTAL`, `INVOICE_DATE`, `CUSTOMER_ID`, `TOTAL_AMOUNT`, `TOTAL_DISCOUNT`) VALUES
(1, 30, '2021-10-19', 14, 100, 0),
(2, 2626, '2021-10-19', 10, 150, 0);

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `PACKING` varchar(20) COLLATE utf16_bin NOT NULL,
  `GENERIC_NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `SUPPLIER_NAME` varchar(100) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`ID`, `NAME`, `PACKING`, `GENERIC_NAME`, `SUPPLIER_NAME`) VALUES
(1, 'Nicip Plus', '25', 'Paracetamol', 'BDPL PHARMA'),
(2, 'Gelusil', '15', 'Antacid', 'Desai Pharma'),
(3, 'Paracetamol', '50', 'Paracetamol', 'BDPL PHARMA'),
(4, 'Amoxicillin', '20', 'Amoxicillin', 'Kumar Distributors'),
(5, 'Omeprazole', '45', 'Omeprazole', 'Joshi Stores'),
(6, 'Metformin', '10', 'Metformin hydrochloride', 'Singh Drugs and Co'),
(7, 'Liptor', '25', 'Aterovastatin calcium', 'Patel HealthCare'),
(8, 'Advil', '35', 'Ibuprofen', 'Gupta Medical Supplies'),
(9, 'Cipro', '20', 'Ciproflaxacin', 'Sharma Pharmaceuticals'),
(10, 'Zoloft', '20', 'Sertraline hydrochloride', 'SS Distributors'),
(11, 'Loppressor', '25', 'Metropolal tartrate', 'Kiran Pharma'),
(12, 'Aspirin', '50', 'Acetyl salicylic acid', 'BDPL PHARMA'),
(13, 'Ceftin', '45', 'Cefuroxime axetile', 'Kumar Distributors'),
(14, 'Protonix', '60', 'Pantaprazole sodium', 'Joshi Store'),
(15, 'Prinvil', '35', 'Lisinopril', 'Singh Drugs and Co'),
(16, 'Nexpro RD', '50', 'Antacid', 'Patel HealthCare'),
(17, 'Montek LC', '35', 'Antihistamine', 'Sharma Pharmaceuticals'),
(18, 'Glucomet', '30', 'Metformin', 'SS Distributors'),
(19, 'Amalong', '40', 'Amlodipine', 'Kiran Pharma'),
(20, 'Brozedex', '25', 'Antihistamine', 'BDPL PHARMA'),
(21, 'Pulmoclear', '20', 'Acebrophylline', 'Desai Pharma'),
(22, 'Asthilin', '45', 'Antihistamine', 'SS Distributors');

-- --------------------------------------------------------

--
-- Table structure for table `medicines_stock`
--

CREATE TABLE `medicines_stock` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `BATCH_ID` varchar(20) COLLATE utf16_bin NOT NULL,
  `EXPIRY_DATE` varchar(10) COLLATE utf16_bin NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `MRP` double NOT NULL,
  `RATE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `medicines_stock`
--

INSERT INTO `medicines_stock` (`ID`, `NAME`, `BATCH_ID`, `EXPIRY_DATE`, `QUANTITY`, `MRP`, `RATE`) VALUES
(2, 'Nicip Plus', 'NCP1234','01/24',25, 98, 85),
(3, 'Gelusil', 'GLS1234','02/24',15, 160, 145),
(4, 'Paracetamol', 'PRM1234','03/24',50, 98, 85),
(5, 'Amoxicillin', 'AMX1234','04/24',3, 150, 135),
(6, 'Omeprazole', 'OMZ1234','05/24',45, 180, 170),
(7, 'Metformin', 'MEF1234','06/24',0, 200, 180),
(8, 'Liptor', 'LPT1234','07/23',25, 225, 200),
(9, 'Advil', 'ADV1234','08/24',35, 85, 80),
(10, 'Cipro', 'CIP1234','09/24',2, 100, 85),
(11, 'Zoloft', 'ZLF1234','10/24',20, 150, 139),
(12, 'Loppressor', 'LPR1234','11/24',25, 160, 150),
(13, 'Aspirin', 'ASP1234','12/24',50, 80, 70),
(14, 'Ceftin', 'CEF1234','01/24',45, 200, 180),
(15, 'Protonix', 'PRO1234','02/24',60, 230, 210),
(16, 'Prinvil', 'PRI1234','03/24',35, 250, 225),
(17, 'Nexpro RD', 'NXP1234','04/23',50, 300, 290),
(18, 'Montek LC', 'MLC1234','05/24',35, 350, 335),
(19, 'Glucomet', 'GLC1234','06/24',0, 270, 250),
(20, 'Amalong', 'AMA1234','07/24',40, 215, 200),
(21, 'Brozedex', 'BRZ1234','08/24',25, 280, 275),
(22, 'Pulmoclear', 'PLC1234','09/24',20, 290, 285),
(23, 'Asthilin', 'AST1234','10/23',45, 499, 450);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `SUPPLIER_NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `INVOICE_NUMBER` int(11) NOT NULL,
  `VOUCHER_NUMBER` int(11) NOT NULL,
  `PURCHASE_DATE` varchar(10) COLLATE utf16_bin NOT NULL,
  `TOTAL_AMOUNT` double NOT NULL,
  `PAYMENT_STATUS` varchar(20) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`SUPPLIER_NAME`, `INVOICE_NUMBER`, `VOUCHER_NUMBER`, `PURCHASE_DATE`, `TOTAL_AMOUNT`, `PAYMENT_STATUS`) VALUES
('Desai Pharma', 1001, 1, '2023-12-15', 7875, 'PAID'),
('BDPL PHARMA', 1002, 2, '2023-12-14', 16750, 'PAID'),
('Kiran Pharma', 1003, 3, '2024-01-29', 11750, 'DUE'),
('SS Distributors', 1004, 4, '2023-08-29', 30530, 'PAID'),
('Sharma Pharmaceuticals', 1005, 5, '2024-01-28', 11725, 'DUE'),
('Gupta Medical Supplies', 1006, 6, '2024-01-28', 2800, 'PAID'),
('Patel HealthCare', 1007, 7, '2023-01-27', 19500, 'PAID'),
('Singh Drugs and Co', 1008, 8, '2024-01-26', 96750, 'DUE'),
('Joshi Stores', 1009, 9, '2023-11-25', 20250, 'PAID'),
('Kumar Distributors', 1010, 10, '2023-12-25', 10800, 'PAID');;


--

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf16_bin NOT NULL,
  `EMAIL` varchar(100) COLLATE utf16_bin NOT NULL,
  `CONTACT_NUMBER` varchar(10) COLLATE utf16_bin NOT NULL,
  `ADDRESS` varchar(100) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`ID`, `NAME`, `EMAIL`, `CONTACT_NUMBER`, `ADDRESS`) VALUES
(1, 'Desai Pharma', 'desai@gmail.com', '9948724242', 'Mahim East'),
(2, 'BDPL PHARMA', 'bdpl@gmail.com', '8645632963', 'Santacruz West'),
(3, 'Kiran Pharma', 'kiranpharma@gmail.com', '7638683637', 'Andheri East'),
(4, 'SS Distributors', 'ssdib@yahoo.in', '3737355538', '11, Maunga West, Mumbai'),
(5, 'Sharma Pharmaceuticals', 'sharp@gmail.com', '5475734385', '12, Supply Lane, Delhi'),
(6, 'Gupta Medical Supplies', 'gms@gmail.com', '3867868752', '34, Choudhary st, Mumbai'),
(7, 'Patel HealthCare', 'patelhc@yahoo.in', '3466626226', '66, Andheri West, Mumbai'),
(8, 'Singh Drugs and Co', 'singhisking@gmail.com', '4636347335', '90. Jamnagar, Pune'),
(9, 'Joshi Stores', 'joshji@yahoo.in', '6553838835', '143, JP Nagar, Bangalore'),
(10, 'Kumar Distributors', 'kumdb@gmail.com', '6553830835', '67, Main Avenue, Mumbai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_credentials`
--
ALTER TABLE `admin_credentials`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`INVOICE_ID`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `medicines_stock`
--
ALTER TABLE `medicines_stock`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `BATCH_ID` (`BATCH_ID`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`VOUCHER_NUMBER`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `INVOICE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medicines_stock`
--
ALTER TABLE `medicines_stock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `VOUCHER_NUMBER` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
