-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2017 at 08:30 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_database_v_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `com_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `com_comment` varchar(100) NOT NULL,
  `com_type` varchar(10) NOT NULL COMMENT 'comemnt type for cust or trac'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `com_time`, `com_comment`, `com_type`) VALUES
(1, '2017-04-18 17:00:43', 'My spac eis not working ', '6');

-- --------------------------------------------------------

--
-- Table structure for table `com_typ_weak`
--

CREATE TABLE `com_typ_weak` (
  `com_id` int(11) NOT NULL,
  `com_cust_id` int(11) DEFAULT NULL,
  `com_emp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_typ_weak`
--

INSERT INTO `com_typ_weak` (`com_id`, `com_cust_id`, `com_emp_id`) VALUES
(1, 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(10) NOT NULL,
  `cust_title` varchar(10) NOT NULL,
  `cust_business_name` varchar(30) NOT NULL,
  `cust_billing_add` varchar(100) NOT NULL,
  `cust_city` varchar(20) NOT NULL,
  `cust_state` varchar(20) NOT NULL,
  `cust_zipcode` int(10) NOT NULL,
  `cust_country` varchar(20) NOT NULL,
  `cust_phno` int(11) NOT NULL,
  `cust_cellno` int(11) NOT NULL,
  `cust_other_no` int(11) NOT NULL,
  `cust_fax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_title`, `cust_business_name`, `cust_billing_add`, `cust_city`, `cust_state`, `cust_zipcode`, `cust_country`, `cust_phno`, `cust_cellno`, `cust_other_no`, `cust_fax`) VALUES
(6, 'Mr', 'Oswal Info World Pvt Ltd ', '12 b red cross Road', 'Chicago', 'Illinois ', 60616, 'USA', 25526, 31288517, 32154, 35465),
(7, 'Mrs', 'ABC Infotech', '33 rd street  block 22', 'NYC', 'NY', 66554, 'USA', 8455578, 654987, 12313654, 8784545);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(10) NOT NULL,
  `emp_fname` varchar(30) NOT NULL,
  `emp_lname` varchar(30) NOT NULL,
  `emp_email` varchar(30) NOT NULL,
  `emp_extension` int(5) NOT NULL,
  `emp_homephone` int(11) NOT NULL,
  `emp_cellphone` int(11) NOT NULL,
  `emp_job_title` varchar(10) NOT NULL,
  `emp_ssn` int(11) NOT NULL,
  `emp_dlicence` varchar(15) NOT NULL,
  `emp_address` varchar(100) NOT NULL,
  `emp_salary` int(15) NOT NULL,
  `emp_city` varchar(10) NOT NULL,
  `emp_state` varchar(10) NOT NULL,
  `emp_zipcode` int(10) NOT NULL,
  `emp_date_hired` date NOT NULL,
  `emp_birthdate` date NOT NULL,
  `emp_notes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_fname`, `emp_lname`, `emp_email`, `emp_extension`, `emp_homephone`, `emp_cellphone`, `emp_job_title`, `emp_ssn`, `emp_dlicence`, `emp_address`, `emp_salary`, `emp_city`, `emp_state`, `emp_zipcode`, `emp_date_hired`, `emp_birthdate`, `emp_notes`) VALUES
(4, 'Zeeshan', 'Sayed', 'zsayed@gmail.com', 312, 32165422, 454126322, 'driver', 96547, 'A230554', '2951 south king drive ', 25000, 'chicago', 'Illinois ', 60616, '2009-01-04', '1993-08-24', 'Promoted to Major city driver'),
(5, 'sambhav', 'chopda', 'schopda1@hawk.edu', 54, 5446854, 2565447, 'manager', 31288548, 'A2037655', '2801 south king drive ', 25654, 'NYC', 'NY', 445566, '2013-01-02', '1992-04-07', 'only city limits ');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `exp_id` int(10) NOT NULL,
  `exp_emp_id` int(10) NOT NULL,
  `exp_type` varchar(25) NOT NULL,
  `exp_purpose` varchar(50) NOT NULL,
  `exp_amount_spent` int(10) NOT NULL,
  `exp_desc` varchar(100) NOT NULL,
  `exp_date_purchase` date NOT NULL,
  `exp_date_submitted` date NOT NULL,
  `exp_adv_amount` int(10) NOT NULL,
  `exp_pay_method` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`exp_id`, `exp_emp_id`, `exp_type`, `exp_purpose`, `exp_amount_spent`, `exp_desc`, `exp_date_purchase`, `exp_date_submitted`, `exp_adv_amount`, `exp_pay_method`) VALUES
(4, 4, 'vechile', 'GAS', 250, 'from delievery lacking ', '2013-03-04', '2013-04-03', 0, 'Debit card'),
(5, 5, 'food', 'health issues ', 150, 'Macdonald mini meal ', '2017-04-04', '2017-04-17', 50, 'CASH');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `inv_id` int(10) NOT NULL,
  `inv_ord_id` int(10) NOT NULL,
  `inv_cust_id` int(10) NOT NULL,
  `inv_emp_id` int(10) NOT NULL,
  `inv_pay_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`inv_id`, `inv_ord_id`, `inv_cust_id`, `inv_emp_id`, `inv_pay_id`) VALUES
