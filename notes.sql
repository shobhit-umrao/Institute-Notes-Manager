-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2019 at 03:10 PM
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
(57, 'demo previer', 'demo', 'pdf', 'user', '2019-04-21 05:14:41', 'Computer Science & Engineering', '578090.pdf', 'approved'),
(58, 'phpp demo', 'ppph demo', 'pdf', 'anirban', '2019-04-21 05:14:35', 'Computer Science & Engineering', '69321.pdf', 'not approved yet'),
(54, 'user title', 'user desc', 'zip', 'student', '2019-04-21 05:14:28', 'Computer Science & Engineering', '848114.zip', 'approved'),
(53, 'demo title ..', 'demo desc...', 'zip', 'user2', '2019-04-21 05:17:21', 'Information Technology', '305047.zip', 'not approved yet'),
(52, 'demo title', 'demo desc......', 'pdf', 'user1', '2019-04-21 05:17:25', 'Information Technology', '845248.pdf', 'approved'),
(51, 'demo 3', 'demo 3 desc....', 'pdf', 'user3', '2019-04-21 05:14:23', 'Computer Science & Engineering', '437056.pdf', 'approved'),
(50, 'demo2', 'demo desc 2...', 'ppt', 'user3', '2019-04-21 05:14:19', 'Computer Science & Engineering', '800920.ppt', 'approved'),
(49, 'demo title', 'demo description', 'docx', 'user3', '2019-04-21 05:14:13', 'Computer Science & Engineering', '502238.docx', 'approved'),
(59, 'hello', 'hello world', 'txt', 'user', '2019-04-21 05:14:10', 'Computer Science & Engineering', '717154.txt', 'approved'),
(60, 'Random Notes', 'Basic', 'txt', 'shobhit', '2019-04-21 05:13:06', 'Computer Science & Engineering', '112074.txt', 'approved');

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
(24, 'user', 'user1', 'N/A', 'teacher', 'user@ndndn.cbbc', '', 'Male', '$2y$10$xtDogq0vYpx/BnUe9Ks.O.mmjoMDJyMw4h/oL7DCy.spKT5UzWJiy', 'Computer Science & Engineering', '775718.png', 'July 19, 2017'),
(29, 'userone', 'user one', 'N/A', 'teacher', 'userone@gmail.com', '', 'Female', '$2y$10$xtDogq0vYpx/BnUe9Ks.O.mmjoMDJyMw4h/oL7DCy.spKT5UzWJiy', 'Computer Science & Engineering', 'profile.jpg', 'April 21, 2019'),
(12, 'root', 'admin root', 'N/A', 'admin', 'root@gmail.com', '', 'N/A', '$2y$10$xtDogq0vYpx/BnUe9Ks.O.mmjoMDJyMw4h/oL7DCy.spKT5UzWJiy', 'Computer Science & Engineering', 'profile.jpg', '2000-01-01'),
(21, 'student', 'student4', 'N/A', 'teacher', 'user4@gmai.com', '', 'Female', '$2y$10$8NTdzG/HXZq5d23o9IqteOY3vWZg75hC99tkuU60/ivcqiQ1sho6.', 'Computer Science & Engineering', 'profile.jpg', 'July 19, 2017'),
(18, 'user1', 'User 1', 'N/A', 'teacher', 'user1@gmail.com', '', 'Male', '$2y$10$LS76ATZ/jRN/M/pDAyfJmOkNI1MpF08T8NzjNcK.MZKpbjkeMKdMC', 'Information Technology', '180812.jpg', 'July 19, 2017'),
(19, 'user2', 'user2', 'i am user', 'student', 'user2@gmail.com', '', 'Female', '$2y$10$OCazXxzd6FM.V2afvmapqOGxVj8Gac3zN.2tlmuO1v1Y3103dqhti', 'Information Technology', 'profile.jpg', 'July 19, 2017'),
(20, 'user3', 'user3', 'N/A', 'teacher', 'user3@gmail.com', '', 'Male', '$2y$10$DEKxq9z1r8sWPSzj2XL7LOlT.cUWZv1EbTGZlrXO2VkiBbIuRfoBu', 'Computer Science & Engineering', 'profile.jpg', 'July 19, 2017'),
(26, 'user6', 'user6', 'N/A', 'teacher', 'user6@gmail.com', '', 'Male', '$2y$10$8OKm1GXZtf4vWTafLHgmjeFls3SvCTWiyXJVhnPr4XOYLeXGOPybW', 'Computer Science & Engineering', '382911.jpg', 'July 22, 2017'),
(27, 'user9', 'hfg gghh', 'N/A', 'teacher', 'ffhhgh@jjdj.vjjv', '', 'Male', '$2y$10$Z1hwjfIGjC8/Zv0NFy/BDO0W.A6K4ZAWLPrW8.himo7YAi0sC7Kjy', 'Computer Science & Engineering', 'profile.jpg', 'July 22, 2017'),
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
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
