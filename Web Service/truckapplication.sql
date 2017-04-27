-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 26, 2017 at 11:08 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `truckapplication`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `COMMENTID` varchar(20) NOT NULL,
  `COMMENTTIME` varchar(20) NOT NULL,
  `COMMENTS` varchar(20) NOT NULL,
  `COMMENTTYPE` varchar(20) NOT NULL,
  PRIMARY KEY (`COMMENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`COMMENTID`, `COMMENTTIME`, `COMMENTS`, `COMMENTTYPE`) VALUES
('C001', '01-05-2010', 'Regarding accounts d', 'CMNT1'),
('C002', '01-05-2017', 'Regarding data repli', 'CMNT12');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customerid` varchar(20) NOT NULL,
  `customerTitle` varchar(20) NOT NULL,
  `customername` varchar(20) NOT NULL,
  `businessName` varchar(20) NOT NULL,
  `billingAddress` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `stateOrProvince` varchar(20) NOT NULL,
  `postalCode` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `cellNumber` varchar(20) NOT NULL,
  `otherNumber` varchar(20) NOT NULL,
  `faxNumber` varchar(20) NOT NULL,
  `emailAddress` varchar(20) NOT NULL,
  `customerType` varchar(20) NOT NULL,
  `companyName` varchar(20) NOT NULL,
  `alternateContactName` varchar(20) NOT NULL,
  `contactname` varchar(20) NOT NULL,
  `dateEntered` varchar(20) NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `customerTitle`, `customername`, `businessName`, `billingAddress`, `city`, `stateOrProvince`, `postalCode`, `country`, `phoneNumber`, `cellNumber`, `otherNumber`, `faxNumber`, `emailAddress`, `customerType`, `companyName`, `alternateContactName`, `contactname`, `dateEntered`) VALUES
('001', 'Mr', 'Brad', 'Arp', '3001 S King Dr''', 'Chicago', 'Illinois', '60616', 'USA', '123456789', '987654321', '012345678', '1234', 'brad@gmail.com', 'A', 'ARP', '012345678', 'Maria', '01-01-2012'),
('002', 'Mrs', 'Helados', 'XYZ', '21 street S Salle', 'New York', 'New York', '145895', 'United States', '4563876543', '4563876543', '4563876543', '4534', 'helados@hotmail.com', 'B', 'D Corp', '4563876543', 'Ana', '02-04-2007'),
('003', 'Mr', 'Antonio', 'ABC', '2801 South King Dri', 'Chicago', 'Illinois', '60616', 'Mexico', '0987123476', '0987123476', '0987123476', '6655', 'antonio@gmail.com', 'A', 'ABC', '0987123476', 'Marella', '04-18-2015');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `employeeid` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `extension` varchar(20) NOT NULL,
  `homephone` varchar(20) NOT NULL,
  `cellphone` varchar(20) NOT NULL,
  `jobtitle` varchar(20) NOT NULL,
  `socialsecuritynumber` varchar(20) NOT NULL,
  `driverlicensenumber` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `postalcode` varchar(20) NOT NULL,
  `birthdate` varchar(20) NOT NULL,
  `datehired` varchar(20) NOT NULL,
  `salary` varchar(20) NOT NULL,
  `notes` varchar(20) NOT NULL,
  PRIMARY KEY (`employeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeid`, `firstname`, `lastname`, `email`, `extension`, `homephone`, `cellphone`, `jobtitle`, `socialsecuritynumber`, `driverlicensenumber`, `address`, `city`, `state`, `postalcode`, `birthdate`, `datehired`, `salary`, `notes`) VALUES
('521', 'Sam', 'Marcus', 's.ma@gmail.com', '111', '339819', '339819', 'Driver', '234567890', 'A3452', 'Sk street', 'Chicago', 'Illinois', '60616', '1980-04-17', '2012-11-11', '200000', 'new employee'),
('522', 'Jacob', 'Mab', 'jm@yahoo.com', '99', '345366', '345366', 'Helper', '224433667', 'A22222', 'DownChi street', 'Chicago', 'Illinois', '60613', '1982-07-13', '2014-06-18', '7000', 'new employee');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `expenseid` varchar(20) NOT NULL,
  `employeeid` varchar(20) NOT NULL,
  `expensetype` varchar(20) NOT NULL,
  `purposeofexpense` varchar(20) NOT NULL,
  `amountspent` varchar(20) NOT NULL,
  `description` varchar(20) NOT NULL,
  `datepurchased` varchar(20) NOT NULL,
  `datesubmitted` varchar(20) NOT NULL,
  `advanceamount` varchar(20) NOT NULL,
  `paymentmethod` varchar(20) NOT NULL,
  PRIMARY KEY (`expenseid`),
  KEY `employeeid` (`employeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expenseid`, `employeeid`, `expensetype`, `purposeofexpense`, `amountspent`, `description`, `datepurchased`, `datesubmitted`, `advanceamount`, `paymentmethod`) VALUES
