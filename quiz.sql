-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2021 at 09:38 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

--
-- Dumping data for table `cancelledorders`
--

INSERT INTO `cancelledorders` (`orderid`, `name`, `email`, `cancellationdate`) VALUES
(5, 'Barbara Jones', 'barbarajones@hotmail.com', '2021-11-07');

--
-- Dumping data for table `credit`
--

INSERT INTO `credit` (`orderid`, `name`, `email`, `giftwrapping`, `credit`) VALUES
(4, 'Linda Willians', 'lindawillians@yahoo.com', 0, 1.5),
(5, 'Barbara Jones', 'barbarajones@hotmail.com', 1, 0),
(6, 'Jennifer Davis', 'jennifer.davis@gmail.com', 0, 1.5);

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `name`, `email`, `total`, `giftwrapping`, `status`) VALUES
(1, 'Mary Smith', 'mary.smth@gmail.com', 100, 1, 'not shipped'),
(2, 'Patricia Johnson', 'pjohnson@yahoo.com', 170, 0, 'shipped'),
(3, 'Elizabeth Johnson', 'elizabethjohnson@aol.com', 106.25, 0, 'shipped'),
(4, 'Linda Willians', 'lindawillians@yahoo.com', 75, 0, 'shipped'),
(6, 'Jennifer Davis', 'jennifer.davis@gmail.com', 80, 0, 'not shipped');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
