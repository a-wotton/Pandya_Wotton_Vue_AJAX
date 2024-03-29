-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 29, 2024 at 06:39 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pw_vue_ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `image_url` text NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `name`, `image_url`, `role`) VALUES
(1, 'Pheonix', 'pheonix-portrait.png', 'Duelist'),
(2, 'Sage', 'sage-portrait.png', 'Sentinel'),
(3, 'Sova', 'sova-portrait.png', 'Initiator'),
(4, 'Viper', 'viper-portrait.png', 'Controller'),
(5, 'Brimstone', 'brimstone-portrait.png', 'Controller'),
(6, 'Cypher', 'cypher-portrait.png', 'Sentinel'),
(7, 'Reyna', 'reyna-portrait.png', 'Duelist'),
(8, 'Killjoy', 'killjoy-portrait.png', 'Sentinel'),
(9, 'Breach', 'breach-portrait.png', 'Initiator'),
(10, 'Omen', 'omen-portrait.png', 'Controller'),
(11, 'Jett', 'jett-portrait.png', 'Duelist'),
(12, 'Raze', 'raze-portrait.png', 'Duelist'),
(13, 'Skye', 'skye-portrait.png', 'Initiator'),
(14, 'Yoru', 'yoru-portrait.png', 'Duelist'),
(15, 'Astra', 'astra-portrait.png', 'Controller');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
