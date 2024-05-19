-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2024 at 07:18 AM
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
-- Database: `projectmeteor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('Tahsin', '123456');

-- --------------------------------------------------------



-- --------------------------------------------------------

--
-- Table structure for table `busbookings`
--

CREATE TABLE `busbookings` (
  `bookingID` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `cancelled` varchar(50) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `passengers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cabbookings`
--

CREATE TABLE `cabbookings` (
  `bookingID` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `date` varchar(20) NOT NULL,
  `cancelled` varchar(10) NOT NULL,
  `origin` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `carID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cabbookings`
--

INSERT INTO `cabbookings` (`bookingID`, `username`, `date`, `cancelled`, `origin`, `destination`, `carID`) VALUES
(1, 'joydeep', '12-11-2017', 'yes', 'Guwahati', 'Shillong', 2),
(2, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 2),
(3, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 2),
(4, 'joydeep', '12-11-2017', 'yes', 'Guwahati', 'Shillong', 2),
(5, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 3),
(6, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 3),
(7, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 3),
(8, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 3),
(9, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 3),
(10, 'joydeep', '18-12-2017', 'no', 'Guwahati', 'Shillong', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cabdrivers`
--

CREATE TABLE `cabdrivers` (
  `carID` int(5) NOT NULL,
  `carType` varchar(30) NOT NULL,
  `carModel` varchar(30) NOT NULL,
  `carNo` varchar(20) NOT NULL,
  `driverName` varchar(50) NOT NULL,
  `driverPhone` varchar(20) NOT NULL,
  `driverRating` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cabdrivers`
--

INSERT INTO `cabdrivers` (`carID`, `carType`, `carModel`, `carNo`, `driverName`, `driverPhone`, `driverRating`) VALUES
(1, 'Sedan', 'Ciaz', 'AS 01 HC 1234', 'Rakesh Sharma', '+91 2569874587', '4.6'),
(2, 'SUV', 'Vitara Breeza', 'AS 01 BZ 1234', 'Rahul Verma', '+91 2569874587', '4.4'),
(3, 'Hatchback', 'Alto 800', 'AS 01 GC 1234', 'Arun Shah', '+91 2569874587', '4.1'),
(4, 'Sedan', 'Swift Dzire', 'AS 01 AZ 1258', 'Sample Sedan Driver 1', '5879584586', '4.2'),
(5, 'Sedan', 'Xcent', 'AS 01 AZ 1278', 'Sample Sedan Driver 2', '5879584586', '4.2');

-- --------------------------------------------------------

--
-- Table structure for table `cabs`
--

CREATE TABLE `cabs` (
  `id` int(5) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `distance` float NOT NULL,
  `time` int(10) NOT NULL,
  `originCode` varchar(10) NOT NULL,
  `destinationCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cabs`
--

INSERT INTO `cabs` (`id`, `origin`, `destination`, `distance`, `time`, `originCode`, `destinationCode`) VALUES
(1, 'Guwahati', 'Shillong', 95.8, 125, 'GAU', 'SHL');

-- --------------------------------------------------------

--
-- Table structure for table `flightbookings`
--

CREATE TABLE `flightbookings` (
  `bookingID` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `cancelled` varchar(20) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `passengers` int(10) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flight_no` varchar(10) NOT NULL,
  `origin` varchar(25) NOT NULL,
  `destination` varchar(25) NOT NULL,
  `distance` int(10) NOT NULL,
  `fare` float NOT NULL,
  `class` varchar(10) NOT NULL,
  `seats_available` int(5) NOT NULL,
  `departs` varchar(10) NOT NULL,
  `arrives` varchar(10) NOT NULL,
  `operator` varchar(25) NOT NULL,
  `origin_code` varchar(10) NOT NULL,
  `destination_code` varchar(10) NOT NULL,
  `refundable` varchar(20) NOT NULL,
  `noOfBookings` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flight_no`, `origin`, `destination`, `distance`, `fare`, `class`, `seats_available`, `departs`, `arrives`, `operator`, `origin_code`, `destination_code`, `refundable`, `noOfBookings`) VALUES
('CGP-012', 'Chittagong', 'Dhaka', 234, 6000, 'Business', 20, '11:00', '12:30', 'US-Bangla Airlines', 'CGP', 'DAC', 'Refundable', 0),
('CGP-024', 'Chittagong', 'Dhaka', 234, 5500, 'Economy', 80, '19:00', '20:30', 'US-Bangla Airlines', 'CGP', 'DAC', 'Non-Refundable', 0),
('CGP-025', 'Chittagong', 'Dhaka', 234, 7000, 'Business', 15, '22:30', '00:00', 'US-Bangla Airlines', 'CGP', 'DAC', 'Refundable', 0),
('CGP-101', 'Chittagong', 'Dhaka', 234, 4500, 'Economy', 90, '07:30', '09:00', 'US-Bangla Airlines', 'CGP', 'DAC', 'Non-Refundable', 0),
('CGP-103', 'Chittagong', 'Dhaka', 234, 4000, 'Economy', 100, '15:30', '17:00', 'US-Bangla Airlines', 'CGP', 'DAC', 'Non-Refundable', 0),
('CXB-001', 'Coxs Bazar', 'Dhaka', 294, 5500, 'Economy', 80, '09:00', '10:30', 'Novoair', 'CXB', 'DAC', 'Non-Refundable', 0),
('CXB-002', 'Coxs Bazar', 'Dhaka', 294, 7500, 'Business', 10, '13:00', '14:30', 'Novoair', 'CXB', 'DAC', 'Refundable', 0),
('CXB-003', 'Coxs Bazar', 'Dhaka', 294, 4500, 'Economy', 100, '17:00', '18:30', 'Novoair', 'CXB', 'DAC', 'Non-Refundable', 0),
('CXB-004', 'Coxs Bazar', 'Dhaka', 294, 6500, 'Economy', 90, '21:00', '22:30', 'Novoair', 'CXB', 'DAC', 'Non-Refundable', 0),
('CXB-005', 'Coxs Bazar', 'Dhaka', 294, 8000, 'Business', 8, '23:00', '00:30', 'Novoair', 'CXB', 'DAC', 'Refundable', 0),
('CXB-011', 'Coxs Bazar', 'Dhaka', 294, 5500, 'Economy', 80, '09:00', '10:30', 'Novoair', 'CXB', 'DAC', 'Non-Refundable', 0),
('CXB-012', 'Coxs Bazar', 'Dhaka', 294, 7500, 'Business', 10, '13:00', '14:30', 'Novoair', 'CXB', 'DAC', 'Refundable', 0),
('CXB-013', 'Coxs Bazar', 'Dhaka', 294, 4500, 'Economy', 100, '17:00', '18:30', 'Novoair', 'CXB', 'DAC', 'Non-Refundable', 0),
('CXB-014', 'Coxs Bazar', 'Dhaka', 294, 6500, 'Economy', 90, '21:00', '22:30', 'Novoair', 'CXB', 'DAC', 'Non-Refundable', 0),
('CXB-105', 'Coxs Bazar', 'Dhaka', 294, 8000, 'Business', 8, '23:00', '00:30', 'Novoair', 'CXB', 'DAC', 'Refundable', 0),
('DAC-011', 'Dhaka', 'Chittagong', 234, 5000, 'Economy', 120, '08:00', '09:30', 'Biman Bangladesh Airlines', 'DAC', 'CGP', 'Non-Refundable', 0),
('DAC-013', 'Dhaka', 'Chittagong', 234, 4500, 'Economy', 150, '15:30', '17:00', 'Biman Bangladesh Airlines', 'DAC', 'CGP', 'Non-Refundable', 0),
('DAC-015', 'Dhaka', 'Chittagong', 234, 7500, 'Business', 30, '21:00', '22:30', 'Biman Bangladesh Airlines', 'DAC', 'CGP', 'Refundable', 0),
('DAC-022', 'Dhaka', 'Chittagong', 234, 6500, 'Business', 25, '12:00', '13:30', 'Biman Bangladesh Airlines', 'DAC', 'CGP', 'Refundable', 0),
('DAC-034', 'Dhaka', 'Chittagong', 234, 6000, 'Economy', 130, '18:00', '19:30', 'Biman Bangladesh Airlines', 'DAC', 'CGP', 'Non-Refundable', 0),
('DHK-001', 'Dhaka', 'Chittagong', 234, 5000, 'Economy', 120, '08:00', '09:30', 'Biman Bangladesh Airlines', 'DAC', 'CGP', 'Non-Refundable', 0),
('DHK-002', 'Dhaka', 'Chittagong', 234, 6000, 'Business', 20, '12:00', '13:30', 'Biman Bangladesh Airlines', 'DAC', 'CGP', 'Refundable', 0),
('DHK-003', 'Dhaka', 'Chittagong', 234, 4000, 'Economy', 150, '15:30', '17:00', 'Biman Bangladesh Airlines', 'DAC', 'CGP', 'Non-Refundable', 0),
('DHK-004', 'Dhaka', 'Chittagong', 234, 5500, 'Economy', 100, '18:00', '19:30', 'Biman Bangladesh Airlines', 'DAC', 'CGP', 'Non-Refundable', 0),
('DHK-005', 'Dhaka', 'Chittagong', 234, 7000, 'Business', 15, '21:00', '22:30', 'Biman Bangladesh Airlines', 'DAC', 'CGP', 'Refundable', 0),
('RAJ-001', 'Rajshahi', 'Dhaka', 250, 4500, 'Economy', 70, '08:30', '09:45', 'US-Bangla Airlines', 'RAJ', 'DAC', 'Non-Refundable', 0),
('RAJ-002', 'Rajshahi', 'Dhaka', 250, 6500, 'Business', 15, '12:00', '13:15', 'US-Bangla Airlines', 'RAJ', 'DAC', 'Refundable', 0),
('RAJ-003', 'Rajshahi', 'Dhaka', 250, 4000, 'Economy', 90, '16:30', '17:45', 'US-Bangla Airlines', 'RAJ', 'DAC', 'Non-Refundable', 0),
('RAJ-004', 'Rajshahi', 'Dhaka', 250, 6000, 'Economy', 80, '20:00', '21:15', 'US-Bangla Airlines', 'RAJ', 'DAC', 'Non-Refundable', 0),
('RAJ-005', 'Rajshahi', 'Dhaka', 250, 7000, 'Business', 10, '23:30', '00:45', 'US-Bangla Airlines', 'RAJ', 'DAC', 'Refundable', 0),
('RAJ-013', 'Rajshahi', 'Dhaka', 250, 4000, 'Economy', 90, '16:30', '17:45', 'US-Bangla Airlines', 'RAJ', 'DAC', 'Non-Refundable', 0),
('RAJ-014', 'Rajshahi', 'Dhaka', 250, 6000, 'Economy', 80, '20:00', '21:15', 'US-Bangla Airlines', 'RAJ', 'DAC', 'Non-Refundable', 0),
('RAJ-015', 'Rajshahi', 'Dhaka', 250, 7000, 'Business', 10, '23:30', '00:45', 'US-Bangla Airlines', 'RAJ', 'DAC', 'Refundable', 0),
('RAJ-022', 'Rajshahi', 'Dhaka', 250, 6500, 'Business', 15, '12:00', '13:15', 'US-Bangla Airlines', 'RAJ', 'DAC', 'Refundable', 0),
('RAJ-101', 'Rajshahi', 'Dhaka', 250, 4500, 'Economy', 70, '08:30', '09:45', 'US-Bangla Airlines', 'RAJ', 'DAC', 'Non-Refundable', 0),
('SYL-001', 'Sylhet', 'Dhaka', 272, 4000, 'Economy', 100, '08:15', '09:45', 'Biman Bangladesh Airlines', 'ZYL', 'DAC', 'Non-Refundable', 0),
('SYL-002', 'Sylhet', 'Dhaka', 272, 5500, 'Business', 20, '12:00', '13:30', 'Biman Bangladesh Airlines', 'ZYL', 'DAC', 'Refundable', 0),
('SYL-003', 'Sylhet', 'Dhaka', 272, 3500, 'Economy', 120, '16:00', '17:30', 'Biman Bangladesh Airlines', 'ZYL', 'DAC', 'Non-Refundable', 0),
('SYL-004', 'Sylhet', 'Dhaka', 272, 5000, 'Economy', 90, '20:00', '21:30', 'Biman Bangladesh Airlines', 'ZYL', 'DAC', 'Non-Refundable', 0),
('SYL-005', 'Sylhet', 'Dhaka', 272, 6000, 'Business', 15, '23:00', '00:30', 'Biman Bangladesh Airlines', 'ZYL', 'DAC', 'Refundable', 0),
('SYL-011', 'Sylhet', 'Dhaka', 272, 4000, 'Economy', 100, '08:15', '09:45', 'Biman Bangladesh Airlines', 'ZYL', 'DAC', 'Non-Refundable', 0),
('SYL-012', 'Sylhet', 'Dhaka', 272, 5500, 'Business', 20, '12:00', '13:30', 'Biman Bangladesh Airlines', 'ZYL', 'DAC', 'Refundable', 0),
('SYL-014', 'Sylhet', 'Dhaka', 272, 5000, 'Economy', 90, '20:00', '21:30', 'Biman Bangladesh Airlines', 'ZYL', 'DAC', 'Non-Refundable', 0),
('SYL-015', 'Sylhet', 'Dhaka', 272, 6000, 'Business', 15, '23:00', '00:30', 'Biman Bangladesh Airlines', 'ZYL', 'DAC', 'Refundable', 0),
('SYL-103', 'Sylhet', 'Dhaka', 272, 3500, 'Economy', 120, '16:00', '17:30', 'Biman Bangladesh Airlines', 'ZYL', 'DAC', 'Non-Refundable', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hotelbookings`
--

CREATE TABLE `hotelbookings` (
  `bookingID` int(10) NOT NULL,
  `hotelName` varchar(50) NOT NULL,
  `date` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `cancelled` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hotelbookings`
--

INSERT INTO `hotelbookings` (`bookingID`, `hotelName`, `date`, `username`, `cancelled`) VALUES
(44, 'Dhaka Palace, Gulshan, Dhaka', '16-05-2024', 'rabbi', 'no'),
(45, 'Dhaka Palace, Gulshan, Dhaka', '16-05-2024', 'rabbi', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotelID` int(10) NOT NULL,
  `hotelName` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `locality` varchar(50) NOT NULL,
  `stars` int(5) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `hotelDesc` varchar(1000) NOT NULL,
  `checkIn` varchar(6) NOT NULL,
  `checkOut` varchar(6) NOT NULL,
  `price` int(10) NOT NULL,
  `roomsAvailable` int(5) NOT NULL,
  `wifi` varchar(5) NOT NULL,
  `swimmingPool` varchar(5) NOT NULL,
  `parking` varchar(5) NOT NULL,
  `restaurant` varchar(5) NOT NULL,
  `laundry` varchar(5) NOT NULL,
  `cafe` varchar(5) NOT NULL,
  `mainImage` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotelID`, `hotelName`, `city`, `locality`, `stars`, `rating`, `hotelDesc`, `checkIn`, `checkOut`, `price`, `roomsAvailable`, `wifi`, `swimmingPool`, `parking`, `restaurant`, `laundry`, `cafe`, `mainImage`) VALUES
(1, 'Dhaka Palace', 'Dhaka', 'Gulshan', 4, '4.2', 'A luxurious hotel in the heart of Dhaka', '02:00 ', '12:00 ', 15000, 50, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/245273402.jpg?k=73f98537fbf535e32873ec789b7163eac513fb056c0f8afe19ccb94bbb0fae42&o=&hp=1'),
(2, 'Royal Residency', 'Dhaka', 'Banani', 3, '3.9', 'Comfortable stay in Banani area', '03:00 ', '11:00 ', 12000, 40, 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'https://images.trvl-media.com/lodging/12000000/11260000/11251800/11251754/f46a76fb.jpg?impolicy=resizecrop&rw=575&rh=575&ra=fill'),
(3, 'Grand Dhaka', 'Dhaka', 'Motijheel', 5, '4.7', 'Unmatched luxury in Motijheel', '02:30 ', '01:00 ', 20000, 60, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXPjelxDf2wL_s1ZpnaQGovJDWzuShWD0YkHtjof3NLA&s'),
(4, 'Golden Tower', 'Dhaka', 'Mohakhali', 4, '4.3', 'Luxury with a touch of elegance in Mohakhali', '01:00 ', '10:00 ', 18000, 55, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/473832409.jpg?k=17ef35787f3c60b38bbb73c6fd0c0f7c2fe5c42803efccdea42d43456dff3943&o=&hp=1'),
(5, 'Skyview Inn', 'Dhaka', 'Uttara', 3, '3.5', 'Panoramic views and cozy rooms in Uttara', '12:00 ', '11:00 ', 14000, 45, 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9piPESvY3FgmgZ1jKnxuBa3yjWsh1QrY6l6SMCQEDSA&s'),
(6, 'Chittagong Marina', 'Chittagong', 'Foy\'s Lake', 3, '3.8', 'Overlooking Foy\'s Lake, a serene stay in Chittagong', '03:00 ', '11:00 ', 10000, 40, 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/52712738.jpg?k=6d831a22ec257ef11e115d71c3e3fc98343803a77fc818723ff2935bdc29d8dd&o=&hp=1'),
(7, 'Ocean Pearl', 'Chittagong', 'CDA Avenue', 4, '4.1', 'Modern amenities and comfortable rooms in CDA Avenue', '02:00 ', '12:00 ', 16000, 50, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc6JIz3lNXMhaO1O4h6e4JWV24340N-u1RUFJkJO7BQg&s'),
(8, 'Silver Sands', 'Chittagong', 'Agrabad', 3, '3.6', 'Affordable luxury in the heart of Agrabad', '01:00 ', '10:00 ', 12000, 45, 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/448150722.jpg?k=93d65964e22737a5af53fb24a589225c6e9e187aa6f2ff4455cd965e2f618551&o=&hp=1'),
(9, 'Green Haven', 'Chittagong', 'GEC Circle', 2, '3.0', 'Tranquil retreat near GEC Circle', '02:30 ', '01:00 ', 8000, 30, 'yes', 'no', 'yes', 'no', 'yes', 'no', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThRao6Y3zpq5-qA5GEl0XzdqRKqLKnTzTJ-UrcVnqd9g&s'),
(10, 'Blue Bay', 'Chittagong', 'Khulshi', 4, '4.0', 'Contemporary elegance in Khulshi area', '12:00 ', '11:00 ', 14000, 40, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/58795754.jpg?k=04f8d46103951a38a8726d716f2d7f1df625a92123df189432146e335a4262ab&o=&hp=1'),
(11, 'Barisal Grand', 'Barisal', 'Sadarghat', 2, '3.0', 'Affordable accommodation in the heart of Barisal', '01:00 ', '10:00 ', 8000, 30, 'yes', 'no', 'yes', 'no', 'yes', 'no', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwYBb84Dd3u1KfkFMWziq4TuIe5lO_Ta9dawpD5hhQfg&s'),
(12, 'Riverside Retreat', 'Barisal', 'Kirtipasha', 3, '3.5', 'Tranquility by the river in Kirtipasha', '02:30 ', '01:00 ', 10000, 35, 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsyfpdn77GRCXsDaVUq3Y4pRJAZQAzoQFvwCNZ_1MWCw&s'),
(13, 'Green Leaf', 'Barisal', 'Natun Bazar', 2, '3.1', 'Simple and comfortable stay in Natun Bazar', '03:00 ', '11:00 ', 7500, 25, 'yes', 'no', 'yes', 'no', 'yes', 'no', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/93/bb/1e/greenleaf-hotel-gensan.jpg?w=700&h=-1&s=1'),
(14, 'Sunset View', 'Barisal', 'Bibichini', 3, '3.7', 'Breathtaking sunset views from Bibichini area', '02:00 ', '12:00 ', 9000, 30, 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/230275216.jpg?k=4c3b353bc4ecd63cabf62ba75ded5fa0367ba1a664e1be3dd91de8a48d474e3c&o=&hp=1'),
(15, 'Palm Paradise', 'Barisal', 'Rupatali', 4, '4.2', 'An oasis of luxury in Rupatali', '01:30 ', '11:30 ', 12000, 40, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsQy3M8jM7CtrRyL6cIkBPoMSb7pw2-61DvE5mBacS3A&s'),
(16, 'Khulna Regency', 'Khulna', 'Shib Bari More', 5, '4.5', 'Luxury redefined with Khulna Regency', '02:30 ', '01:00 ', 20000, 60, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/3d/1f/60/hotel-castle-salam.jpg?w=1200&h=-1&s=1'),
(17, 'City Tower', 'Khulna', 'Shibpur', 3, '3.8', 'Convenient stay in Shibpur area', '01:00 ', '10:00 ', 14000, 45, 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/497184762.jpg?k=e84e6dc76d61192fd8d591afb6e84d7f0a6db69219843d170936eb7c8cb9a352&o=&hp=1'),
(18, 'Rajshahi Serene', 'Rajshahi', 'Boalia', 3, '3.7', 'Tranquil accommodation in the historic city of Rajshahi', '12:00 ', '11:00 ', 12000, 45, 'yes', 'no', 'yes', 'yes', 'no', 'no', 'https://www.rajshahiexpress.com/wp-content/uploads/2023/03/Grand_River_View_Hotel-1024x683.jpg'),
(19, 'Rajshahi Regal', 'Rajshahi', 'Laxmipur', 4, '4.2', 'Regal experience in the heart of Laxmipur', '01:30 ', '12:30 ', 15000, 50, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'https://r2imghtlak.ibcdn.com/r2-mmt-htl-image/htl-imgs/200708061555577705-f1582324ceb611ec9e6a0a58a9feac02.jpg?downsize=634:357'),
(20, 'Sylhet Heights', 'Sylhet', 'Lamabazar', 4, '4.0', 'Elevate your stay with Sylhet Heights', '02:00 ', '12:00 ', 18000, 55, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxV71GTUJvfXFbn4jUzzNlJlUr2Tl2OdXDa3Yc4ROd1A&s'),
(21, 'Sylhet Grandeur', 'Sylhet', 'Zinda Bazar', 3, '3.8', 'Grandeur and comfort in the heart of Zinda Bazar', '01:00 ', '11:00 ', 14000, 45, 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/4b/83/96/inside-view-of-suit-room.jpg?w=300&h=200&s=1'),
(22, 'Sylhet Palace', 'Sylhet', 'Amberkhana', 5, '4.9', 'Palatial luxury in Amberkhana', '02:30 ', '01:30 ', 25000, 70, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkI-t_wJ0ZwZICqB3niv4HEZnDRHUtJ6Gdmp0uFqWXMQ&s');

-- --------------------------------------------------------

--
-- Table structure for table `trainbookings`
--

CREATE TABLE `trainbookings` (
  `bookingID` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` varchar(60) NOT NULL,
  `cancelled` varchar(20) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `passengers` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `trainbookings`
--

INSERT INTO `trainbookings` (`bookingID`, `username`, `date`, `cancelled`, `origin`, `destination`, `passengers`) VALUES
(13, 'rabbi', '16-05-2024', 'no', 'Sylhet', 'Dhaka', 5),
(14, 'rabbi', '16-05-2024', 'yes', 'Chittagong', 'Dhaka', 2);

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `trainNo` int(10) NOT NULL,
  `region` varchar(10) NOT NULL,
  `returnTrainNo` int(10) NOT NULL,
  `trainName` varchar(100) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `originCode` varchar(20) NOT NULL,
  `destinationCode` varchar(20) NOT NULL,
  `originTime` varchar(20) NOT NULL,
  `destinationTime` varchar(20) NOT NULL,
  `originPlatform` varchar(10) NOT NULL,
  `destinationPlatform` varchar(10) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `classes` varchar(50) NOT NULL,
  `seats1AC` int(10) NOT NULL,
  `seats2AC` int(10) NOT NULL,
  `seats3AC` int(10) NOT NULL,
  `seatsSL` int(10) NOT NULL,
  `seatsChairCar` int(10) NOT NULL,
  `seatsChairCarAC` int(10) NOT NULL,
  `price1AC` varchar(20) NOT NULL,
  `price2AC` varchar(20) NOT NULL,
  `price3AC` varchar(20) NOT NULL,
  `priceSL` varchar(20) NOT NULL,
  `priceChairCar` varchar(20) NOT NULL,
  `priceChairCarAC` varchar(20) NOT NULL,
  `runsOn` varchar(50) NOT NULL,
  `noOfBookings` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`trainNo`, `region`, `returnTrainNo`, `trainName`, `origin`, `destination`, `originCode`, `destinationCode`, `originTime`, `destinationTime`, `originPlatform`, `destinationPlatform`, `duration`, `classes`, `seats1AC`, `seats2AC`, `seats3AC`, `seatsSL`, `seatsChairCar`, `seatsChairCarAC`, `price1AC`, `price2AC`, `price3AC`, `priceSL`, `priceChairCar`, `priceChairCarAC`, `runsOn`, `noOfBookings`) VALUES
(10007, 'BD', 10008, 'Mohanagar Godhuli', 'Dhaka', 'Chittagong', 'DAC', 'CGP', '06:30', '13:00', '3', '8', '6h 30m', '1AC,2AC,3AC,SL', 10, 20, 30, 50, 0, 0, '3400', '2900', '2400', '1300', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 42),
(10008, 'BD', 10007, 'Mohanagar Provati', 'Chittagong', 'Dhaka', 'CGP', 'DAC', '08:30', '15:00', '1', '6', '6h 30m', '1AC,2AC,3AC,SL', 10, 25, 35, 45, 0, 0, '3300', '2800', '2300', '1200', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 38),
(10009, 'BD', 10010, 'Rangpur Express', 'Dhaka', 'Rangpur', 'DAC', 'RNP', '08:15', '18:30', '2', '5', '10h 15m', '1AC,2AC,3AC,SL', 8, 12, 18, 40, 0, 0, '3500', '3000', '2500', '1400', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 29),
(10010, 'BD', 10009, 'Rangpur Express', 'Rangpur', 'Dhaka', 'RNP', 'DAC', '06:30', '16:45', '3', '7', '10h 15m', '1AC,2AC,3AC,SL', 9, 14, 20, 38, 0, 0, '3600', '3100', '2600', '1500', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 33),
(10011, 'BD', 10012, 'Parabat Express', 'Dhaka', 'Sylhet', 'DAC', 'ZYL', '07:00', '15:30', '4', '8', '8h 30m', '1AC,2AC,3AC,SL', 15, 25, 35, 55, 0, 0, '3800', '3300', '2800', '1700', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 41),
(10012, 'BD', 10011, 'Parabat Express', 'Sylhet', 'Dhaka', 'ZYL', 'DAC', '07:30', '16:00', '1', '7', '8h 30m', '1AC,2AC,3AC,SL', 13, 28, 38, 50, 0, 0, '3900', '3400', '2900', '1800', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 42),
(10013, 'BD', 10014, 'Silk City Express', 'Dhaka', 'Rajshahi', 'DAC', 'RAJ', '08:00', '15:30', '2', '5', '7h 30m', '1AC,2AC,3AC,SL', 10, 20, 25, 45, 0, 0, '3200', '2700', '2200', '1100', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 30),
(10014, 'BD', 10013, 'Silk City Express', 'Rajshahi', 'Dhaka', 'RAJ', 'DAC', '14:00', '21:30', '1', '6', '7h 30m', '1AC,2AC,3AC,SL', 12, 22, 27, 42, 0, 0, '3100', '2600', '2100', '1000', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 34),
(10015, 'BD', 10016, 'Tista Express', 'Dhaka', 'Dewanganj', 'DAC', 'DWG', '07:30', '12:00', '3', '8', '4h 30m', '1AC,2AC,3AC,SL', 10, 20, 30, 55, 0, 0, '3000', '2500', '2000', '1200', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 38),
(10017, 'BD', 10018, 'Udayan Express', 'Dhaka', 'Sylhet', 'DAC', 'ZYL', '17:30', '02:00', '4', '8', '8h 30m', '1AC,2AC,3AC,SL', 15, 25, 35, 55, 0, 0, '3800', '3300', '2800', '1700', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 41),
(10018, 'BD', 10017, 'Udayan Express', 'Sylhet', 'Dhaka', 'ZYL', 'DAC', '17:30', '02:00', '1', '7', '8h 30m', '1AC,2AC,3AC,SL', 18, 28, 38, 50, 0, 0, '3900', '3400', '2900', '1800', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 37),
(10019, 'BD', 10020, 'Sundarban Express', 'Dhaka', 'Khulna', 'DAC', 'KLN', '06:20', '16:00', '3', '7', '9h 40m', '1AC,2AC,3AC,SL', 12, 22, 32, 45, 0, 0, '3600', '3100', '2600', '1500', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 33),
(10020, 'BD', 10019, 'Sundarban Express', 'Khulna', 'Dhaka', 'KLN', 'DAC', '06:20', '16:00', '2', '5', '9h 40m', '1AC,2AC,3AC,SL', 10, 20, 30, 55, 0, 0, '3700', '3200', '2700', '1600', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 29),
(10021, 'BD', 10022, 'Meghna Express', 'Dhaka', 'Chittagong', 'DAC', 'CGP', '10:00', '19:00', '4', '9', '9h 00m', '1AC,2AC,3AC,SL', 15, 25, 35, 50, 0, 0, '3800', '3300', '2800', '1700', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 36),
(10022, 'BD', 10021, 'Meghna Express', 'Chittagong', 'Dhaka', 'CGP', 'DAC', '10:00', '19:00', '1', '6', '9h 00m', '1AC,2AC,3AC,SL', 18, 28, 38, 45, 0, 0, '3900', '3400', '2900', '1800', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 41),
(10023, 'BD', 10024, 'Lalmoni Express', 'Dhaka', 'Lalmonirhat', 'DAC', 'LAL', '21:45', '08:45', '3', '7', '11h 00m', '1AC,2AC,3AC,SL', 10, 20, 30, 55, 0, 0, '3500', '3000', '2500', '1400', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 33),
(10024, 'BD', 10023, 'Lalmoni Express', 'Lalmonirhat', 'Dhaka', 'LAL', 'DAC', '21:45', '08:45', '2', '5', '11h 00m', '1AC,2AC,3AC,SL', 12, 22, 32, 48, 0, 0, '3600', '3100', '2600', '1500', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 28),
(10025, 'BD', 10026, 'Nilsagar Express', 'Dhaka', 'Nilphamari', 'DAC', 'NLP', '08:00', '17:00', '3', '8', '9h 00m', '1AC,2AC,3AC,SL', 15, 25, 35, 50, 0, 0, '3700', '3200', '2700', '1600', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 29);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(10) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `EMail` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `AddressLine1` varchar(50) NOT NULL,
  `AddressLine2` varchar(50) NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL,
  `Date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `FullName`, `EMail`, `Phone`, `Username`, `Password`, `AddressLine1`, `AddressLine2`, `City`, `State`, `Date`) VALUES
(19, 'Fajlay Rabbi', 'sheikhshovono6@gmail.com', '0177605245', 'rabbi', '$2a$08$63spTRJZfgL26gc00k4gi.EJTSuMWSdkhViK46gn.9GCmA0UBRlou', 'Rampura', 'Badda', 'Dhaka', 'Dhaka', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`busID`);

--
-- Indexes for table `busbookings`
--
ALTER TABLE `busbookings`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `cabbookings`
--
ALTER TABLE `cabbookings`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `cabdrivers`
--
ALTER TABLE `cabdrivers`
  ADD PRIMARY KEY (`carID`);

--
-- Indexes for table `cabs`
--
ALTER TABLE `cabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flightbookings`
--
ALTER TABLE `flightbookings`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_no`);

--
-- Indexes for table `hotelbookings`
--
ALTER TABLE `hotelbookings`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotelID`);

--
-- Indexes for table `trainbookings`
--
ALTER TABLE `trainbookings`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`trainNo`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `busbookings`
--
ALTER TABLE `busbookings`
  MODIFY `bookingID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `cabbookings`
--
ALTER TABLE `cabbookings`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cabdrivers`
--
ALTER TABLE `cabdrivers`
  MODIFY `carID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cabs`
--
ALTER TABLE `cabs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flightbookings`
--
ALTER TABLE `flightbookings`
  MODIFY `bookingID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `hotelbookings`
--
ALTER TABLE `hotelbookings`
  MODIFY `bookingID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotelID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `trainbookings`
--
ALTER TABLE `trainbookings`
  MODIFY `bookingID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
