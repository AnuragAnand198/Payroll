-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2019 at 07:20 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, '1604071', '12345'),
(2, '1604070', 'montu');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Depart_id` int(11) NOT NULL,
  `Depart_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Depart_id`, `Depart_name`) VALUES
(104, 'hardwere'),
(105, 'softwere'),
(106, 'design'),
(107, 'accessories'),
(108, 'codsection');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Phone_no` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Start_date` date NOT NULL,
  `d_birth` date NOT NULL,
  `gender` varchar(15) NOT NULL,
  `loan` float NOT NULL,
  `pfund` float NOT NULL,
  `salary` float NOT NULL,
  `jobtitle` varchar(50) NOT NULL,
  `Depart_id` int(11) NOT NULL,
  `managesDepart_id` int(11) NOT NULL,
  `b_accno` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_id`, `Name`, `Address`, `Phone_no`, `Email`, `Start_date`, `d_birth`, `gender`, `loan`, `pfund`, `salary`, `jobtitle`, `Depart_id`, `managesDepart_id`, `b_accno`) VALUES
(1604023, 'Rukon', 'Sojahnpur, bogra', '01521420202', 'rukonali@gmail.com', '2018-10-10', '1996-02-29', 'male', 0, 2000, 40000, 'manager', 108, 106, 236954128),
(1604025, 'Raufur Rahman', 'Jamalganj', '01767884314', 'shimanto@gmail.com', '2018-12-18', '2000-01-01', 'male', 3610, 1500, 35000, 'executive', 105, 104, 123654784),
(1604026, 'Sibbir ahmed', 'mirpur ,dhaka', '01684959574', 'sibbir026@gmail.com', '2018-08-14', '1996-07-11', 'male', 0, 1250, 50000, 'manager', 106, 107, 3654889),
(1604027, 'nahid riaz swachha', 'dinajpur, rangpur', '01797635121', 'nahidriaz284@gmail.com', '2018-11-01', '1998-09-11', 'male', 10000, 750, 35000, 'executive', 107, 108, 31351566),
(1604045, 'Md..Faridul Islam', 'Shohagpur,Mukundoganti,Belkuchi,Sirajganj', '01521430613', 'dhcfaridul@gmail.com', '2019-01-18', '1997-10-25', 'male', 4512.5, 750, 35000, 'executive', 105, 105, 125432874),
(1604060, 'Rakibul Islam', 'Shippur , Narsingdi', '01781932649', 'rakibcuet16@gmail.com', '2019-01-03', '1997-06-04', 'male', 0, 1250, 40000, 'manager', 106, 106, 15497830),
(1604073, 'Nahidul islam apu', 'town hall, mymensingh', '01986980335', 'nahidul@gmail.com', '2018-09-11', '1997-01-25', 'male', 0, 1500, 60000, 'accountant', 105, 108, 2147483647),
(1604078, 'Mehedi Hasan', 'Nandigram,Bogra', '01521406329', 'hasanmahadi877@gmail.com', '2019-01-18', '1998-03-02', 'male', 0, 1750, 70000, 'chief', 106, 108, 2147483647),
(1604083, 'Mahathir bishal', 'dinajpur, rangpur', '01747424468', 'mahathirbishal@gmail.com', '2014-06-02', '1997-11-14', 'male', 0, 750, 35000, 'executive', 106, 106, 321569874),
(1604110, 'Rushnan rifa', 'munshuganj', '01763710093', 'rushnan@gmail.com', '2018-10-22', '1999-08-28', 'female', 0, 1250, 50000, 'director', 108, 106, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `loginform`
--

CREATE TABLE `loginform` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginform`
--

INSERT INTO `loginform` (`id`, `user`, `pass`) VALUES
(1, '1604071', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_no` int(11) NOT NULL,
  `emp_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `accno` int(20) NOT NULL,
  `year` int(11) NOT NULL,
  `month` varchar(50) NOT NULL,
  `absence` int(11) NOT NULL,
  `loan_cut` float NOT NULL,
  `pfund_cut` float NOT NULL,
  `overtime` float NOT NULL,
  `season_bonus` float NOT NULL,
  `other_bonus` float NOT NULL,
  `medi_allow` float NOT NULL,
  `house_allow` float NOT NULL,
  `total_pay` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_no`, `emp_id`, `name`, `accno`, `year`, `month`, `absence`, `loan_cut`, `pfund_cut`, `overtime`, `season_bonus`, `other_bonus`, `medi_allow`, `house_allow`, `total_pay`) VALUES
(1, '160403', '', 0, 2018, 'december', 2, 0, 0, 6, 2000, 0, 0, 0, 3400),
(2, '1604023', 'Rukon', 236954128, 2018, 'december', 2, 0, 1000, 6, 2000, 0, 1200, 3200, 46800);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Depart_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_id`),
  ADD KEY `Depart_id` (`Depart_id`),
  ADD KEY `managesDepart_id` (`managesDepart_id`);

--
-- Indexes for table `loginform`
--
ALTER TABLE `loginform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Depart_id`) REFERENCES `department` (`Depart_id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`managesDepart_id`) REFERENCES `department` (`Depart_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
