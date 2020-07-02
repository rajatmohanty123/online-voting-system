-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2020 at 05:22 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poll`
--

-- --------------------------------------------------------

--
-- Table structure for table `otp_expiry`
--

CREATE TABLE `otp_expiry` (
  `id` int(11) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `is_expired` int(11) NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp_expiry`
--

INSERT INTO `otp_expiry` (`id`, `otp`, `is_expired`, `create_at`) VALUES
(0, '710365', 1, '2020-03-01 12:17:23'),
(0, '146090', 1, '2020-03-01 12:21:26'),
(0, '810589', 1, '2020-03-01 12:36:42'),
(0, '421855', 1, '2020-03-01 18:23:08'),
(0, '466828', 1, '2020-03-14 08:19:18'),
(0, '459756', 0, '2020-03-18 20:45:05'),
(0, '111318', 1, '2020-06-04 09:38:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbadministrators`
--

CREATE TABLE `tbadministrators` (
  `admin_id` int(5) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbadministrators`
--

INSERT INTO `tbadministrators` (`admin_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Kimanii', 'Kahiga', 'admin@example.com', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'admin', 'admin', 'admin@example.com', 'admin2'),
(4, 'AJAY', 'kumae', 'ajay@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `tbcandidates`
--

CREATE TABLE `tbcandidates` (
  `candidate_id` int(5) NOT NULL,
  `candidate_name` varchar(45) NOT NULL,
  `candidate_year` varchar(10) NOT NULL,
  `candidate_branch` varchar(10) NOT NULL,
  `candidate_photo` longblob NOT NULL,
  `candidate_position` varchar(45) NOT NULL,
  `candidate_cvotes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbcandidates`
--

INSERT INTO `tbcandidates` (`candidate_id`, `candidate_name`, `candidate_year`, `candidate_branch`, `candidate_photo`, `candidate_position`, `candidate_cvotes`) VALUES
(33, 'Rajat Mohanty', '4th', 'CSE', 0x70696332312e504e47, 'Secretary-Programming', 0),
(34, 'Amit Kumar Majhee', '4th', 'CSE', 0x5049432e4a5047, 'Secretary-Cultural', 0),
(35, 'Anshuman', '4th', 'CSE', 0x504943342e4a5047, 'JT-Secretary-Programming', 0),
(36, 'Tanmaya Priyadarshini', '4th', 'CSE', 0x504943342e4a5047, 'Secretary-Sports', 0),
(37, 'Preety Kumari', '4th', 'CSE', 0x5049432e4a5047, 'Secretary-Youth', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblvotes`
--

CREATE TABLE `tblvotes` (
  `id` int(11) NOT NULL,
  `voter_id` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `candidateName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvotes`
--

INSERT INTO `tblvotes` (`id`, `voter_id`, `position`, `candidateName`) VALUES
(1, 5, 'Chairperson', 'Luis Nani'),
(2, 5, 'Vice-Secretary', 'Thomas Vaemalen'),
(3, 5, 'Secretary', 'Michael Walters'),
(4, 5, 'Vice-Treasurer', 'Howard Web'),
(5, 5, 'HOD', 'Aman'),
(6, 7, 'HOD', 'Aman'),
(7, 7, 'Secretary-Programming', 'Rajat Mohanty');

-- --------------------------------------------------------

--
-- Table structure for table `tbmembers`
--

CREATE TABLE `tbmembers` (
  `member_id` int(5) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbmembers`
--

INSERT INTO `tbmembers` (`member_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Kimani', 'Kahiga', 'kahiga@gmail.com', '547da2b03f947606f1d06a8dec093e64'),
(2, 'MacDonald', 'Ngowi', 'mcbcrue08@gmail.com', '14b876400a7ae986df9b17fbaffb9eca'),
(3, 'test', 'testt', 'test@example.com', '098f6bcd4621d373cade4e832627b4f6'),
(5, 'Ajay', 'Chaubey', 'ajaychaubey95@gmail.com', '202cb962ac59075b964b07152d234b70'),
(6, 'anil', 'k', 'anil@gmail.com', '202cb962ac59075b964b07152d234b70'),
(7, 'Rajat', 'Mohanty', 'rajatmohanty64@gmail.com', '12345'),
(8, 'tanmaya', 'Sahoo', 'tanmayapriyadarshini2@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbpositions`
--

CREATE TABLE `tbpositions` (
  `position_id` int(5) NOT NULL,
  `position_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbpositions`
--

INSERT INTO `tbpositions` (`position_id`, `position_name`) VALUES
(2, 'Secretary'),
(5, 'Vice-Secretary'),
(7, 'Organizing-Secretary'),
(12, 'Secretary-Programming Club'),
(13, 'JT-Secretary-Programming Club'),
(14, 'Secretary-Cultural Club'),
(15, 'JT-Secretary-Cultural Club'),
(16, 'Secretary-Youth Club'),
(17, 'Secretary-Sports Club'),
(18, 'JT-Secretary Sports Club');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbadministrators`
--
ALTER TABLE `tbadministrators`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbcandidates`
--
ALTER TABLE `tbcandidates`
  ADD PRIMARY KEY (`candidate_id`);

--
-- Indexes for table `tblvotes`
--
ALTER TABLE `tblvotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voter_id` (`voter_id`);

--
-- Indexes for table `tbmembers`
--
ALTER TABLE `tbmembers`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbpositions`
--
ALTER TABLE `tbpositions`
  ADD PRIMARY KEY (`position_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbadministrators`
--
ALTER TABLE `tbadministrators`
  MODIFY `admin_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbcandidates`
--
ALTER TABLE `tbcandidates`
  MODIFY `candidate_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tblvotes`
--
ALTER TABLE `tblvotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbmembers`
--
ALTER TABLE `tbmembers`
  MODIFY `member_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbpositions`
--
ALTER TABLE `tbpositions`
  MODIFY `position_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblvotes`
--
ALTER TABLE `tblvotes`
  ADD CONSTRAINT `tblvotes_ibfk_1` FOREIGN KEY (`voter_id`) REFERENCES `tbmembers` (`member_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
