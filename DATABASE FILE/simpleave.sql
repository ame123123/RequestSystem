-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2021 at 06:09 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpleave`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'D00F5D5217896FB7FD601412CB890830');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `leavedate` date NOT NULL,
  `leavereason` varchar(255) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `name`, `email`, `department`, `leavedate`, `leavereason`, `status`) VALUES
(1, 'Liam', 'liam@gmail.com', 'Development', '2020-04-09', '<p>none</p>\n', 1),
(2, 'Liam', 'liam@gmail.com', 'Development', '2021-05-10', '<p>This is a demo reason for leave application</p>\r\n', 1),
(3, 'Liam', 'liam@gmail.com', 'Development', '2021-05-30', '<p>demo demo</p>\r\n', 0),
(4, 'Liam', 'liam@gmail.com', 'Development', '2021-07-05', '<p>Excessive job related stress!</p>\r\n', 1),
(5, 'Morgan Kuhn', 'morgan@gmail.com', 'Test Team', '2021-07-06', '<p>Serious health condition</p>\r\n', 1),
(6, 'Ashley', 'ashley@gmail.com', 'Customer Support', '2021-07-04', '<p>Dentist&rsquo;s appointment</p>\r\n', 0),
(7, 'Patricia S Caldwell', 'caldwell@gmail.com', 'Marketing', '2021-07-07', '<p>Suffered from an accident.</p>\r\n', 1),
(8, 'Mark Lail', 'mark@gmail.com', 'Customer Support', '2021-07-04', '<p>To attend my friend&#39;s funeral</p>\r\n', 0),
(9, 'Cory B Puente', 'cory@gmail.com', 'UX', '2021-07-03', '<p>Not feeling well, need to quarantine myself!</p>\r\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(333) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `department`, `email`, `password`) VALUES
(1, 'Liam', 'Development', 'liam@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
(2, 'Will Williams', 'UX', 'williams@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
(3, 'Morgan Kuhn', 'Test Team', 'morgan@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
(4, 'Patricia S Caldwell', 'Marketing', 'caldwell@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
(5, 'Mark Lail', 'Customer Support', 'mark@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
(6, 'Ashly', 'Customer Support', 'ashley@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
(7, 'Cory B Puente', 'UX', 'cory@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
