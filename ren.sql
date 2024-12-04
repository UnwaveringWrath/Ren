-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2024 at 06:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ren`
--

-- --------------------------------------------------------

--
-- Table structure for table `arrangements`
--

CREATE TABLE `arrangements` (
  `Arrangmentid` int(50) NOT NULL,
  `ArrName` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL,
  `ColoursAvailable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `cashondelivery`
--

CREATE TABLE `cashondelivery` (
  `Name` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `Phone` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `credit card`
--

CREATE TABLE `credit card` (
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `CreditType` varchar(50) NOT NULL,
  `CCnum` int(8) NOT NULL,
  `VCC` date NOT NULL,
  `Pincode` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `flowers`
--

CREATE TABLE `flowers` (
  `FlowerId` int(50) NOT NULL,
  `FlowerName` varchar(50) NOT NULL,
  `Colors` int(50) NOT NULL,
  `info` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `monthlyflower`
--

CREATE TABLE `monthlyflower` (
  `FlowerName` varchar(255) NOT NULL,
  `Flowerpic` varchar(255) NOT NULL,
  `MonthName` varchar(20) NOT NULL,
  `Fdescription` varchar(500) NOT NULL,
  `FlowerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `monthlyflower`
--

INSERT INTO `monthlyflower` (`FlowerName`, `Flowerpic`, `MonthName`, `Fdescription`, `FlowerID`) VALUES
('Carnation', 'Flowerofthemonthcarnation.jpg', 'January', 'Carnations are known for their ruffled petals and come in various colors. They symbolize love and fascination, making them a popular choice for bouquets. Their long-lasting nature makes them ideal for arrangements.', 1),
('Violet', 'FlowerofthemonthViolet.jpg', 'February', 'Violets are small, delicate flowers that symbolize love and loyalty. They are often associated with the early signs of spring and can be found in shades of purple, blue, and white. Their sweet fragrance adds to their charm.', 2),
('Daffodil', 'Flowerofthemonthdaffodil.webp', 'March', 'Daffodils are bright yellow flowers that herald the arrival of spring. They symbolize renewal and new beginnings. Their trumpet-shaped blooms are a favorite in gardens and symbolize hope and cheerfulness.', 3),
('Cherry Blossom', 'Flowerofthemonthcherryblossom.jpg', 'April', 'Cherry Blossoms are iconic spring flowers known for their stunning pink and white blooms. They symbolize the fleeting nature of life and beauty. These blossoms are celebrated in festivals around the world.', 4),
('Lily of the Valley', 'Flowerofthemonthlilyofthevalley.webp', 'May', 'Lily of the Valley is a fragrant flower that signifies sweetness and humility. Its small, bell-shaped blooms are often used in bouquets for weddings and special occasions. They are also associated with good luck.', 5),
('Rose', 'Flowerofthemonth\rose.webp', 'June', 'Roses are classic flowers that symbolize love and passion. They come in various colors, each with its own meaning. June is often associated with weddings, making roses a popular choice for bridal bouquets.', 6),
('Water Lily', 'Flowerofthemonthwaterlily.webp', 'July', 'Water Lilies are beautiful aquatic flowers that float on the surface of water. They symbolize purity and enlightenment. Their large, vibrant blooms are a favorite in ponds and gardens, attracting admiration.', 7),
('Gladiolus', 'Flowerofthemonthgladiolus.webp', 'August', 'Gladiolus flowers are tall and striking, symbolizing strength and integrity. They bloom in various colors and are often used in floral arrangements. Their name comes from the Latin word for \"sword,\" reflecting their shape.', 8),
('Aster', 'Flowerofthemonthaster.webp', 'September', 'Asters are daisy-like flowers that bloom in the fall. They symbolize love and wisdom. With their vibrant colors, they attract butterflies and are a favorite in autumn gardens.', 9),
('Cosmos', 'Flowerofthemonthcosmosflower.jpg', 'October', 'Cosmos flowers are known for their vibrant colors and delicate petals. They symbolize peace and tranquility. Their easy growth makes them popular in gardens, and they attract pollinators like bees and butterflies.', 10),
('Chrysanthemum', 'Flowerofthemonthchrysanthemum.jpg', 'November', 'Chrysanthemums, or mums, are popular fall flowers that symbolize joy and optimism. They come in various shapes and colors, making them versatile for arrangements. They are often associated with harvest festivals.', 11),
('Poinsettia', 'Flowerofthemonthpoinsettia.jpg', 'December', 'Poinsettias are vibrant red and green plants that symbolize Christmas. They are native to Mexico and are often used in holiday decorations. Their star-shaped leaves add to their festive appeal.', 12);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `UID` int(11) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `weeklydigest` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`UID`, `Fname`, `Lname`, `email`, `weeklydigest`) VALUES
(1, 'Girolamo', 'Riario', 'gigi@example.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD PRIMARY KEY (`Arrangmentid`);

--
-- Indexes for table `cashondelivery`
--
ALTER TABLE `cashondelivery`
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `credit card`
--
ALTER TABLE `credit card`
  ADD UNIQUE KEY `CCnum` (`CCnum`);

--
-- Indexes for table `flowers`
--
ALTER TABLE `flowers`
  ADD PRIMARY KEY (`FlowerId`);

--
-- Indexes for table `monthlyflower`
--
ALTER TABLE `monthlyflower`
  ADD PRIMARY KEY (`FlowerID`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`UID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arrangements`
--
ALTER TABLE `arrangements`
  MODIFY `Arrangmentid` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flowers`
--
ALTER TABLE `flowers`
  MODIFY `FlowerId` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monthlyflower`
--
ALTER TABLE `monthlyflower`
  MODIFY `FlowerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
