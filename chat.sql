-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 23, 2020 at 06:55 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user`, `text`, `date`) VALUES
(1, 'Oguz Bozkurt', 'Hello there', '2020-04-22 18:19:26'),
(3, 'Oguz Bozkurt', 'How are you', '2020-04-22 18:51:57'),
(5, 'Oguz Bozkurt', 'ffsdfsdf', '2020-04-22 18:52:13'),
(6, 'Oguz Bozkurt', 'fine and you', '2020-04-22 18:52:22'),
(7, 'Oguz Bozkurt', 'good', '2020-04-22 18:52:29'),
(8, 'Oguz Bozkurt', 'and you', '2020-04-22 18:52:36'),
(9, 'Oguz Bozkurt', 'and youfdsfsdf', '2020-04-22 18:52:44'),
(10, 'Oguz Bozkurt', 'fsdfsd', '2020-04-22 18:53:25'),
(12, 'Oguz Bozkurt', '', '2020-04-22 19:14:27'),
(13, 'Oguz Bozkurt', '', '2020-04-22 19:14:28'),
(14, 'Oguz Bozkurt', '', '2020-04-22 19:14:28'),
(15, 'Oguz Bozkurt', '', '2020-04-22 19:14:28'),
(16, 'Oguz Bozkurt', '', '2020-04-22 19:14:28'),
(17, 'Oguz Bozkurt', '', '2020-04-22 19:14:28'),
(18, 'Oguz Bozkurt', '', '2020-04-22 19:14:29'),
(19, 'Oguz Bozkurt', '', '2020-04-22 19:14:29'),
(20, 'Oguz Bozkurt', '', '2020-04-22 19:14:29'),
(21, 'Oguz Bozkurt', '', '2020-04-22 19:14:29'),
(22, 'Oguz Bozkurt', 'hello there', '2020-04-22 19:21:30'),
(23, 'Oguz Bozkurt', 'what are you doing', '2020-04-22 19:22:29'),
(24, 'Oguz Bozkurt', 'nothing', '2020-04-22 19:22:43'),
(25, 'Oguz Bozkurt', 'how', '2020-04-22 19:23:19'),
(26, 'Oguz Bozkurt', 'are you fine', '2020-04-22 19:24:30'),
(27, 'Oguz Bozkurt', 'just', '2020-04-22 19:26:30'),
(28, 'Oguz Bozkurt', 'how are you', '2020-04-22 19:58:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
