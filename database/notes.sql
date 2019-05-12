-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2019 at 09:27 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `file_id` int(11) NOT NULL,
  `file_name` varchar(225) NOT NULL,
  `file_description` text NOT NULL,
  `file_type` varchar(225) NOT NULL,
  `file_uploader` varchar(225) NOT NULL,
  `file_uploaded_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `file_uploaded_to` varchar(225) NOT NULL,
  `file` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL DEFAULT 'not approved yet'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`file_id`, `file_name`, `file_description`, `file_type`, `file_uploader`, `file_uploaded_on`, `file_uploaded_to`, `file`, `status`) VALUES
(65, 'php tutorial five', 'php tutorial in zip', 'zip', 'rajshree', '2019-04-22 04:54:09', 'Information Technology', '551450.zip', 'approved'),
(63, 'php tutorial three', 'php tutorial in ppt', 'ppt', 'userthree', '2019-04-21 14:31:45', 'Information Technology', '61343.ppt', 'approved'),
(61, 'php tutorial one', 'php tutorial in pdf', 'pdf', 'userone', '2019-04-21 14:24:24', 'Computer Science & Engineering', '989822.pdf', 'approved'),
(64, 'php tutorial four', 'php tutorial in zip', 'zip', 'userfour', '2019-04-22 04:45:31', 'Computer Science & Engineering', '892173.zip', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `about` varchar(300) NOT NULL DEFAULT 'N/A',
  `role` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `course` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL DEFAULT 'profile.jpg',
  `joindate` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `about`, `role`, `email`, `token`, `gender`, `password`, `course`, `image`, `joindate`) VALUES
(29, 'userone', 'user one', 'N/A', 'teacher', 'userone@gmail.com', '', 'Female', '$2y$10$xtDogq0vYpx/BnUe9Ks.O.mmjoMDJyMw4h/oL7DCy.spKT5UzWJiy', 'Computer Science & Engineering', 'profile.jpg', 'April 21, 2019'),
(12, 'root', 'admin root', 'N/A', 'admin', 'root@gmail.com', '', 'N/A', '$2y$10$xtDogq0vYpx/BnUe9Ks.O.mmjoMDJyMw4h/oL7DCy.spKT5UzWJiy', 'Computer Science & Engineering', 'profile.jpg', '2000-01-01'),
(36, 'akushwah190', 'Anil Kushwaha', 'N/A', 'teacher', 'akushwah190@gmail.com', '', 'Male', '$2y$10$THd1rioY3hRqGmHx0xtgOO5CnPv5xQtlyKv42rfTvuEfBeTgXxUxi', 'Computer Science & Engineering', 'profile.jpg', 'April 22, 2019'),
(37, 'rajshree', 'Rajshree', 'N/A', 'teacher', 'rajshree2220@gmail.com', '6452c81c621ad820759e20ff56c39f66', 'Female', '$2y$10$29v5rg/4n6ZDNsx.Glkx6.v1PxU7qQXt2eGt6V7JFh3GPkvujawVC', 'Information Technology', 'profile.jpg', 'April 22, 2019'),
(38, 'rajshreegupta2220', 'Rajshree Gupta', 'N/A', 'teacher', 'rajshreegupta2220@gmail.com', '', 'Female', '$2y$10$OXfSG90s05l1AnG0u4nx6eLaQDIVjxJgFGi.PBh2C7voOtH5bKr7C', 'Information Technology', 'profile.jpg', 'April 22, 2019'),
(35, 'userfour', 'userfour', 'N/A', 'teacher', 'userfour@gmail.com', '', 'Male', '$2y$10$XpQdcfhEeUtpoW.cZE0WOueVSQRil8QtwBbE1cx1ziPhjRv.DYTmW', 'Computer Science & Engineering', 'profile.jpg', 'April 22, 2019'),
(33, 'umrao', 'shobhit umrao', 'N/A', 'teacher', 'cs1714.iiitbhopal@gmail.com', '', 'Male', '$2y$10$l2Mq1lsTMalxxVRx.r6mV.8M9nViANlnTUltXdp3gc4mwm1zHiS9y', 'Computer Science & Engineering', 'profile.jpg', 'April 21, 2019'),
(30, 'usertwo', 'usertwo', 'N/A', 'teacher', 'usertwo@gmail.com', '', 'Female', '$2y$10$q3mzTbTlMqmF0BArXedKS.4.ze5wkxcJFNchmhlcVMWoVhhp3sN8S', 'Computer Science & Engineering', 'profile.jpg', 'April 21, 2019'),
(28, 'shobhit', 'Shobhit Umrao', 'N/A', 'admin', 'shobhitumrao5@gmail.com', '', 'Male', '$2y$10$h1aJe/71sOYb7mIddmcT/e6NectStBbDq17fcLmywcHUuLSTsPEJ6', 'Computer Science & Engineering', 'profile.jpg', 'April 21, 2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