(1, 2, 7, 4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `loc_id` int(11) NOT NULL,
  `loc_name` varchar(20) NOT NULL,
  `loc_zipcode` int(10) NOT NULL,
  `loc_isauction` int(4) NOT NULL,
  `loc_cust_id` int(10) NOT NULL,
  `loc_address1` varchar(30) NOT NULL,
  `loc_address2` varchar(30) NOT NULL,
  `loc_city` varchar(20) NOT NULL,
  `loc_state` varchar(20) NOT NULL,
  `loc_region` varchar(20) NOT NULL,
  `loc_contact_name` varchar(30) NOT NULL,
  `loc_fax` int(11) NOT NULL,
  `loc_phone` int(11) NOT NULL,
  `loc_email` varchar(20) NOT NULL,
  `loc_code` int(11) NOT NULL COMMENT 'Location code as per the company diffrent from zipcode'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`loc_id`, `loc_name`, `loc_zipcode`, `loc_isauction`, `loc_cust_id`, `loc_address1`, `loc_address2`, `loc_city`, `loc_state`, `loc_region`, `loc_contact_name`, `loc_fax`, `loc_phone`, `loc_email`, `loc_code`) VALUES
(1, 'illinois ', 5, 0, 6, '2801 south king drive ', 'IL', 'chicago', 'illinois ', 'South loop', 'Mr Zeeshan Sayed ', 3125548, 31288519, 'zsayed@gmail.com', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ord1`
--

CREATE TABLE `ord1` (
  `ord_id` int(10) NOT NULL,
  `ord_date` date NOT NULL,
  `ord_cust_id` int(10) NOT NULL,
  `ord_emp_id` int(10) NOT NULL,
  `ord_truck_id` int(10) NOT NULL,
  `ord_is_special` varchar(5) NOT NULL,
  `ord_purchase_ord_no` int(20) NOT NULL,
  `ord_total_amount` int(10) NOT NULL,
  `ord_truck_vin` int(20) NOT NULL,
  `ord_trans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ord1`
--

INSERT INTO `ord1` (`ord_id`, `ord_date`, `ord_cust_id`, `ord_emp_id`, `ord_truck_id`, `ord_is_special`, `ord_purchase_ord_no`, `ord_total_amount`, `ord_truck_vin`, `ord_trans_id`) VALUES
(2, '2017-04-01', 6, 4, 3, 'NO', 8855, 5600, 4556123, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(10) NOT NULL,
  `pay_ord_id` int(10) NOT NULL,
  `pay_method_id` int(10) DEFAULT NULL,
  `pay_amount` int(10) NOT NULL,
  `pay_date` date NOT NULL,
  `pay_credit_no` int(11) DEFAULT NULL,
  `pay_check_no` int(11) DEFAULT NULL,
  `pay_cardholder_name` varchar(200) NOT NULL,
  `pay_expiry` date NOT NULL,
  `pay_cc_cvv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `pay_ord_id`, `pay_method_id`, `pay_amount`, `pay_date`, `pay_credit_no`, `pay_check_no`, `pay_cardholder_name`, `pay_expiry`, `pay_cc_cvv`) VALUES
