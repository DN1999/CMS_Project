-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2022 at 06:10 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `colmgmtsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcontent`
--

CREATE TABLE `addcontent` (
  `classcontent` varchar(30) DEFAULT NULL,
  `tpositon` varchar(30) DEFAULT NULL,
  `eposition` varchar(30) DEFAULT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcontent`
--

INSERT INTO `addcontent` (`classcontent`, `tpositon`, `eposition`, `cid`) VALUES
(NULL, 'Lecturer', NULL, 12),
(NULL, 'HOD', NULL, 13),
(NULL, 'Principle', NULL, 14),
(NULL, 'Course Coridinator', NULL, 15),
('BCA', NULL, NULL, 17),
('MCA', NULL, NULL, 18),
('BBA', NULL, NULL, 19),
('MBA', NULL, NULL, 20),
('Bsc', NULL, NULL, 21),
('Msc', NULL, NULL, 22),
(NULL, NULL, 'Cleark', 23),
(NULL, NULL, 'Administrative Head', 24),
('Mcom', NULL, NULL, 25),
('BFam', NULL, NULL, 26),
('DFam', NULL, NULL, 27),
(NULL, 'Guest Lecture', NULL, 28),
('Architechture', NULL, NULL, 29),
(NULL, NULL, 'Helper', 30);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminname`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(5) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `position` varchar(35) DEFAULT NULL,
  `age` varchar(3) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `emailid` varchar(30) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `permanentaddress` varchar(100) DEFAULT NULL,
  `presentaddress` varchar(100) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstname`, `lastname`, `position`, `age`, `contact`, `emailid`, `gender`, `permanentaddress`, `presentaddress`, `dob`) VALUES
(2, 'Sachin', 'Tendulakr', 'Cleark', '43', '1234567896', 'schintendulk@gmail.com', 'Male', 'Sachin Tendulake Wilaa,\nTown District ,Maharashtra 443102', 'Sachin Tendulake Wilaa,\nTown District ,Maharashtra 443102', '20/04/2021'),
(4, 'Satish', 'fddfg', 'HOD', '27', '6456767856', 'dfg@gmail.com', 'Male', 'gds', 'gds', '13/04/2021'),
(5, 'Sachin', 'Tendulkar', 'HOD', '9', '2125233646', 'sachin@gmail.com', 'Male', 'thjrjn', 'tjhmrym', '22/04/2021');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `sid` varchar(5) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `paidfee` varchar(10) DEFAULT NULL,
  `rfee` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`sid`, `fname`, `class`, `year`, `paidfee`, `rfee`) VALUES
('1', 'Dhananjay  Naphade', 'BCA', 'III', '888', '112.0'),
('2', 'Dhananjay  Bhoyar', 'MCA', 'III', '700', '300.0'),
('4', 'Sachin Tendulkar', 'MCA', 'II', '600', '400.0'),
('5', 'Raju Rastogi', 'MBA', 'II', '00.00', '00.00'),
('6', 'Rock  Dgans', 'Bsc', 'II', '700', '300.0');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(5) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `emailid` varchar(30) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `permanentaddress` varchar(100) DEFAULT NULL,
  `presentaddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `firstname`, `lastname`, `class`, `year`, `dob`, `contact`, `emailid`, `gender`, `permanentaddress`, `presentaddress`) VALUES
(1, 'Dhananjay', 'Naphade', 'BCA', 'III', '22/04/2021', '2433457688', 'dhananjay@gmail.com', 'Male', 'sfdhbdfbdfdf', 'dfnfn'),
(2, 'Dhananjay', 'Bhoyar', 'MCA', 'III', '15/04/2021', '5347978978', 'db@gmail.com', 'Male', 'fghmfghmfh', 'rtjmkutl'),
(3, 'Sachin', 'gghilurty', 'BBA', 'I', '08/04/2021', '6546786785', 'hgfdj@gmail.com', 'Male', 'rnjh', 'ej'),
(4, 'Sachin', 'Tendulkar', 'MCA', 'II', '15/04/2021', '6709876789', 'fg@gmail.com', 'Male', 'njwefhiuqh', '768979'),
(5, 'Raju', 'Rastogi', 'MBA', 'II', '14/04/2021', '7967078900', 'rr@gmail.com', 'Male', 'htjfm', 'mgj,');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(5) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `position` varchar(35) DEFAULT NULL,
  `age` varchar(3) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `emailid` varchar(30) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `permanentaddress` varchar(100) DEFAULT NULL,
  `presentaddress` varchar(100) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `firstname`, `lastname`, `position`, `age`, `contact`, `emailid`, `gender`, `permanentaddress`, `presentaddress`, `dob`) VALUES
(1, 'Jango', 'sfgnfn', 'HOD', '6', '5678987809', 'sfnn@gmaol.com', 'Male', 'fn', 'fnsssssssssssssssssssssssssss', '08/04/2021'),
(5, 'Dhananjay', 'Naphade', 'HOD', '7', '5366', 'vbff', 'Male', '566', '54637', '30/03/1999'),
(7, 'Dhananjay', 'Naphade', 'Principle', '6', '3254757686', 'dhan@gmail.com', 'Male', 'fdh', 'fdh', '21/04/2021'),
(8, 'dhgfhgf', 'thry', 'HOD', '2', '4678578567', 'tyjryj@gmail.om', 'Male', 'jhmgmj', 'gh,g,kk', '15/04/2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcontent`
--
ALTER TABLE `addcontent`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminname`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcontent`
--
ALTER TABLE `addcontent`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
