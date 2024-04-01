-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 01, 2024 at 08:51 PM
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
  `role` text NOT NULL,
  `uuid` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `name`, `image_url`, `role`, `uuid`) VALUES
(1, 'Pheonix', 'pheonix-portrait.png', 'Duelist', 'eb93336a-449b-9c1b-0a54-a891f7921d69'),
(2, 'Sage', 'sage-portrait.png', 'Sentinel', '569fdd95-4d10-43ab-ca70-79becc718b46'),
(4, 'Viper', 'viper-portrait.png', 'Controller', '707eab51-4836-f488-046a-cda6bf494859'),
(5, 'Brimstone', 'brimstone-portrait.png', 'Controller', '9f0d8ba9-4140-b941-57d3-a7ad57c6b417'),
(6, 'Cypher', 'cypher-portrait.png', 'Sentinel', '117ed9e3-49f3-6512-3ccf-0cada7e3823b'),
(7, 'Reyna', 'reyna-portrait.png', 'Duelist', 'a3bfb853-43b2-7238-a4f1-ad90e9e46bcc'),
(8, 'Killjoy', 'killjoy-portrait.png', 'Sentinel', '1e58de9c-4950-5125-93e9-a0aee9f98746'),
(9, 'Breach', 'breach-portrait.png', 'Initiator', '5f8d3a7f-467b-97f3-062c-13acf203c006'),
(10, 'Omen', 'omen-portrait.png', 'Controller', '8e253930-4c05-31dd-1b6c-968525494517'),
(11, 'Jett', 'jett-portrait.png', 'Duelist', 'add6443a-41bd-e414-f6ad-e58d267f4e95'),
(12, 'Raze', 'raze-portrait.png', 'Duelist', 'f94c3b30-42be-e959-889c-5aa313dba261'),
(13, 'Skye', 'skye-portrait.png', 'Initiator', '6f2a04ca-43e0-be17-7f36-b3908627744d'),
(14, 'Yoru', 'yoru-portrait.png', 'Duelist', '7f94d92c-4234-0a36-9646-3a87eb8b5c89'),
(15, 'Astra', 'astra-portrait.png', 'Controller', '41fb69c1-4189-7b37-f117-bcaf1e96f1bf');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