(15, 2, 1212, 250, '2017-04-11', 125465, 0, 'rajiv', '2023-04-20', 610);

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `prc_id` int(10) NOT NULL,
  `prc_from_id` int(15) NOT NULL,
  `prc_to_id` int(15) NOT NULL,
  `prc_price` int(10) NOT NULL,
  `prc_loc_from` varchar(20) NOT NULL,
  `prc_loc_to` varchar(20) NOT NULL,
  `prc_name_from` varchar(20) NOT NULL,
  `prc_name_to` varchar(20) NOT NULL,
  `prc_cust_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`prc_id`, `prc_from_id`, `prc_to_id`, `prc_price`, `prc_loc_from`, `prc_loc_to`, `prc_name_from`, `prc_name_to`, `prc_cust_id`) VALUES
(2, 1, 5, 200, 'NYC', 'IL', 'Sambhav', 'Chopda', 6),
(3, 121, 131, 500, 'IL', 'NYC', 'chopda', 'sayed', 7);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `trans_id` int(10) NOT NULL,
  `trans_prc_id` int(10) NOT NULL,
  `trans_date` date NOT NULL,
  `trans_desc` varchar(100) NOT NULL,
  `trans_amount` int(10) NOT NULL,
  `trans_make` varchar(20) NOT NULL COMMENT 'car company',
  `trans_model` varchar(20) NOT NULL,
  `trans_year` year(4) NOT NULL,
  `trans_emp_id` int(10) NOT NULL,
  `trans_truck_id` int(10) NOT NULL,
  `trans_discount` int(10) NOT NULL,
  `trans_quantity` int(10) NOT NULL,
  `trans_unit_price` int(10) NOT NULL,
  `trans_driver_price` int(10) NOT NULL,
  `trans_run_no` varchar(10) DEFAULT NULL,
  `trans_special` varchar(10) DEFAULT NULL,
  `trans_rate` int(10) DEFAULT NULL,
  `trans_surcharge` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`trans_id`, `trans_prc_id`, `trans_date`, `trans_desc`, `trans_amount`, `trans_make`, `trans_model`, `trans_year`, `trans_emp_id`, `trans_truck_id`, `trans_discount`, `trans_quantity`, `trans_unit_price`, `trans_driver_price`, `trans_run_no`, `trans_special`, `trans_rate`, `trans_surcharge`) VALUES
(1, 2, '2017-04-07', 'online shopping ', 4500, 'visa ', 'chase bank ', 2005, 4, 2, 26, 50, 12, 550, '50', 'no', 250, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trucks`
--

