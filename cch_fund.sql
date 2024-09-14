-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2024 at 08:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cch_fund`
--

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `goal` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `title`, `description`, `goal`, `created_at`) VALUES
(1, 'First project', 'this is the my first project related to the reactjs. ', '1', '2024-09-13 07:07:36'),
(2, '2nd project', 'this is the project related to the dynamic website.', '55', '2024-09-13 11:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `project_posts`
--

CREATE TABLE `project_posts` (
  `id` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `project_id` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_posts`
--

INSERT INTO `project_posts` (`id`, `title`, `description`, `project_id`, `created_at`) VALUES
(1, 'first post', 'This Bootstrap Free 404 Error Page Template is a pre-designed and readily available web page template tailored explicitly for handling 404 error pages within an admin dashboard or website.', '2', '2024-09-13 12:11:01'),
(2, 'Demo', 'This Bootstrap Free 404 Error Page Template is a pre-designed and readily available web page template tailored explicitly for handling 404 error pages within an admin dashboard or website.', '1', '2024-09-13 12:12:47'),
(3, '3rd titlte', 'This Bootstrap Free 404 Error Page Template is a pre-designed and readily available web page template tailored explicitly for handling 404 error pages within an admin dashboard or website.', '2', '2024-09-13 12:14:09'),
(4, 'kingKOng', 'This Bootstrap Free 404 Error Page Template is a pre-designed and readily available web page template tailored explicitly for handling 404 error pages within an admin dashboard or website.', '2', '2024-09-14 05:08:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'ali', 'ali@gmail.com', '12345678', '2024-09-13 06:56:17'),
(2, 'hamza faruki', 'mh2603391@gmail.com', '123123123', '2024-09-13 07:15:50'),
(3, 'sda', 'mh2603391@gmail.com', 'Q3E121', '2024-09-13 07:20:05'),
(4, 'sfas', 'sd@gmail.com', '2892382', '2024-09-13 07:27:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_posts`
--
ALTER TABLE `project_posts`
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
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_posts`
--
ALTER TABLE `project_posts`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
