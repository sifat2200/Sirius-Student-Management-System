-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_name` int(11) NOT NULL,
  `class_code` varchar(255) NOT NULL,
  `Days` varchar(50) DEFAULT NULL,
  `teacher's_Payment` decimal(10,2) DEFAULT NULL,
  `class_time` varchar(16) DEFAULT NULL,
  `student_payment` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_name`, `class_code`, `Days`, `teacher's_Payment`, `class_time`, `student_payment`) VALUES
(10, '10Bio', 'Tuesday', 5000.00, '04:30 -05:45 pm', 1200.00),
(10, '10Chem', 'Tuesday', 5000.00, '08:00-09:15 am', 1200.00),
(10, '10Eng', 'Sunday', 4000.00, '06:00-07:00 pm', 1200.00),
(10, '10Ict', 'Tuesday', 4000.00, '06:00-07:00 pm', 1200.00),
(10, '10Math', 'Sunday', 5000.00, '04:30-05:45 pm', 1200.00),
(10, '10Phy', 'Sunday', 5000.00, '08:00-09:15 am', 1200.00),
(11, '11Bio', 'Monday', 6000.00, '04:30-05:45 pm', 1500.00),
(11, '11Chem', 'Monday', 6000.00, '08:00-09:15 am', 1500.00),
(11, '11Eng', 'Monday', 5000.00, '06:00-07:00 pm', 1500.00),
(11, '11Ict', 'Wednesday', 5000.00, '06:00-07:00 pm', 1500.00),
(11, '11Math', 'Wednesday', 6000.00, '08:00-09:15 am', 1500.00),
(11, '11Phy', 'Wednesday', 6000.00, '04:30-05:45 pm', 1500.00),
(12, '12Bio', 'Sunday', 6000.00, '12:00-01:00 pm', 1500.00),
(12, '12Chem', 'Sunday', 6000.00, '01:15-02:15 pm', 1500.00),
(12, '12Eng', 'Sunday', 5000.00, '07:00-08:00 am', 1500.00),
(12, '12Ict', 'Monday', 5000.00, '07:00-08:00am', 1500.00),
(12, '12Math', 'Monday', 6000.00, '12:00-01:00 pm', 1500.00),
(12, '12Phy', 'Monday', 6000.00, '01:15-02:15 pm', 1500.00),
(9, '9Bio', 'Thursday', 5000.00, '04:30-05:45 pm', 1000.00),
(9, '9Chem', 'Thursday', 5000.00, '08:00-09:15 am', 1000.00),
(9, '9Eng', 'Thursday', 4000.00, '07:00-08:00 am', 1000.00),
(9, '9Ict', 'Saturday', 4000.00, '04:30-05:45 pm', 1000.00),
(9, '9Math', 'Saturday', 5000.00, '08:00-09:15 am', 1000.00),
(9, '9Phy', 'Saturday', 5000.00, '07:00-08:00 am', 1000.00);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_code` varchar(50) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `class_name` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_profiles`
--

CREATE TABLE `student_profiles` (
  `student_id` int(11) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(31) NOT NULL,
  `subject_code` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject`, `subject_code`) VALUES
(1, 'Physics', 101),
(2, 'Chemistry', 102),
(3, 'Maths', 103),
(4, 'Biology', 104),
(5, 'English', 105),
(6, 'ICT', 106);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `subject_code` int(3) NOT NULL,
  `class_code` varchar(255) DEFAULT NULL,
  `Address` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_profiles`
--

CREATE TABLE `teacher_profiles` (
  `teacher_id` int(11) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_code`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fk_class` (`class_code`);

--
-- Indexes for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fk_class_code` (`class_code`);

--
-- Indexes for table `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_class` FOREIGN KEY (`class_code`) REFERENCES `class` (`class_code`) ON UPDATE CASCADE;

--
-- Constraints for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD CONSTRAINT `student_profiles_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `fk_class_code` FOREIGN KEY (`class_code`) REFERENCES `class` (`class_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  ADD CONSTRAINT `teacher_profiles_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