CREATE TABLE `trucks` (
  `truck_id` int(10) NOT NULL,
  `truck_make` varchar(25) NOT NULL,
  `truck_year` year(4) NOT NULL,
  `truck_model` varchar(20) NOT NULL,
  `truck_plate_no` varchar(20) NOT NULL,
  `truck_emp_id` int(11) NOT NULL,
  `truck_color` varchar(10) NOT NULL,
  `truck_vin` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trucks`
--

INSERT INTO `trucks` (`truck_id`, `truck_make`, `truck_year`, `truck_model`, `truck_plate_no`, `truck_emp_id`, `truck_color`, `truck_vin`) VALUES
(2, 'Mahindra ', 1995, 'MAH2000', 'MV2121', 4, 'green', 4556123),
(3, 'Duro', 2005, 'DURO4512', 'MV454656', 5, 'red', 876521);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `com_typ_weak`
--
ALTER TABLE `com_typ_weak`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `Com_cust_id` (`com_cust_id`),
  ADD KEY `Com_emp_id` (`com_emp_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `cust_cellno` (`cust_cellno`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`exp_id`),
  ADD KEY `exp_emp_id` (`exp_emp_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`inv_id`),
  ADD UNIQUE KEY `inv_ord_id` (`inv_ord_id`),
  ADD UNIQUE KEY `inv_ord_id_3` (`inv_ord_id`),
  ADD KEY `inv_pay_id` (`inv_pay_id`),
  ADD KEY `inv_emp_id` (`inv_emp_id`),
  ADD KEY `inv_cust_id` (`inv_cust_id`),
  ADD KEY `inv_ord_id_2` (`inv_ord_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`loc_id`),
  ADD KEY `loc_cust_id` (`loc_cust_id`);

--
-- Indexes for table `ord1`
--
ALTER TABLE `ord1`
  ADD PRIMARY KEY (`ord_id`),
  ADD KEY `ord_cust_id` (`ord_cust_id`),
  ADD KEY `ord_emp_id` (`ord_emp_id`),
  ADD KEY `ord_truck_id` (`ord_truck_id`),
  ADD KEY `ord_trans_id` (`ord_trans_id`),
  ADD KEY `ord_id` (`ord_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`),
  ADD UNIQUE KEY `pay_ord_id_3` (`pay_ord_id`),
  ADD KEY `pay_ord_id` (`pay_ord_id`),
  ADD KEY `pay_ord_id_2` (`pay_ord_id`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`prc_id`),
  ADD KEY `prc_cust_id` (`prc_cust_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`trans_id`),
  ADD UNIQUE KEY `trans_emp_id` (`trans_emp_id`),
  ADD UNIQUE KEY `trans_emp_id_2` (`trans_emp_id`),
  ADD UNIQUE KEY `trans_emp_id_3` (`trans_emp_id`),
  ADD KEY `trans_prc_id` (`trans_prc_id`),
  ADD KEY `trans_truck_id` (`trans_truck_id`);

--
-- Indexes for table `trucks`
--
ALTER TABLE `trucks`
  ADD PRIMARY KEY (`truck_id`),
  ADD KEY `truck_emp_id` (`truck_emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `exp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `inv_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `loc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ord1`
--
ALTER TABLE `ord1`
  MODIFY `ord_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `prc_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `trans_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `trucks`
--
ALTER TABLE `trucks`
  MODIFY `truck_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `com_typ_weak`
--
ALTER TABLE `com_typ_weak`
  ADD CONSTRAINT `Com_cust_id` FOREIGN KEY (`com_cust_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `Com_emp_id` FOREIGN KEY (`com_emp_id`) REFERENCES `employee` (`emp_id`);

--
-- Constraints for table `expense`
--
ALTER TABLE `expense`
  ADD CONSTRAINT `ExpenseEmpId` FOREIGN KEY (`exp_emp_id`) REFERENCES `employee` (`emp_id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `InvoicesCustId` FOREIGN KEY (`inv_cust_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `InvoicesEmpId` FOREIGN KEY (`inv_emp_id`) REFERENCES `employee` (`emp_id`),
  ADD CONSTRAINT `InvoicesPayId` FOREIGN KEY (`inv_pay_id`) REFERENCES `payment` (`pay_id`),
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`inv_ord_id`) REFERENCES `ord1` (`ord_id`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `LocCustId` FOREIGN KEY (`loc_cust_id`) REFERENCES `customer` (`cust_id`);

--
-- Constraints for table `ord1`
--
ALTER TABLE `ord1`
  ADD CONSTRAINT `OrderCustId` FOREIGN KEY (`ord_cust_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `OrderEmpid` FOREIGN KEY (`ord_emp_id`) REFERENCES `employee` (`emp_id`),
  ADD CONSTRAINT `OrderTransid` FOREIGN KEY (`ord_trans_id`) REFERENCES `transaction` (`trans_id`),
  ADD CONSTRAINT `OrderTruckid` FOREIGN KEY (`ord_truck_id`) REFERENCES `trucks` (`truck_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `PayORDID` FOREIGN KEY (`pay_ord_id`) REFERENCES `ord1` (`ord_id`);

--
-- Constraints for table `pricing`
--
ALTER TABLE `pricing`
  ADD CONSTRAINT `PricingCustId` FOREIGN KEY (`prc_cust_id`) REFERENCES `customer` (`cust_id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `TransactionPricingId` FOREIGN KEY (`trans_prc_id`) REFERENCES `pricing` (`prc_id`),
  ADD CONSTRAINT `TransactionTrucksId` FOREIGN KEY (`trans_truck_id`) REFERENCES `trucks` (`truck_id`),
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`trans_emp_id`) REFERENCES `employee` (`emp_id`);

--
-- Constraints for table `trucks`
--
ALTER TABLE `trucks`
  ADD CONSTRAINT `TrucksEmpId` FOREIGN KEY (`truck_emp_id`) REFERENCES `employee` (`emp_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
