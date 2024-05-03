-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2024 at 01:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_space`
--

-- --------------------------------------------------------

--
-- Table structure for table `lodging`
--

CREATE TABLE `lodging` (
  `lodging` varchar(25) NOT NULL,
  `longname` varchar(50) DEFAULT NULL,
  `manager` varchar(25) DEFAULT NULL,
  `address` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lodging`
--

INSERT INTO `lodging` (`lodging`, `longname`, `manager`, `address`) VALUES
('CRANMER', 'CRANMER RETREAT HOUSE', 'THOM CRANMER', 'HILL ST, BERKELEY'),
('MATTS', 'MATTS LONG BUNK HOUSE', 'ROLAND BRANDT', '3 MILE RD, KEENE'),
('MULLERS', 'MULLERS COED LODGING', 'KEN MULLER', '120 MAIN, EDMESTON'),
('PAPA KING', 'PAPA KING ROOMING', 'WILLIAM KING', '127 MAIN, EDMESTON'),
('ROSE HILL', 'ROSE HILL FOR MEN', 'JOHN PELETIER', 'RFD 3, N. EDMESTON'),
('WEITBROCHT', 'WEITBROCHT ROOMING', 'EUNICE BENSON', '320 GENEVA, KEENE');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `skill` varchar(25) NOT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`skill`, `description`) VALUES
('COMBINE DRIVER', 'DRIVER HARNESS,DRIVE,GROOM HORSES, ADJUST BLADES'),
('DISCUS', 'HARNESS, DRIVE, GROOM HORSES, BLADE DEPTH'),
('GRAVE DIGGER', 'MARK AND CUT SOD, DIG, SHORE, FILL, RESOD'),
('SMITHY', 'STACK FOR HIRE, RUN BELLOWS, CUT, SHOE HORSES'),
('WOODCUTTER', 'MARK AND FELL TREES, SPLIT, STACK, HAUL'),
('WORK', 'GENERAL UNSKILLED LABOR');

-- --------------------------------------------------------

--
-- Table structure for table `test1`
--

CREATE TABLE `test1` (
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `phone` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test1`
--

INSERT INTO `test1` (`name`, `address`, `phone`) VALUES
('Joe Smith', '1215 Main', '329-2981');

-- --------------------------------------------------------

--
-- Table structure for table `test2`
--

CREATE TABLE `test2` (
  `password` varbinary(16) DEFAULT NULL,
  `start_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test2`
--

INSERT INTO `test2` (`password`, `start_date`) VALUES
(0x5e27050b59c889fee9f953137259bf6b, '2024-03-30'),
(0x68656c6c6f313233, '2021-03-10'),
(0x68656c6c6f313233, '2021-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `name` varchar(25) NOT NULL,
  `age` decimal(3,0) DEFAULT NULL,
  `lodging` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`name`, `age`, `lodging`) VALUES
('ADAH TALBOT', 23, 'PAPA KING'),
('ANDREW DYE', 29, 'ROSE HILL'),
('BART SARJEANT', 22, 'CRANMER'),
('DICK JONES', 18, 'ROSE HILL'),
('DONALD ROLLO', 16, 'MATTS'),
('ELBERT TALBOT', 43, 'WEITBROCHT'),
('GEORGE OSCAR', 41, 'ROSE HILL'),
('GERHARDT KENTGE', 55, 'PAPA KING'),
('HELEN BRANDT', 15, NULL),
('JED HOPKINS', 33, 'MATTS'),
('JOHN PEARSON', 27, 'ROSE HILL'),
('KAY AND PALMER WALLBOM', NULL, 'ROSE HILL'),
('PAT LAVAY', 21, 'ROSE HILL'),
('PETER LAWSON', 25, 'CRANMER'),
('RICHARD KOCH AND BROTHERS', NULL, 'WEITBROCHT'),
('ROLAND BRANDT', 35, 'MATTS'),
('VICTORIA LYNN', 32, 'MULLERS'),
('WILFRED LOWELL', 67, NULL),
('WILLIAM SWING', 15, 'CRANMER');

-- --------------------------------------------------------

--
-- Table structure for table `workerskill`
--

CREATE TABLE `workerskill` (
  `name` varchar(25) NOT NULL,
  `skill` varchar(25) NOT NULL,
  `ability` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workerskill`
--

INSERT INTO `workerskill` (`name`, `skill`, `ability`) VALUES
('ADAH TALBOT', 'WORK', 'GOOD'),
('DICK JONES', 'SMITHY', 'EXCELLENT'),
('ELBERT TALBOT', 'DISCUS', 'SLOW'),
('HELEN BRANDT', 'COMBINE DRIVER', 'VERY FAST'),
('JOHN PEARSON', 'COMBINE DRIVER', ''),
('JOHN PEARSON', 'SMITHY', 'AVERAGE'),
('JOHN PEARSON', 'WOODCUTTER', 'GOOD'),
('VICTORIA LYNN', 'SMITHY', 'PRECISE'),
('WILFRED LOWELL', 'DISCUS', 'AVERAGE'),
('WILFRED LOWELL', 'WORK', 'AVERAGE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lodging`
--
ALTER TABLE `lodging`
  ADD PRIMARY KEY (`lodging`),
  ADD UNIQUE KEY `lodging_manager_uk` (`manager`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`skill`);

--
-- Indexes for table `test1`
--
ALTER TABLE `test1`
  ADD PRIMARY KEY (`phone`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`name`),
  ADD KEY `worker_lodging_fk` (`lodging`);

--
-- Indexes for table `workerskill`
--
ALTER TABLE `workerskill`
  ADD PRIMARY KEY (`name`,`skill`),
  ADD KEY `workerskill_skill_fk` (`skill`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `worker`
--
ALTER TABLE `worker`
  ADD CONSTRAINT `worker_lodging_fk` FOREIGN KEY (`lodging`) REFERENCES `lodging` (`lodging`);

--
-- Constraints for table `workerskill`
--
ALTER TABLE `workerskill`
  ADD CONSTRAINT `workerskill_name_fk` FOREIGN KEY (`name`) REFERENCES `worker` (`name`),
  ADD CONSTRAINT `workerskill_skill_fk` FOREIGN KEY (`skill`) REFERENCES `skill` (`skill`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
