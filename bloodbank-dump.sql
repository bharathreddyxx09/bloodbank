-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 06:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE `bloodgroup` (
  `bg_id` int(100) NOT NULL,
  `bg_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`bg_id`, `bg_name`) VALUES
(13, 'o+'),
(14, 'o-'),
(15, 'AB+'),
(16, 'AB-'),
(17, 'A+'),
(18, 'A-'),
(19, 'B+'),
(20, 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE `camp` (
  `camp_id` int(100) NOT NULL,
  `camp_title` varchar(500) NOT NULL,
  `organised_by` varchar(500) NOT NULL,
  `state` int(100) NOT NULL,
  `city` int(100) NOT NULL,
  `pic` varchar(900) NOT NULL,
  `detail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`camp_id`, `camp_title`, `organised_by`, `state`, `city`, `pic`, `detail`) VALUES
(1, 'Ucmo Health Center', 'University of central Missouri', 1, 1, 'blood_donation_camp.jpg', 'A Blood Donation Camp at UCM organized by university of central Missouri.'),
(2, 'western missouri medical center', 'Missouri Dept', 1, 7, 'B.D camp 034.jpg', 'A Blood Donation Camp handled by Missouri dept'),
(8, 'AdventHealth Centra Care Overland Park', 'Kansas Govt', 2, 4, 'p36.jpg', 'A Blood Donation Camp at Overlandpark.'),
(9, 'Saint Luke\'s South Hospital', 'Private Organization ', 2, 4, 'p38_2.jpg', 'A Blood Donation Camp at Saint Luke\'s South Hospital\r\n ');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(100) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `pin_code` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `pin_code`, `district`, `state`) VALUES
(1, 'Warrenburg', '64093', 'MO', 1),
(4, 'Overland Park', '66210', 'OP', 2),
(7, 'Warrensburg', '64093', 'Warrens', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donarregistration`
--

CREATE TABLE `donarregistration` (
  `donar_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` int(100) NOT NULL,
  `pic` varchar(1000) NOT NULL,
  `report` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donarregistration`
--

INSERT INTO `donarregistration` (`donar_id`, `name`, `gender`, `age`, `mobile`, `b_id`, `email`, `pwd`, `pic`, `report`) VALUES
(3, 'neeru', 'female', '20', '9463958058', 13, 'neeru.bawa@yahoo.com', 123, 'neeru.jpg', ''),
(4, 'Paras Bhatia', 'male', '21', '9888961990', 13, 'parasbhatia08@gmail.com', 123, '11168037_1610636085842033_904443745256932191_n.jpg', ''),
(5, 'Rakesh', 'male', '22', '9876505652', 17, 'rakesh12@gmil.com', 123, '1002679_629448530471361_5912528223898153120_n.jpg', ''),
(6, 'Manu', 'female', '20', '9779730479', 13, 'manpreetkaler@yahoo.com', 123, '12144826_691191231017304_7118038794667291151_n.jpg', ''),
(7, 'Sukhwinder', 'male', '22', '01823280290', 17, 'sunnysuyan@gmail.com', 123, 'p3Penguins.jpg', ''),
(8, 'Abhishek', 'male', '24', '0123456780', 19, 'abhi@ymail.com', 123, 'resizedBlood donation (1).jpg', ''),
(9, 'Ramanjeet Kaur', 'female', '26', '9295769630', 15, 'rbawa08@yahoo.com', 123, '11261437_1624099511137421_8482759699813102898_n.jpg', ''),
(10, 'kuldip Banga', 'male', '26', '9878967543', 15, 'kbanga@yahoo.com', 123, '10593057_728311113906338_1063644592728298376_n.jpg', ''),
(11, 'Jaspinder', 'male', '24', '9445678765', 16, 'singhjaspinder12@gmail.com', 123, '12038392_969929529729736_1007747926670734265_n (1).jpg', ''),
(12, 'Sahil', 'male', '20', '8591824296', 13, 'sahildubey@gmail.com', 123, '12038380_834746969972073_6382623771453128938_n.jpg', ''),
(13, 'sonu', 'male', '25', '9594918765', 16, 'sonukhana34@gmail.com', 123, '11863382_1032998280067097_2552428582935820453_n.jpg', ''),
(14, 'Vinny', 'male', '24', '01824230721', 18, 'vinny786@gmail.com', 123, '11175046_366978330169273_8044521424217911178_n.jpg', ''),
(15, 'Rishav Bhatia', 'male', '19', '8781846758', 19, 'rbhatia@ymail.com', 123, '1491626_647476172014342_6155162312561723489_n.jpg', ''),
(16, 'Rahul Bangar', 'male', '25', '9216291294', 20, 'raulban@gmail.com', 123, '11899909_948967995160204_759838727467883977_n.jpg', ''),
(17, 'Prabhjot', 'male', '24', '9818134576', 20, 'prabh786@gmail.com', 123, '11899866_690854484348510_8725848025714675727_n.jpg', ''),
(18, 'Ridhima', 'female', '25', '9889786545', 14, 'ridhi@ymail.com', 123, '1.jpg', ''),
(19, 'Preet karanq', 'female', '28', '8427429079', 14, 'preet22@yahoo.com', 123, '123.jpg', ''),
(20, 'mntrtgrt', 'female', '35', '9888976570', 18, 'manat@yahoo.com', 123, 'ccccc.jpg', ''),
(21, 'Nithin madhav', 'female', '24', '1234567890', 17, 'ni@gmail.com', 12345, '1.jpg', ''),
(23, 'Nithin madhav', 'female', '24', '1234567890', 17, 'ni@gmail.com', 1123456, '1.jpg', 'Testing'),
(24, 'mine', 'male', '32', '1234567890', 13, 'mine@gmail.com', 12345, '12.jpg', 'All happy'),
(25, 'Revanth', 'male', '25', '9012345678', 13, 'rev@gmail.com', 12345, '1.jpg', 'Good health'),
(26, 'Mounika', 'female', '25', '9138234567', 17, 'mounika@ucmo.edu', 12345, '5.jpg', 'Happy me');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donation_id` int(100) NOT NULL,
  `camp_id` int(100) NOT NULL,
  `ddate` datetime NOT NULL,
  `units` int(100) NOT NULL,
  `detail` varchar(800) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `camp_id`, `ddate`, `units`, `detail`, `email`) VALUES
(28, 1, '2014-09-14 00:00:00', 20, 'A Blood Donation for good cause.', 'ucmo1@ucmo.com'),
(29, 7, '2015-05-11 00:00:00', 30, 'A Blood Donation for good cause.', 'ucmo2@ucmo.com'),
(30, 8, '2014-11-04 00:00:00', 25, 'A Blood Donation for good cause.', 'ucmo3@ucmo.com'),
(31, 9, '2014-12-18 00:00:00', 22, 'A Blood Donation for good cause.', 'ucmo4@ucmo.com'),
(32, 7, '2010-06-19 00:00:00', 27, 'A Blood Donation Camp should be needed in life.', 'preet22@yahoo.com'),
(33, 8, '2010-08-20 00:00:00', 17, 'save life', 'manpreetkaler@yahoo.com'),
(34, 9, '2009-06-05 00:00:00', 10, 'give blood', 'manpreetkaler@yahoo.com'),
(35, 1, '2012-09-13 00:00:00', 22, 'save life', 'sahildubey@gmail.com'),
(36, 9, '0000-00-00 00:00:00', 444, 'kjj', 'neeru.bawa@yahoo.com'),
(37, 1, '2023-01-01 00:00:00', 1, '', 'mine@gmail.com'),
(38, 1, '2023-01-01 00:00:00', 1, 'Happy me', 'rev@gmail.com'),
(39, 2, '2023-01-01 00:00:00', 1, 'Happy to donate blood', 'mounika@ucmo.edu');

-- --------------------------------------------------------

--
-- Table structure for table `requestes`
--

CREATE TABLE `requestes` (
  `req_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bgroup` int(100) NOT NULL,
  `reqdate` datetime NOT NULL,
  `detail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requestes`
--

INSERT INTO `requestes` (`req_id`, `name`, `gender`, `age`, `mobile`, `email`, `bgroup`, `reqdate`, `detail`) VALUES
(7, 'balwant singh', 'male', '22', '8427420298', 'balwant11@gmail.com', 19, '2015-01-15 00:00:00', 'save life'),
(8, 'japleen', 'female', '22', '9216291294', 'jsimran08@gmail.com', 13, '2014-01-12 00:00:00', 'save life'),
(9, 'Naresh', 'female', '21', '8427420291', 'nareshheer719@gmail.com', 17, '2015-01-18 00:00:00', 'save life'),
(10, 'Taran', 'male', '55', '7589325050', 'taran@ymail.com', 14, '2012-01-29 00:00:00', ''),
(11, 'nike jada', 'male', '25', '1234567890', 'ni@yo.com', 17, '2023-01-01 00:00:00', 'I want A+ blood '),
(12, 'Johns', 'male', '32', '1234567890', 'john@noreply.com', 17, '2023-01-01 00:00:00', 'Suffering with Blood disease');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(100) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Missouri'),
(2, 'Kansas ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `typeofuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `pwd`, `typeofuser`) VALUES
('manu', 'manu', 'Admin'),
('neeru', 'neeru', 'General');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  ADD PRIMARY KEY (`bg_id`);

--
-- Indexes for table `camp`
--
ALTER TABLE `camp`
  ADD PRIMARY KEY (`camp_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `donarregistration`
--
ALTER TABLE `donarregistration`
  ADD PRIMARY KEY (`donar_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `requestes`
--
ALTER TABLE `requestes`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  MODIFY `bg_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `camp`
--
ALTER TABLE `camp`
  MODIFY `camp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `donarregistration`
--
ALTER TABLE `donarregistration`
  MODIFY `donar_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donation_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `requestes`
--
ALTER TABLE `requestes`
  MODIFY `req_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