('4456', '521', 'Employee', 'Expenses', '1000', 'Expenses', '04-04-2009', '04-04-2009', '300', 'check'),
('5566', '522', 'Helper', 'Bills', '2000', 'Rent Bills', '05-04-2006', '05-04-2006', '500', 'check');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `locationid` varchar(20) NOT NULL,
  `locname` varchar(20) NOT NULL,
  `locationcode` varchar(20) NOT NULL,
  `isauction` varchar(20) NOT NULL,
  `customerid` varchar(20) NOT NULL,
  `addressstreet1` varchar(20) NOT NULL,
  `addressstreet2` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `postalcode` varchar(20) NOT NULL,
  `region` varchar(20) NOT NULL,
  `location_contact_name` varchar(20) NOT NULL,
  `locphone` varchar(20) NOT NULL,
  `locfaxnumber` varchar(20) NOT NULL,
  `locemail` varchar(20) NOT NULL,
  PRIMARY KEY (`locationid`),
  KEY `customerid` (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`locationid`, `locname`, `locationcode`, `isauction`, `customerid`, `addressstreet1`, `addressstreet2`, `city`, `state`, `postalcode`, `region`, `location_contact_name`, `locphone`, `locfaxnumber`, `locemail`) VALUES
('C10', 'Chicago', 'CH10', 'Y', '001', 'Baker Street', 'B221', 'Chicago', 'Active', '60616', 'Chicago', 'ap', '568945', '568945', 'ap@gmail.com'),
('C11', 'Chicago', 'CH10', 'Y', '002', '2801 S', 'B2', 'Chicago', 'Illinois', '60613', 'Chicago', 'ps', '56033', '56033', 'pre@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` varchar(20) NOT NULL,
  `orderdate` varchar(20) NOT NULL,
  `customerid` varchar(20) NOT NULL,
  `employeeid` varchar(20) NOT NULL,
  `truckid` varchar(20) NOT NULL,
  `isspecial` varchar(20) NOT NULL,
  `purchaseordernumber` varchar(20) NOT NULL,
  `ordertotalamount` varchar(20) NOT NULL,
  `transactionid` varchar(20) NOT NULL,
  `paymentid` varchar(20) NOT NULL,
  PRIMARY KEY (`orderid`),
  KEY `customerid` (`customerid`),
  KEY `employeeid` (`employeeid`),
  KEY `truckid` (`truckid`),
  KEY `transactionid` (`transactionid`),
  KEY `paymentid` (`paymentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `orderdate`, `customerid`, `employeeid`, `truckid`, `isspecial`, `purchaseordernumber`, `ordertotalamount`, `transactionid`, `paymentid`) VALUES
('1111', '08-20-2016', '001', '521', '101', 'N', '221', '1000', 'T1111', 'P1112'),
('1112', '03-05-2016', '002', '522', '102', 'N', '222', '4000', 'T1112', 'P11111');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `paymentid` varchar(20) NOT NULL,
  `paymentmethodid` varchar(20) NOT NULL,
  `paymentamount` varchar(20) NOT NULL,
  `paymentdate` varchar(20) NOT NULL,
  `checknumber` varchar(20) NOT NULL,
  `creditcard` varchar(20) NOT NULL,
  `creditcardnumber` varchar(20) NOT NULL,
  `cardholdersname` varchar(20) NOT NULL,
  `creditcardexpdate` varchar(20) NOT NULL,
  `creditcardauthorizationnumber` int(10) NOT NULL,
  PRIMARY KEY (`paymentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentid`, `paymentmethodid`, `paymentamount`, `paymentdate`, `checknumber`, `creditcard`, `creditcardnumber`, `cardholdersname`, `creditcardexpdate`, `creditcardauthorizationnumber`) VALUES
('P11111', 'P1000', '1000', '2017-01-10', '11N', '234587', '234587', 'Samuel', '2019-06-12', 988),
('P1112', 'P1001', '400', '02-02-2017', '12N', '234117', '234117', 'Jack', '05-01-2020', 885);

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

DROP TABLE IF EXISTS `pricing`;
CREATE TABLE IF NOT EXISTS `pricing` (
  `priceid` varchar(20) NOT NULL,
  `locationidfrom` varchar(10) NOT NULL,
  `locationidto` varchar(10) NOT NULL,
  `price` varchar(20) NOT NULL,
  `locationcodefrom` varchar(10) NOT NULL,
  `locationcodeto` varchar(10) NOT NULL,
  `locationnamefrom` varchar(10) NOT NULL,
  `locationnameto` varchar(10) NOT NULL,
  `customerid` varchar(20) NOT NULL,
  `paymentid` varchar(20) NOT NULL,
  PRIMARY KEY (`priceid`),
  KEY `customerid` (`customerid`),
  KEY `paymentid` (`paymentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`priceid`, `locationidfrom`, `locationidto`, `price`, `locationcodefrom`, `locationcodeto`, `locationnamefrom`, `locationnameto`, `customerid`, `paymentid`) VALUES
('4456', 'C101', 'B12', '1000', 'A12', 'B12', 'Alaska', 'Texas', '001', 'P1112'),
('4466', 'C111', 'B112', '4000', 'Y1', 'Y2', 'Naperville', 'Dallas', '002', 'P11111');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `transactionid` varchar(15) NOT NULL,
  `priceid` varchar(20) NOT NULL,
  `transactiondate` varchar(20) NOT NULL,
  `transactiondescription` varchar(20) NOT NULL,
  `transactionamount` varchar(20) NOT NULL,
  `make` varchar(15) NOT NULL,
  `model` varchar(15) NOT NULL,
  `year` varchar(15) NOT NULL,
  `employeeid` varchar(20) NOT NULL,
  `truckno` varchar(15) NOT NULL,
  `discount` varchar(15) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `unitprice` varchar(20) NOT NULL,
  `driverpric` varchar(20) NOT NULL,
  `vin` varchar(20) NOT NULL,
  `runnumber` varchar(20) NOT NULL,
  `special` varchar(11) NOT NULL,
  `rate` varchar(20) NOT NULL,
  `surcharge` varchar(20) NOT NULL,
  `customerid` varchar(20) NOT NULL,
  PRIMARY KEY (`transactionid`),
  KEY `priceid` (`priceid`),
  KEY `custid` (`customerid`),
  KEY `customerid` (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transactionid`, `priceid`, `transactiondate`, `transactiondescription`, `transactionamount`, `make`, `model`, `year`, `employeeid`, `truckno`, `discount`, `quantity`, `unitprice`, `driverpric`, `vin`, `runnumber`, `special`, `rate`, `surcharge`, `customerid`) VALUES
('T1111', '4456', '2017-02-12', 'New', '1000', '2001', 'A101', '2001', '521', '101', '0', '1', '1', '1', '12201', '1', 'N', '1', '1', '001'),
('T1112', '4466', '2017-03-05', 'New', '4000', '2001', 'A102', '2001', '522', '102', '0', '1', '1', '1', '112201', '1', 'N', '1', '1', '002');

-- --------------------------------------------------------

--
-- Table structure for table `trucks`
--

DROP TABLE IF EXISTS `trucks`;
CREATE TABLE IF NOT EXISTS `trucks` (
  `truckno` varchar(20) NOT NULL,
  `make` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `licenseplateno` varchar(20) NOT NULL,
  `employeeid` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `vin` varchar(20) NOT NULL,
  `truckid` varchar(20) NOT NULL,
  PRIMARY KEY (`truckno`),
  KEY `employeeid` (`employeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trucks`
--

INSERT INTO `trucks` (`truckno`, `make`, `year`, `model`, `licenseplateno`, `employeeid`, `color`, `vin`, `truckid`) VALUES
('101', '2001', '2001', 'A101', 'NY201', '521', 'Black', '12201', '2001111'),
('102', '2001', '2001', 'A102', 'NY202', '522', 'Black', '12202', '200112');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expensesempid` FOREIGN KEY (`employeeid`) REFERENCES `employees` (`employeeid`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `loccustid` FOREIGN KEY (`customerid`) REFERENCES `customers` (`customerid`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `ordcustid` FOREIGN KEY (`customerid`) REFERENCES `customers` (`customerid`),
  ADD CONSTRAINT `ordempid` FOREIGN KEY (`employeeid`) REFERENCES `employees` (`employeeid`),
  ADD CONSTRAINT `ordpaymentid` FOREIGN KEY (`paymentid`) REFERENCES `payments` (`paymentid`),
  ADD CONSTRAINT `ordtransid` FOREIGN KEY (`transactionid`) REFERENCES `transactions` (`transactionid`),
  ADD CONSTRAINT `ordtruckid` FOREIGN KEY (`truckid`) REFERENCES `trucks` (`truckno`);

--
-- Constraints for table `pricing`
--
ALTER TABLE `pricing`
  ADD CONSTRAINT `pricingcustid` FOREIGN KEY (`customerid`) REFERENCES `customers` (`customerid`),
  ADD CONSTRAINT `pricingpayment` FOREIGN KEY (`paymentid`) REFERENCES `payments` (`paymentid`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transcustid` FOREIGN KEY (`customerid`) REFERENCES `customers` (`customerid`),
  ADD CONSTRAINT `transprid` FOREIGN KEY (`priceid`) REFERENCES `pricing` (`priceid`);

--
-- Constraints for table `trucks`
--
ALTER TABLE `trucks`
  ADD CONSTRAINT `truckeid` FOREIGN KEY (`employeeid`) REFERENCES `employees` (`employeeid`);
