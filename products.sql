-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 11, 2024 at 04:40 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `categoryId` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `images` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `categoryId`, `price`, `images`) VALUES
(4, 'iphone', 'good phone', 2, 1500.00, NULL),
(5, 'Iphone 12', 'good phone', 2, 1500.00, ''),
(6, 'Iphone 13', 'good phone', 2, 1500.00, '[\"img.PNG\"]'),
(7, 'Iphone 14', 'good phone', 2, 1500.00, '[\"img.PNG\",\"img.PNG\"]'),
(8, 'Iphone 15', 'good phone', 2, 1500.00, '[\"img.PNG\",\"img.PNG\"]'),
(9, 'Iphone 16', 'good phone', 2, 1500.00, '[\"img.PNG\",\"img.PNG\"]'),
(10, 'Iphone 17', 'good phone', 2, 1500.00, '[\"img.PNG\",\"img.PNG\"]'),
(11, 'Iphone 18', 'good phone', 2, 1500.00, '[\"img.PNG\",\"img.PNG\"]'),
(12, 'Iphone 19', 'good phone', 2, 1500.00, '[\"img.PNG\",\"img.PNG\"]'),
(13, 'Iphone 1', 'good phone', 2, 1500.00, '[\"img.PNG\",\"img.PNG\"]'),
(14, 'Iphone 2', 'good phone', 2, 1500.00, '[\"img.PNG\",\"img.PNG\"]'),
(15, 'Iphone 3', 'good phone', 2, 1500.00, '[\"img.PNG\",\"img.PNG\"]'),
(16, 'iphone20', 'good phone', 2, 1500.00, NULL),
(17, 'iphone21', 'good phone', 2, 1500.00, NULL),
(18, 'Iphone 5', 'good phone', 2, 1500.00, '[\"img.PNG\",\"img.PNG\"]');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
