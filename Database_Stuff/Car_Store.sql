-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Sep 06, 2024 at 02:43 PM
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
-- Database: `car_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `Brand_ID` int(15) NOT NULL,
  `Name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`Brand_ID`, `Name`) VALUES
(1, 'Audi'),
(2, 'BMW'),
(3, 'Ford'),
(4, 'Mercedes-Benz'),
(6, 'Opel'),
(7, 'Skoda'),
(8, 'Toyota'),
(9, 'Volkswagen'),
(10, 'Volvo'),
(11, 'Tesla'),
(12, 'Ferrari'),
(13, 'Land Rover'),
(14, 'GMC'),
(15, 'Cadillac'),
(16, 'Porsche'),
(17, 'Peugeot'),
(18, 'Citroen'),
(19, 'Bentley'),
(20, 'Alfa Romeo'),
(21, 'Fiat'),
(22, 'Lamborghini'),
(23, 'Acura'),
(24, 'Honda'),
(25, 'Hyundai'),
(26, 'Jaguar'),
(27, 'Aston Martin'),
(28, 'Chrysler'),
(29, 'Chevrolet'),
(30, 'Dodge'),
(31, 'Jeep'),
(32, 'Kia'),
(33, 'Lexus'),
(34, 'Mazda'),
(35, 'Mitsubishi'),
(36, 'Mini'),
(37, 'Polestar'),
(38, 'Nissan'),
(39, 'Renault'),
(40, 'Rolls-Royce'),
(41, 'Saab'),
(42, 'Seat'),
(43, 'Cupra');

-- --------------------------------------------------------

--
-- Table structure for table `carfeatures`
--

CREATE TABLE `carfeatures` (
  `Row_ID` int(50) NOT NULL,
  `VIN` char(50) NOT NULL,
  `Feature_ID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `carfeatures`
--

INSERT INTO `carfeatures` (`Row_ID`, `VIN`, `Feature_ID`) VALUES
(1, 'YV1SW61R021197119', 7),
(2, 'YV1SW61R021197119', 10),
(3, '1M2AA18C0WW092489', 16),
(4, '1M2AA18C0WW092489', 13),
(5, '1M2AA18C0WW092489', 19),
(6, '1M2AA18C0WW092489', 17),
(7, '1M2AA18C0WW092489', 41),
(8, '1M2AA18C0WW092489', 33),
(9, '1M2AA18C0WW092489', 32),
(10, '1M2AA18C0WW092489', 44),
(11, '1M2AA18C0WW092489', 45),
(12, 'WAUHE98P29A071392', 5),
(13, 'WAUHE98P29A071392', 17),
(14, 'WAUHE98P29A071392', 20),
(15, 'WAUHE98P29A071392', 21),
(16, 'WAUHE98P29A071392', 13),
(17, 'JM3KE4BE2F0432552', 95),
(18, 'JM3KE4BE2F0432552', 21),
(19, 'JM3KE4BE2F0432552', 93),
(20, 'JM3KE4BE2F0432552', 15),
(21, 'YV1SW61R021197119', 2),
(22, 'YV1SW61R021197119', 3),
(23, 'YV1SW61R021197119', 99),
(24, 'WF0YXXTTGYNS57312', 6),
(25, 'WF0YXXTTGYNS57312', 3),
(26, 'WF0YXXTTGYNS57312', 19),
(27, 'WF0YXXTTGYNS57312', 82),
(28, 'JT2VV22E0J0018536', 11),
(29, 'JT2VV22E0J0018536', 6),
(30, 'JT2VV22E0J0018536', 5),
(31, 'JT2VV22E0J0018536', 20),
(32, 'JT2VV22E0J0018536', 9),
(33, '4JGBB72E98A297923', 97),
(34, '4JGBB72E98A297923', 67),
(35, '4JGBB72E98A297923', 16),
(36, '4JGBB72E98A297923', 13),
(37, '4JGBB72E98A297923', 95),
(38, 'WDBEA30E1NB582331', 37),
(39, 'WDBEA30E1NB582331', 83),
(40, 'WDBEA30E1NB582331', 80),
(41, 'WDBEA30E1NB582331', 76),
(42, 'WDBEA30E1NB582331', 16),
(43, 'WDBEA30E1NB582331', 9),
(44, 'WDBEA30E1NB582331', 32),
(45, 'WDBEA30E1NB582331', 89),
(46, 'WDBEA30E1NB582331', 96),
(47, 'WDBEA30E1NB582331', 5),
(48, 'WDBEA30E1NB582331', 7),
(49, 'WDBEA30E1NB582331', 17),
(50, 'WDBEA30E1NB582331', 101),
(51, 'WDBEA30E1NB582331', 102),
(52, '4JGBB72E98A297923', 101),
(53, '4JGBB72E98A297923', 102),
(54, 'WBAVB13256PS66453', 5),
(55, 'WBAVB13256PS66453', 95),
(56, 'WBAVB13256PS66453', 84),
(57, 'WBAVB13256PS66453', 15),
(58, 'WBAVB13256PS66453', 57),
(59, 'WBAVB13256PS66453', 28),
(60, 'WBAVB13256PS66453', 76),
(63, 'WBAVB13256PS66453', 110),
(64, 'WBAVB13256PS66453', 109),
(65, 'WBAVB13256PS66453', 108),
(66, 'WBAVB13256PS66453', 107),
(67, 'WBAVB13256PS66453', 105),
(68, 'WBAVB13256PS66453', 106),
(69, 'WBAVB13256PS66453', 16),
(71, 'WBAVB13256PS66453', 80),
(72, 'WBAVB13256PS66453', 17),
(74, 'WBAVB13256PS66453', 65),
(75, 'WBAVB13256PS66453', 13),
(76, 'WBAVB13256PS66453', 69),
(77, 'WBAVB13256PS66453', 96),
(78, 'WBAVB13256PS66453', 9),
(79, 'WBAVB13256PS66453', 101),
(80, 'WBAVB13256PS66453', 102),
(81, 'WP0AA2964PS820410', 80),
(83, 'WP0AA2964PS820410', 95),
(84, 'WP0AA2964PS820410', 110),
(85, 'WP0AA2964PS820410', 28),
(86, 'WP0AA2964PS820410', 101),
(87, 'WP0AA2964PS820410', 17),
(88, 'WP0AA2964PS820410', 76),
(89, 'WP0AA2964PS820410', 9),
(90, 'WP0AA2964PS820410', 67),
(91, '1FTDR15X4TPA96892', 34),
(92, '1FTDR15X4TPA96892', 32),
(93, '1FTDR15X4TPA96892', 24),
(94, '1FTDR15X4TPA96892', 57),
(95, '1FTDR15X4TPA96892', 40),
(96, '1FTDR15X4TPA96892', 66),
(97, '3GYFNHEY4BS0002EX', 41),
(98, '3GYFNHEY4BS0002EX', 5),
(99, '3GYFNHEY4BS0002EX', 16),
(100, '3GYFNHEY4BS0002EX', 13),
(101, '3GYFNHEY4BS0002EX', 110),
(102, '3GYFNHEY4BS0002EX', 30),
(103, '3GYFNHEY4BS0002EX', 13),
(104, '3GYFNHEY4BS0002EX', 9),
(105, '3GYFNHEY4BS0002EX', 6),
(106, '3GYFNHEY4BS0002EX', 11),
(107, '3GYFNHEY4BS0002EX', 107),
(108, '3GYFNHEY4BS0002EX', 106),
(109, '3GYFNHEY4BS0002EX', 28),
(110, '3GYFNHEY4BS0002EX', 31),
(111, '3GYFNHEY4BS0002EX', 32),
(112, '3GYFNHEY4BS0002EX', 33),
(113, '3GYFNHEY4BS0002EX', 19),
(114, 'ZFFMN34A0L0085788', 9),
(115, 'ZFFMN34A0L0085788', 114),
(116, 'ZFFMN34A0L0085788', 101),
(117, 'ZFFMN34A0L0085788', 13),
(118, 'ZFFMN34A0L0085788', 16),
(119, 'ZFFMN34A0L0085788', 113),
(120, 'ZFFMN34A0L0085788', 107),
(121, 'ZFFMN34A0L0085788', 12),
(122, 'ZFFMN34A0L0085788', 11),
(123, 'ZFFMN34A0L0085788', 106),
(124, 'ZFFMN34A0L0085788', 19),
(125, 'W1N1673171A302625', 1),
(126, 'W1N1673171A302625', 5),
(127, 'W1N1673171A302625', 6),
(128, 'W1N1673171A302625', 11),
(129, 'W1N1673171A302625', 7),
(130, 'W1N1673171A302625', 12),
(131, 'W1N1673171A302625', 13),
(132, 'W1N1673171A302625', 14),
(133, 'W1N1673171A302625', 15),
(134, 'W1N1673171A302625', 16),
(135, 'W1N1673171A302625', 19),
(136, 'W1N1673171A302625', 21),
(137, 'W1N1673171A302625', 114),
(138, 'W1N1673171A302625', 20),
(139, 'W1N1673171A302625', 85),
(140, 'W1N1673171A302625', 9),
(141, 'W1N1673171A302625', 62),
(142, 'W1N1673171A302625', 66),
(143, 'W1N1673171A302625', 113),
(144, 'W1N1673171A302625', 111),
(145, 'WAUHFBFR9AA011915', 1),
(146, 'WAUHFBFR9AA011915', 3),
(147, 'WAUHFBFR9AA011915', 6),
(148, 'WAUHFBFR9AA011915', 13),
(149, 'WAUHFBFR9AA011915', 16),
(150, 'WAUHFBFR9AA011915', 9),
(151, 'WAUHFBFR9AA011915', 21),
(152, 'WAUHFBFR9AA011915', 14),
(153, 'WAUHFBFR9AA011915', 11),
(154, 'WAUHFBFR9AA011915', 20),
(155, 'WAUHFBFR9AA011915', 28),
(156, 'WAUHFBFR9AA011915', 32),
(157, 'WDDNF8EB6BA367100', 5),
(158, 'WDDNF8EB6BA367100', 6),
(159, 'WDDNF8EB6BA367100', 7),
(160, 'WDDNF8EB6BA367100', 9),
(161, 'WDDNF8EB6BA367100', 11),
(162, 'WDDNF8EB6BA367100', 13),
(163, 'WDDNF8EB6BA367100', 14),
(164, 'WDDNF8EB6BA367100', 15),
(165, 'WDDNF8EB6BA367100', 16),
(166, 'WDDNF8EB6BA367100', 17),
(167, 'WDDNF8EB6BA367100', 19),
(168, 'WDDNF8EB6BA367100', 21),
(169, 'WDDNF8EB6BA367100', 22),
(170, 'WDDNF8EB6BA367100', 28),
(171, 'WDDNF8EB6BA367100', 26),
(172, 'WDDNF8EB6BA367100', 29),
(173, 'WDDNF8EB6BA367100', 31),
(174, 'WDDNF8EB6BA367100', 32),
(175, 'WDDNF8EB6BA367100', 33),
(176, 'WDDNF8EB6BA367100', 37),
(177, '4JGBF22E18A372976', 1),
(178, '4JGBF22E18A372976', 9),
(179, '4JGBF22E18A372976', 3),
(180, '4JGBF22E18A372976', 11),
(181, '4JGBF22E18A372976', 20),
(182, '4JGBF22E18A372976', 21),
(183, '4JGBF22E18A372976', 19),
(184, '4JGBF22E18A372976', 17),
(185, '4JGBF22E18A372976', 16),
(186, '4JGBF22E18A372976', 33);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `Row_ID` int(15) NOT NULL,
  `VIN` char(50) NOT NULL,
  `Number_Plate` char(15) DEFAULT NULL,
  `Brand_ID` int(15) NOT NULL,
  `Model` varchar(15) DEFAULT NULL,
  `Model_Spec` varchar(150) DEFAULT NULL,
  `Price` int(15) DEFAULT NULL,
  `Year` int(15) DEFAULT NULL,
  `Gearbox` enum('Manual','Automatic') DEFAULT NULL,
  `Fuel_Type` enum('Petrol','Diesel','Electric','Plug-In Hybrid','Gas') DEFAULT NULL,
  `Mileage` int(15) DEFAULT NULL,
  `Type_OF_Car` enum('Sedan (Henkilöauto)','Van (Pakettiauto)','Minibus','LightTruck (Kevyt kuorma-auto)') DEFAULT 'Sedan (Henkilöauto)',
  `Type_OF_Body` enum('convertible (Avoauto)','Pickup (Avolava)','Coupe','Wagon (Farmari)','SUV (Maastoauto)','Sedan (Porrasperä)','SpaceCar (Tila-auto)','Hatchback (Viistoperä)','Other (Muu)') DEFAULT NULL,
  `Draw_Method` enum('4WD','FWD','RWD') DEFAULT NULL,
  `Color` enum('White','Black','Silver','Red','Blue','Yellow','Orange','Gold','Brown','Dark Silver') DEFAULT NULL,
  `No. of person` int(5) DEFAULT NULL,
  `No. of doors` int(5) DEFAULT NULL,
  `Power` varchar(15) DEFAULT NULL,
  `Mass` varchar(15) DEFAULT NULL,
  `Torque` int(15) DEFAULT NULL,
  `TopSpeed` varchar(15) DEFAULT NULL,
  `Engine_Capacity` varchar(5) DEFAULT NULL,
  `Steering` enum('Left','Right') NOT NULL DEFAULT 'Left',
  `Energy_label` int(50) DEFAULT NULL,
  `Electric_Range` int(50) DEFAULT NULL,
  `Battery_Capacity` varchar(50) DEFAULT NULL,
  `Acceleration` varchar(10) DEFAULT NULL,
  `Height` int(50) DEFAULT NULL,
  `Width` int(50) DEFAULT NULL,
  `Length` int(50) DEFAULT NULL,
  `First_Registration_Date` date DEFAULT NULL,
  `Store_ID` int(15) DEFAULT NULL,
  `Date_OF_Add` date DEFAULT current_timestamp(),
  `Date_OF_Update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`Row_ID`, `VIN`, `Number_Plate`, `Brand_ID`, `Model`, `Model_Spec`, `Price`, `Year`, `Gearbox`, `Fuel_Type`, `Mileage`, `Type_OF_Car`, `Type_OF_Body`, `Draw_Method`, `Color`, `No. of person`, `No. of doors`, `Power`, `Mass`, `Torque`, `TopSpeed`, `Engine_Capacity`, `Steering`, `Energy_label`, `Electric_Range`, `Battery_Capacity`, `Acceleration`, `Height`, `Width`, `Length`, `First_Registration_Date`, `Store_ID`, `Date_OF_Add`, `Date_OF_Update`) VALUES
(1, 'YV1SW61R021197119', 'VAR-873', 10, 'XC90', NULL, 65000, 2020, 'Automatic', 'Petrol', 119000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'White', 7, 5, '252', '3500', NULL, '250', '3.1', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2024-03-05', '2024-06-11 16:49:17'),
(2, '1D7HA18N38J191236', 'JIZ-610', 1, 'E-tron', 'GT', 116000, 2020, 'Automatic', 'Petrol', 59000, 'Sedan (Henkilöauto)', 'Coupe', '4WD', 'Silver', 5, 3, '300', '2100', NULL, '300', '2.5', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-03-06', '2024-05-30 11:18:07'),
(3, '4S3BJ6329M1918965', 'IAR-058', 10, 'XC90', 'T8 TwE AWD Recharge Inscription aut', 70000, 2021, 'Automatic', 'Petrol', 104000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', 'RWD', 'White', 7, 5, '252', '3500', NULL, '250', '3.1', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2024-03-06', '2024-05-30 11:18:03'),
(4, 'JN6DY1AY8EX602144', 'HUI-995', 38, 'Pathfinder', '2,5 dCi SE 5AT 5-ov.', 7500, 2008, 'Manual', 'Diesel', 220000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', 'RWD', 'Blue', 5, 5, '150', '2600', NULL, '170', '3.5', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2024-03-13', '2024-05-30 11:17:59'),
(5, 'WVGMR67L090010501', 'IJN-970', 9, 'Passat', 'Sedan Comfortline 2,0 TDI 103 kW', 5000, 2010, 'Automatic', 'Petrol', 425000, 'Sedan (Henkilöauto)', 'Sedan (Porrasperä)', 'RWD', 'Black', 5, 5, '160', '1600', NULL, '250', '2.5', 'Left', 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 74, '2024-03-07', '2024-06-20 13:36:06'),
(6, 'WB10557A13ZG36939', 'IPE-528', 2, '420', 'xDrive M Sport MHEV', 46500, 2022, 'Automatic', 'Diesel', 17000, 'Sedan (Henkilöauto)', 'Coupe', '4WD', 'Black', 5, 4, '140', NULL, NULL, '290', '2.1', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 105, '2024-03-06', '2024-09-06 14:35:34'),
(7, 'YV1AX4747E1960685', 'LOE-886', 10, 'S90', 'D4 Business R-Design aut', 68000, 2018, 'Automatic', 'Petrol', 145000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Silver', 5, 4, '140', '1074', NULL, '230', NULL, 'Left', 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2024-03-07', '2024-06-12 14:46:57'),
(8, 'WDBLK70G61T061039', 'JJE-655', 4, 'G-Wagon', '63 AMG, G700 Brabus Widestar', 120000, 2020, 'Automatic', 'Petrol', 1000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2024-03-07', '2024-05-30 11:17:33'),
(9, 'WDDUG7JB1EA027074', 'HYY-779', 4, 'GLS', '600 Maybach', 99900, 2021, 'Automatic', 'Diesel', 63600, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Black', 6, 5, '210', '2485', NULL, '227', '2.1', 'Left', 75, NULL, NULL, '2.5', NULL, NULL, NULL, '2021-03-08', 72, '2024-03-07', '2024-06-13 14:38:53'),
(10, 'ZA9DU01B21L903178', 'MMH-119', 22, 'Huracán', 'Huracan Evo Spyder 640hv', 98000, 2020, 'Automatic', 'Petrol', 16000, 'Sedan (Henkilöauto)', 'Coupe', 'RWD', 'White', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, '2024-03-07', '2024-05-30 11:02:38'),
(11, 'ZFF73SKA9E0200021', 'LLK-225', 12, 'Portofino', 'Ferrari M Ferrari Portofino M Avoauto (AE)', 98000, 2023, 'Automatic', 'Petrol', 1000, 'Sedan (Henkilöauto)', 'Coupe', 'RWD', 'Red', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2024-03-07', '2024-05-30 11:02:41'),
(12, 'WAU3FLFF5F1034279', 'OXS-665', 1, 'RS6', NULL, 67000, 2020, 'Automatic', 'Petrol', 44000, 'Sedan (Henkilöauto)', 'Wagon (Farmari)', '4WD', 'Blue', 5, 5, NULL, NULL, NULL, '350', '2.9', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '2024-03-07', '2024-06-11 15:22:40'),
(13, 'WUAENAFG5FN000527', 'FRM-648', 1, 'Q8 e-tron', 'SQ8 e-tron quattro', 125000, 2024, 'Automatic', 'Electric', 12000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Red', 5, 4, '370', '2300', NULL, '300', NULL, 'Left', NULL, 434, '114', NULL, 2500, 2300, 2500, NULL, 2, '2024-03-07', '2024-06-11 14:35:43'),
(14, 'JT2VV22E0J0018536', 'YLC-633', 8, 'Land Cruiser', NULL, 67800, 2019, 'Automatic', 'Diesel', 75000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'White', 7, 5, '130', '2310', 420, '175', '2.8', 'Left', 250, NULL, NULL, '12.7', NULL, NULL, NULL, '2019-03-01', 6, '2024-03-07', '2024-06-13 13:42:34'),
(15, 'SCBBB7ZH2FC053880', 'CKB-812', 19, 'Continental', 'GT Coupe W12 Twin Turbo', 79000, 2007, 'Automatic', 'Petrol', 100000, 'Sedan (Henkilöauto)', 'Coupe', '4WD', 'Black', 4, 5, '412', '2600', 650, '320', '5.1', 'Left', 165, NULL, NULL, '4.0', NULL, NULL, NULL, '2007-07-10', 84, '2024-03-07', '2024-06-12 16:56:35'),
(16, '1GKEC13V21J196436', 'UJH-331', 14, 'Sierra', '1500 Crew cab 3.0 duramax Turbo-diesel, 10-speed A', 125000, 2024, 'Automatic', 'Diesel', 500, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Black', 5, 2, '350', '3500', NULL, '250', '6.1', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-08', 13, '2024-03-06', '2024-06-20 13:20:23'),
(17, 'WAUHFBFR9AA011915', 'RGD-556', 1, 'A6', '40 TDI Q S-Line ', 49400, 2023, 'Automatic', 'Petrol', 41000, 'Sedan (Henkilöauto)', 'Wagon (Farmari)', '4WD', 'Silver', 5, 5, '150', '2100', 160, '270', '2.0', 'Left', 65, 112, '12', NULL, 1465, 1886, 4939, '2023-09-08', 15, '2024-03-18', '2024-06-20 13:51:01'),
(18, 'WA1VGCFE0D0016673', 'IMA-570', 1, 'S3', 'Sedan 2,0 TFSI quattro S tronic', 33990, 2015, 'Automatic', 'Petrol', 96000, 'Sedan (Henkilöauto)', 'Sedan (Porrasperä)', '4WD', 'Red', 5, 4, '221', '2010', NULL, '250', '2.1', 'Left', 159, NULL, NULL, NULL, NULL, NULL, NULL, '2015-04-15', 93, '2024-03-18', '2024-06-24 15:19:03'),
(19, 'WAUHE98P29A071392', 'BXU-870', 2, '318', 'G20 Sedan 318d A Business', 24890, 2019, 'Automatic', 'Diesel', 70000, 'Sedan (Henkilöauto)', 'Sedan (Porrasperä)', 'RWD', 'Black', 7, 5, '189', '2600', NULL, '210', '2.0', 'Left', 132, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-11', 92, '2024-03-18', '2024-06-13 14:55:26'),
(20, '1M2AA18C0WW092489', 'KUA-347', 7, 'Octavia', 'Ambition Launch Edition DSG', 18650, 2020, 'Automatic', 'Diesel', 136000, 'Sedan (Henkilöauto)', 'Sedan (Porrasperä)', 'FWD', 'Blue', 5, 4, '110', '1461', NULL, '227', '2.1', 'Left', 120, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-15', 93, '2024-03-18', '2024-06-24 15:27:16'),
(21, '3N1AB61E59L645953', 'JKC-161', 38, 'Qashqai', 'DIG-T 115 Acenta 2WD 6M/T Safety Pack', 12400, 2017, 'Manual', 'Petrol', 98000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', 'FWD', 'Blue', 5, 5, '86', '1200', NULL, '185', '1.2', 'Left', 129, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-03', 19, '2024-03-21', '2024-06-24 15:36:46'),
(22, '5YJSA1DP2DFP07403', 'ZOK-835', 11, 'Model 3', 'Standard Range Plus / AMD Ryze', 32800, 2023, 'Automatic', 'Electric', 28000, 'Sedan (Henkilöauto)', 'Hatchback (Viistoperä)', 'RWD', 'Blue', 5, 4, '211', NULL, NULL, '280', NULL, 'Left', NULL, 491, '62', NULL, 1443, 1850, 4694, '2023-09-20', 15, '2024-03-21', '2024-06-26 13:45:49'),
(23, '3VWJ17AT8EM646195', 'NKF-190', 9, 'Passat', 'Variant Alltrack 2,0 TDI 140 kW 4MOTION DSG', 16900, NULL, 'Automatic', 'Diesel', 220000, 'Sedan (Henkilöauto)', 'Wagon (Farmari)', '4WD', 'Red', 5, 5, NULL, NULL, NULL, NULL, NULL, 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, '2024-03-21', '2024-05-30 11:13:13'),
(24, '5XYKWDA20BG098863', 'OYU-292', 32, 'Venga', '1,4 ISG EX 5D EcoDynamics', 4400, 2011, 'Automatic', 'Petrol', 184000, 'Sedan (Henkilöauto)', 'Hatchback (Viistoperä)', 'FWD', 'Blue', 5, 4, NULL, NULL, NULL, NULL, 'NULL', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '2024-03-21', '2024-09-06 14:33:25'),
(25, 'KNDMB5C13H6230590', 'VDT-461', 32, 'Sorento', '1,6 T-GDI Plug-in Hybrid AWD Business Luxury AT 7P\n', 40500, 2021, 'Automatic', 'Plug-In Hybrid', 71000, 'Sedan (Henkilöauto)', 'Hatchback (Viistoperä)', '4WD', 'Blue', 7, 4, '195', '1980', NULL, '193', '1.6', 'Left', 38, 57, '13', '8.7', 1695, 1900, 4810, '2021-09-15', 44, '2024-03-21', '2024-06-26 13:59:16'),
(26, '4JGBB72E98A297923', 'VXN-476', 4, 'EQC', '400 4MATIC Business AMG', 50900, 2022, 'Automatic', 'Electric', 56000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'White', 5, 4, '300', '2 495', NULL, '180', NULL, 'Left', NULL, 430, '80', '5.10', NULL, NULL, NULL, '2022-04-05', 1, '2024-03-21', '2024-07-17 17:43:29'),
(27, '1NXAE82G1HZ435690', 'LKJ-876', 8, 'RAV4', '2,5AWD Active Edition', 13500, 2015, 'Manual', 'Diesel', 259000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Black', 5, 4, '91', '1660', NULL, '180', '2.0', 'Left', 136, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-15', 39, '2024-03-21', '2024-09-06 14:32:39'),
(28, '4V1KLDJF1LN627146', 'EWR-876', 10, 'V60', 'T8 AWD Long Range High Performance R-Design aut', 47900, NULL, 'Automatic', 'Plug-In Hybrid', 89000, 'Sedan (Henkilöauto)', 'Wagon (Farmari)', '4WD', 'Silver', 5, 4, '335', 'NULL', NULL, 'NULL', '2.1', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, '2024-03-21', '2024-09-06 14:34:39'),
(29, 'JM3KE4BE2F0432552', 'OPY-902', 34, '6', 'Sedan 2,0 (165) SKYACTIV-G Premium Plus 6AT SL', 16900, 2007, 'Manual', 'Petrol', 214000, 'Sedan (Henkilöauto)', 'Sedan (Porrasperä)', 'FWD', 'Blue', 5, 4, '105', '1885', NULL, NULL, '2.0', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2007-05-12', 5, '2024-03-21', '2024-08-22 15:15:45'),
(30, '1YVGF22D225527370', 'CTG-337', 34, '6', 'Sport Wagon 2,2 (150) SKYACTIV-D PREMIUM Plus 6AT', 12400, 2014, 'Manual', 'Diesel', 212000, 'Sedan (Henkilöauto)', 'Sedan (Porrasperä)', 'FWD', 'Red', 5, 4, '110', '1600', NULL, '202', '2.2', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-06-15', 10, '2024-03-21', '2024-08-22 15:20:03'),
(31, 'WVWAAA3C2CE516820', 'AAQ-980', 9, 'Arteon', 'Sedan R-Line eHybrid 160 kW DSG-aut.', 34400, 2018, 'Automatic', 'Petrol', 74000, 'Sedan (Henkilöauto)', 'Sedan (Porrasperä)', 'FWD', 'White', 5, 4, '140', '1650', NULL, '239', '2.0', 'Left', 135, NULL, NULL, '7.70', NULL, NULL, NULL, '2022-02-08', 1, '2018-05-14', '2024-06-24 15:14:34'),
(32, 'WBAFF8402D7852216', 'LRT-399', 2, '530', 'G30 Sedan 530e xDrive A Charged Edition M Sport', 57900, 2023, 'Automatic', 'Plug-In Hybrid', 14000, 'Sedan (Henkilöauto)', 'Sedan (Porrasperä)', '4WD', 'Silver', 5, 4, '135', '2000', NULL, '290', '3.0', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 112, '2024-03-22', '2024-05-30 11:09:06'),
(33, 'WBAYF8C52EDS00432', 'NNB-507', 2, 'M2', 'M2 Coupé', 133859, 2023, 'Automatic', 'Petrol', 5, 'Sedan (Henkilöauto)', 'Coupe', 'RWD', 'Red', 4, 2, '338', '1200', NULL, '310', '4.2', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 111, '2024-03-22', '2024-05-30 11:06:41'),
(34, 'SALWA2BY5LA713795', 'RUK-178', 13, 'Range Rover Spo', 'P400e Plug-in Hybrid HSE Dynamic', 68000, 2020, 'Automatic', 'Plug-In Hybrid', 78000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'White', 5, 5, '221', NULL, NULL, NULL, '2.9', 'Left', 77, NULL, NULL, '2.5', NULL, NULL, NULL, '2020-08-18', 113, '2024-03-28', '2024-06-20 13:09:28'),
(35, 'W1N1673171A302625', 'CPO-562', 4, 'GLE', '350 de 4MATIC Coupé AMG', 81800, 2021, 'Automatic', 'Plug-In Hybrid', 45000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'White', 5, 5, '144', '2690', NULL, '210', '1.95', 'Left', 28, 99, '31', '3.4', 1265, 2365, 2954, '2021-09-09', 113, '2024-03-28', '2024-06-18 12:28:34'),
(36, 'WF0YXXTTGYNS57312', 'XRL-291', 3, 'Transit Custom', '320 2,0 TDC A6 Etuveto Limited Van', 29900, 2022, 'Manual', 'Diesel', 26000, 'Van (Pakettiauto)', 'Other (Muu)', 'FWD', 'White', 2, 3, '130', '2140', 360, '165', '2.0', 'Left', NULL, NULL, '193', '9.90', NULL, NULL, NULL, '2022-03-13', 114, '2024-03-28', '2024-06-18 12:10:59'),
(37, 'SALGA2BY7JA507105', 'JLF-602', 13, 'Range Rover', 'P400e Autobiography', 76800, 2018, 'Automatic', 'Plug-In Hybrid', 90000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Silver', 5, 5, '221', '2000', NULL, '290', '3.0', 'Left', 64, 39, '13', '3.2', NULL, NULL, NULL, '2018-12-02', 116, '2024-04-05', '2024-06-18 11:41:53'),
(38, 'WDBEA30E1NB582331', 'NNN-400', 4, 'EQB', '300 4MATIC Business Progressive', 49800, 2022, 'Automatic', 'Electric', 12000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Silver', 5, 5, '228', '2202', NULL, '160', '1.2', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 71, '2024-04-09', '2024-05-30 11:16:22'),
(39, 'JH4KA8260PC000495', 'GGY-123', 43, 'Formentor', 'VZ 1.4 PHEV 180 kW e-HYBRID DSG', 29890, 2023, 'Automatic', 'Plug-In Hybrid', 53000, 'Sedan (Henkilöauto)', 'Hatchback (Viistoperä)', 'FWD', 'Silver', 5, 5, '110', '2120', NULL, '210', '1.4', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132, '2024-04-09', '2024-05-30 11:16:16'),
(40, 'WBAVB13256PS66453', 'GGY-098', 2, 'X5', 'G05 xDrive45e \"X5 M\" * ACC', 119800, 2023, 'Automatic', 'Plug-In Hybrid', 10000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Silver', 5, 4, '290', '2150', NULL, '310', '3.0', 'Left', 110, 110, '29', NULL, NULL, NULL, NULL, '2023-06-01', 133, '2024-04-09', '2024-06-17 13:56:51'),
(41, 'WP0AA2964PS820410', 'KLP-337', 16, 'Taycan', '4S Cross Turismo', 88990, 2023, 'Automatic', 'Electric', 53000, 'Sedan (Henkilöauto)', 'Coupe', '4WD', 'Black', 5, 4, '420', '2885', NULL, '240', '3.5', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132, '2024-04-09', '2024-06-12 15:52:33'),
(42, '1FTDR15X4TPA96892', 'UVG-483', 32, 'Sportage', '1,6 ISG Urban Active EcoDynamics ', 12500, 2014, 'Automatic', 'Petrol', 107000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', 'FWD', 'Silver', 5, 4, '99', '1200', NULL, '178', '1,6', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134, '2024-04-10', '2024-05-30 11:15:54'),
(43, '3GYFNHEY4BS0002EX', 'SOU-807', 15, 'Escalade', 'Sport Platinum 3.0l Duramax', 184000, 2023, 'Automatic', 'Diesel', 40000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'White', 7, 5, ' 204', '3 500', NULL, '290', '3.0', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '2024-05-06', '2024-06-11 15:07:25'),
(44, 'ZFFMN34A0L0085788', 'WQY-449', 12, 'SF90', 'STRADALE 3.9 V8 DCT', 599900, 2021, 'Automatic', 'Plug-In Hybrid', 2300, 'Sedan (Henkilöauto)', 'Coupe', '4WD', 'Black', 2, 2, '735', 'NULL', NULL, '359', '3.9', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 152, '2024-05-06', '2024-05-30 11:05:48'),
(45, 'WA1YD54B02N082537', 'CRK-698', 1, 'E-tron', 'GT RS', 94900, 2022, 'Automatic', 'Electric', 46000, 'Sedan (Henkilöauto)', 'Coupe', '4WD', 'Brown', 5, 4, '440', NULL, NULL, '310', NULL, 'Right', 87, 486, '93.0', '3.3', 1414, 1964, 4989, '2023-05-05', 33, '2024-05-24', '2024-06-13 14:42:29'),
(46, 'WBADC7407H1715209', 'JFH-279', 2, 'M8', 'F92 Coupé M8 * B&W / Carbon -Paketti ', 204890, 2021, 'Automatic', 'Petrol', 32000, 'Sedan (Henkilöauto)', 'Coupe', '4WD', 'White', 4, 2, '441', '2385', NULL, '250', '4.39', 'Left', 49, NULL, NULL, NULL, 1360, 1910, 4870, '2021-03-01', 132, '2024-05-27', '2024-06-18 14:31:46'),
(47, 'WDDNF8EB6BA367100', 'XXH-980', 4, 'GLE', '350 de 4MATIC AMG', 74900, 2020, 'Automatic', 'Diesel', 57000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'White', 5, 4, '129', '2655', 210, '2.0', '2.0', 'Left', NULL, NULL, NULL, '6.8', 4927, 1950, NULL, '2020-06-24', 73, '2024-06-20', '2024-06-20 12:55:24'),
(48, '4JGBF22E18A372976', 'POE-841', 4, 'G', '350d A 4Matic AMG', 94900, 2013, 'Automatic', 'Diesel', 135000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Black', 5, 5, '155', '3200', 0, '170', '3.0', 'Left', 295, NULL, NULL, '9.10', NULL, NULL, NULL, '2021-10-10', 157, '2024-08-22', '2024-08-22 15:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `carsold`
--

CREATE TABLE `carsold` (
  `Row_ID` int(15) NOT NULL,
  `VIN` char(50) NOT NULL,
  `Sold_By` int(15) NOT NULL,
  `Sold_To` int(15) NOT NULL,
  `Original_Price` int(15) NOT NULL,
  `Sold_Price` int(15) NOT NULL,
  `Sold_Date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `carsold`
--

INSERT INTO `carsold` (`Row_ID`, `VIN`, `Sold_By`, `Sold_To`, `Original_Price`, `Sold_Price`, `Sold_Date`) VALUES
(1, 'WDBLK70G61T061039', 22, 1, 120000, 115000, '2024-05-07'),
(2, '1NXAE82G1HZ435690', 21, 6, 42800, 40000, '2024-05-07'),
(3, '5XYKWDA20BG098863', 21, 7, 4400, 4000, '2023-05-07'),
(4, 'WVWAAA3C2CE516820', 21, 9, 34400, 32000, '2024-05-07'),
(5, '4V1KLDJF1LN627146', 16, 7, 47900, 47700, '2024-05-14'),
(6, 'WUAENAFG5FN000527', 7, 18, 125000, 119000, '2024-05-14'),
(7, '5YJSA1DP2DFP07403', 7, 8, 32800, 31800, '2024-05-14'),
(8, 'WB10557A13ZG36939', 22, 5, 46500, 46000, '2024-05-14'),
(9, 'JN6DY1AY8EX602144', 19, 22, 7500, 7000, '2024-05-14'),
(10, 'WBAVB13256PS66453', 6, 18, 119800, 119000, '2024-06-17'),
(16, 'WBADC7407H1715209', 18, 5, 204890, 204000, '2024-06-18'),
(17, 'WAUHFBFR9AA011915', 7, 10, 49400, 49000, '2024-06-20'),
(19, 'KNDMB5C13H6230590', 7, 14, 40500, 40000, '2024-06-26');

-- --------------------------------------------------------

--
-- Stand-in structure for view `cars_by_stores`
-- (See below for the actual view)
--
CREATE TABLE `cars_by_stores` (
`Store_ID` int(15)
,`VIN` char(50)
,`Number_Plate` char(15)
,`Brand` varchar(15)
,`Model` varchar(15)
,`Model_Spec` varchar(150)
,`Store_Name` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cars_image`
-- (See below for the actual view)
--
CREATE TABLE `cars_image` (
`VIN` char(50)
,`Number_Plate` char(15)
,`Name` varchar(15)
,`Model` varchar(15)
,`NumberOFCarImages` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `car_deals`
-- (See below for the actual view)
--
CREATE TABLE `car_deals` (
`VIN` char(50)
,`Number_Plate` char(15)
,`BrandName` varchar(15)
,`Model` varchar(15)
,`Emp_SSN` char(15)
,`Sold_BY` varchar(101)
,`Customer_SSN` char(15)
,`Sold_TO` varchar(101)
,`Original_Price` int(15)
,`Sold_Price` int(15)
,`Deal_Date` date
,`Store_Name` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `Code` char(3) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `Name` char(52) NOT NULL DEFAULT '',
  `Continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL DEFAULT 'Asia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`Code`, `Name`, `Continent`) VALUES
('ABW', 'Aruba', 'North America'),
('AFG', 'Afghanistan', 'Asia'),
('AGO', 'Angola', 'Africa'),
('AIA', 'Anguilla', 'North America'),
('ALB', 'Albania', 'Europe'),
('AND', 'Andorra', 'Europe'),
('ANT', 'Netherlands Antilles', 'North America'),
('ARE', 'United Arab Emirates', 'Asia'),
('ARG', 'Argentina', 'South America'),
('ARM', 'Armenia', 'Asia'),
('ASM', 'American Samoa', 'Oceania'),
('ATA', 'Antarctica', 'Antarctica'),
('ATF', 'French Southern territories', 'Antarctica'),
('ATG', 'Antigua and Barbuda', 'North America'),
('AUS', 'Australia', 'Oceania'),
('AUT', 'Austria', 'Europe'),
('AZE', 'Azerbaijan', 'Asia'),
('BDI', 'Burundi', 'Africa'),
('BEL', 'Belgium', 'Europe'),
('BEN', 'Benin', 'Africa'),
('BFA', 'Burkina Faso', 'Africa'),
('BGD', 'Bangladesh', 'Asia'),
('BGR', 'Bulgaria', 'Europe'),
('BHR', 'Bahrain', 'Asia'),
('BHS', 'Bahamas', 'North America'),
('BIH', 'Bosnia and Herzegovina', 'Europe'),
('BLR', 'Belarus', 'Europe'),
('BLZ', 'Belize', 'North America'),
('BMU', 'Bermuda', 'North America'),
('BOL', 'Bolivia', 'South America'),
('BRA', 'Brazil', 'South America'),
('BRB', 'Barbados', 'North America'),
('BRN', 'Brunei', 'Asia'),
('BTN', 'Bhutan', 'Asia'),
('BVT', 'Bouvet Island', 'Antarctica'),
('BWA', 'Botswana', 'Africa'),
('CAF', 'Central African Republic', 'Africa'),
('CAN', 'Canada', 'North America'),
('CCK', 'Cocos (Keeling) Islands', 'Oceania'),
('CHE', 'Switzerland', 'Europe'),
('CHL', 'Chile', 'South America'),
('CHN', 'China', 'Asia'),
('CIV', 'Côte d’Ivoire', 'Africa'),
('CMR', 'Cameroon', 'Africa'),
('COD', 'Congo, The Democratic Republic of the', 'Africa'),
('COG', 'Congo', 'Africa'),
('COK', 'Cook Islands', 'Oceania'),
('COL', 'Colombia', 'South America'),
('COM', 'Comoros', 'Africa'),
('CPV', 'Cape Verde', 'Africa'),
('CRI', 'Costa Rica', 'North America'),
('CUB', 'Cuba', 'North America'),
('CXR', 'Christmas Island', 'Oceania'),
('CYM', 'Cayman Islands', 'North America'),
('CYP', 'Cyprus', 'Asia'),
('CZE', 'Czech Republic', 'Europe'),
('DEU', 'Germany', 'Europe'),
('DJI', 'Djibouti', 'Africa'),
('DMA', 'Dominica', 'North America'),
('DNK', 'Denmark', 'Europe'),
('DOM', 'Dominican Republic', 'North America'),
('DZA', 'Algeria', 'Africa'),
('ECU', 'Ecuador', 'South America'),
('EGY', 'Egypt', 'Africa'),
('ERI', 'Eritrea', 'Africa'),
('ESH', 'Western Sahara', 'Africa'),
('ESP', 'Spain', 'Europe'),
('EST', 'Estonia', 'Europe'),
('ETH', 'Ethiopia', 'Africa'),
('FIN', 'Finland', 'Europe'),
('FJI', 'Fiji Islands', 'Oceania'),
('FLK', 'Falkland Islands', 'South America'),
('FRA', 'France', 'Europe'),
('FRO', 'Faroe Islands', 'Europe'),
('FSM', 'Micronesia, Federated States of', 'Oceania'),
('GAB', 'Gabon', 'Africa'),
('GBR', 'United Kingdom', 'Europe'),
('GEO', 'Georgia', 'Asia'),
('GHA', 'Ghana', 'Africa'),
('GIB', 'Gibraltar', 'Europe'),
('GIN', 'Guinea', 'Africa'),
('GLP', 'Guadeloupe', 'North America'),
('GMB', 'Gambia', 'Africa'),
('GNB', 'Guinea-Bissau', 'Africa'),
('GNQ', 'Equatorial Guinea', 'Africa'),
('GRC', 'Greece', 'Europe'),
('GRD', 'Grenada', 'North America'),
('GRL', 'Greenland', 'North America'),
('GTM', 'Guatemala', 'North America'),
('GUF', 'French Guiana', 'South America'),
('GUM', 'Guam', 'Oceania'),
('GUY', 'Guyana', 'South America'),
('HKG', 'Hong Kong', 'Asia'),
('HMD', 'Heard Island and McDonald Islands', 'Antarctica'),
('HND', 'Honduras', 'North America'),
('HRV', 'Croatia', 'Europe'),
('HTI', 'Haiti', 'North America'),
('HUN', 'Hungary', 'Europe'),
('IDN', 'Indonesia', 'Asia'),
('IND', 'India', 'Asia'),
('IOT', 'British Indian Ocean Territory', 'Africa'),
('IRL', 'Ireland', 'Europe'),
('IRN', 'Iran', 'Asia'),
('IRQ', 'Iraq', 'Asia'),
('ISL', 'Iceland', 'Europe'),
('ISR', 'Israel', 'Asia'),
('ITA', 'Italy', 'Europe'),
('JAM', 'Jamaica', 'North America'),
('JOR', 'Jordan', 'Asia'),
('JPN', 'Japan', 'Asia'),
('KAZ', 'Kazakstan', 'Asia'),
('KEN', 'Kenya', 'Africa'),
('KGZ', 'Kyrgyzstan', 'Asia'),
('KHM', 'Cambodia', 'Asia'),
('KIR', 'Kiribati', 'Oceania'),
('KNA', 'Saint Kitts and Nevis', 'North America'),
('KOR', 'South Korea', 'Asia'),
('KWT', 'Kuwait', 'Asia'),
('LAO', 'Laos', 'Asia'),
('LBN', 'Lebanon', 'Asia'),
('LBR', 'Liberia', 'Africa'),
('LBY', 'Libyan Arab Jamahiriya', 'Africa'),
('LCA', 'Saint Lucia', 'North America'),
('LIE', 'Liechtenstein', 'Europe'),
('LKA', 'Sri Lanka', 'Asia'),
('LSO', 'Lesotho', 'Africa'),
('LTU', 'Lithuania', 'Europe'),
('LUX', 'Luxembourg', 'Europe'),
('LVA', 'Latvia', 'Europe'),
('MAC', 'Macao', 'Asia'),
('MAR', 'Morocco', 'Africa'),
('MCO', 'Monaco', 'Europe'),
('MDA', 'Moldova', 'Europe'),
('MDG', 'Madagascar', 'Africa'),
('MDV', 'Maldives', 'Asia'),
('MEX', 'Mexico', 'North America'),
('MHL', 'Marshall Islands', 'Oceania'),
('MKD', 'Macedonia', 'Europe'),
('MLI', 'Mali', 'Africa'),
('MLT', 'Malta', 'Europe'),
('MMR', 'Myanmar', 'Asia'),
('MNG', 'Mongolia', 'Asia'),
('MNP', 'Northern Mariana Islands', 'Oceania'),
('MOZ', 'Mozambique', 'Africa'),
('MRT', 'Mauritania', 'Africa'),
('MSR', 'Montserrat', 'North America'),
('MTQ', 'Martinique', 'North America'),
('MUS', 'Mauritius', 'Africa'),
('MWI', 'Malawi', 'Africa'),
('MYS', 'Malaysia', 'Asia'),
('MYT', 'Mayotte', 'Africa'),
('NAM', 'Namibia', 'Africa'),
('NCL', 'New Caledonia', 'Oceania'),
('NER', 'Niger', 'Africa'),
('NFK', 'Norfolk Island', 'Oceania'),
('NGA', 'Nigeria', 'Africa'),
('NIC', 'Nicaragua', 'North America'),
('NIU', 'Niue', 'Oceania'),
('NLD', 'Netherlands', 'Europe'),
('NOR', 'Norway', 'Europe'),
('NPL', 'Nepal', 'Asia'),
('NRU', 'Nauru', 'Oceania'),
('NZL', 'New Zealand', 'Oceania'),
('OMN', 'Oman', 'Asia'),
('PAK', 'Pakistan', 'Asia'),
('PAN', 'Panama', 'North America'),
('PCN', 'Pitcairn', 'Oceania'),
('PER', 'Peru', 'South America'),
('PHL', 'Philippines', 'Asia'),
('PLW', 'Palau', 'Oceania'),
('PNG', 'Papua New Guinea', 'Oceania'),
('POL', 'Poland', 'Europe'),
('PRI', 'Puerto Rico', 'North America'),
('PRK', 'North Korea', 'Asia'),
('PRT', 'Portugal', 'Europe'),
('PRY', 'Paraguay', 'South America'),
('PSE', 'Palestine', 'Asia'),
('PYF', 'French Polynesia', 'Oceania'),
('QAT', 'Qatar', 'Asia'),
('REU', 'Réunion', 'Africa'),
('ROM', 'Romania', 'Europe'),
('RUS', 'Russian Federation', 'Europe'),
('RWA', 'Rwanda', 'Africa'),
('SAU', 'Saudi Arabia', 'Asia'),
('SDN', 'Sudan', 'Africa'),
('SEN', 'Senegal', 'Africa'),
('SGP', 'Singapore', 'Asia'),
('SGS', 'South Georgia and the South Sandwich Islands', 'Antarctica'),
('SHN', 'Saint Helena', 'Africa'),
('SJM', 'Svalbard and Jan Mayen', 'Europe'),
('SLB', 'Solomon Islands', 'Oceania'),
('SLE', 'Sierra Leone', 'Africa'),
('SLV', 'El Salvador', 'North America'),
('SMR', 'San Marino', 'Europe'),
('SOM', 'Somalia', 'Africa'),
('SPM', 'Saint Pierre and Miquelon', 'North America'),
('STP', 'Sao Tome and Principe', 'Africa'),
('SUR', 'Suriname', 'South America'),
('SVK', 'Slovakia', 'Europe'),
('SVN', 'Slovenia', 'Europe'),
('SWE', 'Sweden', 'Europe'),
('SWZ', 'Swaziland', 'Africa'),
('SYC', 'Seychelles', 'Africa'),
('SYR', 'Syria', 'Asia'),
('TCA', 'Turks and Caicos Islands', 'North America'),
('TCD', 'Chad', 'Africa'),
('TGO', 'Togo', 'Africa'),
('THA', 'Thailand', 'Asia'),
('TJK', 'Tajikistan', 'Asia'),
('TKL', 'Tokelau', 'Oceania'),
('TKM', 'Turkmenistan', 'Asia'),
('TMP', 'East Timor', 'Asia'),
('TON', 'Tonga', 'Oceania'),
('TTO', 'Trinidad and Tobago', 'North America'),
('TUN', 'Tunisia', 'Africa'),
('TUR', 'Turkey', 'Asia'),
('TUV', 'Tuvalu', 'Oceania'),
('TWN', 'Taiwan', 'Asia'),
('TZA', 'Tanzania', 'Africa'),
('UGA', 'Uganda', 'Africa'),
('UKR', 'Ukraine', 'Europe'),
('UMI', 'United States Minor Outlying Islands', 'Oceania'),
('URY', 'Uruguay', 'South America'),
('USA', 'United States', 'North America'),
('UZB', 'Uzbekistan', 'Asia'),
('VAT', 'Holy See (Vatican City State)', 'Europe'),
('VCT', 'Saint Vincent and the Grenadines', 'North America'),
('VEN', 'Venezuela', 'South America'),
('VGB', 'Virgin Islands, British', 'North America'),
('VIR', 'Virgin Islands, U.S.', 'North America'),
('VNM', 'Vietnam', 'Asia'),
('VUT', 'Vanuatu', 'Oceania'),
('WLF', 'Wallis and Futuna', 'Oceania'),
('WSM', 'Samoa', 'Oceania'),
('YEM', 'Yemen', 'Asia'),
('YUG', 'Yugoslavia', 'Europe'),
('ZAF', 'South Africa', 'Africa'),
('ZMB', 'Zambia', 'Africa'),
('ZWE', 'Zimbabwe', 'Africa');

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `Credentials_ID` int(15) NOT NULL,
  `Emp_ID` int(15) DEFAULT NULL,
  `Customer_ID` int(15) DEFAULT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Date_OF_Add` date NOT NULL DEFAULT current_timestamp(),
  `Date_OF_Update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`Credentials_ID`, `Emp_ID`, `Customer_ID`, `Username`, `Password`, `Date_OF_Add`, `Date_OF_Update`) VALUES
(1, 6, NULL, 'JoonaHautaniemi@dayrep.com', 'ooph8ox9Ae', '2024-03-06', '2024-03-26 13:20:38'),
(2, NULL, 1, 'VeikkoPaasio@teleworm.us', '9z5?7[K23qh', '2024-03-26', '2024-03-26 13:17:14'),
(3, 13, NULL, 'SilasJosefsen@jourrapide.com', 'ooSG1Ae', '2024-03-26', '2024-03-26 14:59:45'),
(4, NULL, 5, 'SelmaLehkosuo@teleworm.us', 'Ia3U7P=Q{NN6', '2024-03-26', NULL),
(19, NULL, 10, 'GeorginoSuijkerbuijk@armyspy.com', '6NO9wSvv0a', '2024-04-02', NULL),
(20, NULL, 9, 'MahdiDelgado@teleworm.us', '02p8mcuy?G', '2024-04-02', NULL),
(23, 19, NULL, 'ElsaVayrynen@jourrapide.com', 'z71-6iRQ87', '2024-04-02', NULL),
(24, 18, NULL, 'WilliamWMack@teleworm.us', '2_j?F31z#&', '2024-04-02', NULL),
(25, 17, NULL, 'CarolineDRivera@jourrapide.com', '83y3R03l01', '2024-04-02', NULL),
(26, NULL, 6, 'AnnemariPappila@teleworm.us', '885b_[93p{', '2024-04-02', NULL),
(27, NULL, 2, 'TiinaOjala@teleworm.us', '3k7pb30dRG', '2024-04-02', NULL),
(28, NULL, 3, 'GraceJohnson@dayrep.com', '@15g01QKYs', '2024-04-02', NULL),
(29, NULL, 4, 'ClaudiaBader@rhyta.com', '2wKHiY2s5J', '2024-04-02', NULL),
(30, NULL, 7, 'GodfriedvanDieten@dayrep.com', 'd/83.UVz!q', '2024-04-02', NULL),
(31, NULL, 8, 'ShanayaHingstman@rhyta.com', '1X9F%E9kBc', '2024-04-02', NULL),
(32, 7, NULL, 'KatjaBerglund@jourrapide.com', 'f|#J?PnXyXd', '2024-04-02', NULL),
(33, 8, NULL, 'IsmoAhokainen@armyspy.com', 'H6XJiU(183G', '2024-04-02', NULL),
(34, 10, NULL, 'CynthiaALindsey@teleworm.us', '9G89d.&4Or', '2024-04-02', NULL),
(35, 9, NULL, 'PetteriViljanen@jourrapide.com', ']X&:YcVE-46', '2024-04-02', NULL),
(36, 11, NULL, 'AliisaAutio@dayrep.com', 'BFHYk1*9+/9', '2024-04-02', NULL),
(37, 12, NULL, 'KimNilsen@teleworm.us', 'M7DSf2ENf2', '2024-04-02', NULL),
(38, 14, NULL, 'AzharMasudahNaifeh@rhyta.com', 'g6694IXxA2', '2024-04-02', NULL),
(39, 15, NULL, 'RuwaydahNafisahShammas@jourrapide.com', '83k7Noj3Lo', '2024-04-02', NULL),
(40, 16, NULL, 'GersomGrinwis@jourrapide.com', '3yZ5O5aVX9', '2024-04-02', NULL),
(41, 21, NULL, 'RistoHossi@armyspy.com', 'r6N0XAJK1/b9', '2024-05-02', NULL),
(42, NULL, 22, 'MarisaSantosSouza@dayrep.com', 'ahpha4Reiqu', '2024-05-10', NULL),
(43, NULL, 13, 'KinfeBrhane@armyspy.com', 'Kah8xebi', '2024-05-10', NULL),
(44, NULL, 14, 'FioriSimon@rhyta.com', '362gF1bqK0', '2024-05-10', NULL),
(45, NULL, 15, 'NatasjaOChristoffersen@armyspy.com', 'fL95Be22xw', '2024-05-10', NULL),
(46, NULL, 16, 'HansKristensen@teleworm.us', 'KGiFE380T2', '2024-05-10', NULL),
(47, NULL, 17, 'TuomoHyytia@rhyta.com', 'eJc5L1V8Uv', '2024-05-10', NULL),
(48, NULL, 18, 'MaaritKoskela@jourrapide.com', 'vPcQzc5i50', '2024-05-10', NULL),
(49, NULL, 19, 'UrhoAlatalo@dayrep.com', 'vPcQzc5i50', '2024-05-10', NULL),
(50, NULL, 20, 'JennaMuukkonen@rhyta.com', 'awYbhO85z3', '2024-05-10', NULL),
(51, NULL, 21, 'AnewshTeqwa@dayrep.com', 'H15jU52pbl', '2024-05-10', NULL),
(52, NULL, 23, 'AzadKhamenhaa@rhyta.com', 'oHX5us732U', '2024-05-10', NULL),
(53, 22, NULL, 'SamuelFCruz@armyspy.com', 'lY0U38W7v7', '2024-05-10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `credentials_logs`
--

CREATE TABLE `credentials_logs` (
  `Row_ID` int(15) NOT NULL,
  `Credentials_ID` int(15) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `credentials_logs`
--

INSERT INTO `credentials_logs` (`Row_ID`, `Credentials_ID`, `Date`) VALUES
(1, 1, '2024-03-03'),
(2, 1, '2024-03-03'),
(3, 38, '2024-05-15'),
(4, 19, '2024-05-16'),
(5, 33, '2024-05-02'),
(6, 19, '2024-05-02'),
(7, 20, '2024-05-22'),
(8, 20, '2024-05-05'),
(9, 20, '2024-05-14'),
(10, 19, '2024-05-31'),
(11, 41, '2024-04-01'),
(12, 41, '2024-05-02'),
(13, 4, '2024-03-01'),
(14, 4, '2024-05-01'),
(17, 4, '2024-05-07'),
(18, 4, '2024-06-01'),
(23, 4, '2024-05-12'),
(28, 2, '2024-05-06'),
(29, 2, '2024-05-06'),
(30, 2, '2024-05-04'),
(31, 33, '2024-05-02'),
(32, 33, '2024-05-06'),
(33, 2, '2024-05-01'),
(34, 2, '2024-05-01'),
(35, 20, '2024-05-04'),
(36, 20, '2024-05-05'),
(37, 2, '2024-04-03'),
(38, 26, '2024-05-05'),
(42, 27, '2024-05-15'),
(43, 20, '2025-01-07'),
(44, 41, '2024-05-06'),
(45, 41, '2024-05-06'),
(46, 35, '2024-05-09'),
(47, 3, '2024-05-12'),
(48, 3, '2024-05-08'),
(49, 3, '2024-05-07'),
(50, 51, '2024-05-15'),
(51, 51, '2024-05-10'),
(52, 46, '2024-05-07'),
(53, 48, '2024-05-04'),
(54, 48, '2024-05-10'),
(55, 26, '2024-05-10'),
(56, 27, '2024-05-10'),
(57, 46, '2024-05-01'),
(58, 53, '2024-05-15'),
(59, 32, '2024-05-15');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customer_ID` int(15) NOT NULL,
  `SSN` char(15) NOT NULL,
  `F_Name` varchar(50) NOT NULL,
  `L_Name` varchar(50) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `Nationality` char(3) DEFAULT NULL,
  `Title_OF_Courtesy` enum('Mr.','Ms.','Mrs.') NOT NULL,
  `Phone` char(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `PostalCode` char(5) NOT NULL,
  `Date_OF_Add` date NOT NULL DEFAULT current_timestamp(),
  `Date_OF_Update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customer_ID`, `SSN`, `F_Name`, `L_Name`, `Gender`, `Nationality`, `Title_OF_Courtesy`, `Phone`, `Email`, `Address`, `PostalCode`, `Date_OF_Add`, `Date_OF_Update`) VALUES
(1, '090941-1350', 'Veikko', 'Paasio', 'Male', 'FIN', 'Mr.', '042 055 0923', 'VeikkoPaasio@teleworm.us', 'Kluuvikatu 18', '01610', '2024-03-06', '2024-04-24 12:04:47'),
(2, '180247-682B', 'Tiina', 'Ojala', 'Female', 'FIN', 'Ms.', '041 619 1968', 'TiinaOjala@teleworm.us', 'Piilostentie 65', '40320', '2024-03-06', '2024-04-24 12:07:44'),
(3, '121043-870Y', 'Grace', 'Johnson', 'Female', 'GBR', 'Ms.', '042 523 8342', 'GraceJohnson@dayrep.com', 'Sahankatu 75', '13130', '2024-03-06', '2024-04-24 12:05:15'),
(4, '210660-062V', 'Claudia', 'Bader', 'Female', 'CAN', 'Mrs.', '046 140 0984', 'ClaudiaBader@rhyta.com', 'Kanslerinrinne 35', '02600', '2024-03-06', '2024-04-24 12:05:23'),
(5, '281099-284U', 'Selma ', 'Lehkosuo', 'Female', 'FIN', 'Ms.', '041 097 1229\n', 'SelmaLehkosuo@teleworm.us', 'Piilostentie 32', '40320', '2024-03-22', '2024-04-24 12:05:36'),
(6, '161254-514H', 'Annemari', 'Pappila', 'Female', 'FIN', 'Mrs.', '044 657 7040\n', 'AnnemariPappila@teleworm.us', 'Ysitie 84', '33400', '2024-03-22', '2024-04-24 12:06:38'),
(7, '150582-557U', 'Godfried', 'Van Dieten', 'Male', 'NER', 'Mr.', '050 325 7971\n', 'GodfriedvanDieten@dayrep.com', 'Liisankatu 66', '15840', '2024-03-22', '2024-04-24 12:06:52'),
(8, '221140-662R', 'Shanaya', 'Hingstman', 'Female', 'NOR', 'Ms.', '050 305 0982\n', 'ShanayaHingstman@rhyta.com', 'Hätilänkatu 23', '15610', '2024-03-22', '2024-04-24 12:07:03'),
(9, '220672-251P', 'Mahdi', 'Delgado', 'Male', 'IRN', 'Mr.', '041 411 2915\n', 'MahdiDelgado@teleworm.us', 'Puutarhakatu 19', '01510', '2024-03-22', '2024-04-24 12:06:28'),
(10, '241138-109N', 'Georgino', 'Suijkerbuijk', 'Male', 'ITA', 'Mr.', '042 567 8687\n', 'GeorginoSuijkerbuijk@armyspy.com', 'Ysitie 33', '33400', '2024-03-22', '2024-04-24 12:06:15'),
(13, '130849-383U', 'Kinfe', 'Brhane', 'Male', 'ERI', 'Mr.', 'KinfeBrhane@arm', 'KinfeBrhane@armyspy.com', 'Siikasaarentie 91', '48600', '2024-05-10', NULL),
(14, '230581-2882', 'Fiori', 'Simon', 'Female', 'ERI', 'Ms.', 'FioriSimon@rhyt', 'FioriSimon@rhyta.com', 'Jalonkatu 96', '90420', '2024-05-10', NULL),
(15, '240504A750R', 'Natasja', 'O. Christoffersen', 'Female', 'DNK', 'Ms.', 'NatasjaOChristo', 'NatasjaOChristoffersen@armyspy.com', 'Mämminiementie 95', '20320', '2024-05-10', NULL),
(16, '270588-4312', 'Hans', 'Kristensen', 'Male', 'GRL', 'Mr.', 'HansKristensen@', 'HansKristensen@teleworm.us', 'Hermiankatu 90', '74120', '2024-05-10', NULL),
(17, '280355-149F', 'Tuomo', 'Hyytiä', 'Male', 'FIN', 'Mr.', 'TuomoHyytia@rhy', 'TuomoHyytia@rhyta.com', 'Skinnarilankatu 3', '53500', '2024-05-10', NULL),
(18, '240962-4209', 'Maarit', 'Koskela', 'Female', 'FIN', 'Mrs.', 'MaaritKoskela@j', 'MaaritKoskela@jourrapide.com', 'Linnoitustie 86', '33400', '2024-05-10', NULL),
(19, '040659-627V', 'Urho', 'Alatalo', 'Male', 'FIN', 'Mr.', 'UrhoAlatalo@day', 'UrhoAlatalo@dayrep.com', 'Ilmalankuja 80', '28360', '2024-05-10', NULL),
(20, '101298-380N', 'Jenna', 'Muukkonen', 'Female', 'FIN', 'Ms.', 'JennaMuukkonen@', 'JennaMuukkonen@rhyta.com', 'Unioninkatu 10', '00700', '2024-05-10', NULL),
(21, '031185-3877', 'Anewsh', 'Teqwa', 'Male', 'IRN', 'Mr.', 'AnewshTeqwa@day', 'AnewshTeqwa@dayrep.com', 'Piilostentie 77', '20780', '2024-05-10', '2024-05-10 11:57:33'),
(22, '030384-542H', 'Marisa', 'Santos Souza', 'Female', 'BRA', 'Ms.', 'MarisaSantosSou', 'MarisaSantosSouza@dayrep.com', 'Vanhamaantie 53', '48600', '2024-05-10', NULL),
(23, '130863-721B', 'Azad', 'Khamenhaa', 'Male', 'AFG', 'Mr.', 'AzadKhamenhaa@r', 'AzadKhamenhaa@rhyta.com', 'Kiannonkatu 87', '00390', '2024-05-10', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_credentials`
-- (See below for the actual view)
--
CREATE TABLE `customer_credentials` (
`Credentials_ID` int(15)
,`Customer_ID` int(15)
,`F_Name` varchar(50)
,`L_Name` varchar(50)
,`Username` varchar(50)
,`Password` varchar(50)
,`Date_OF_Add` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `employeecanspeaklanguage`
-- (See below for the actual view)
--
CREATE TABLE `employeecanspeaklanguage` (
`SSN` char(15)
,`F_Name` varchar(50)
,`L_Name` varchar(50)
,`language` mediumtext
);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Emp_ID` int(15) NOT NULL,
  `SSN` char(15) NOT NULL,
  `F_Name` varchar(50) NOT NULL,
  `L_Name` varchar(50) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `PostalCode` char(5) DEFAULT NULL,
  `Date_OF_Add` date NOT NULL DEFAULT current_timestamp(),
  `Date_OF_Update` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Reports_To` int(15) DEFAULT NULL,
  `Image_Name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Emp_ID`, `SSN`, `F_Name`, `L_Name`, `Gender`, `Phone`, `Email`, `Address`, `PostalCode`, `Date_OF_Add`, `Date_OF_Update`, `Reports_To`, `Image_Name`) VALUES
(6, '241003A159E', 'Joona', 'Hautaniemi', 'Male', '041 213 8542', 'JoonaHautaniemi@dayrep.com', 'Keskustie 59', '00100', '2021-03-03', '2024-05-10 13:18:30', NULL, '241003A159E.jpg'),
(7, '270772-3221', 'Katja', 'Berglund', 'Female', '044 780 2773', 'KatjaBerglund@jourrapide.com', 'Kangasmoisionkatu 49', '00390', '2024-03-06', '2024-05-06 11:31:30', 6, '270772-3221.jpg'),
(8, '151187-291C', 'Ismo', 'Ahokainen', 'Male', '044 124 2790', 'IsmoAhokainen@armyspy.com', 'Norra Larsmovägen 67', '70200', '2024-03-18', '2024-05-06 11:32:11', NULL, '151187-291C.jpg'),
(9, '260666-673B', 'Petteri', 'Viljanen', 'Male', '041 434 6692', 'PetteriViljanen@jourrapide.com', 'Kunnankuja 55', '90420', '2024-03-18', '2024-05-06 11:32:29', NULL, '260666-673B.jpg'),
(10, '290566-460L', 'Cynthia', 'A. Lindsey', 'Female', '041 854 0282\n', 'CynthiaALindsey@teleworm.us', 'Hätilänkatu 49', '15610', '0000-00-00', '2024-05-06 11:50:44', 8, '290566-460L.jpg'),
(11, '220364-0989', 'Aliisa', 'Autio', 'Female', '050 775 9997\n', 'AliisaAutio@dayrep.com', 'Lönnrotinkatu 84', '40320', '2024-03-12', '2024-05-10 13:18:46', NULL, '220364-0989.jpg'),
(12, '121182-5650', 'Kim', 'Nilsen', 'Male', '040 665 1181\n', 'KimNilsen@teleworm.us', 'Mämminiementie 63', '20320', '2024-03-26', '2024-05-10 13:19:04', NULL, '121182-5650.jpg'),
(13, '210254-299R', 'Silas', 'Josefsen', 'Male', '040 005 1181\n', 'SilasJosefsen@jourrapide.com', 'Viinikantie 77', '13130', '2024-03-26', '2024-05-06 11:39:16', NULL, '210254-299R.jpg'),
(14, '301250-0684', 'Azhar Mas\'udah', 'Naifeh', 'Male', '042 446 7706\n', 'AzharMasudahNaifeh@rhyta.com', 'Kerkkolankatu 63', '87400', '2024-03-26', '2024-05-06 11:39:54', NULL, '301250-0684.jpg'),
(15, '310398-690Y', 'Ruwaydah Nafisah', 'Shammas', 'Female', '040 203 4405\n', 'RuwaydahNafisahShammas@jourrapide.com', 'Kluuvikatu 24', '01720', '2024-03-26', '2024-05-06 11:38:19', NULL, '310398-690Y.jpg'),
(16, '170267-397N', 'Gersom', 'Grinwis', 'Male', '044 441 8498', 'GersomGrinwis@jourrapide.com', 'Kluuvikatu 20', '01510', '2024-03-26', '2024-05-06 11:43:27', NULL, '170267-397N.jpg'),
(17, '020986-374T', 'Caroline', 'D. Rivera', 'Female', '046 568 2014', 'CarolineDRivera@jourrapide.com', 'Kaarrostie 82', '01510', '2024-04-02', '2024-05-06 11:49:37', 16, '020986-374T.jpg'),
(18, '090569-621V', 'William', 'W. Mack', 'Male', '050 243 3129', 'WilliamWMack@teleworm.us', 'Mämminiementie 68', '20320', '2024-04-02', '2024-05-06 11:44:47', 12, '090569-621V.jpg'),
(19, '181268-140B', 'Elsa', 'Väyrynen', 'Female', '044 835 4723', 'ElsaVayrynen@jourrapide.com', 'Kangasmoisionkatu 79', '40320', '2024-04-02', '2024-05-06 11:38:48', NULL, '181268-140B.jpg'),
(21, '271294-825Y', 'Risto', 'Hossi', 'Male', '042 479 5096', 'RistoHossi@armyspy.com', 'Rörgrunsvägen 50', '65300', '2024-04-30', '2024-05-06 11:47:09', NULL, '271294-825Y.jpg'),
(22, '161299-3937', 'Samuel', 'F. Cruz', 'Male', '041 363 3776', 'SamuelFCruz@armyspy.com', 'Gesterbyntie 58', '13130', '2024-05-06', '2024-05-06 11:53:35', NULL, '161299-3937.jpg'),
(23, '120163-8740', 'Chrisse', 'Parrott', 'Male', '042 064 6961', 'cparrott0@t-online.de', 'Sahantie 61', '02200', '2024-08-26', '2024-08-26 16:15:00', NULL, NULL),
(24, '121039-6306', 'Terhi', 'Hagman', 'Female', '050 034 3232', 'TerhiHagman@armyspy.com', 'Jalonkatu 39', '80100', '2024-08-26', '2024-08-27 16:46:21', NULL, '121039-6306.png'),
(25, '271200A352E', 'Natalia', 'Lehkosuo', 'Female', '042 376 2106', 'NataliaLehkosuo@jourrapide.com', 'Norra Larsmovägen 95\r\n', '70200', '2024-08-26', '2024-08-26 16:20:28', NULL, NULL),
(26, '150154-3357', 'Saku', 'Lampinen', 'Male', '041 331 5143', 'SakuLampinen@rhyta.com', 'Kartanomäenkatu 65', '04300', '2024-08-26', '2024-08-26 16:27:07', NULL, NULL),
(27, '040656-3472', 'Åke ', 'Pekkarinen', 'Male', '050 743 8551', 'AkePekkarinen@dayrep.com', 'Kerkkolankatu 72', '65300', '2024-08-26', '2024-08-26 16:35:13', NULL, NULL),
(28, '080447-404J', 'Vilma', 'Rautakorpi', 'Female', '050 238 8583', 'VilmaRautakorpi@armyspy.com', 'Inkereentie 41', '30100', '2024-08-26', '2024-08-26 16:35:22', NULL, NULL),
(29, '041299-0680', 'Auli', 'Saraste', 'Male', '046 893 4633', 'AuliSaraste@dayrep.com', 'Koskikatu 66', '00880', '2024-08-26', '2024-08-26 16:44:44', NULL, NULL),
(30, '190751-5582', 'Hannele', 'Hintikka', 'Female', '050 783 7405', 'HanneleHintikka@rhyta.com', 'Kaarikatu 70', '13130', '2024-08-26', '2024-08-26 16:42:28', NULL, NULL),
(31, '080394-2618', 'Ari-Pekka', 'Tervo', 'Male', '041 793 1980', 'Ari-PekkaTervo@armyspy.com', 'Hätilänkatu 30', '15840', '2024-08-26', '2024-08-26 16:42:34', NULL, NULL),
(32, '080384-537K', 'Kalle', 'Rosberg', 'Male', '044 518 1842', 'KalleRosberg@dayrep.com', 'Hätilänkatu 27', '15840', '2024-08-26', '2024-08-27 16:47:24', NULL, '080384-537K.jpg'),
(33, '050702A784N', 'Khitam Humayrah', 'Dagher', 'Female', '050 155 6854', 'KhitamHumayrahDagher@rhyta.com', 'Sulkuvartijankatu 85', '28360', '2024-08-26', '2024-08-26 16:46:23', NULL, NULL),
(34, '101280-2594', 'Yusri Aza', 'Deeb', 'Male', '044 311 3736', 'YusriAzaDeeb@jourrapide.com', 'Heikkurintie 30', '42100', '2024-08-26', '2024-08-26 16:47:14', NULL, NULL),
(35, '060686-8433', 'Jeronim', 'Kowalski', 'Male', '046 489 4065', 'JeronimKowalski@teleworm.us', 'Kerkkolankatu 1', '90440', '2024-08-26', '2024-08-26 16:57:37', NULL, NULL),
(36, '120763-720V', 'Adrianna', 'Kalinowska', 'Female', '042 721 8706', 'AdriannaKalinowska@armyspy.com', 'Rörgrunsvägen 45', '65300', '2024-08-26', '2024-08-26 16:49:32', NULL, NULL),
(37, '100983-828U', 'Anja', 'Eiffel', 'Female', '041 454 6672', 'AnjaEiffel@dayrep.com', 'Tawastintie 72', '60510', '2024-08-26', '2024-08-27 16:45:48', NULL, '100983-828U.jpg'),
(38, '300570-6469', 'Sirpa', 'Santanen', 'Female', '040-7658602', 'sirpa.santanen@mail.com', 'Veetikatu 27', '30007', '2024-08-27', '2024-08-27 16:43:06', NULL, NULL),
(39, '290783-580F', 'Tiia', 'Johanson', 'Female', '040 108 9511', 'TiiaJohanson@armyspy.com', 'Kylmäniementie 76', '33400', '2024-08-27', '2024-08-27 14:37:53', NULL, NULL),
(40, '220950-445P', 'Ostap', 'Ponomaryov', 'Male', '044 741 0314', 'OstapPonomaryov@dayrep.com', 'Mämminiementie 22', '20320', '2024-08-27', '2024-08-27 14:39:09', NULL, NULL),
(41, '010239-593E', 'Edvard', 'Olsson', 'Male', '046 112 1545', 'EdvardOlsson@rhyta.com', 'Otakaari 26', '06100', '2024-08-27', '2024-08-27 14:40:47', NULL, NULL),
(42, '250103A2038', 'Alessandro', ' Solorio Muro', 'Male', '046 789 1413', 'AlessandroSolorioMuro@jourrapide.com', 'Valssaamontie 90', '13130', '2024-08-27', '2024-08-27 14:44:30', NULL, NULL),
(43, '070378-088W', 'Renata', 'Milić', 'Female', '050 833 4638', 'RenataMilic@armyspy.com', 'Ysitie 93', '33400', '2024-08-27', '2024-08-27 14:45:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_credentials`
-- (See below for the actual view)
--
CREATE TABLE `employee_credentials` (
`Credentials_ID` int(15)
,`F_Name` varchar(50)
,`L_Name` varchar(50)
,`Username` varchar(50)
,`Password` varchar(50)
,`Date_OF_Add` date
);

-- --------------------------------------------------------

--
-- Table structure for table `employee_service_langauge`
--

CREATE TABLE `employee_service_langauge` (
  `Row_ID` int(15) NOT NULL,
  `Emp_ID` int(15) NOT NULL,
  `Language` enum('ENG','FIN','RUS','SWE','EE','SPA','FRA','DEU','DUT','NOR','POL','LUX','GRE','POR','PER','SAU','IRN','AFG','IND','CHI','JAP','TJ','TUR','THI','URD','ITA') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `employee_service_langauge`
--

INSERT INTO `employee_service_langauge` (`Row_ID`, `Emp_ID`, `Language`) VALUES
(43, 11, 'ENG'),
(44, 11, 'FIN'),
(45, 11, 'SWE'),
(46, 15, 'RUS'),
(47, 15, 'AFG'),
(48, 14, 'ENG'),
(49, 14, 'FIN'),
(50, 10, 'SWE'),
(51, 10, 'ENG'),
(52, 10, 'LUX'),
(53, 10, 'POR'),
(54, 10, 'AFG'),
(55, 15, 'DEU'),
(56, 19, 'RUS'),
(57, 19, 'FRA'),
(58, 19, 'CHI'),
(59, 19, 'PER'),
(60, 19, 'ENG'),
(61, 14, 'SAU'),
(62, 14, 'RUS'),
(63, 11, 'JAP'),
(64, 11, 'NOR'),
(65, 11, 'POL'),
(66, 11, 'TJ'),
(67, 14, 'URD'),
(68, 15, 'SWE'),
(69, 16, 'JAP'),
(70, 16, 'FRA'),
(71, 16, 'ENG'),
(72, 16, 'EE'),
(73, 17, 'ITA'),
(74, 17, 'ENG'),
(75, 15, 'ITA'),
(76, 17, 'DEU'),
(77, 10, 'TUR'),
(78, 17, 'POL'),
(79, 17, 'EE'),
(80, 18, 'ENG'),
(81, 18, 'DUT'),
(82, 18, 'TJ'),
(83, 18, 'GRE'),
(84, 18, 'POL'),
(85, 18, 'SWE'),
(86, 18, 'FIN'),
(87, 15, 'TJ');

-- --------------------------------------------------------

--
-- Table structure for table `employee_titles`
--

CREATE TABLE `employee_titles` (
  `Row_ID` int(15) NOT NULL,
  `Emp_ID` int(15) NOT NULL,
  `Title_ID` int(15) NOT NULL,
  `From_Date` date DEFAULT NULL,
  `To_Date` date DEFAULT NULL,
  `Current_Title` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `employee_titles`
--

INSERT INTO `employee_titles` (`Row_ID`, `Emp_ID`, `Title_ID`, `From_Date`, `To_Date`, `Current_Title`) VALUES
(7, 6, 1, '2023-08-01', '2024-04-04', 0),
(10, 6, 1, '2024-04-08', '2025-04-08', 1),
(11, 6, 1, '2023-05-04', '2010-06-16', 0),
(12, 7, 1, '2021-06-01', '2023-07-01', 0),
(13, 7, 1, '2023-08-01', '2024-12-31', 1),
(14, 16, 1, '2024-01-01', '2025-03-01', 1),
(15, 16, 3, '2024-01-01', '2025-03-01', 1),
(16, 21, 1, '2024-05-07', '2025-05-07', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_without_contract`
-- (See below for the actual view)
--
CREATE TABLE `employee_without_contract` (
`EMP_ID` int(15)
,`SSN` char(15)
,`EmployeeName` varchar(101)
,`Store_Name` varchar(50)
,`From_Date` date
,`To_Date` date
,`Service_Status` enum('Active','DeActive')
,`Contract_Type` enum('Permanent','For_Now','Temporary')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_with_active_contract`
-- (See below for the actual view)
--
CREATE TABLE `employee_with_active_contract` (
`EMP_ID` int(15)
,`SSN` char(15)
,`EmployeeName` varchar(101)
,`Store_Name` varchar(50)
,`From_Date` date
,`To_Date` date
,`Service_Status` enum('Active','DeActive')
,`Contract_Type` enum('Permanent','For_Now','Temporary')
);

-- --------------------------------------------------------

--
-- Table structure for table `emp_salaries`
--

CREATE TABLE `emp_salaries` (
  `Row_ID` int(15) NOT NULL,
  `Emp_ID` int(15) NOT NULL,
  `Salary` int(15) NOT NULL,
  `Deal_Comission` int(15) DEFAULT NULL,
  `From_Date` date NOT NULL,
  `To_Date` date NOT NULL,
  `Date_OF_Add` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `emp_salaries`
--

INSERT INTO `emp_salaries` (`Row_ID`, `Emp_ID`, `Salary`, `Deal_Comission`, `From_Date`, `To_Date`, `Date_OF_Add`) VALUES
(3, 7, 6500, 0, '2021-06-01', '2023-07-01', '2023-04-07'),
(4, 7, 11000, 0, '2023-08-01', '2024-12-31', '2024-04-04'),
(5, 6, 3400, 5, '2023-08-01', '2024-04-04', '2024-04-04'),
(6, 6, 4500, 0, '2023-05-04', '2010-06-16', '2024-04-04'),
(7, 6, 8600, 20, '2023-04-08', '2025-04-08', '2024-04-04'),
(8, 21, 4500, 10, '2024-05-07', '2025-05-07', '2024-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `feature_list`
--

CREATE TABLE `feature_list` (
  `Feature_ID` int(15) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `feature_list`
--

INSERT INTO `feature_list` (`Feature_ID`, `Name`) VALUES
(1, 'Laminoidut äänieristelasit'),
(2, 'Volvo on call'),
(3, 'Vetokoukku irroitettava'),
(5, 'Navigointijärjestelmä'),
(6, 'Digimittaristo'),
(7, 'Adaptiivinen vakionopeudensäädin'),
(8, 'Pilot assist'),
(9, 'Peruutuskamera'),
(10, 'Aktiivinen kaistavahti'),
(11, 'Nahkaverhoilu'),
(12, 'plug-in latauspistoke Type 2'),
(13, 'Sadetunnistin'),
(14, 'Aktiivinen pysäköintiavustin'),
(15, 'Nopeusrajoitus -tunnistin'),
(16, 'Pysäköintitutka edessä ja takana'),
(17, 'Sähkötoiminen takaluukku'),
(19, 'LED-ajovalot'),
(20, 'Kaarrevalot'),
(21, 'Sumuvalot'),
(22, 'Automaattinen ilmastointi (kaksialueinen)'),
(23, 'Äänentoistojärjestelmä'),
(24, 'Bluetooth handsfree matkapuhelinvarustus audiontoi'),
(26, 'Automaattisesti himmentyvä taustapeili ja sivupeil'),
(27, 'Nahkaverhoiltu monitoimiohjauspyörä'),
(28, 'Penkinlämmittimet edessä'),
(29, 'Urheiluistuimet'),
(30, 'Sähkösäätöiset istuimet muistilla'),
(31, 'Huoltokirja'),
(32, 'Kahdet renkaat'),
(33, 'Kahdet avaimet'),
(34, 'Suomi-auto'),
(35, '1 omistaja'),
(36, 'Erikoisväri'),
(37, 'Lämmitettävä ohjauspyörä'),
(38, 'Audio-liitäntä'),
(39, 'Audio-liitäntä: Bluetooth'),
(40, 'Ilmastointi: Automaattinen'),
(41, 'Isofix-valmius'),
(42, 'Monitoimiohjauspyörä'),
(43, 'Keskuslukitus: Avaimeton'),
(44, 'Mäkilähtöavustin'),
(45, 'Luistonestojärjestelmä'),
(46, 'Sähkötoiminen takaovien lapsilukko'),
(47, 'LED-takavalot valoanimaatioilla'),
(48, 'Sähkötoiminen takaovien lapsilukko'),
(57, 'Ristiseläntuki'),
(58, 'Driving Assistant Professional'),
(59, 'Harman Kardon Surround System -kaiutinjärjestelmä'),
(60, 'BMW Live Cockpit Professional'),
(61, 'Nelialue-ilmastointiautomatiikka'),
(62, 'Etuistuinten sähkösäätö, kuljettajan istuin muisti'),
(63, 'Ilmajousitus'),
(64, 'Kaukovaloavustin'),
(65, 'M turvavyöt'),
(66, 'Murtohälytin'),
(67, 'Langaton latausasema'),
(68, 'Parking Assistant Professional'),
(69, 'Vetokoukku'),
(71, 'Bluetooth-Hands-free -liitäntä'),
(73, 'LED-sisävalopaketti'),
(74, 'LED- sisäänastumisvalo etu- ja takaovissa'),
(75, 'Mustat ulkopeilien kotelot'),
(76, 'Tummennetut taka- ja takasivulasit'),
(77, 'USB-liitäntä takaistuimille'),
(78, '3-alueilmastointi'),
(79, 'Nopeusrajoitustunnistin'),
(80, '360° camera'),
(81, 'Panorama-katto'),
(82, 'Etuistuinten lämmitys'),
(83, 'Älypuhelimen integrointi'),
(84, 'Kaistanvaihtoavustin'),
(85, 'Pimeänäköavustin'),
(86, 'Ovien sulkemisavustin'),
(87, 'Digitaaliradio'),
(88, 'Ionisaattori'),
(89, 'Aluvanteet kesä-ja talvirenkaissa'),
(90, 'Mittaristo kahdella HD-näytöllä'),
(91, 'Sähkötoiminen käsijarru'),
(92, 'hiilikuitupaketti'),
(93, 'Sivutörmäyssuoja'),
(94, 'Akustinen jalankulkijan varoitin'),
(95, 'Katveavustin'),
(96, 'Liikennemerkki tunnistin'),
(97, '2 USB-liitäntää takatilassa'),
(98, 'Aktiivinen jarrutusavustin'),
(99, 'Tuulilasinäyttö HUD'),
(100, 'Korinväriset sivulistat'),
(101, 'Apple Car Play'),
(102, 'Android Auto'),
(103, 'Panorama kattoluukku'),
(104, 'Tunnelmavalaistus'),
(105, 'Ilma-alusta'),
(106, 'Musta sisäkatto'),
(107, 'Rattivaihteet'),
(108, 'Suksiluukku'),
(109, 'Rengaspainevahti'),
(110, 'Panorama kattoluukku'),
(111, 'Lukkiutumattomat jarrut (ABS)'),
(112, 'Ohjaustehostin'),
(113, 'Head-Up-näyttö'),
(114, 'Turbo');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `Row_ID` int(15) NOT NULL,
  `VIN` char(50) DEFAULT NULL,
  `Image_Name` varchar(150) NOT NULL,
  `Date_OF_Add` date NOT NULL DEFAULT current_timestamp(),
  `Date_OF_Updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`Row_ID`, `VIN`, `Image_Name`, `Date_OF_Add`, `Date_OF_Updated`) VALUES
(1, '1FTDR15X4TPA96892', '1FTDR15X4TPA96892_65107.jpg', '2024-04-29', '2024-05-24 15:36:55'),
(2, '1FTDR15X4TPA96892', '1FTDR15X4TPA96892_11710.jpg', '2024-04-29', '2024-05-24 15:36:55'),
(3, '1FTDR15X4TPA96892', '1FTDR15X4TPA96892_901.jpg', '2024-04-29', '2024-05-24 15:36:55'),
(4, '1FTDR15X4TPA96892', '1FTDR15X4TPA96892_15734.jpg', '2024-04-29', '2024-05-24 15:36:55'),
(5, '1FTDR15X4TPA96892', '1FTDR15X4TPA96892_1121.jpg', '2024-04-29', '2024-05-24 15:36:55'),
(6, '1FTDR15X4TPA96892', '1FTDR15X4TPA96892_22229.jpg', '2024-04-29', '2024-05-24 15:36:55'),
(7, 'WDBEA30E1NB582331', 'WDBEA30E1NB582331_41153.jpg', '2024-04-29', '2024-05-24 15:36:55'),
(8, 'WDBEA30E1NB582331', 'WDBEA30E1NB582331_73970.jpg', '2024-04-29', '2024-05-24 15:36:55'),
(9, 'WDBEA30E1NB582331', 'WDBEA30E1NB582331_30468.jpg', '2024-04-29', '2024-05-24 15:36:55'),
(10, 'WDBEA30E1NB582331', 'WDBEA30E1NB582331_73728.jpg', '2024-04-29', '2024-05-24 15:36:55'),
(11, 'WDBEA30E1NB582331', 'WDBEA30E1NB582331_31251.jpg', '2024-04-29', '2024-05-24 15:36:55'),
(12, 'WDBEA30E1NB582331', 'WDBEA30E1NB582331_62731.jpg', '2024-04-29', '2024-05-24 15:36:55'),
(13, '3VWJ17AT8EM646195', '3VWJ17AT8EM646195_72910.jpg', '2024-04-30', '2024-05-24 15:36:55'),
(14, '3VWJ17AT8EM646195', '3VWJ17AT8EM646195_94689.jpg', '2024-04-30', '2024-05-24 15:36:55'),
(15, '3VWJ17AT8EM646195', '3VWJ17AT8EM646195_98946.jpg', '2024-04-30', '2024-05-24 15:36:55'),
(16, '3VWJ17AT8EM646195', '3VWJ17AT8EM646195_57623.jpg', '2024-04-30', '2024-05-24 15:36:55'),
(17, '3VWJ17AT8EM646195', '3VWJ17AT8EM646195_46851.jpg', '2024-04-30', '2024-05-24 15:36:55'),
(18, '3VWJ17AT8EM646195', '3VWJ17AT8EM646195_84759.jpg', '2024-04-30', '2024-05-24 15:36:55'),
(19, 'WBAYF8C52EDS00432', 'WBAYF8C52EDS00432_33528.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(20, 'WBAYF8C52EDS00432', 'WBAYF8C52EDS00432_86570.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(21, 'WBAYF8C52EDS00432', 'WBAYF8C52EDS00432_89531.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(22, 'WBAYF8C52EDS00432', 'WBAYF8C52EDS00432_5117.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(23, 'WBAYF8C52EDS00432', 'WBAYF8C52EDS00432_37595.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(24, 'WBAYF8C52EDS00432', 'WBAYF8C52EDS00432_68032.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(25, 'WBAYF8C52EDS00432', 'WBAYF8C52EDS00432_27901.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(26, 'WBAYF8C52EDS00432', 'WBAYF8C52EDS00432_98622.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(27, 'WBAYF8C52EDS00432', 'WBAYF8C52EDS00432_4028.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(28, 'WBAYF8C52EDS00432', 'WBAYF8C52EDS00432_36044.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(29, 'WBAYF8C52EDS00432', 'WBAYF8C52EDS00432_89893.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(30, '3GYFNHEY4BS0002EX', '3GYFNHEY4BS0002EX_84987.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(31, '3GYFNHEY4BS0002EX', '3GYFNHEY4BS0002EX_71307.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(32, '3GYFNHEY4BS0002EX', '3GYFNHEY4BS0002EX_30131.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(33, '3GYFNHEY4BS0002EX', '3GYFNHEY4BS0002EX_42299.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(34, '3GYFNHEY4BS0002EX', '3GYFNHEY4BS0002EX_40916.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(35, '3GYFNHEY4BS0002EX', '3GYFNHEY4BS0002EX_59118.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(36, '3GYFNHEY4BS0002EX', '3GYFNHEY4BS0002EX_59252.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(37, '3GYFNHEY4BS0002EX', '3GYFNHEY4BS0002EX_15300.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(38, '3GYFNHEY4BS0002EX', '3GYFNHEY4BS0002EX_64816.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(39, '3GYFNHEY4BS0002EX', '3GYFNHEY4BS0002EX_11979.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(40, '3GYFNHEY4BS0002EX', '3GYFNHEY4BS0002EX_32066.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(41, '3GYFNHEY4BS0002EX', '3GYFNHEY4BS0002EX_6987.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(42, '3GYFNHEY4BS0002EX', '3GYFNHEY4BS0002EX_21542.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(43, 'ZFFMN34A0L0085788', 'ZFFMN34A0L0085788_88608.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(44, 'ZFFMN34A0L0085788', 'ZFFMN34A0L0085788_60887.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(45, 'ZFFMN34A0L0085788', 'ZFFMN34A0L0085788_2007.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(46, 'ZFFMN34A0L0085788', 'ZFFMN34A0L0085788_94451.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(47, 'ZFFMN34A0L0085788', 'ZFFMN34A0L0085788_69083.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(48, 'ZFFMN34A0L0085788', 'ZFFMN34A0L0085788_74550.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(49, 'ZFFMN34A0L0085788', 'ZFFMN34A0L0085788_88738.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(50, 'ZFFMN34A0L0085788', 'ZFFMN34A0L0085788_28819.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(51, 'ZFFMN34A0L0085788', 'ZFFMN34A0L0085788_86927.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(52, 'ZFFMN34A0L0085788', 'ZFFMN34A0L0085788_81561.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(53, 'ZFFMN34A0L0085788', 'ZFFMN34A0L0085788_57819.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(54, 'ZFFMN34A0L0085788', 'ZFFMN34A0L0085788_13702.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(55, 'ZFFMN34A0L0085788', 'ZFFMN34A0L0085788_48669.jpg', '2024-05-06', '2024-05-24 15:36:55'),
(56, 'WVGMR67L090010501', 'WVGMR67L090010501_71157.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(57, 'WVGMR67L090010501', 'WVGMR67L090010501_54458.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(58, 'WVGMR67L090010501', 'WVGMR67L090010501_36106.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(59, 'WVGMR67L090010501', 'WVGMR67L090010501_44606.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(60, 'WVGMR67L090010501', 'WVGMR67L090010501_66868.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(61, 'WVGMR67L090010501', 'WVGMR67L090010501_24785.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(62, 'WVGMR67L090010501', 'WVGMR67L090010501_27086.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(63, 'WVGMR67L090010501', 'WVGMR67L090010501_5216.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(64, 'WVGMR67L090010501', 'WVGMR67L090010501_73727.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(65, 'WVGMR67L090010501', 'WVGMR67L090010501_20906.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(66, 'WVGMR67L090010501', 'WVGMR67L090010501_52903.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(67, 'WVGMR67L090010501', 'WVGMR67L090010501_12300.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(68, 'WVGMR67L090010501', 'WVGMR67L090010501_70915.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(69, 'WVGMR67L090010501', 'WVGMR67L090010501_48520.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(70, 'WVGMR67L090010501', 'WVGMR67L090010501_62494.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(71, 'WVGMR67L090010501', 'WVGMR67L090010501_51908.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(72, 'WVGMR67L090010501', 'WVGMR67L090010501_30407.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(73, 'WP0AA2964PS820410', 'WP0AA2964PS820410_84209.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(74, 'WP0AA2964PS820410', 'WP0AA2964PS820410_20882.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(75, 'WP0AA2964PS820410', 'WP0AA2964PS820410_83945.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(76, 'WP0AA2964PS820410', 'WP0AA2964PS820410_56485.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(77, 'WP0AA2964PS820410', 'WP0AA2964PS820410_20201.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(78, 'WP0AA2964PS820410', 'WP0AA2964PS820410_93807.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(79, 'WP0AA2964PS820410', 'WP0AA2964PS820410_44915.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(80, 'WP0AA2964PS820410', 'WP0AA2964PS820410_61209.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(81, 'WP0AA2964PS820410', 'WP0AA2964PS820410_80976.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(82, 'WP0AA2964PS820410', 'WP0AA2964PS820410_39265.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(83, 'WP0AA2964PS820410', 'WP0AA2964PS820410_90215.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(84, 'WP0AA2964PS820410', 'WP0AA2964PS820410_56322.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(85, 'WP0AA2964PS820410', 'WP0AA2964PS820410_1933.jpg', '2024-05-15', '2024-05-24 15:36:55'),
(86, 'YV1SW61R021197119', 'YV1SW61R021197119_47899.webp', '2024-05-21', '2024-05-24 15:36:55'),
(87, 'YV1SW61R021197119', 'YV1SW61R021197119_18638.webp', '2024-05-21', '2024-05-24 15:36:55'),
(88, 'YV1SW61R021197119', 'YV1SW61R021197119_607.webp', '2024-05-21', '2024-05-24 15:36:55'),
(89, 'YV1SW61R021197119', 'YV1SW61R021197119_55442.webp', '2024-05-21', '2024-05-24 15:36:55'),
(90, 'YV1SW61R021197119', 'YV1SW61R021197119_80727.webp', '2024-05-21', '2024-05-24 15:36:55'),
(91, 'YV1SW61R021197119', 'YV1SW61R021197119_2326.webp', '2024-05-21', '2024-05-24 15:36:55'),
(92, 'YV1SW61R021197119', 'YV1SW61R021197119_87868.webp', '2024-05-21', '2024-05-24 15:36:55'),
(93, 'YV1SW61R021197119', 'YV1SW61R021197119_24018.webp', '2024-05-21', '2024-05-24 15:36:55'),
(94, 'YV1SW61R021197119', 'YV1SW61R021197119_31050.webp', '2024-05-21', '2024-05-24 15:36:55'),
(95, 'YV1SW61R021197119', 'YV1SW61R021197119_65232.webp', '2024-05-21', '2024-05-24 15:36:55'),
(96, 'YV1SW61R021197119', 'YV1SW61R021197119_4950.webp', '2024-05-21', '2024-05-24 15:36:55'),
(97, 'YV1SW61R021197119', 'YV1SW61R021197119_75862.webp', '2024-05-21', '2024-05-24 15:36:55'),
(98, 'YV1SW61R021197119', 'YV1SW61R021197119_35207.webp', '2024-05-21', '2024-05-24 15:36:55'),
(99, 'YV1SW61R021197119', 'YV1SW61R021197119_84594.webp', '2024-05-21', '2024-05-24 15:36:55'),
(100, 'YV1SW61R021197119', 'YV1SW61R021197119_57063.webp', '2024-05-21', '2024-05-24 15:36:55'),
(101, '1D7HA18N38J191236', '1D7HA18N38J191236_96817.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(102, '1D7HA18N38J191236', '1D7HA18N38J191236_9172.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(103, '1D7HA18N38J191236', '1D7HA18N38J191236_94741.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(104, '1D7HA18N38J191236', '1D7HA18N38J191236_70110.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(105, '1D7HA18N38J191236', '1D7HA18N38J191236_94220.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(106, '1D7HA18N38J191236', '1D7HA18N38J191236_53762.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(107, '1D7HA18N38J191236', '1D7HA18N38J191236_85590.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(108, '1D7HA18N38J191236', '1D7HA18N38J191236_98834.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(109, '1D7HA18N38J191236', '1D7HA18N38J191236_4197.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(110, '1D7HA18N38J191236', '1D7HA18N38J191236_39980.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(111, '1D7HA18N38J191236', '1D7HA18N38J191236_45637.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(112, '1D7HA18N38J191236', '1D7HA18N38J191236_19304.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(113, '1D7HA18N38J191236', '1D7HA18N38J191236_81486.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(114, '1D7HA18N38J191236', '1D7HA18N38J191236_76715.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(115, '1D7HA18N38J191236', '1D7HA18N38J191236_4363.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(116, '1D7HA18N38J191236', '1D7HA18N38J191236_79937.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(117, '1D7HA18N38J191236', '1D7HA18N38J191236_43431.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(118, '1D7HA18N38J191236', '1D7HA18N38J191236_62720.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(119, '1D7HA18N38J191236', '1D7HA18N38J191236_82778.jfif', '2024-05-21', '2024-05-24 15:36:55'),
(120, '4S3BJ6329M1918965', '4S3BJ6329M1918965_8486.webp', '2024-05-21', '2024-05-24 15:36:55'),
(121, '4S3BJ6329M1918965', '4S3BJ6329M1918965_75801.webp', '2024-05-21', '2024-05-24 15:36:55'),
(122, '4S3BJ6329M1918965', '4S3BJ6329M1918965_15400.webp', '2024-05-21', '2024-05-24 15:36:55'),
(123, '4S3BJ6329M1918965', '4S3BJ6329M1918965_33475.webp', '2024-05-21', '2024-05-24 15:36:55'),
(124, '4S3BJ6329M1918965', '4S3BJ6329M1918965_32710.webp', '2024-05-21', '2024-05-24 15:36:55'),
(125, '4S3BJ6329M1918965', '4S3BJ6329M1918965_17839.webp', '2024-05-21', '2024-05-24 15:36:55'),
(126, '4S3BJ6329M1918965', '4S3BJ6329M1918965_4620.webp', '2024-05-21', '2024-05-24 15:36:55'),
(127, '4S3BJ6329M1918965', '4S3BJ6329M1918965_50058.webp', '2024-05-21', '2024-05-24 15:36:55'),
(128, '4S3BJ6329M1918965', '4S3BJ6329M1918965_13367.webp', '2024-05-21', '2024-05-24 15:36:55'),
(129, '4S3BJ6329M1918965', '4S3BJ6329M1918965_71970.webp', '2024-05-21', '2024-05-24 15:36:55'),
(130, '4S3BJ6329M1918965', '4S3BJ6329M1918965_74143.webp', '2024-05-21', '2024-05-24 15:36:55'),
(131, '4S3BJ6329M1918965', '4S3BJ6329M1918965_56456.webp', '2024-05-21', '2024-05-24 15:36:55'),
(132, '4S3BJ6329M1918965', '4S3BJ6329M1918965_98591.webp', '2024-05-21', '2024-05-24 15:36:55'),
(133, '4S3BJ6329M1918965', '4S3BJ6329M1918965_91567.webp', '2024-05-21', '2024-05-24 15:36:55'),
(134, '4S3BJ6329M1918965', '4S3BJ6329M1918965_69409.webp', '2024-05-21', '2024-05-24 15:36:55'),
(135, '4S3BJ6329M1918965', '4S3BJ6329M1918965_63411.webp', '2024-05-21', '2024-05-24 15:36:55'),
(136, '4S3BJ6329M1918965', '4S3BJ6329M1918965_17966.webp', '2024-05-21', '2024-05-24 15:36:55'),
(137, '4S3BJ6329M1918965', '4S3BJ6329M1918965_23704.webp', '2024-05-21', '2024-05-24 15:36:55'),
(138, '4S3BJ6329M1918965', '4S3BJ6329M1918965_5423.webp', '2024-05-21', '2024-05-24 15:36:55'),
(139, '4S3BJ6329M1918965', '4S3BJ6329M1918965_69135.webp', '2024-05-21', '2024-05-24 15:36:55'),
(140, '4S3BJ6329M1918965', '4S3BJ6329M1918965_98082.webp', '2024-05-21', '2024-05-24 15:36:55'),
(141, '4S3BJ6329M1918965', '4S3BJ6329M1918965_28282.webp', '2024-05-21', '2024-05-24 15:36:55'),
(142, '4S3BJ6329M1918965', '4S3BJ6329M1918965_20453.webp', '2024-05-21', '2024-05-24 15:36:55'),
(143, 'ZA9DU01B21L903178', 'ZA9DU01B21L903178_82891.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(144, 'ZA9DU01B21L903178', 'ZA9DU01B21L903178_54577.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(145, 'ZA9DU01B21L903178', 'ZA9DU01B21L903178_89072.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(146, 'ZA9DU01B21L903178', 'ZA9DU01B21L903178_81972.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(147, 'ZA9DU01B21L903178', 'ZA9DU01B21L903178_49247.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(148, 'ZA9DU01B21L903178', 'ZA9DU01B21L903178_42260.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(149, 'ZA9DU01B21L903178', 'ZA9DU01B21L903178_479.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(150, 'ZA9DU01B21L903178', 'ZA9DU01B21L903178_80046.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(151, 'ZA9DU01B21L903178', 'ZA9DU01B21L903178_47736.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(152, 'ZA9DU01B21L903178', 'ZA9DU01B21L903178_77445.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(153, 'ZA9DU01B21L903178', 'ZA9DU01B21L903178_77705.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(154, 'ZA9DU01B21L903178', 'ZA9DU01B21L903178_20569.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(155, 'ZA9DU01B21L903178', 'ZA9DU01B21L903178_76091.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(156, 'ZA9DU01B21L903178', 'ZA9DU01B21L903178_87953.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(157, 'ZA9DU01B21L903178', 'ZA9DU01B21L903178_62391.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(158, 'ZA9DU01B21L903178', 'ZA9DU01B21L903178_95910.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(159, 'JN6DY1AY8EX602144', 'JN6DY1AY8EX602144_97230.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(160, 'JN6DY1AY8EX602144', 'JN6DY1AY8EX602144_6303.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(161, 'JN6DY1AY8EX602144', 'JN6DY1AY8EX602144_4385.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(162, 'JN6DY1AY8EX602144', 'JN6DY1AY8EX602144_5058.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(163, 'JN6DY1AY8EX602144', 'JN6DY1AY8EX602144_88001.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(164, 'JN6DY1AY8EX602144', 'JN6DY1AY8EX602144_9403.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(165, 'JN6DY1AY8EX602144', 'JN6DY1AY8EX602144_76356.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(166, 'JN6DY1AY8EX602144', 'JN6DY1AY8EX602144_86651.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(167, 'JN6DY1AY8EX602144', 'JN6DY1AY8EX602144_85159.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(168, 'JN6DY1AY8EX602144', 'JN6DY1AY8EX602144_96659.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(169, 'JN6DY1AY8EX602144', 'JN6DY1AY8EX602144_87971.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(170, 'JN6DY1AY8EX602144', 'JN6DY1AY8EX602144_92303.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(171, 'JN6DY1AY8EX602144', 'JN6DY1AY8EX602144_11462.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(172, 'JN6DY1AY8EX602144', 'JN6DY1AY8EX602144_7944.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(173, 'JN6DY1AY8EX602144', 'JN6DY1AY8EX602144_29227.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(174, 'JN6DY1AY8EX602144', 'JN6DY1AY8EX602144_89818.jpg', '2024-05-21', '2024-05-24 15:36:55'),
(175, '5XYKWDA20BG098863', '5XYKWDA20BG098863_55699.jpg', '2024-05-22', '2024-05-24 15:36:55'),
(176, '5XYKWDA20BG098863', '5XYKWDA20BG098863_26343.jpg', '2024-05-22', '2024-05-24 15:36:55'),
(177, '5XYKWDA20BG098863', '5XYKWDA20BG098863_50070.jpg', '2024-05-22', '2024-05-24 15:36:55'),
(178, '5XYKWDA20BG098863', '5XYKWDA20BG098863_11377.jpg', '2024-05-22', '2024-05-24 15:36:55'),
(179, '5XYKWDA20BG098863', '5XYKWDA20BG098863_97420.jpg', '2024-05-22', '2024-05-24 15:36:55'),
(180, '5XYKWDA20BG098863', '5XYKWDA20BG098863_32880.jpg', '2024-05-22', '2024-05-24 15:36:55'),
(181, '5XYKWDA20BG098863', '5XYKWDA20BG098863_51424.jpg', '2024-05-22', '2024-05-24 15:36:55'),
(182, '5XYKWDA20BG098863', '5XYKWDA20BG098863_612.jpg', '2024-05-22', '2024-05-24 15:36:55'),
(183, '5XYKWDA20BG098863', '5XYKWDA20BG098863_10516.jpg', '2024-05-22', '2024-05-24 15:36:55'),
(184, '5XYKWDA20BG098863', '5XYKWDA20BG098863_76718.jpg', '2024-05-22', '2024-05-24 15:36:55'),
(185, '5XYKWDA20BG098863', '5XYKWDA20BG098863_74183.jpg', '2024-05-22', '2024-05-24 15:36:55'),
(186, '5XYKWDA20BG098863', '5XYKWDA20BG098863_12666.jpg', '2024-05-22', '2024-05-24 15:36:55'),
(187, '5XYKWDA20BG098863', '5XYKWDA20BG098863_71541.jpg', '2024-05-22', '2024-05-24 15:36:55'),
(188, '5XYKWDA20BG098863', '5XYKWDA20BG098863_85652.jpg', '2024-05-22', '2024-05-24 15:36:55'),
(189, '5XYKWDA20BG098863', '5XYKWDA20BG098863_88560.jpg', '2024-05-22', '2024-05-24 15:36:55'),
(190, 'WB10557A13ZG36939', 'WB10557A13ZG36939_19165.jpg', '2024-05-23', '2024-05-24 15:36:55'),
(191, 'WB10557A13ZG36939', 'WB10557A13ZG36939_61782.jpg', '2024-05-23', '2024-05-24 15:36:55'),
(192, 'WB10557A13ZG36939', 'WB10557A13ZG36939_80268.jpg', '2024-05-23', '2024-05-24 15:36:55'),
(193, 'WB10557A13ZG36939', 'WB10557A13ZG36939_87254.jpg', '2024-05-23', '2024-05-24 15:36:55'),
(194, 'WB10557A13ZG36939', 'WB10557A13ZG36939_80611.jpg', '2024-05-23', '2024-05-24 15:36:55'),
(195, 'WB10557A13ZG36939', 'WB10557A13ZG36939_18411.jpg', '2024-05-23', '2024-05-24 15:36:55'),
(196, 'WB10557A13ZG36939', 'WB10557A13ZG36939_287.jpg', '2024-05-23', '2024-05-24 15:36:55'),
(197, 'WB10557A13ZG36939', 'WB10557A13ZG36939_84317.jpg', '2024-05-23', '2024-05-24 15:36:55'),
(198, 'WB10557A13ZG36939', 'WB10557A13ZG36939_93593.jpg', '2024-05-23', '2024-05-24 15:36:55'),
(199, 'WB10557A13ZG36939', 'WB10557A13ZG36939_9227.jpg', '2024-05-23', '2024-05-24 15:36:55'),
(200, 'WB10557A13ZG36939', 'WB10557A13ZG36939_91915.jpg', '2024-05-23', '2024-05-24 15:36:55'),
(201, 'WB10557A13ZG36939', 'WB10557A13ZG36939_70193.jpg', '2024-05-23', '2024-05-24 15:36:55'),
(202, 'WB10557A13ZG36939', 'WB10557A13ZG36939_90303.jpg', '2024-05-23', '2024-05-24 15:36:55'),
(203, 'WB10557A13ZG36939', 'WB10557A13ZG36939_51715.jpg', '2024-05-23', '2024-05-24 15:36:55'),
(218, 'YV1AX4747E1960685', 'YV1AX4747E1960685_11392.jpg', '2024-05-27', NULL),
(219, 'YV1AX4747E1960685', 'YV1AX4747E1960685_55504.jpg', '2024-05-27', NULL),
(220, 'YV1AX4747E1960685', 'YV1AX4747E1960685_79305.jpg', '2024-05-27', NULL),
(221, 'YV1AX4747E1960685', 'YV1AX4747E1960685_67993.jpg', '2024-05-27', NULL),
(222, 'YV1AX4747E1960685', 'YV1AX4747E1960685_16561.jpg', '2024-05-27', NULL),
(223, 'YV1AX4747E1960685', 'YV1AX4747E1960685_71307.jpg', '2024-05-27', NULL),
(224, 'YV1AX4747E1960685', 'YV1AX4747E1960685_68022.jpg', '2024-05-27', NULL),
(225, 'YV1AX4747E1960685', 'YV1AX4747E1960685_75915.jpg', '2024-05-27', NULL),
(226, 'YV1AX4747E1960685', 'YV1AX4747E1960685_95638.jpg', '2024-05-27', NULL),
(227, 'YV1AX4747E1960685', 'YV1AX4747E1960685_27331.jpg', '2024-05-27', NULL),
(228, 'YV1AX4747E1960685', 'YV1AX4747E1960685_44071.jpg', '2024-05-27', NULL),
(229, 'YV1AX4747E1960685', 'YV1AX4747E1960685_45611.jpg', '2024-05-27', NULL),
(230, 'YV1AX4747E1960685', 'YV1AX4747E1960685_40363.jpg', '2024-05-27', NULL),
(231, 'YV1AX4747E1960685', 'YV1AX4747E1960685_6429.jpg', '2024-05-27', NULL),
(232, 'YV1AX4747E1960685', 'YV1AX4747E1960685_17727.jpg', '2024-05-27', NULL),
(233, 'WDBLK70G61T061039', 'WDBLK70G61T061039_94554.jpg', '2024-05-27', NULL),
(234, 'WDBLK70G61T061039', 'WDBLK70G61T061039_15798.jpg', '2024-05-27', NULL),
(235, 'WDBLK70G61T061039', 'WDBLK70G61T061039_50815.jpg', '2024-05-27', NULL),
(236, 'WDBLK70G61T061039', 'WDBLK70G61T061039_57469.jpg', '2024-05-27', NULL),
(237, 'WDBLK70G61T061039', 'WDBLK70G61T061039_5370.jpg', '2024-05-27', NULL),
(238, 'WDBLK70G61T061039', 'WDBLK70G61T061039_15910.jpg', '2024-05-27', NULL),
(239, 'WDBLK70G61T061039', 'WDBLK70G61T061039_16933.jpg', '2024-05-27', NULL),
(240, 'WDBLK70G61T061039', 'WDBLK70G61T061039_89615.jpg', '2024-05-27', NULL),
(241, 'WDBLK70G61T061039', 'WDBLK70G61T061039_56829.jpg', '2024-05-27', NULL),
(242, 'WDBLK70G61T061039', 'WDBLK70G61T061039_52557.jpg', '2024-05-27', NULL),
(243, 'WDBLK70G61T061039', 'WDBLK70G61T061039_18280.jpg', '2024-05-27', NULL),
(244, 'WDBLK70G61T061039', 'WDBLK70G61T061039_33066.jpg', '2024-05-27', NULL),
(245, 'WDBLK70G61T061039', 'WDBLK70G61T061039_94284.jpg', '2024-05-27', NULL),
(246, 'WDBLK70G61T061039', 'WDBLK70G61T061039_10061.jpg', '2024-05-27', NULL),
(247, 'WDBLK70G61T061039', 'WDBLK70G61T061039_42067.jpg', '2024-05-27', NULL),
(248, 'WDBLK70G61T061039', 'WDBLK70G61T061039_90835.jpg', '2024-05-27', NULL),
(249, 'WDBLK70G61T061039', 'WDBLK70G61T061039_85339.jpg', '2024-05-27', NULL),
(250, 'WBADC7407H1715209', 'WBADC7407H1715209_17285.jpg', '2024-05-27', NULL),
(251, 'WBADC7407H1715209', 'WBADC7407H1715209_32054.jpg', '2024-05-27', NULL),
(252, 'WBADC7407H1715209', 'WBADC7407H1715209_51813.jpg', '2024-05-27', NULL),
(253, 'WBADC7407H1715209', 'WBADC7407H1715209_44809.jpg', '2024-05-27', NULL),
(254, 'WBADC7407H1715209', 'WBADC7407H1715209_39949.jpg', '2024-05-27', NULL),
(255, 'WBADC7407H1715209', 'WBADC7407H1715209_32332.jpg', '2024-05-27', NULL),
(256, 'WBADC7407H1715209', 'WBADC7407H1715209_95889.jpg', '2024-05-27', NULL),
(257, 'WBADC7407H1715209', 'WBADC7407H1715209_68994.jpg', '2024-05-27', NULL),
(258, 'WBADC7407H1715209', 'WBADC7407H1715209_34598.jpg', '2024-05-27', NULL),
(259, 'WBADC7407H1715209', 'WBADC7407H1715209_72876.jpg', '2024-05-27', NULL),
(260, 'WBADC7407H1715209', 'WBADC7407H1715209_75712.jpg', '2024-05-27', NULL),
(261, 'WBADC7407H1715209', 'WBADC7407H1715209_87422.jpg', '2024-05-27', NULL),
(262, 'WBADC7407H1715209', 'WBADC7407H1715209_33328.jpg', '2024-05-27', NULL),
(263, 'WBADC7407H1715209', 'WBADC7407H1715209_63811.jpg', '2024-05-27', NULL),
(264, 'WBADC7407H1715209', 'WBADC7407H1715209_67193.jpg', '2024-05-27', NULL),
(265, 'WBADC7407H1715209', 'WBADC7407H1715209_15934.jpg', '2024-05-27', NULL),
(266, 'WBADC7407H1715209', 'WBADC7407H1715209_78633.jpg', '2024-05-27', NULL),
(267, 'WBADC7407H1715209', 'WBADC7407H1715209_61401.jpg', '2024-05-27', NULL),
(268, 'WBADC7407H1715209', 'WBADC7407H1715209_6789.jpg', '2024-05-27', NULL),
(269, 'WBADC7407H1715209', 'WBADC7407H1715209_21407.jpg', '2024-05-27', NULL),
(270, 'WBADC7407H1715209', 'WBADC7407H1715209_77264.jpg', '2024-05-27', NULL),
(271, 'WBADC7407H1715209', 'WBADC7407H1715209_39995.jpg', '2024-05-27', NULL),
(272, 'WBADC7407H1715209', 'WBADC7407H1715209_95522.jpg', '2024-05-27', NULL),
(273, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_50884.jpg', '2024-05-28', NULL),
(274, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_57412.jpg', '2024-05-28', NULL),
(275, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_7111.jpg', '2024-05-28', NULL),
(276, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_91778.jpg', '2024-05-28', NULL),
(277, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_16318.jpg', '2024-05-28', NULL),
(278, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_81600.jpg', '2024-05-28', NULL),
(279, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_72421.jpg', '2024-05-28', NULL),
(280, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_59308.jpg', '2024-05-28', NULL),
(281, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_16066.jpg', '2024-05-28', NULL),
(282, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_7772.jpg', '2024-05-28', NULL),
(283, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_68982.jpg', '2024-05-28', NULL),
(285, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_18493.jpg', '2024-05-28', NULL),
(286, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_7874.jpg', '2024-05-28', NULL),
(287, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_34214.jpg', '2024-05-28', NULL),
(288, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_10394.jpg', '2024-05-28', NULL),
(289, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_13302.jpg', '2024-05-28', NULL),
(290, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_53254.jpg', '2024-05-28', NULL),
(291, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_8859.jpg', '2024-05-28', NULL),
(292, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_89567.jpg', '2024-05-28', NULL),
(293, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_58190.jpg', '2024-05-28', NULL),
(294, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_72046.jpg', '2024-05-28', NULL),
(295, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_651.jpg', '2024-05-28', NULL),
(296, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_72119.jpg', '2024-05-28', NULL),
(297, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_41458.jpg', '2024-05-28', NULL),
(298, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_66592.jpg', '2024-05-28', NULL),
(299, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_92048.jpg', '2024-05-28', NULL),
(300, 'WDDUG7JB1EA027074', 'WDDUG7JB1EA027074_85808.jpg', '2024-05-28', NULL),
(301, 'WA1YD54B02N082537', 'WA1YD54B02N082537_64591.webp', '2024-06-10', NULL),
(302, 'WA1YD54B02N082537', 'WA1YD54B02N082537_925.webp', '2024-06-10', NULL),
(303, 'WA1YD54B02N082537', 'WA1YD54B02N082537_25879.webp', '2024-06-10', NULL),
(304, 'WA1YD54B02N082537', 'WA1YD54B02N082537_90411.webp', '2024-06-10', NULL),
(305, 'WA1YD54B02N082537', 'WA1YD54B02N082537_64946.webp', '2024-06-10', NULL),
(306, 'WA1YD54B02N082537', 'WA1YD54B02N082537_53936.webp', '2024-06-10', NULL),
(307, 'WA1YD54B02N082537', 'WA1YD54B02N082537_43408.webp', '2024-06-10', NULL),
(308, 'WA1YD54B02N082537', 'WA1YD54B02N082537_53163.webp', '2024-06-10', NULL),
(309, 'WA1YD54B02N082537', 'WA1YD54B02N082537_27320.webp', '2024-06-10', NULL),
(310, 'WA1YD54B02N082537', 'WA1YD54B02N082537_25437.webp', '2024-06-10', NULL),
(311, 'WA1YD54B02N082537', 'WA1YD54B02N082537_6794.webp', '2024-06-10', NULL),
(312, 'WA1YD54B02N082537', 'WA1YD54B02N082537_7768.webp', '2024-06-10', NULL),
(313, 'WA1YD54B02N082537', 'WA1YD54B02N082537_55347.webp', '2024-06-10', NULL),
(314, 'WA1YD54B02N082537', 'WA1YD54B02N082537_8142.webp', '2024-06-10', NULL),
(315, 'WA1YD54B02N082537', 'WA1YD54B02N082537_45644.webp', '2024-06-10', NULL),
(316, 'WA1YD54B02N082537', 'WA1YD54B02N082537_21588.webp', '2024-06-10', NULL),
(317, 'WA1YD54B02N082537', 'WA1YD54B02N082537_51085.webp', '2024-06-10', NULL),
(318, 'WA1YD54B02N082537', 'WA1YD54B02N082537_4898.webp', '2024-06-10', NULL),
(319, 'WA1YD54B02N082537', 'WA1YD54B02N082537_40000.webp', '2024-06-10', NULL),
(320, 'ZFF73SKA9E0200021', 'ZFF73SKA9E0200021_99856.jpg', '2024-06-11', NULL),
(321, 'ZFF73SKA9E0200021', 'ZFF73SKA9E0200021_95436.jpg', '2024-06-11', NULL),
(322, 'ZFF73SKA9E0200021', 'ZFF73SKA9E0200021_84570.jpg', '2024-06-11', NULL),
(323, 'ZFF73SKA9E0200021', 'ZFF73SKA9E0200021_37686.jpg', '2024-06-11', NULL),
(324, 'ZFF73SKA9E0200021', 'ZFF73SKA9E0200021_67834.jpg', '2024-06-11', NULL),
(325, 'ZFF73SKA9E0200021', 'ZFF73SKA9E0200021_20584.jpg', '2024-06-11', NULL),
(326, 'ZFF73SKA9E0200021', 'ZFF73SKA9E0200021_66008.jpg', '2024-06-11', NULL),
(327, 'ZFF73SKA9E0200021', 'ZFF73SKA9E0200021_85105.jpg', '2024-06-11', NULL),
(328, 'ZFF73SKA9E0200021', 'ZFF73SKA9E0200021_49342.jpg', '2024-06-11', NULL),
(329, 'ZFF73SKA9E0200021', 'ZFF73SKA9E0200021_9424.jpg', '2024-06-11', NULL),
(330, 'ZFF73SKA9E0200021', 'ZFF73SKA9E0200021_16251.jpg', '2024-06-11', NULL),
(331, 'ZFF73SKA9E0200021', 'ZFF73SKA9E0200021_26243.jpg', '2024-06-11', NULL),
(332, 'ZFF73SKA9E0200021', 'ZFF73SKA9E0200021_31567.jpg', '2024-06-11', NULL),
(333, 'WAU3FLFF5F1034279', 'WAU3FLFF5F1034279_40351.jpg', '2024-06-11', NULL),
(334, 'WAU3FLFF5F1034279', 'WAU3FLFF5F1034279_28446.jpg', '2024-06-11', NULL),
(335, 'WAU3FLFF5F1034279', 'WAU3FLFF5F1034279_47187.jpg', '2024-06-11', NULL),
(336, 'WAU3FLFF5F1034279', 'WAU3FLFF5F1034279_52314.jpg', '2024-06-11', NULL),
(337, 'WAU3FLFF5F1034279', 'WAU3FLFF5F1034279_62943.jpg', '2024-06-11', NULL),
(338, 'WAU3FLFF5F1034279', 'WAU3FLFF5F1034279_21002.jpg', '2024-06-11', NULL),
(339, 'WAU3FLFF5F1034279', 'WAU3FLFF5F1034279_82116.jpg', '2024-06-11', NULL),
(340, 'WAU3FLFF5F1034279', 'WAU3FLFF5F1034279_71738.jpg', '2024-06-11', NULL),
(341, 'WAU3FLFF5F1034279', 'WAU3FLFF5F1034279_60944.jpg', '2024-06-11', NULL),
(342, 'WAU3FLFF5F1034279', 'WAU3FLFF5F1034279_35158.jpg', '2024-06-11', NULL),
(343, 'WAU3FLFF5F1034279', 'WAU3FLFF5F1034279_8642.jpg', '2024-06-11', NULL),
(344, 'WAU3FLFF5F1034279', 'WAU3FLFF5F1034279_2176.jpg', '2024-06-11', NULL),
(345, 'WAU3FLFF5F1034279', 'WAU3FLFF5F1034279_4101.jpg', '2024-06-11', NULL),
(346, 'WAU3FLFF5F1034279', 'WAU3FLFF5F1034279_51517.jpg', '2024-06-11', NULL),
(347, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_74357.jpg', '2024-06-11', NULL),
(348, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_40074.jpg', '2024-06-11', NULL),
(349, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_26361.jpg', '2024-06-11', NULL),
(350, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_29461.jpg', '2024-06-11', NULL),
(351, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_56828.jpg', '2024-06-11', NULL),
(352, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_58137.jpg', '2024-06-11', NULL),
(353, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_88880.jpg', '2024-06-11', NULL),
(354, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_66057.jpg', '2024-06-11', NULL),
(355, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_69352.jpg', '2024-06-11', NULL),
(356, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_55239.jpg', '2024-06-11', NULL),
(357, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_84175.jpg', '2024-06-11', NULL),
(358, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_11556.jpg', '2024-06-11', NULL),
(359, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_47696.jpg', '2024-06-11', NULL),
(360, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_14358.jpg', '2024-06-11', NULL),
(361, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_83460.jpg', '2024-06-11', NULL),
(362, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_61213.jpg', '2024-06-11', NULL),
(363, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_24615.jpg', '2024-06-11', NULL),
(364, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_36004.jpg', '2024-06-11', NULL),
(365, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_78162.jpg', '2024-06-11', NULL),
(366, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_16001.jpg', '2024-06-11', NULL),
(367, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_10081.jpg', '2024-06-11', NULL),
(368, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_27011.jpg', '2024-06-11', NULL),
(369, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_8459.jpg', '2024-06-11', NULL),
(370, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_4039.jpg', '2024-06-11', NULL),
(371, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_46935.jpg', '2024-06-11', NULL),
(372, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_10455.jpg', '2024-06-11', NULL),
(373, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_42973.jpg', '2024-06-11', NULL),
(374, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_46752.jpg', '2024-06-11', NULL),
(375, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_65344.jpg', '2024-06-11', NULL),
(376, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_60429.jpg', '2024-06-12', NULL),
(377, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_51210.jpg', '2024-06-12', NULL),
(378, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_33825.jpg', '2024-06-12', NULL),
(379, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_78521.jpg', '2024-06-12', NULL),
(380, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_7579.jpg', '2024-06-12', NULL),
(381, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_23296.jpg', '2024-06-12', NULL),
(382, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_74352.jpg', '2024-06-12', NULL),
(383, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_74365.jpg', '2024-06-12', NULL),
(384, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_25266.jpg', '2024-06-12', NULL),
(385, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_51807.jpg', '2024-06-12', NULL),
(386, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_66754.jpg', '2024-06-12', NULL),
(387, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_11110.jpg', '2024-06-12', NULL),
(388, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_10570.jpg', '2024-06-12', NULL),
(389, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_29162.jpg', '2024-06-12', NULL),
(390, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_18468.jpg', '2024-06-12', NULL),
(391, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_21692.jpg', '2024-06-12', NULL),
(392, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_19471.jpg', '2024-06-12', NULL),
(393, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_29595.jpg', '2024-06-12', NULL),
(394, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_46505.jpg', '2024-06-12', NULL),
(395, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_87293.jpg', '2024-06-12', NULL),
(396, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_93662.jpg', '2024-06-12', NULL),
(397, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_87413.jpg', '2024-06-12', NULL),
(398, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_19150.jpg', '2024-06-12', NULL),
(399, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_9995.jpg', '2024-06-12', NULL),
(400, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_92621.jpg', '2024-06-12', NULL),
(401, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_11988.jpg', '2024-06-12', NULL),
(402, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_40974.jpg', '2024-06-12', NULL),
(403, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_7234.jpg', '2024-06-12', NULL),
(404, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_75682.jpg', '2024-06-12', NULL),
(405, 'JT2VV22E0J0018536', 'JT2VV22E0J0018536_19589.jpg', '2024-06-12', NULL),
(406, 'SCBBB7ZH2FC053880', 'SCBBB7ZH2FC053880_53902.jpg', '2024-06-12', NULL),
(407, 'SCBBB7ZH2FC053880', 'SCBBB7ZH2FC053880_45894.jpg', '2024-06-12', NULL),
(408, 'SCBBB7ZH2FC053880', 'SCBBB7ZH2FC053880_14950.jpg', '2024-06-12', NULL),
(409, 'SCBBB7ZH2FC053880', 'SCBBB7ZH2FC053880_73373.jpg', '2024-06-12', NULL),
(410, 'SCBBB7ZH2FC053880', 'SCBBB7ZH2FC053880_92313.jpg', '2024-06-12', NULL),
(411, 'SCBBB7ZH2FC053880', 'SCBBB7ZH2FC053880_82538.jpg', '2024-06-12', NULL),
(412, 'SCBBB7ZH2FC053880', 'SCBBB7ZH2FC053880_77071.jpg', '2024-06-12', NULL),
(413, 'SCBBB7ZH2FC053880', 'SCBBB7ZH2FC053880_12327.jpg', '2024-06-12', NULL),
(414, 'SCBBB7ZH2FC053880', 'SCBBB7ZH2FC053880_49688.jpg', '2024-06-12', NULL),
(415, 'SCBBB7ZH2FC053880', 'SCBBB7ZH2FC053880_75087.jpg', '2024-06-12', NULL),
(416, 'SCBBB7ZH2FC053880', 'SCBBB7ZH2FC053880_1341.jpg', '2024-06-12', NULL),
(417, 'SCBBB7ZH2FC053880', 'SCBBB7ZH2FC053880_68305.jpg', '2024-06-12', NULL),
(418, 'SCBBB7ZH2FC053880', 'SCBBB7ZH2FC053880_42148.jpg', '2024-06-12', NULL),
(419, 'WAUHE98P29A071392', 'WAUHE98P29A071392_60943.jpg', '2024-06-13', NULL),
(420, 'WAUHE98P29A071392', 'WAUHE98P29A071392_67580.jpg', '2024-06-13', NULL),
(421, 'WAUHE98P29A071392', 'WAUHE98P29A071392_2518.jpg', '2024-06-13', NULL),
(422, 'WAUHE98P29A071392', 'WAUHE98P29A071392_37725.jpg', '2024-06-13', NULL),
(423, 'WAUHE98P29A071392', 'WAUHE98P29A071392_86108.jpg', '2024-06-13', NULL),
(424, 'WAUHE98P29A071392', 'WAUHE98P29A071392_90821.jpg', '2024-06-13', NULL),
(425, 'WAUHE98P29A071392', 'WAUHE98P29A071392_71503.jpg', '2024-06-13', NULL),
(426, 'WAUHE98P29A071392', 'WAUHE98P29A071392_6736.jpg', '2024-06-13', NULL),
(427, 'WAUHE98P29A071392', 'WAUHE98P29A071392_33739.jpg', '2024-06-13', NULL),
(428, 'WAUHE98P29A071392', 'WAUHE98P29A071392_28916.jpg', '2024-06-13', NULL),
(429, 'WAUHE98P29A071392', 'WAUHE98P29A071392_4033.jpg', '2024-06-13', NULL),
(430, 'WAUHE98P29A071392', 'WAUHE98P29A071392_39203.jpg', '2024-06-13', NULL),
(431, 'WAUHE98P29A071392', 'WAUHE98P29A071392_7560.jpg', '2024-06-13', NULL),
(432, 'WAUHE98P29A071392', 'WAUHE98P29A071392_33739.jpg', '2024-06-13', NULL),
(433, 'WBAVB13256PS66453', 'WBAVB13256PS66453_19426.jpg', '2024-06-17', NULL),
(434, 'WBAVB13256PS66453', 'WBAVB13256PS66453_96539.jpg', '2024-06-17', NULL),
(435, 'WBAVB13256PS66453', 'WBAVB13256PS66453_72070.jpg', '2024-06-17', NULL),
(436, 'WBAVB13256PS66453', 'WBAVB13256PS66453_53840.jpg', '2024-06-17', NULL),
(437, 'WBAVB13256PS66453', 'WBAVB13256PS66453_33228.jpg', '2024-06-17', NULL),
(438, 'WBAVB13256PS66453', 'WBAVB13256PS66453_48806.jpg', '2024-06-17', NULL),
(439, 'WBAVB13256PS66453', 'WBAVB13256PS66453_49791.jpg', '2024-06-17', NULL),
(440, 'WBAVB13256PS66453', 'WBAVB13256PS66453_78532.jpg', '2024-06-17', NULL),
(441, 'WBAVB13256PS66453', 'WBAVB13256PS66453_50084.jpg', '2024-06-17', NULL),
(442, 'WBAVB13256PS66453', 'WBAVB13256PS66453_26891.jpg', '2024-06-17', NULL),
(443, 'WBAVB13256PS66453', 'WBAVB13256PS66453_20513.jpg', '2024-06-17', NULL),
(444, 'WBAVB13256PS66453', 'WBAVB13256PS66453_6110.jpg', '2024-06-17', NULL),
(445, 'WBAVB13256PS66453', 'WBAVB13256PS66453_18714.jpg', '2024-06-17', NULL),
(446, 'WBAVB13256PS66453', 'WBAVB13256PS66453_37057.jpg', '2024-06-17', NULL),
(447, 'WBAVB13256PS66453', 'WBAVB13256PS66453_5535.jpg', '2024-06-17', NULL),
(448, 'WBAVB13256PS66453', 'WBAVB13256PS66453_81005.jpg', '2024-06-17', NULL),
(449, 'WBAVB13256PS66453', 'WBAVB13256PS66453_59988.jpg', '2024-06-17', NULL),
(450, 'WBAVB13256PS66453', 'WBAVB13256PS66453_37128.jpg', '2024-06-17', NULL),
(451, 'WBAVB13256PS66453', 'WBAVB13256PS66453_81495.jpg', '2024-06-17', NULL),
(452, 'WBAVB13256PS66453', 'WBAVB13256PS66453_16736.jpg', '2024-06-17', NULL),
(453, 'WBAVB13256PS66453', 'WBAVB13256PS66453_62571.jpg', '2024-06-17', NULL),
(454, 'WBAVB13256PS66453', 'WBAVB13256PS66453_57430.jpg', '2024-06-17', NULL),
(455, 'WBAVB13256PS66453', 'WBAVB13256PS66453_57098.jpg', '2024-06-17', NULL),
(456, 'JH4KA8260PC000495', 'JH4KA8260PC000495_86544.jpg', '2024-06-17', NULL),
(457, 'WBAVB13256PS66453', 'WBAVB13256PS66453_3865.jpg', '2024-06-17', NULL),
(458, 'WBAVB13256PS66453', 'WBAVB13256PS66453_11269.jpg', '2024-06-17', NULL),
(459, 'WBAVB13256PS66453', 'WBAVB13256PS66453_80136.jpg', '2024-06-17', NULL),
(460, 'WBAVB13256PS66453', 'WBAVB13256PS66453_50546.jpg', '2024-06-17', NULL),
(461, 'WBAVB13256PS66453', 'WBAVB13256PS66453_57921.jpg', '2024-06-17', NULL),
(462, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_7448.jpg', '2024-06-18', NULL),
(463, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_13258.jpg', '2024-06-18', NULL),
(464, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_76759.jpg', '2024-06-18', NULL),
(465, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_79344.jpg', '2024-06-18', NULL),
(466, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_34197.jpg', '2024-06-18', NULL),
(467, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_18484.jpg', '2024-06-18', NULL),
(468, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_75642.jpg', '2024-06-18', NULL),
(469, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_869.jpg', '2024-06-18', NULL),
(470, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_59173.jpg', '2024-06-18', NULL),
(471, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_75614.jpg', '2024-06-18', NULL),
(472, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_94531.jpg', '2024-06-18', NULL),
(473, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_29611.jpg', '2024-06-18', NULL),
(474, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_20762.jpg', '2024-06-18', NULL),
(475, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_89727.jpg', '2024-06-18', NULL),
(476, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_31484.jpg', '2024-06-18', NULL),
(477, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_56577.jpg', '2024-06-18', NULL),
(478, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_81613.jpg', '2024-06-18', NULL),
(479, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_59246.jpg', '2024-06-18', NULL),
(480, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_10139.jpg', '2024-06-18', NULL),
(481, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_25193.jpg', '2024-06-18', NULL),
(482, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_79727.jpg', '2024-06-18', NULL),
(483, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_27092.jpg', '2024-06-18', NULL),
(484, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_73825.jpg', '2024-06-18', NULL),
(485, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_63247.jpg', '2024-06-18', NULL),
(486, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_69110.jpg', '2024-06-18', NULL),
(487, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_14537.jpg', '2024-06-18', NULL),
(488, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_44979.jpg', '2024-06-18', NULL),
(489, 'SALGA2BY7JA507105', 'SALGA2BY7JA507105_52089.jpg', '2024-06-18', NULL),
(490, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_36067.jpg', '2024-06-18', NULL),
(491, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_17196.jpg', '2024-06-18', NULL),
(492, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_5502.jpg', '2024-06-18', NULL),
(493, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_2440.jpg', '2024-06-18', NULL),
(494, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_93792.jpg', '2024-06-18', NULL),
(495, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_55535.jpg', '2024-06-18', NULL),
(496, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_80966.jpg', '2024-06-18', NULL),
(497, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_86415.jpg', '2024-06-18', NULL),
(498, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_18348.jpg', '2024-06-18', NULL),
(499, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_37621.jpg', '2024-06-18', NULL),
(500, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_8603.jpg', '2024-06-18', NULL),
(501, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_58511.jpg', '2024-06-18', NULL),
(502, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_33640.jpg', '2024-06-18', NULL),
(503, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_67316.jpg', '2024-06-18', NULL),
(504, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_34906.jpg', '2024-06-18', NULL),
(505, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_3241.jpg', '2024-06-18', NULL),
(506, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_86724.jpg', '2024-06-18', NULL),
(507, 'WF0YXXTTGYNS57312', 'WF0YXXTTGYNS57312_4226.jpg', '2024-06-18', NULL),
(508, 'W1N1673171A302625', 'W1N1673171A302625_97823.jpg', '2024-06-18', NULL),
(509, 'W1N1673171A302625', 'W1N1673171A302625_92364.jpg', '2024-06-18', NULL),
(510, 'W1N1673171A302625', 'W1N1673171A302625_89220.jpg', '2024-06-18', NULL),
(511, 'W1N1673171A302625', 'W1N1673171A302625_78370.jpg', '2024-06-18', NULL),
(512, 'W1N1673171A302625', 'W1N1673171A302625_26350.jpg', '2024-06-18', NULL),
(513, 'W1N1673171A302625', 'W1N1673171A302625_2046.jpg', '2024-06-18', NULL),
(514, 'W1N1673171A302625', 'W1N1673171A302625_32987.jpg', '2024-06-18', NULL),
(515, 'W1N1673171A302625', 'W1N1673171A302625_58503.jpg', '2024-06-18', NULL),
(516, 'W1N1673171A302625', 'W1N1673171A302625_81831.jpg', '2024-06-18', NULL),
(517, 'W1N1673171A302625', 'W1N1673171A302625_8351.jpg', '2024-06-18', NULL),
(518, 'W1N1673171A302625', 'W1N1673171A302625_71581.jpg', '2024-06-18', NULL),
(519, 'W1N1673171A302625', 'W1N1673171A302625_95717.jpg', '2024-06-18', NULL),
(520, 'W1N1673171A302625', 'W1N1673171A302625_88505.jpg', '2024-06-18', NULL),
(521, 'W1N1673171A302625', 'W1N1673171A302625_15784.jpg', '2024-06-18', NULL),
(522, 'W1N1673171A302625', 'W1N1673171A302625_82174.jpg', '2024-06-18', NULL),
(523, 'W1N1673171A302625', 'W1N1673171A302625_98038.jpg', '2024-06-18', NULL),
(524, 'W1N1673171A302625', 'W1N1673171A302625_88709.jpg', '2024-06-18', NULL),
(525, 'W1N1673171A302625', 'W1N1673171A302625_91902.jpg', '2024-06-18', NULL),
(526, 'W1N1673171A302625', 'W1N1673171A302625_97518.jpg', '2024-06-18', NULL),
(527, 'W1N1673171A302625', 'W1N1673171A302625_7790.jpg', '2024-06-18', NULL),
(528, 'W1N1673171A302625', 'W1N1673171A302625_51087.jpg', '2024-06-18', NULL),
(529, 'W1N1673171A302625', 'W1N1673171A302625_28870.jpg', '2024-06-18', NULL),
(530, 'W1N1673171A302625', 'W1N1673171A302625_70247.jpg', '2024-06-18', NULL),
(531, 'W1N1673171A302625', 'W1N1673171A302625_87847.jpg', '2024-06-18', NULL),
(532, 'W1N1673171A302625', 'W1N1673171A302625_74099.jpg', '2024-06-18', NULL),
(533, 'WDDNF8EB6BA367100', 'WDDNF8EB6BA367100_66723.jpg', '2024-06-20', NULL),
(534, 'WDDNF8EB6BA367100', 'WDDNF8EB6BA367100_13767.jpg', '2024-06-20', NULL),
(535, 'WDDNF8EB6BA367100', 'WDDNF8EB6BA367100_51971.jpg', '2024-06-20', NULL),
(536, 'WDDNF8EB6BA367100', 'WDDNF8EB6BA367100_14078.jpg', '2024-06-20', NULL),
(537, 'WDDNF8EB6BA367100', 'WDDNF8EB6BA367100_62411.jpg', '2024-06-20', NULL),
(538, 'WDDNF8EB6BA367100', 'WDDNF8EB6BA367100_96371.jpg', '2024-06-20', NULL),
(539, 'WDDNF8EB6BA367100', 'WDDNF8EB6BA367100_61868.jpg', '2024-06-20', NULL),
(540, 'WDDNF8EB6BA367100', 'WDDNF8EB6BA367100_64853.jpg', '2024-06-20', NULL),
(541, 'WDDNF8EB6BA367100', 'WDDNF8EB6BA367100_62262.jpg', '2024-06-20', NULL),
(542, 'WDDNF8EB6BA367100', 'WDDNF8EB6BA367100_93274.jpg', '2024-06-20', NULL),
(543, 'WDDNF8EB6BA367100', 'WDDNF8EB6BA367100_11824.jpg', '2024-06-20', NULL),
(544, 'SALWA2BY5LA713795', 'SALWA2BY5LA713795_14106.jpg', '2024-06-20', NULL),
(545, 'SALWA2BY5LA713795', 'SALWA2BY5LA713795_38105.jpg', '2024-06-20', NULL),
(546, 'SALWA2BY5LA713795', 'SALWA2BY5LA713795_15121.jpg', '2024-06-20', NULL),
(547, 'SALWA2BY5LA713795', 'SALWA2BY5LA713795_7496.jpg', '2024-06-20', NULL),
(548, 'SALWA2BY5LA713795', 'SALWA2BY5LA713795_50059.jpg', '2024-06-20', NULL),
(549, 'SALWA2BY5LA713795', 'SALWA2BY5LA713795_26473.jpg', '2024-06-20', NULL),
(550, 'WBAFF8402D7852216', 'WBAFF8402D7852216_23260.jpg', '2024-06-20', NULL),
(551, 'SALWA2BY5LA713795', 'SALWA2BY5LA713795_69981.jpg', '2024-06-20', NULL),
(552, 'SALWA2BY5LA713795', 'SALWA2BY5LA713795_35050.jpg', '2024-06-20', NULL),
(553, 'SALWA2BY5LA713795', 'SALWA2BY5LA713795_19236.jpg', '2024-06-20', NULL),
(554, 'SALWA2BY5LA713795', 'SALWA2BY5LA713795_52247.jpg', '2024-06-20', NULL),
(555, 'SALWA2BY5LA713795', 'SALWA2BY5LA713795_65403.jpg', '2024-06-20', NULL),
(556, 'SALWA2BY5LA713795', 'SALWA2BY5LA713795_36889.jpg', '2024-06-20', NULL),
(557, 'SALWA2BY5LA713795', 'SALWA2BY5LA713795_77922.jpg', '2024-06-20', NULL),
(558, 'SALWA2BY5LA713795', 'SALWA2BY5LA713795_80930.jpg', '2024-06-20', NULL),
(559, 'SALWA2BY5LA713795', 'SALWA2BY5LA713795_77973.jpg', '2024-06-20', NULL),
(560, 'SALWA2BY5LA713795', 'SALWA2BY5LA713795_47360.jpg', '2024-06-20', NULL),
(561, '1GKEC13V21J196436', '1GKEC13V21J196436_54892.jpg', '2024-06-20', NULL),
(562, '1GKEC13V21J196436', '1GKEC13V21J196436_95958.jpg', '2024-06-20', NULL),
(563, '1GKEC13V21J196436', '1GKEC13V21J196436_84321.jpg', '2024-06-20', NULL),
(564, '1GKEC13V21J196436', '1GKEC13V21J196436_76839.jpg', '2024-06-20', NULL),
(565, '1GKEC13V21J196436', '1GKEC13V21J196436_62736.jpg', '2024-06-20', NULL),
(566, '1GKEC13V21J196436', '1GKEC13V21J196436_12785.jpg', '2024-06-20', NULL),
(567, '1GKEC13V21J196436', '1GKEC13V21J196436_1695.jpg', '2024-06-20', NULL),
(568, '1GKEC13V21J196436', '1GKEC13V21J196436_46237.jpg', '2024-06-20', NULL),
(569, '1GKEC13V21J196436', '1GKEC13V21J196436_78239.jpg', '2024-06-20', NULL),
(570, '1GKEC13V21J196436', '1GKEC13V21J196436_72739.jpg', '2024-06-20', NULL),
(571, '1GKEC13V21J196436', '1GKEC13V21J196436_45125.jpg', '2024-06-20', NULL),
(572, '1GKEC13V21J196436', '1GKEC13V21J196436_38770.jpg', '2024-06-20', NULL),
(573, '1GKEC13V21J196436', '1GKEC13V21J196436_71367.jpg', '2024-06-20', NULL),
(574, 'WAUHFBFR9AA011915', 'WAUHFBFR9AA011915_85025.jpg', '2024-06-20', NULL),
(575, 'WAUHFBFR9AA011915', 'WAUHFBFR9AA011915_96059.jpg', '2024-06-20', NULL),
(576, 'WAUHFBFR9AA011915', 'WAUHFBFR9AA011915_28909.jpg', '2024-06-20', NULL),
(577, 'WAUHFBFR9AA011915', 'WAUHFBFR9AA011915_91778.jpg', '2024-06-20', NULL),
(578, 'WAUHFBFR9AA011915', 'WAUHFBFR9AA011915_58149.jpg', '2024-06-20', NULL),
(579, 'WAUHFBFR9AA011915', 'WAUHFBFR9AA011915_33251.jpg', '2024-06-20', NULL),
(580, 'WAUHFBFR9AA011915', 'WAUHFBFR9AA011915_51025.jpg', '2024-06-20', NULL),
(581, 'WAUHFBFR9AA011915', 'WAUHFBFR9AA011915_72622.jpg', '2024-06-20', NULL),
(582, 'WAUHFBFR9AA011915', 'WAUHFBFR9AA011915_21449.jpg', '2024-06-20', NULL),
(583, 'WAUHFBFR9AA011915', 'WAUHFBFR9AA011915_45443.jpg', '2024-06-20', NULL),
(584, 'WAUHFBFR9AA011915', 'WAUHFBFR9AA011915_70539.jpg', '2024-06-20', NULL),
(585, 'WAUHFBFR9AA011915', 'WAUHFBFR9AA011915_74371.jpg', '2024-06-20', NULL),
(586, 'WAUHFBFR9AA011915', 'WAUHFBFR9AA011915_70039.jpg', '2024-06-20', NULL),
(587, 'WAUHFBFR9AA011915', 'WAUHFBFR9AA011915_25658.jpg', '2024-06-20', NULL),
(588, 'WAUHFBFR9AA011915', 'WAUHFBFR9AA011915_83825.jpg', '2024-06-20', NULL),
(589, 'WAUHFBFR9AA011915', 'WAUHFBFR9AA011915_36679.jpg', '2024-06-20', NULL),
(590, 'WVWAAA3C2CE516820', 'WVWAAA3C2CE516820_67782.jpg', '2024-06-24', NULL),
(591, 'WVWAAA3C2CE516820', 'WVWAAA3C2CE516820_45618.jpg', '2024-06-24', NULL),
(592, 'WVWAAA3C2CE516820', 'WVWAAA3C2CE516820_75050.jpg', '2024-06-24', NULL),
(593, 'WVWAAA3C2CE516820', 'WVWAAA3C2CE516820_58078.jpg', '2024-06-24', NULL),
(594, 'WVWAAA3C2CE516820', 'WVWAAA3C2CE516820_79167.jpg', '2024-06-24', NULL),
(595, 'WVWAAA3C2CE516820', 'WVWAAA3C2CE516820_66876.jpg', '2024-06-24', NULL),
(596, 'WVWAAA3C2CE516820', 'WVWAAA3C2CE516820_94652.jpg', '2024-06-24', NULL),
(597, 'WVWAAA3C2CE516820', 'WVWAAA3C2CE516820_24002.jpg', '2024-06-24', NULL),
(598, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_78118.jpg', '2024-06-24', NULL),
(599, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_29973.jpg', '2024-06-24', NULL),
(600, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_62753.jpg', '2024-06-24', NULL),
(601, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_30139.jpg', '2024-06-24', NULL),
(602, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_3274.jpg', '2024-06-24', NULL),
(603, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_91758.jpg', '2024-06-24', NULL),
(604, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_2965.jpg', '2024-06-24', NULL),
(605, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_4509.jpg', '2024-06-24', NULL),
(606, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_90373.jpg', '2024-06-24', NULL),
(607, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_50475.jpg', '2024-06-24', NULL),
(608, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_14683.jpg', '2024-06-24', NULL),
(609, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_41213.jpg', '2024-06-24', NULL),
(610, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_59847.jpg', '2024-06-24', NULL),
(611, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_60559.jpg', '2024-06-24', NULL),
(612, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_91676.jpg', '2024-06-24', NULL),
(613, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_82626.jpg', '2024-06-24', NULL),
(614, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_86150.jpg', '2024-06-24', NULL),
(615, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_89388.jpg', '2024-06-24', NULL),
(616, 'WA1VGCFE0D0016673', 'WA1VGCFE0D0016673_66850.jpg', '2024-06-24', NULL),
(617, '1M2AA18C0WW092489', '1M2AA18C0WW092489_92549.jpg', '2024-06-24', NULL),
(618, '1M2AA18C0WW092489', '1M2AA18C0WW092489_51356.jpg', '2024-06-24', NULL),
(619, '1M2AA18C0WW092489', '1M2AA18C0WW092489_17851.jpg', '2024-06-24', NULL);
INSERT INTO `images` (`Row_ID`, `VIN`, `Image_Name`, `Date_OF_Add`, `Date_OF_Updated`) VALUES
(620, '1M2AA18C0WW092489', '1M2AA18C0WW092489_40562.jpg', '2024-06-24', NULL),
(621, '1M2AA18C0WW092489', '1M2AA18C0WW092489_65773.jpg', '2024-06-24', NULL),
(622, '1M2AA18C0WW092489', '1M2AA18C0WW092489_24333.jpg', '2024-06-24', NULL),
(623, '1M2AA18C0WW092489', '1M2AA18C0WW092489_44306.jpg', '2024-06-24', NULL),
(624, '1M2AA18C0WW092489', '1M2AA18C0WW092489_81603.jpg', '2024-06-24', NULL),
(625, '1M2AA18C0WW092489', '1M2AA18C0WW092489_59301.jpg', '2024-06-24', NULL),
(626, '1M2AA18C0WW092489', '1M2AA18C0WW092489_90101.jpg', '2024-06-24', NULL),
(627, '1M2AA18C0WW092489', '1M2AA18C0WW092489_42478.jpg', '2024-06-24', NULL),
(628, '1M2AA18C0WW092489', '1M2AA18C0WW092489_96170.jpg', '2024-06-24', NULL),
(629, '1M2AA18C0WW092489', '1M2AA18C0WW092489_63320.jpg', '2024-06-24', NULL),
(630, '1M2AA18C0WW092489', '1M2AA18C0WW092489_23184.jpg', '2024-06-24', NULL),
(631, '1M2AA18C0WW092489', '1M2AA18C0WW092489_67346.jpg', '2024-06-24', NULL),
(632, '1M2AA18C0WW092489', '1M2AA18C0WW092489_29537.jpg', '2024-06-24', NULL),
(633, '1M2AA18C0WW092489', '1M2AA18C0WW092489_33402.jpg', '2024-06-24', NULL),
(634, '3N1AB61E59L645953', '3N1AB61E59L645953_18482.jpg', '2024-06-24', NULL),
(635, '3N1AB61E59L645953', '3N1AB61E59L645953_83536.jpg', '2024-06-24', NULL),
(636, '3N1AB61E59L645953', '3N1AB61E59L645953_72350.jpg', '2024-06-24', NULL),
(637, '3N1AB61E59L645953', '3N1AB61E59L645953_96643.jpg', '2024-06-24', NULL),
(638, '3N1AB61E59L645953', '3N1AB61E59L645953_40714.jpg', '2024-06-24', NULL),
(639, '3N1AB61E59L645953', '3N1AB61E59L645953_27482.jpg', '2024-06-24', NULL),
(640, '3N1AB61E59L645953', '3N1AB61E59L645953_18585.jpg', '2024-06-24', NULL),
(641, '3N1AB61E59L645953', '3N1AB61E59L645953_53217.jpg', '2024-06-24', NULL),
(642, '3N1AB61E59L645953', '3N1AB61E59L645953_11520.jpg', '2024-06-24', NULL),
(643, '3N1AB61E59L645953', '3N1AB61E59L645953_84447.jpg', '2024-06-24', NULL),
(644, '3N1AB61E59L645953', '3N1AB61E59L645953_80802.jpg', '2024-06-24', NULL),
(645, '3N1AB61E59L645953', '3N1AB61E59L645953_51817.jpg', '2024-06-24', NULL),
(646, '3N1AB61E59L645953', '3N1AB61E59L645953_95738.jpg', '2024-06-24', NULL),
(647, '3N1AB61E59L645953', '3N1AB61E59L645953_41175.jpg', '2024-06-24', NULL),
(648, '3N1AB61E59L645953', '3N1AB61E59L645953_78742.jpg', '2024-06-24', NULL),
(649, '3N1AB61E59L645953', '3N1AB61E59L645953_24653.jpg', '2024-06-24', NULL),
(650, '3N1AB61E59L645953', '3N1AB61E59L645953_97524.jpg', '2024-06-24', NULL),
(651, '3N1AB61E59L645953', '3N1AB61E59L645953_69123.jpg', '2024-06-24', NULL),
(652, '3N1AB61E59L645953', '3N1AB61E59L645953_30565.jpg', '2024-06-24', NULL),
(653, '3N1AB61E59L645953', '3N1AB61E59L645953_16024.jpg', '2024-06-24', NULL),
(654, '3N1AB61E59L645953', '3N1AB61E59L645953_39962.jpg', '2024-06-24', NULL),
(655, '3N1AB61E59L645953', '3N1AB61E59L645953_42634.jpg', '2024-06-24', NULL),
(656, '3N1AB61E59L645953', '3N1AB61E59L645953_8784.jpg', '2024-06-24', NULL),
(657, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_3309.webp', '2024-06-26', NULL),
(658, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_70388.webp', '2024-06-26', NULL),
(659, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_49371.webp', '2024-06-26', NULL),
(660, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_41188.webp', '2024-06-26', NULL),
(661, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_69451.webp', '2024-06-26', NULL),
(662, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_87796.webp', '2024-06-26', NULL),
(663, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_40422.webp', '2024-06-26', NULL),
(664, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_89409.webp', '2024-06-26', NULL),
(665, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_29532.webp', '2024-06-26', NULL),
(666, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_63792.webp', '2024-06-26', NULL),
(667, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_54287.webp', '2024-06-26', NULL),
(668, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_31926.webp', '2024-06-26', NULL),
(669, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_5496.webp', '2024-06-26', NULL),
(670, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_94749.webp', '2024-06-26', NULL),
(671, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_27063.webp', '2024-06-26', NULL),
(672, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_12289.webp', '2024-06-26', NULL),
(673, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_46057.webp', '2024-06-26', NULL),
(674, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_31033.webp', '2024-06-26', NULL),
(675, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_55973.webp', '2024-06-26', NULL),
(676, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_4379.webp', '2024-06-26', NULL),
(677, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_63497.webp', '2024-06-26', NULL),
(678, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_5457.webp', '2024-06-26', NULL),
(679, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_98768.webp', '2024-06-26', NULL),
(680, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_57280.webp', '2024-06-26', NULL),
(681, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_73818.webp', '2024-06-26', NULL),
(682, '5YJSA1DP2DFP07403', '5YJSA1DP2DFP07403_30615.webp', '2024-06-26', NULL),
(683, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_34450.webp', '2024-06-26', NULL),
(684, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_93969.webp', '2024-06-26', NULL),
(685, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_21689.webp', '2024-06-26', NULL),
(686, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_97531.webp', '2024-06-26', NULL),
(687, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_16990.webp', '2024-06-26', NULL),
(688, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_20428.webp', '2024-06-26', NULL),
(689, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_26438.webp', '2024-06-26', NULL),
(690, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_96912.webp', '2024-06-26', NULL),
(691, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_20928.webp', '2024-06-26', NULL),
(692, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_32777.webp', '2024-06-26', NULL),
(693, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_46375.webp', '2024-06-26', NULL),
(694, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_21254.webp', '2024-06-26', NULL),
(695, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_93262.webp', '2024-06-26', NULL),
(696, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_51411.webp', '2024-06-26', NULL),
(697, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_19871.webp', '2024-06-26', NULL),
(698, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_91128.webp', '2024-06-26', NULL),
(699, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_54208.webp', '2024-06-26', NULL),
(700, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_7749.webp', '2024-06-26', NULL),
(701, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_43765.webp', '2024-06-26', NULL),
(702, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_98254.webp', '2024-06-26', NULL),
(703, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_42554.webp', '2024-06-26', NULL),
(704, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_74087.webp', '2024-06-26', NULL),
(705, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_96699.webp', '2024-06-26', NULL),
(706, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_98153.webp', '2024-06-26', NULL),
(707, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_6556.webp', '2024-06-26', NULL),
(708, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_51566.webp', '2024-06-26', NULL),
(709, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_22377.webp', '2024-06-26', NULL),
(710, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_71118.webp', '2024-06-26', NULL),
(711, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_21986.webp', '2024-06-26', NULL),
(712, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_11054.webp', '2024-06-26', NULL),
(713, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_20260.webp', '2024-06-26', NULL),
(714, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_53640.webp', '2024-06-26', NULL),
(715, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_89844.webp', '2024-06-26', NULL),
(716, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_96592.webp', '2024-06-26', NULL),
(717, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_76716.webp', '2024-06-26', NULL),
(718, 'KNDMB5C13H6230590', 'KNDMB5C13H6230590_25484.webp', '2024-06-26', NULL),
(719, '4JGBB72E98A297923', '4JGBB72E98A297923_71709.jpg', '2024-07-17', NULL),
(720, '4JGBB72E98A297923', '4JGBB72E98A297923_26305.jpg', '2024-07-17', NULL),
(721, '4JGBB72E98A297923', '4JGBB72E98A297923_13989.jpg', '2024-07-17', NULL),
(722, '4JGBB72E98A297923', '4JGBB72E98A297923_87066.jpg', '2024-07-17', NULL),
(723, '4JGBB72E98A297923', '4JGBB72E98A297923_30348.jpg', '2024-07-17', NULL),
(724, '4JGBB72E98A297923', '4JGBB72E98A297923_37105.jpg', '2024-07-17', NULL),
(725, '4JGBB72E98A297923', '4JGBB72E98A297923_5019.jpg', '2024-07-17', NULL),
(726, '4JGBB72E98A297923', '4JGBB72E98A297923_12587.jpg', '2024-07-17', NULL),
(727, '4JGBB72E98A297923', '4JGBB72E98A297923_57847.jpg', '2024-07-17', NULL),
(728, '4JGBB72E98A297923', '4JGBB72E98A297923_8639.jpg', '2024-07-17', NULL),
(729, '4JGBB72E98A297923', '4JGBB72E98A297923_59362.jpg', '2024-07-17', NULL),
(730, '4JGBB72E98A297923', '4JGBB72E98A297923_53030.jpg', '2024-07-17', NULL),
(731, '4JGBB72E98A297923', '4JGBB72E98A297923_1992.jpg', '2024-07-17', NULL),
(732, '4JGBB72E98A297923', '4JGBB72E98A297923_97990.jpg', '2024-07-17', NULL),
(733, '4JGBB72E98A297923', '4JGBB72E98A297923_84489.jpg', '2024-07-17', NULL),
(734, '4JGBB72E98A297923', '4JGBB72E98A297923_10487.jpg', '2024-07-17', NULL),
(735, '4JGBB72E98A297923', '4JGBB72E98A297923_24828.jpg', '2024-07-17', NULL),
(736, '4JGBB72E98A297923', '4JGBB72E98A297923_60845.jpg', '2024-07-17', NULL),
(737, '4JGBB72E98A297923', '4JGBB72E98A297923_36798.jpg', '2024-07-17', NULL),
(738, '4JGBB72E98A297923', '4JGBB72E98A297923_33081.jpg', '2024-07-17', NULL),
(739, '4JGBB72E98A297923', '4JGBB72E98A297923_45602.jpg', '2024-07-17', NULL),
(740, '4JGBB72E98A297923', '4JGBB72E98A297923_77060.jpg', '2024-07-17', NULL),
(741, '4JGBB72E98A297923', '4JGBB72E98A297923_23818.jpg', '2024-07-17', NULL),
(742, '4JGBB72E98A297923', '4JGBB72E98A297923_31393.jpg', '2024-07-17', NULL),
(743, '4JGBB72E98A297923', '4JGBB72E98A297923_49172.jpg', '2024-07-17', NULL),
(744, '4JGBB72E98A297923', '4JGBB72E98A297923_69257.jpg', '2024-07-17', NULL),
(745, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_91369.jpg', '2024-07-17', NULL),
(746, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_65259.jpg', '2024-07-17', NULL),
(747, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_3276.jpg', '2024-07-17', NULL),
(748, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_96024.jpg', '2024-07-17', NULL),
(749, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_17352.jpg', '2024-07-17', NULL),
(750, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_6145.jpg', '2024-07-17', NULL),
(751, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_36699.jpg', '2024-07-17', NULL),
(752, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_92836.jpg', '2024-07-17', NULL),
(753, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_45350.jpg', '2024-07-17', NULL),
(754, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_25721.jpg', '2024-07-17', NULL),
(755, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_81922.jpg', '2024-07-17', NULL),
(756, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_68363.jpg', '2024-07-17', NULL),
(757, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_77061.jpg', '2024-07-17', NULL),
(758, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_23547.jpg', '2024-07-17', NULL),
(759, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_36746.jpg', '2024-07-17', NULL),
(760, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_31949.jpg', '2024-07-17', NULL),
(761, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_83703.jpg', '2024-07-17', NULL),
(762, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_4923.jpg', '2024-07-17', NULL),
(763, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_6824.jpg', '2024-07-17', NULL),
(764, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_37041.jpg', '2024-07-17', NULL),
(765, '1NXAE82G1HZ435690', '1NXAE82G1HZ435690_9045.jpg', '2024-07-17', NULL),
(766, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_28327.jpg', '2024-08-22', NULL),
(767, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_9240.jpg', '2024-08-22', NULL),
(768, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_81047.jpg', '2024-08-22', NULL),
(769, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_21376.jpg', '2024-08-22', NULL),
(770, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_978.jpg', '2024-08-22', NULL),
(771, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_16881.jpg', '2024-08-22', NULL),
(772, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_50457.jpg', '2024-08-22', NULL),
(773, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_91045.jpg', '2024-08-22', NULL),
(774, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_39278.jpg', '2024-08-22', NULL),
(775, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_28357.jpg', '2024-08-22', NULL),
(776, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_94891.jpg', '2024-08-22', NULL),
(777, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_69066.jpg', '2024-08-22', NULL),
(778, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_70812.jpg', '2024-08-22', NULL),
(779, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_40418.jpg', '2024-08-22', NULL),
(780, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_2664.jpg', '2024-08-22', NULL),
(781, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_79553.jpg', '2024-08-22', NULL),
(782, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_53022.jpg', '2024-08-22', NULL),
(783, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_83720.jpg', '2024-08-22', NULL),
(784, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_66616.jpg', '2024-08-22', NULL),
(785, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_86836.jpg', '2024-08-22', NULL),
(786, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_11283.jpg', '2024-08-22', NULL),
(787, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_1566.jpg', '2024-08-22', NULL),
(788, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_37691.jpg', '2024-08-22', NULL),
(789, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_60217.jpg', '2024-08-22', NULL),
(790, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_43579.jpg', '2024-08-22', NULL),
(791, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_98767.jpg', '2024-08-22', NULL),
(792, '4V1KLDJF1LN627146', '4V1KLDJF1LN627146_22074.jpg', '2024-08-22', NULL),
(793, 'JM3KE4BE2F0432552', 'JM3KE4BE2F0432552_44267.jpg', '2024-08-22', NULL),
(794, 'JM3KE4BE2F0432552', 'JM3KE4BE2F0432552_94279.jpg', '2024-08-22', NULL),
(795, 'JM3KE4BE2F0432552', 'JM3KE4BE2F0432552_12847.jpg', '2024-08-22', NULL),
(796, 'JM3KE4BE2F0432552', 'JM3KE4BE2F0432552_87217.jpg', '2024-08-22', NULL),
(797, 'JM3KE4BE2F0432552', 'JM3KE4BE2F0432552_48341.jpg', '2024-08-22', NULL),
(798, 'JM3KE4BE2F0432552', 'JM3KE4BE2F0432552_21892.jpg', '2024-08-22', NULL),
(799, 'JM3KE4BE2F0432552', 'JM3KE4BE2F0432552_95528.jpg', '2024-08-22', NULL),
(800, 'JM3KE4BE2F0432552', 'JM3KE4BE2F0432552_2289.jpg', '2024-08-22', NULL),
(801, 'JM3KE4BE2F0432552', 'JM3KE4BE2F0432552_43554.jpg', '2024-08-22', NULL),
(802, 'JM3KE4BE2F0432552', 'JM3KE4BE2F0432552_35478.jpg', '2024-08-22', NULL),
(803, 'JM3KE4BE2F0432552', 'JM3KE4BE2F0432552_86777.jpg', '2024-08-22', NULL),
(804, '1YVGF22D225527370', '1YVGF22D225527370_87117.jpg', '2024-08-22', NULL),
(805, '1YVGF22D225527370', '1YVGF22D225527370_98386.jpg', '2024-08-22', NULL),
(806, '1YVGF22D225527370', '1YVGF22D225527370_80978.jpg', '2024-08-22', NULL),
(807, '1YVGF22D225527370', '1YVGF22D225527370_56859.jpg', '2024-08-22', NULL),
(808, '1YVGF22D225527370', '1YVGF22D225527370_5856.jpg', '2024-08-22', NULL),
(809, '1YVGF22D225527370', '1YVGF22D225527370_20169.jpg', '2024-08-22', NULL),
(810, '1YVGF22D225527370', '1YVGF22D225527370_62501.jpg', '2024-08-22', NULL),
(811, '1YVGF22D225527370', '1YVGF22D225527370_89431.jpg', '2024-08-22', NULL),
(812, '1YVGF22D225527370', '1YVGF22D225527370_18344.jpg', '2024-08-22', NULL),
(813, '1YVGF22D225527370', '1YVGF22D225527370_96831.jpg', '2024-08-22', NULL),
(814, '1YVGF22D225527370', '1YVGF22D225527370_912.jpg', '2024-08-22', NULL),
(815, '1YVGF22D225527370', '1YVGF22D225527370_82417.jpg', '2024-08-22', NULL),
(816, '1YVGF22D225527370', '1YVGF22D225527370_46985.jpg', '2024-08-22', NULL),
(817, '1YVGF22D225527370', '1YVGF22D225527370_30847.jpg', '2024-08-22', NULL),
(818, '1YVGF22D225527370', '1YVGF22D225527370_10535.jpg', '2024-08-22', NULL),
(819, '1YVGF22D225527370', '1YVGF22D225527370_11712.jpg', '2024-08-22', NULL),
(820, '1YVGF22D225527370', '1YVGF22D225527370_98977.jpg', '2024-08-22', NULL),
(821, '1YVGF22D225527370', '1YVGF22D225527370_58327.jpg', '2024-08-22', NULL),
(822, '1YVGF22D225527370', '1YVGF22D225527370_62175.jpg', '2024-08-22', NULL),
(823, '1YVGF22D225527370', '1YVGF22D225527370_4298.jpg', '2024-08-22', NULL),
(824, '1YVGF22D225527370', '1YVGF22D225527370_29272.jpg', '2024-08-22', NULL),
(825, '1YVGF22D225527370', '1YVGF22D225527370_29003.jpg', '2024-08-22', NULL),
(826, '1YVGF22D225527370', '1YVGF22D225527370_87425.jpg', '2024-08-22', NULL),
(827, '4JGBF22E18A372976', '4JGBF22E18A372976_26501.jpg', '2024-08-22', NULL),
(828, '4JGBF22E18A372976', '4JGBF22E18A372976_66732.jpg', '2024-08-22', NULL),
(829, '4JGBF22E18A372976', '4JGBF22E18A372976_43134.jpg', '2024-08-22', NULL),
(830, '4JGBF22E18A372976', '4JGBF22E18A372976_76491.jpg', '2024-08-22', NULL),
(831, '4JGBF22E18A372976', '4JGBF22E18A372976_62483.jpg', '2024-08-22', NULL),
(832, '4JGBF22E18A372976', '4JGBF22E18A372976_62549.jpg', '2024-08-22', NULL),
(833, '4JGBF22E18A372976', '4JGBF22E18A372976_57733.jpg', '2024-08-22', NULL),
(834, '4JGBF22E18A372976', '4JGBF22E18A372976_37182.jpg', '2024-08-22', NULL),
(835, '4JGBF22E18A372976', '4JGBF22E18A372976_89533.jpg', '2024-08-22', NULL),
(836, '4JGBF22E18A372976', '4JGBF22E18A372976_54282.jpg', '2024-08-22', NULL),
(837, '4JGBF22E18A372976', '4JGBF22E18A372976_7779.jpg', '2024-08-22', NULL),
(838, '4JGBF22E18A372976', '4JGBF22E18A372976_67737.jpg', '2024-08-22', NULL),
(839, '4JGBF22E18A372976', '4JGBF22E18A372976_46638.jpg', '2024-08-22', NULL),
(840, '4JGBF22E18A372976', '4JGBF22E18A372976_66558.jpg', '2024-08-22', NULL),
(841, '4JGBF22E18A372976', '4JGBF22E18A372976_49237.jpg', '2024-08-22', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `number_of_cars_by_branches`
-- (See below for the actual view)
--
CREATE TABLE `number_of_cars_by_branches` (
`Number_OF_CARS` bigint(21)
,`POAC` varchar(27)
,`BranchName` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `number_of_cars_by_stores`
-- (See below for the actual view)
--
CREATE TABLE `number_of_cars_by_stores` (
`SID` int(15)
,`Number_OF_Cars` bigint(21)
,`POAC` varchar(27)
,`Store_Name` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `percentage_of_cars_by_color`
-- (See below for the actual view)
--
CREATE TABLE `percentage_of_cars_by_color` (
`Color` enum('White','Black','Silver','Red','Blue','Yellow','Orange','Gold','Brown','Dark Silver')
,`NOC` bigint(21)
,`POAC` varchar(27)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `percentage_of_cars_by_drawmethod`
-- (See below for the actual view)
--
CREATE TABLE `percentage_of_cars_by_drawmethod` (
`Draw_Method` enum('4WD','FWD','RWD')
,`NOC` bigint(21)
,`POAC` varchar(27)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `percentage_of_cars_by_gearbox`
-- (See below for the actual view)
--
CREATE TABLE `percentage_of_cars_by_gearbox` (
`Gearbox` enum('Manual','Automatic')
,`NOC` bigint(21)
,`POAC` varchar(27)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `percentage_of_cars_by_type_of_body`
-- (See below for the actual view)
--
CREATE TABLE `percentage_of_cars_by_type_of_body` (
`Type_OF_Body` enum('convertible (Avoauto)','Pickup (Avolava)','Coupe','Wagon (Farmari)','SUV (Maastoauto)','Sedan (Porrasperä)','SpaceCar (Tila-auto)','Hatchback (Viistoperä)','Other (Muu)')
,`NOC` bigint(21)
,`POAC` varchar(27)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `percentage_of_cars_by_type_of_car`
-- (See below for the actual view)
--
CREATE TABLE `percentage_of_cars_by_type_of_car` (
`Type_OF_Car` enum('Sedan (Henkilöauto)','Van (Pakettiauto)','Minibus','LightTruck (Kevyt kuorma-auto)')
,`NOC` bigint(21)
,`POAC` varchar(27)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `percentage_of_cars_by_type_of_fuel`
-- (See below for the actual view)
--
CREATE TABLE `percentage_of_cars_by_type_of_fuel` (
`Fuel_Type` enum('Petrol','Diesel','Electric','Plug-In Hybrid','Gas')
,`NOC` bigint(21)
,`POAC` varchar(27)
);

-- --------------------------------------------------------

--
-- Table structure for table `postalcodes`
--

CREATE TABLE `postalcodes` (
  `PostalCode` char(5) NOT NULL,
  `Region` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `postalcodes`
--

INSERT INTO `postalcodes` (`PostalCode`, `Region`) VALUES
('29700', 'Ahlainen'),
('02100', 'Espoo'),
('02101', 'Espoo'),
('02151', 'Espoo'),
('02160', 'Espoo'),
('02180', 'Espoo'),
('02200', 'Espoo'),
('02270', 'Espoo'),
('02300', 'Espoo'),
('02321', 'Espoo'),
('02340', 'Espoo'),
('02600', 'Espoo'),
('02601', 'Espoo'),
('02620', 'Espoo'),
('02750', 'Espoo'),
('02781', 'Espoo'),
('02860', 'Espoo'),
('02862', 'Espoo'),
('02920', 'Espoo'),
('02970', 'Espoo'),
('27510', 'Eura'),
('27511', 'Eura'),
('27100', 'Eurajoki'),
('27101', 'Eurajoki'),
('27110', 'Eurajoki'),
('27130', 'Eurajoki'),
('27150', 'Eurajoki'),
('27160', 'Eurajoki'),
('27170', 'Eurajoki'),
('30007', 'Forssa'),
('30100', 'Forssa'),
('29200', 'Harjavalta'),
('29201', 'Harjavalta'),
('28260', 'Harjunpää'),
('18120', 'Heinola'),
('00100', 'Helsinki'),
('00120', 'Helsinki'),
('00121', 'Helsinki'),
('00150', 'Helsinki'),
('00371', 'Helsinki'),
('00390', 'Helsinki'),
('00510', 'Helsinki'),
('00551', 'Helsinki'),
('00601', 'Helsinki'),
('00620', 'Helsinki'),
('00640', 'Helsinki'),
('00700', 'Helsinki'),
('00711', 'Helsinki'),
('00790', 'Helsinki'),
('00811', 'Helsinki'),
('00870', 'Helsinki'),
('00880', 'Helsinki'),
('00920', 'Helsinki'),
('00921', 'Helsinki'),
('29270', 'Hormisto'),
('32770', 'Huhtamo'),
('32700', 'Huittinen'),
('32701', 'Huittinen'),
('05440', 'Hyvinkää'),
('05460', 'Hyvinkää'),
('05470', 'Hyvinkää'),
('05510', 'Hyvinkää'),
('05620', 'Hyvinkää'),
('05720', 'Hyvinkää'),
('05800', 'Hyvinkää'),
('05801', 'Hyvinkää'),
('05820', 'Hyvinkää'),
('05830', 'Hyvinkää'),
('05840', 'Hyvinkää'),
('05860', 'Hyvinkää'),
('05900', 'Hyvinkää'),
('15840', 'Hyvinkää'),
('13130', 'Hämeenlinna'),
('74120', 'Iisalmi'),
('80100', 'Joensuu'),
('40100', 'Jyväskylä'),
('40101', 'Jyväskylä'),
('40200', 'Jyväskylä'),
('40250', 'Jyväskylä'),
('40320', 'Jyväskylä'),
('40321', 'Jyväskylä'),
('40340', 'Jyväskylä'),
('40341', 'Jyväskylä'),
('40350', 'Jyväskylä'),
('40351', 'Jyväskylä'),
('40400', 'Jyväskylä'),
('40500', 'Jyväskylä'),
('40520', 'Jyväskylä'),
('40521', 'Jyväskylä'),
('40530', 'Jyväskylä'),
('40531', 'Jyväskylä'),
('40640', 'Jyväskylä'),
('40660', 'Jyväskylä'),
('40700', 'Jyväskylä'),
('40701', 'Jyväskylä'),
('40720', 'Jyväskylä'),
('40740', 'Jyväskylä'),
('42100', 'Jämsa'),
('04400', 'Järvenpää'),
('04401', 'Järvenpää'),
('04410', 'Järvenpää'),
('04420', 'Järvenpää'),
('04430', 'Järvenpää'),
('04431', 'Järvenpää'),
('04440', 'Järvenpää'),
('20780', 'Kaarina'),
('87400', 'Kajaani'),
('38670', 'Kalliala'),
('90440', 'Kempelee'),
('04230', 'Kerava'),
('04250', 'Kerava'),
('04251', 'Kerava'),
('04260', 'Kerava'),
('04261', 'Kerava'),
('42720', 'Keuruu'),
('02400', 'Kirkkonummi'),
('67700', 'Kokkola'),
('48600', 'Kotka'),
('45130', 'Kouvola'),
('70200', 'Kuopio'),
('70700', 'Kuopio'),
('15520', 'Lahti'),
('15610', 'Lahti'),
('53500', 'Lappeenranta'),
('27220', 'Lappi'),
('27230', 'Lappi'),
('27231', 'Lappi'),
('27250', 'Lappi'),
('27260', 'Lappi'),
('37570', 'Lempäälä'),
('09930', 'Leppakorpi'),
('01830', 'Lepsama'),
('08100', 'Lohja'),
('08101', 'Lohja'),
('08150', 'Lohja'),
('08151', 'Lohja'),
('08200', 'Lohja'),
('08201', 'Lohja'),
('08350', 'Lohja'),
('08360', 'Lohja'),
('08450', 'Lohja'),
('08480', 'Lohja'),
('08500', 'Lohja'),
('08501', 'Lohja'),
('08680', 'Lohja'),
('08700', 'Lohja'),
('08701', 'Lohja'),
('08800', 'Lohja'),
('01810', 'Luhtajoki'),
('02440', 'Luoma'),
('02430', 'Masala'),
('02431', 'Masala'),
('50100', 'Mikkeli'),
('09520', 'Millola'),
('40950', 'Muurame'),
('04600', 'Mäntsälä'),
('04601', 'Mäntsälä'),
('04620', 'Mäntsälä'),
('04150', 'Mätinkylä'),
('03100', 'Nummela'),
('90100', 'Oulu'),
('90400', 'Oulu'),
('90420', 'Oulu'),
('28100', 'Pori'),
('28101', 'Pori'),
('28120', 'Pori'),
('28130', 'Pori'),
('28131', 'Pori'),
('28190', 'Pori'),
('28200', 'Pori'),
('28300', 'Pori'),
('28360', 'Pori'),
('28361', 'Pori'),
('28370', 'Pori'),
('28430', 'Pori'),
('28500', 'Pori'),
('28540', 'Pori'),
('28560', 'Pori'),
('28660', 'Pori'),
('28760', 'Pori'),
('28800', 'Pori'),
('28840', 'Pori'),
('28880', 'Pori'),
('28900', 'Pori'),
('06100', 'Porvoo'),
('58500', 'Punkkaharju'),
('26100', 'Rauma'),
('26101', 'Rauma'),
('26200', 'Rauma'),
('26510', 'Rauma'),
('26660', 'Rauma'),
('26661', 'Rauma'),
('32830', 'Riste'),
('96420', 'Rovaniemi'),
('19460', 'Ruorasmaki'),
('32620', 'Rutava'),
('32710', 'Sampu'),
('60510', 'Seinäjoki'),
('29570', 'Soormarkku'),
('52830', 'Suomenniemi'),
('32760', 'Suttila'),
('33400', 'Tampere'),
('29790', 'Tuorila'),
('20320', 'Turku'),
('52610', 'Tuukkala'),
('04300', 'Tuusula'),
('28400', 'Ulvila'),
('28401', 'Ulvila'),
('65300', 'Vaasa'),
('50101', 'Valkeakoski'),
('50120', 'Valkeakoski'),
('50130', 'Valkeakoski'),
('50150', 'Valkeakoski'),
('50160', 'Valkeakoski'),
('50170', 'Valkeakoski'),
('50180', 'Valkeakoski'),
('50190', 'Valkeakoski'),
('32610', 'Vampula'),
('28450', 'Vanha-Ulvila'),
('01260', 'Vantaa'),
('01300', 'Vantaa'),
('01340', 'Vantaa'),
('01350', 'Vantaa'),
('01351', 'Vantaa'),
('01380', 'Vantaa'),
('01390', 'Vantaa'),
('01450', 'Vantaa'),
('01510', 'Vantaa'),
('01531', 'Vantaa'),
('01600', 'Vantaa'),
('01610', 'Vantaa'),
('01620', 'Vantaa'),
('01621', 'Vantaa'),
('01650', 'Vantaa'),
('01660', 'Vantaa'),
('01690', 'Vantaa'),
('01710', 'Vantaa'),
('01720', 'Vantaa'),
('01730', 'Vantaa'),
('01741', 'Vantaa'),
('01750', 'Vantaa'),
('01760', 'Vantaa'),
('01770', 'Vantaa'),
('52920', 'Voikoski'),
('38650', 'Yli-Putto');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `Store_ID` int(15) NOT NULL,
  `Branch_Store_ID` int(15) NOT NULL,
  `Store_Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `PostalCode` char(5) NOT NULL,
  `Date_OF_Add` date NOT NULL DEFAULT current_timestamp(),
  `Date_OF_Update` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Image_Name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`Store_ID`, `Branch_Store_ID`, `Store_Name`, `Address`, `Email`, `Phone`, `PostalCode`, `Date_OF_Add`, `Date_OF_Update`, `Image_Name`) VALUES
(1, 1, 'SAKA Finland Oy, Herttoniemi', 'Mekaanikonkatu 17', NULL, NULL, '00880', '2024-03-06', '2024-06-26 15:42:41', '1.jpg'),
(2, 2, 'Kamux Konala', 'Päiväläisentie 1-6', NULL, NULL, '00390', '2024-03-06', '2024-06-26 15:42:47', '2.jpg'),
(3, 1, 'SAKA Finland Oy, Koskelo', 'Koskelontie 15', NULL, NULL, '02920', '2024-03-03', '2024-06-26 15:42:44', '3.jpeg'),
(4, 1, 'SAKA Finland Oy, Konala', 'Päiväläisentie 1-6', NULL, NULL, '00390', '2024-03-06', '2024-06-26 15:42:57', '4.jpeg'),
(5, 1, 'SAKA Finland Oy, Hyvinkää', 'Helletorpankatu 31', NULL, NULL, '15840', '2024-03-06', '2024-06-26 15:42:55', '5.jpeg'),
(6, 1, 'SAKA Finland Oy, Hämeenlinna', 'Eino Leinon katu 40', NULL, NULL, '13130', '2024-03-06', '2024-06-26 15:42:52', '6.jpeg'),
(7, 1, 'SAKA Finland Oy, Joensuu', 'Raatekankaantie 4', NULL, NULL, '80100', '2024-03-06', '2024-06-26 15:42:49', '7.jpg'),
(8, 1, 'SAKA Finland Oy, Jyväskylä', 'Ahjokatu 1', NULL, NULL, '40320', '2024-03-06', '2024-06-26 15:44:25', '8.jpeg'),
(9, 1, 'SAKA Finland Oy, Järvenpää', 'Diggarinkatu 10', NULL, NULL, '04420', '2024-03-06', '2024-06-26 15:44:25', '9.jpg'),
(10, 1, 'SAKA Finland Oy, Kirkkonummi', 'Purotie 1', NULL, NULL, '02400', '2024-03-06', '2024-06-26 15:44:25', '10.jpeg'),
(11, 2, 'Kamux Koskelo', 'Koskelontie 19', NULL, NULL, '02920', '2024-03-05', '2024-06-26 15:44:25', '11.jpg'),
(12, 2, 'Kamux Niittykumpu', 'Riihitontuntie 10-12', NULL, NULL, '02200', '2024-03-05', '2024-06-26 15:44:25', '12.jpg'),
(13, 2, 'Kamux Hyvinkää', 'Avainkierto 17', NULL, NULL, '15840', '2024-03-05', '2024-06-26 15:44:25', '13.jpg'),
(14, 2, 'Kamux Hämeenlinna', 'Parolantie 66 A', NULL, NULL, '13130', '2024-03-05', '2024-06-26 15:44:25', '14.jpg'),
(15, 2, 'Kamux Joensuu', 'Kuurnankatu 14', NULL, NULL, '80100', '2024-03-05', '2024-06-26 15:44:25', '15.jpg'),
(18, 1, 'SAKA Finland Oy, Kouvola', 'Tommolankatu 7', NULL, NULL, '45130', '2024-03-14', '2024-06-26 15:44:25', '18.jpg'),
(19, 1, 'SAKA Finland Oy, Kuopio', 'Leväsentie 2', NULL, NULL, '70200', '2024-03-14', '2024-06-26 15:44:25', '19.jpg'),
(20, 1, 'SAKA Finland Oy, Lahti', 'Alavankatu 4', NULL, NULL, '15610', '2024-03-14', '2024-06-26 15:44:25', '20.jpeg'),
(21, 1, 'SAKA Finland Oy, Lappeenranta', 'Toikansuontie 6', NULL, NULL, '53500', '2024-03-14', '2024-06-26 15:44:25', '21.jpeg'),
(22, 1, 'SAKA Finland Oy, Lempäälä', 'Ideaparkinkatu 4', NULL, NULL, '37570', '2024-03-14', '2024-06-26 15:44:25', '22.jpeg'),
(23, 1, 'SAKA Finland Oy, Nummela', 'Ratastie 24', NULL, NULL, '03100', '2024-03-14', '2024-06-26 15:44:25', '23.jpeg'),
(24, 1, 'SAKA Finland Oy, Oulu', 'Portinkaarre 3', NULL, NULL, '90100', '2024-03-14', '2024-06-26 15:44:25', '24.jpg'),
(25, 1, 'SAKA Finland Oy, Pori', 'Helmentie 6-8', NULL, NULL, '28360', '2024-03-14', '2024-06-26 15:44:25', '25.jpeg'),
(26, 1, 'SAKA Finland Oy, Porvoo', 'Ratsumestarinkatu 8', NULL, NULL, '06100', '2024-03-14', '2024-06-26 15:44:25', '26.jpeg'),
(27, 1, 'SAKA Finland Oy, Raisio', 'Vahdontie 30', NULL, NULL, '20320', '2024-03-14', '2024-06-26 15:44:25', '27.jpeg'),
(28, 1, 'SAKA Finland Oy, Seinäjoki', 'Lieskatie 2', NULL, NULL, '60510', '2024-03-14', '2024-06-26 15:44:25', '28.jpg'),
(29, 1, 'SAKA Finland Oy, Tampere', 'Sellukatu 8', NULL, NULL, '33400', '2024-03-14', '2024-06-26 15:44:25', '29.jpg'),
(32, 1, 'SAKA Finland Oy, Koivuhaka', 'Kuriiritie 17', NULL, NULL, '01510', '2024-03-14', '2024-06-26 15:44:25', '32.jfif'),
(33, 1, 'SAKA Finland Oy, Varisto', 'Martinkyläntie 59', NULL, NULL, '01720', '2024-03-14', '2024-06-26 15:44:25', '33.jpg'),
(34, 2, 'Kamux Forssa', 'Aukeentie 5', NULL, NULL, '30100', '2024-03-15', '2024-06-26 15:44:25', '34.jpg'),
(35, 2, 'Kamux Malmi', 'Takoraudantie 2', NULL, NULL, '00700', '2024-03-15', '2024-06-26 15:44:25', '35.jpg'),
(36, 2, 'Kamux Iisalmi', 'Kilpivirrantie 1', NULL, NULL, '70200', '2024-03-15', '2024-06-26 15:44:25', '36.jpg'),
(37, 2, 'Kamux Jyväskylä', 'Laukaantie 1', NULL, NULL, '40320', '2024-03-15', '2024-06-26 15:44:25', '37.jpg'),
(38, 2, 'Kamux Jämsä', 'Ekosentie 2', NULL, NULL, '42100', '2024-03-18', '2024-06-26 15:44:25', '38.jpg'),
(39, 2, 'Kamux Järvenpää', 'Rajaniitynkatu 2', NULL, NULL, '04420', '2024-03-18', '2024-06-26 15:44:25', '39.jpg'),
(40, 2, 'Kamux Kaarina', 'Autoilijankatu 30', NULL, NULL, '20780', '2024-03-18', '2024-06-26 15:44:25', '40.jpg'),
(41, 2, 'Kamux Kajaani', 'Kehräämöntie 22', NULL, NULL, '87400', '2024-03-18', '2024-06-26 15:44:25', '41.jpg'),
(42, 2, 'Kamux Kouvola', 'Tommolankatu 16', NULL, NULL, '45130', '2024-03-18', '2024-06-26 15:44:25', '42.jpg'),
(43, 2, 'Kamux Kuopio', 'Väliköntie 4', NULL, NULL, '70200', '2024-03-18', '2024-06-26 15:44:25', '43.jpg'),
(44, 2, 'Kamux Lahti', 'Tupalankatu 3', NULL, NULL, '15610', '2024-03-18', '2024-06-26 15:44:25', '44.jpg'),
(47, 2, 'Kamux Lappeenranta', 'Ajurinkatu 8', NULL, NULL, '53500', '2024-03-18', '2024-06-26 15:44:25', '47.jfif'),
(48, 2, 'Kamux Lempäälä Ideapark', 'Ideaparkinkatu 4', NULL, NULL, '37570', '2024-03-18', '2024-06-26 15:44:25', '48.jpg'),
(49, 2, 'Kamux Lohja', 'Seisaketie 5', NULL, NULL, '08680', '2024-03-18', '2024-06-26 15:44:25', '49.jpg'),
(50, 2, 'Kamux Mikkeli', 'Hietakatu 1', 'mikkeli@kamux.fi', '010 420 8877', '50100', '2024-03-18', '2024-05-27 14:05:11', '50.jpg'),
(51, 2, 'Kamux Oulu Limingantulli', 'Tyrnäväntie 6', NULL, NULL, '90400', '2024-03-18', '2024-06-26 15:41:42', '51.jpg'),
(52, 2, 'Kamux Oulunportti', 'Portinkaarre 1', NULL, NULL, '90420', '2024-03-18', '2024-06-26 15:41:42', '52.jpeg'),
(62, 2, 'Kamux Pori', 'Pohjoisväylä 3', NULL, NULL, '28360', '2024-03-18', '2024-06-26 15:41:42', '62.jpg'),
(63, 2, 'Kamux Porvoo', 'Kuninkaantie 1', NULL, NULL, '06100', '2024-03-18', '2024-06-26 15:41:42', '63.jpg'),
(64, 2, 'Kamux Seinäjoki', 'Nurmontie 113', NULL, NULL, '60510', '2024-03-18', '2024-06-26 15:41:42', '64.jpg'),
(65, 2, 'Kamux Tampere Hatanpää', 'Lahdenperänkatu 3', NULL, NULL, '33400', '2024-03-18', '2024-06-26 15:41:42', '65.jfif'),
(66, 2, 'Kamux Turku', 'Nuppulantie 21', NULL, NULL, '20320', '2024-03-18', '2024-06-26 15:41:42', '66.jpg'),
(67, 2, 'Kamux Tuusula', 'Hiekkamäentie 5', NULL, NULL, '04300', '2024-03-18', '2024-06-26 15:41:42', '67.jpg'),
(68, 2, 'Kamux Vaasa', 'Silmukkatie 11', 'vaasa@kamux.fi', '010 778 5555', '65300', '2024-03-18', '2024-05-27 14:06:21', '68.jpg'),
(69, 2, 'Kamux Vantaa Airport', 'Virkatie 7', 'airtport@kamux.fi', '010 778 5577', '01510', '2024-03-18', '2024-05-27 14:06:14', '69.jfif'),
(70, 2, 'Kamux Vantaa Varisto', 'Martinkyläntie 47', 'varisto@kamux.fi', '010 420 8830', '01720', '2024-03-18', '2024-05-27 14:06:06', '70.jpg'),
(71, 3, 'Veho Airport', 'Ohtolankatu 10', NULL, '010 569 15', '01510', '2024-03-18', '2024-05-06 12:33:31', '71.jpg'),
(72, 3, 'Veho Herttoniemi', 'Mekaanikonkatu 14', NULL, '010 569 14', '00880', '2024-03-18', '2024-05-06 12:34:09', '72.jpg'),
(73, 3, 'Veho Olari', 'Piispankallio 2', NULL, '010 569 17', '02200', '2024-03-18', '2024-05-27 14:11:42', '73.jfif'),
(74, 3, 'Veho Tampere', 'Taninkatu 11', NULL, '010 569 3011', '33400', '2024-03-18', '2024-05-06 12:33:47', '74.jpg'),
(75, 6, 'Vaihtoautomaa Vantaa', 'Tiilipojanlenkki 4 A', 'vantaa@vaihtoautomaa.com', '0207 890 682', '01720', '2024-03-18', '2024-05-27 14:17:52', '75.jpg'),
(76, 6, 'Vaihtoautomaa Lahti', 'Laatukatu 22', 'lahti@vaihtoautomaa.com', '0207 890 684', '15610', '2024-03-18', '2024-05-27 14:18:05', '76.jpg'),
(77, 6, 'Vaihtoautomaa Lempäälä', 'Ruokosmetsänkatu 7 C', 'lempaala@vaihtoautomaa.com', '0207 890 687', '37570', '2024-03-18', '2024-05-27 14:18:12', '77.jpg'),
(78, 5, 'J. Rinta-Jouppi Espoo', 'Niittymaantie 8', 'espoo@rintajouppi.fi', '020 788 1580', '02200', '2024-03-17', '2024-05-27 14:28:09', '78.jpg'),
(79, 5, 'J. Rinta-Jouppi Hyvinkää', 'Veikkarinkatu 1', 'hyvinkaa@rintajouppi.fi', NULL, '15840', '2024-03-17', '2024-06-26 15:41:06', '79.jpg'),
(80, 5, 'J. Rinta-Jouppi Hämeenlinna', 'Parolantie 65', 'hameenlinna@rintajouppi.fi', '03 389 9999', '13130', '2024-03-17', '2024-05-27 14:28:34', '80.jpg'),
(81, 5, 'J. Rinta-Jouppi Jyväskylä', 'Seppäläntie 16', 'jyvaskyla@rintajouppi.fi', '020 788 1570', '40320', '2024-03-17', '2024-05-27 14:28:46', '81.jpg'),
(82, 5, 'J. Rinta-Jouppi Kuopio', 'Volttikatu 7', 'kuopio@rintajouppi.fi', NULL, '70200', '2024-03-17', '2024-05-27 14:29:02', '82.jpg'),
(83, 5, 'J. Rinta-Jouppi Lahti', 'Tupalankatu 7', 'lahti@rintajouppi.fi', '020 7881 310', '15610', '2024-03-17', '2024-05-27 14:29:10', '83.jpg'),
(84, 5, 'J. Rinta-Jouppi Lappeenranta', 'Lentokentäntie 5', 'lappeenranta@rintajouppi.fi', '020 788 1350', '53500', '2024-03-17', '2024-05-27 14:29:18', '84.jpg'),
(85, 5, 'J. Rinta-Jouppi Oulu', 'Takojantie 1', 'oulu@rintajouppi.fi', '020 788 1560', '90420', '2024-03-17', '2024-05-27 14:29:26', '85.jpg'),
(86, 5, 'J. Rinta-Jouppi Pori', 'Helmentie 5', 'pori@rintajouppi.fi', '020 788 1585', '28360', '2024-03-17', '2024-05-27 14:29:35', '86.jpg'),
(87, 5, 'J. Rinta-Jouppi Seinäjoki', 'Jouppilantie 18', 'seinajoki@rintajouppi.fi', '06 420 1800', '60510', '2024-03-17', '2024-05-27 14:30:16', '87.jpg'),
(88, 5, 'J. Rinta-Jouppi Tampere', 'Sellukatu 5', 'lielahti@rintajouppi.fi', '020 788 1277', '33400', '2024-03-17', '2024-05-27 14:30:27', '88.jpg'),
(90, 4, 'K-Auto Audi Helsinki', 'Mekaanikonkatu 10', 'audi.helsinki@k-auto.fi', '010 533 2930', '00880', '2024-03-16', '2024-03-18 13:06:13', NULL),
(91, 4, 'K-Auto Audi Espoo', 'Haltilanniitty 6', 'audi.espoo@k-auto.fi', '010 533 2825', '02200', '2024-03-16', '2024-03-18 13:06:13', NULL),
(92, 4, 'K-Auto Audi Airport Vantaa', 'Tikkurilantie 123', 'audi.vantaa@k-auto.fi', '010 533 3025', '01510', '2024-03-16', '2024-03-18 13:06:13', NULL),
(93, 4, 'K-Auto Audi Tampere', 'Hatanpään puistokuja 32', 'audi.tampere@k-auto.fi', '010 533 1890', '33400', '2024-03-16', '2024-03-18 13:06:13', NULL),
(94, 4, 'K-Auto Audi Hämeenlinna', 'Tampereentie 169', 'audi.hameenlinna@k-auto.fi', '010 533 1990', '13130', '2024-03-16', '2024-03-18 13:06:13', NULL),
(95, 4, 'K-Auto Audi Turku', 'Rieskalähteentie 89', 'audi.turku@k-auto.fi', '010 533 3206', '20320', '2024-03-16', '2024-03-18 13:06:13', NULL),
(96, 4, 'K-Auto Audi Lappeenranta', 'Myllymäenkatu 6', 'audi.lappeenranta@k-auto.fi', '010 533 2530', '53500', '2024-03-16', '2024-03-18 13:06:13', NULL),
(97, 4, 'K-Auto Audi Kouvola', 'Taitajantie 4', 'audi.kouvola@k-auto.fi', '010 533 2460', '45130', '2024-03-16', '2024-03-18 13:06:13', NULL),
(98, 4, 'K-Auto Audi Lahti', 'Ajokatu 261', 'audi.lahti@k-auto.fi', '010 533 2130', '15610', '2024-03-16', '2024-03-18 13:06:13', NULL),
(99, 4, 'K-Auto Audi Hyvinkää', 'Helletorpankatu 31 C', 'audi.hyvinkaa@k-auto.fi', '010 533 1970', '15840', '2024-03-16', '2024-03-18 13:06:13', NULL),
(100, 2, 'Kamux Kotka', 'Kyminlinnantie 24', 'kotka@kamux.fi', '020 769 4287', '48600', '2024-03-18', '2024-05-27 14:38:54', '100.jpg'),
(101, 1, 'SAKA Finland Oy, Vaasa', 'Kivihaantie 9', NULL, '020 703 2840', '65300', '2024-03-22', '2024-06-26 16:09:22', '101.jpg'),
(102, 7, 'Bavaria Airport Vantaa', 'Antaksentie 4', NULL, '0106258330', '01510', '2024-03-22', '2024-06-26 16:09:25', '102.jpg'),
(103, 7, 'Bavaria Lappeenranta', 'Katsastajankatu 4', NULL, '0106258230', '53500', '2024-03-22', '2024-06-26 16:09:27', '103.jpg'),
(105, 7, 'Bavaria Lahti', 'Aukeankatu 1', NULL, '0106258550', '15610', '2024-03-22', '2024-06-26 16:09:31', '105.jpg'),
(106, 7, 'Bavaria Kuopio', 'Kallantie 10', NULL, '0106258600', '70200', '2024-03-22', '2024-06-26 16:09:34', '106.jpg'),
(107, 7, 'Bavaria Kouvola', 'Korjalankatu 4', NULL, '0106258170', '45130', '2024-03-22', '2024-06-26 16:09:36', '107.jpg'),
(109, 7, 'Bavaria Jyväskylä', 'Palokankaantie 20', 'jyvaskyla@bavaria.fi', '0106258350', '40320', '2024-03-22', '2024-05-27 14:46:27', '109.jpg'),
(110, 7, 'Bavaria Joensuu', 'Voimatie 1', NULL, '0106258650', '80100', '2024-03-22', '2024-06-26 16:09:47', '110.jpg'),
(111, 7, 'Bavaria Helsinki', 'Mekaanikonkatu 2', 'helsinki@bavaria.fi', '0106258510', '00880', '2024-03-22', '2024-05-27 14:46:49', '111.jpg'),
(112, 7, 'Bavaria Espoo', 'Luomannotko 7', NULL, '0106258270', '02200', '2024-03-22', '2024-06-26 16:09:51', '112.jpg'),
(113, 8, 'SCC - Airport', 'Aamuruskontie 12', 'airport@scc.fi', '0300 472219', '00700', '2024-03-25', '2024-05-27 16:03:07', '113.jpg'),
(114, 8, 'SCC - Espoo', 'Olarinluoma 19', 'espoo@scc.fi', '0300472211', '02200', '2024-03-25', '2024-05-27 16:03:15', '114.jpg'),
(115, 8, 'SCC - Jyväskylä', 'Laukaantie 4', 'jyvaskyla@scc.fi', '0300472214', '40320', '2024-03-26', '2024-05-27 16:03:25', '115.jpg'),
(116, 8, 'SCC - Turku', 'Tuotekatu 4', 'turku@scc.fi', '0300472230', '20320', '2024-03-26', '2024-05-27 16:03:34', '116.jpg'),
(120, 10, 'LänsiAuto Espoo', 'Marsbyntie 3', NULL, NULL, '02920', '2024-04-09', '2024-06-26 16:09:03', '120.jpg'),
(121, 10, 'LänsiAuto Helsinki', 'Laivalahdenkatu 8', NULL, '010 525 2820', '00880', '2024-04-09', '2024-06-26 16:09:06', '121.jpg'),
(122, 10, 'LänsiAuto Hyvinkää', 'Helletorpankatu 1', '010 525 2372', NULL, '15840', '2024-04-09', '2024-06-26 16:09:54', '122.jpg'),
(123, 10, 'LänsiAuto Hämeenlinna', 'Uhrikivenkatu 18', 'NULL', '010 525 2320', '13130', '2024-04-09', '2024-05-27 15:55:45', '123.jpg'),
(124, 10, 'LänsiAuto Lahti', 'Patometsänkatu 1', 'NULL', '010 525 2220', '15610', '2024-04-09', '2024-05-27 15:56:05', '124.jpg'),
(125, 10, 'LänsiAuto Oulu', 'Kallisenkaarre 5', 'NULL', '010 525 2570', '90400', '2024-04-09', '2024-05-27 15:56:15', '125.webp'),
(126, 10, 'LänsiAuto Seinäjoki', 'Rengastie 42', 'NULL', '010 504 7960', '60510', '2024-04-09', '2024-05-27 15:56:25', '126.webp'),
(127, 10, 'LänsiAuto Suomenoja', 'Kuitinmäentie 30', 'NULL', '010 525 2700', '02920', '2024-04-09', '2024-05-27 15:56:34', '127.jpg'),
(128, 10, 'LänsiAuto Tampere', 'Taninkatu 3', 'NULL', '010 504 7975', '33400', '2024-04-09', '2024-05-27 15:56:43', '128.jpg'),
(129, 10, 'LänsiAuto Toyota Espoo', 'Marsbyntie 3', NULL, '010 525 2180', '02300', '2024-04-09', '2024-06-26 16:10:07', '129.webp'),
(130, 10, 'LänsiAuto Turku', 'Raisiontie 93', 'NULL', '010 525 2420', '20320', '2024-04-09', '2024-05-27 15:57:04', '130.jpg'),
(131, 10, 'LänsiAuto Vantaa', 'Pakkalantie 15', 'NULL', '010 525 2120', '01510', '2024-04-09', '2024-05-27 15:57:10', '131.jpg'),
(132, 9, 'Parrotz Järvenpää Showroom', 'Satukukanpolku 5D', 'jarvenpaa@parrotz.fi', '09 31 52 4140', '04420', '2024-04-09', '2024-05-27 16:19:28', '132.webp'),
(133, 9, 'Parrotz Lempäälä Showroom', 'Areenakatu 7', 'lempaala@parrotz.fi', '09 31 52 4141', '37570', '2024-04-09', '2024-05-27 16:19:34', '133.webp'),
(134, 11, 'Hedin Automotive Espoo', 'Martinsillantie 14', 'espoo@hedin.fi', 'NULL', '02600', '2024-04-10', '2024-05-27 15:24:20', '134.jpg'),
(135, 11, 'Hedin Automotive Forssa', 'Hämeentie 35', 'forssa@hedin.fi', 'NULL', '30100', '2024-04-10', '2024-05-27 15:24:28', '135.jpg'),
(136, 11, 'Hedin Automotive Konala', 'Ruosilantie 5', 'konala@hedin.fi', 'NULL', '00390', '2024-04-10', '2024-05-27 15:24:46', '136.jpg'),
(137, 11, 'Hedin Automotive Helsinki', 'Mekaanikonkatu 12', 'NULL', 'NULL', '00880', '2024-04-10', '2024-05-27 15:25:00', '137.jpg'),
(138, 11, 'Hedin Automotive Hämeenlinna', 'Uhrikivenkatu 13', 'hameenlinna@hedin.fi', 'NULL', '13130', '2024-04-10', '2024-05-27 15:25:52', '138.jpg'),
(139, 11, 'Hedin Automotive Joensuu', 'Voimatie 1', 'joensuu@hedin.fi', 'NULL', '80100', '2024-04-10', '2024-05-27 15:26:05', '139.jpg'),
(140, 11, 'Hedin Automotive Jyväskylä', 'Palokankaantie 20', 'jyvaskyla@hedin.fi', 'NULL', '40320', '2024-04-10', '2024-05-27 15:43:09', '140.jpg'),
(141, 11, 'Hedin Automotive Järvenpää', 'Alhotie 12', 'jarvenpaa@hedin.fi', 'NULL', '04420', '2024-04-10', '2024-05-27 15:43:19', '141.jpg'),
(142, 11, 'Hedin Automotive Kotka', 'Suurniitynkatu 2', 'kotka@hedin.fi', 'NULL', '48600', '2024-04-10', '2024-05-27 15:43:32', '142.jpg'),
(143, 11, 'Hedin Automotive Kouvola', 'Korjalankatu 4', 'kouvola@hedin.fi', 'NULL', '45130', '2024-04-10', '2024-05-27 15:43:42', '143.jpg'),
(144, 11, 'Hedin Automotive Kuopio ', 'Kallantie 10 - 12', 'kuopio@hedin.fi', 'NULL', '70200', '2024-04-10', '2024-05-27 15:44:02', '144.jpg'),
(145, 11, 'Hedin Automotive Lahti', 'Aukeankatu 1', 'lahti@hedin.fi', 'NULL', '15610', '2024-04-10', '2024-05-27 15:44:16', '145.jpg'),
(146, 11, 'Hedin Automotive Lappeenranta', 'Katsastajankatu 4', 'lappeenranta@hedin.fi', 'NULL', '53500', '2024-04-10', '2024-05-27 15:45:01', '146.jpg'),
(147, 11, 'Hedin Automotive Oulu', 'Pauketie 4', 'oulu@hedin.fi', 'NULL', '90420', '2024-04-10', '2024-05-27 15:44:40', '147.jpg'),
(148, 11, 'Hedin Automotive Pori', 'Puinnintie 18-20', 'pori@hdin.fi', 'NULL', '28360', '2024-04-10', '2024-05-27 15:44:49', '148.jfif'),
(149, 11, 'Hedin Automotive Porvoo', 'Ruiskumestarinkatu 4', 'porvoo@hedin.fi', 'NULL', '06100', '2024-04-10', '2024-05-27 15:45:11', '149.jpg'),
(150, 11, 'Hedin Automotive Tampere', 'Lokomonkatu 25 B', 'tampere@hedin.fi', 'NULL', '33400', '2024-04-10', '2024-05-27 15:45:19', '150.jpg'),
(151, 11, 'Hedin Automotive Turku', 'Rieskalähteentie 71', 'turku@hedin.fi', 'NULL', '20320', '2024-04-10', '2024-05-27 15:45:29', '151.jpg'),
(152, 12, 'SHOWROOM RealPark', 'Areenakatu 4', 'Realpark@luxurycollection.fi', '040 581 449', '37570', '2024-05-06', '2024-05-06 15:02:50', '152.jpg'),
(153, 12, 'SHOWROOM Espoo Keilaniemi', 'Keilaniementori 4', 'Keilaniemi@luxurycollection.fi', '041 003 449', '02600', '2024-05-06', '2024-05-27 16:23:23', '153.jpg'),
(154, 6, 'Vaihtoautomaa Muurame', 'Punasillantie 4', 'muurame@vaihtoautomaa.com', '0207 890 686', '40950', '2024-05-27', '2024-05-27 14:21:39', '154.jpg'),
(155, 13, 'Carstore Konala', 'Ruosilantie 5', 'NULL', 'NULL', '00390', '2024-05-27', '2024-05-27 14:51:31', NULL),
(156, 13, 'Carstore Tampere', 'Lakalaivankatu 1', 'NULL', 'NULL', '33400', '2024-05-27', '2024-05-27 14:52:23', NULL),
(157, 8, 'SCC - Tampere', 'Pitkäkurunkuja 6', 'tampere@scc.fi', '0300472282', '33400', '2024-05-27', '2024-05-27 16:05:34', '157.jpg'),
(158, 15, 'Automaa, Vaasa\n', 'Kivihaantie 4', 'autotilaukset.vaasa@automaa.fi', '020 780 7200', '65300', '2024-09-06', '2024-09-06 14:52:24', '158.jpg'),
(159, 15, 'Automaa, Kokkola\n', 'Vaunumiehenkatu 2', 'autotilaukset.kokkola@automaa.fi', '020 780 7100', '67700', '2024-09-06', '2024-09-06 14:52:33', '159.jpg');

-- --------------------------------------------------------

--
-- Stand-in structure for view `stores_by_branches`
-- (See below for the actual view)
--
CREATE TABLE `stores_by_branches` (
`NumberOFStores` bigint(21)
,`Name` varchar(150)
);

-- --------------------------------------------------------

--
-- Table structure for table `stores_employee`
--

CREATE TABLE `stores_employee` (
  `Row_ID` int(15) NOT NULL,
  `Store_ID` int(15) NOT NULL,
  `Emp_ID` int(15) NOT NULL,
  `From_Date` date NOT NULL,
  `To_Date` date DEFAULT NULL,
  `Contract_Type` enum('Permanent','For_Now','Temporary') DEFAULT NULL,
  `Service_Status` enum('Active','DeActive') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `stores_employee`
--

INSERT INTO `stores_employee` (`Row_ID`, `Store_ID`, `Emp_ID`, `From_Date`, `To_Date`, `Contract_Type`, `Service_Status`) VALUES
(33, 8, 22, '2021-01-04', '2024-04-30', 'Temporary', 'DeActive'),
(34, 92, 17, '2024-01-01', '2024-04-30', 'Temporary', 'DeActive'),
(35, 66, 12, '2022-12-01', '2024-04-30', 'Temporary', 'DeActive'),
(36, 32, 16, '2024-01-01', '2024-05-31', 'For_Now', 'Active'),
(37, 109, 11, '2024-04-01', '2024-05-31', 'For_Now', 'Active'),
(38, 13, 7, '2021-08-01', '2024-04-30', 'Temporary', 'DeActive'),
(39, 43, 7, '2023-08-01', '2024-05-31', 'For_Now', 'Active'),
(40, 6, 22, '2024-04-01', '2024-05-31', 'For_Now', 'Active'),
(41, 1, 21, '2024-05-07', '2024-05-31', 'For_Now', 'Active'),
(42, 76, 12, '2024-03-01', '2024-05-31', 'Temporary', 'Active'),
(43, 147, 9, '2024-01-01', '2024-05-31', 'For_Now', 'Active'),
(44, 8, 19, '2022-08-01', '2034-05-31', 'Permanent', 'Active'),
(45, 132, 6, '2023-05-01', '2024-05-31', 'For_Now', 'Active'),
(46, 121, 18, '2022-05-01', '2024-05-31', 'For_Now', 'Active'),
(47, 135, 13, '2021-10-07', '2024-05-31', 'For_Now', 'Active'),
(48, 111, 14, '2022-05-01', '2024-05-31', 'Temporary', 'Active'),
(49, 152, 10, '2024-02-01', '2024-05-31', 'For_Now', 'Active'),
(50, 141, 8, '2022-04-01', '2024-05-31', 'Permanent', 'Active'),
(51, 49, 15, '2021-01-01', '2024-04-30', 'For_Now', 'DeActive');

-- --------------------------------------------------------

--
-- Table structure for table `store_branches`
--

CREATE TABLE `store_branches` (
  `Branch_Store_ID` int(15) NOT NULL,
  `Name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `store_branches`
--

INSERT INTO `store_branches` (`Branch_Store_ID`, `Name`) VALUES
(1, 'SAKA'),
(2, 'KAMUX'),
(3, 'VEHO'),
(4, 'K-AUTO'),
(5, 'J-RINTA-JOUPPI'),
(6, 'VAIHTOAUTOMAA'),
(7, 'BAVARIA'),
(8, 'SPORTS CAR CENTER'),
(9, 'PARROTZ'),
(10, 'LÄNSIAUTO'),
(11, 'HEDIN AUTOMOTIVE'),
(12, 'LUXURY COLLECTION AUTOMOBILES'),
(13, 'CAR STORE'),
(14, 'AUTO VERKKOKAUPPA'),
(15, 'AUTOMAA');

-- --------------------------------------------------------

--
-- Stand-in structure for view `store_by_cars_value`
-- (See below for the actual view)
--
CREATE TABLE `store_by_cars_value` (
`carValuePrice` decimal(36,0)
,`Store_Name` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `temporary_image`
--

CREATE TABLE `temporary_image` (
  `Row_ID` int(15) NOT NULL,
  `VIN` char(50) NOT NULL,
  `Image_Name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `Title_ID` int(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Date_OF_Add` date NOT NULL,
  `Date_OF_Updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`Title_ID`, `Name`, `Date_OF_Add`, `Date_OF_Updated`) VALUES
(1, 'Dealer', '2024-03-06', NULL),
(2, 'Branch Manager', '2024-03-06', NULL),
(3, 'EV Specialist', '2024-03-06', NULL),
(4, 'Sales Manager', '2024-03-06', NULL),
(5, 'Store manager', '2024-03-06', NULL),
(6, 'Myyntiassistentti', '2024-03-06', NULL);

-- --------------------------------------------------------

--
-- Structure for view `cars_by_stores`
--
DROP TABLE IF EXISTS `cars_by_stores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cars_by_stores`  AS SELECT `s`.`Store_ID` AS `Store_ID`, `c`.`VIN` AS `VIN`, `c`.`Number_Plate` AS `Number_Plate`, `b`.`Name` AS `Brand`, `c`.`Model` AS `Model`, `c`.`Model_Spec` AS `Model_Spec`, `s`.`Store_Name` AS `Store_Name` FROM ((`cars` `c` join `stores` `s` on(`c`.`Store_ID` = `s`.`Store_ID`)) join `brands` `b` on(`b`.`Brand_ID` = `c`.`Brand_ID`)) GROUP BY `c`.`VIN` ;

-- --------------------------------------------------------

--
-- Structure for view `cars_image`
--
DROP TABLE IF EXISTS `cars_image`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cars_image`  AS SELECT `i`.`VIN` AS `VIN`, `c`.`Number_Plate` AS `Number_Plate`, `b`.`Name` AS `Name`, `c`.`Model` AS `Model`, count(`i`.`Row_ID`) AS `NumberOFCarImages` FROM ((`images` `i` join `cars` `c` on(`i`.`VIN` = `c`.`VIN`)) join `brands` `b` on(`b`.`Brand_ID` = `c`.`Brand_ID`)) GROUP BY `i`.`VIN` ;

-- --------------------------------------------------------

--
-- Structure for view `car_deals`
--
DROP TABLE IF EXISTS `car_deals`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `car_deals`  AS SELECT `cs`.`VIN` AS `VIN`, `ca`.`Number_Plate` AS `Number_Plate`, `b`.`Name` AS `BrandName`, `ca`.`Model` AS `Model`, `e`.`SSN` AS `Emp_SSN`, concat(`e`.`F_Name`,' ',`e`.`L_Name`) AS `Sold_BY`, `cu`.`SSN` AS `Customer_SSN`, concat(`cu`.`F_Name`,' ',`cu`.`L_Name`) AS `Sold_TO`, `cs`.`Original_Price` AS `Original_Price`, `cs`.`Sold_Price` AS `Sold_Price`, `cs`.`Sold_Date` AS `Deal_Date`, `s`.`Store_Name` AS `Store_Name` FROM (((((`carsold` `cs` join `employees` `e` on(`e`.`Emp_ID` = `cs`.`Sold_By`)) join `customers` `cu` on(`cu`.`Customer_ID` = `cs`.`Sold_To`)) join `cars` `ca` on(`ca`.`VIN` = `cs`.`VIN`)) join `brands` `b` on(`b`.`Brand_ID` = `ca`.`Brand_ID`)) join `stores` `s` on(`s`.`Store_ID` = `ca`.`Store_ID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `customer_credentials`
--
DROP TABLE IF EXISTS `customer_credentials`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_credentials`  AS SELECT `cr`.`Credentials_ID` AS `Credentials_ID`, `cu`.`Customer_ID` AS `Customer_ID`, `cu`.`F_Name` AS `F_Name`, `cu`.`L_Name` AS `L_Name`, `cr`.`Username` AS `Username`, `cr`.`Password` AS `Password`, `cr`.`Date_OF_Add` AS `Date_OF_Add` FROM (`credentials` `cr` join `customers` `cu` on(`cu`.`Customer_ID` = `cr`.`Customer_ID`)) WHERE `cr`.`Customer_ID` is not null ;

-- --------------------------------------------------------

--
-- Structure for view `employeecanspeaklanguage`
--
DROP TABLE IF EXISTS `employeecanspeaklanguage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employeecanspeaklanguage`  AS SELECT `e`.`SSN` AS `SSN`, `e`.`F_Name` AS `F_Name`, `e`.`L_Name` AS `L_Name`, group_concat(`esl`.`Language` separator ', ') AS `language` FROM (`employee_service_langauge` `esl` join `employees` `e` on(`esl`.`Emp_ID` = `e`.`Emp_ID`)) GROUP BY `e`.`SSN` ;

-- --------------------------------------------------------

--
-- Structure for view `employee_credentials`
--
DROP TABLE IF EXISTS `employee_credentials`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_credentials`  AS SELECT `c`.`Credentials_ID` AS `Credentials_ID`, `e`.`F_Name` AS `F_Name`, `e`.`L_Name` AS `L_Name`, `c`.`Username` AS `Username`, `c`.`Password` AS `Password`, `c`.`Date_OF_Add` AS `Date_OF_Add` FROM (`credentials` `c` join `employees` `e` on(`c`.`Emp_ID` = `e`.`Emp_ID`)) WHERE `c`.`Emp_ID` is not null ;

-- --------------------------------------------------------

--
-- Structure for view `employee_without_contract`
--
DROP TABLE IF EXISTS `employee_without_contract`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_without_contract`  AS SELECT `e`.`Emp_ID` AS `EMP_ID`, `e`.`SSN` AS `SSN`, concat(`e`.`F_Name`,' ',`e`.`L_Name`) AS `EmployeeName`, `s`.`Store_Name` AS `Store_Name`, `se`.`From_Date` AS `From_Date`, `se`.`To_Date` AS `To_Date`, `se`.`Service_Status` AS `Service_Status`, `se`.`Contract_Type` AS `Contract_Type` FROM ((`stores_employee` `se` join `stores` `s` on(`se`.`Store_ID` = `s`.`Store_ID`)) join `employees` `e` on(`se`.`Emp_ID` = `e`.`Emp_ID`)) WHERE `se`.`Service_Status` = 'DeActive' ;

-- --------------------------------------------------------

--
-- Structure for view `employee_with_active_contract`
--
DROP TABLE IF EXISTS `employee_with_active_contract`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_with_active_contract`  AS SELECT `e`.`Emp_ID` AS `EMP_ID`, `e`.`SSN` AS `SSN`, concat(`e`.`F_Name`,' ',`e`.`L_Name`) AS `EmployeeName`, `s`.`Store_Name` AS `Store_Name`, `se`.`From_Date` AS `From_Date`, `se`.`To_Date` AS `To_Date`, `se`.`Service_Status` AS `Service_Status`, `se`.`Contract_Type` AS `Contract_Type` FROM ((`stores_employee` `se` join `stores` `s` on(`se`.`Store_ID` = `s`.`Store_ID`)) join `employees` `e` on(`se`.`Emp_ID` = `e`.`Emp_ID`)) WHERE `se`.`Service_Status` = 'Active' ;

-- --------------------------------------------------------

--
-- Structure for view `number_of_cars_by_branches`
--
DROP TABLE IF EXISTS `number_of_cars_by_branches`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `number_of_cars_by_branches`  AS SELECT count(`c`.`VIN`) AS `Number_OF_CARS`, concat(round(count(`c`.`Row_ID`) * 100.0 / (select count(`c`.`Row_ID`) AS `allcount` from `cars` `c`),0),' %') AS `POAC`, `sb`.`Name` AS `BranchName` FROM ((`cars` `c` join `stores` `s` on(`s`.`Store_ID` = `c`.`Store_ID`)) join `store_branches` `sb` on(`sb`.`Branch_Store_ID` = `s`.`Branch_Store_ID`)) GROUP BY `sb`.`Branch_Store_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `number_of_cars_by_stores`
--
DROP TABLE IF EXISTS `number_of_cars_by_stores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `number_of_cars_by_stores`  AS SELECT `s`.`Store_ID` AS `SID`, count(`c`.`VIN`) AS `Number_OF_Cars`, concat(round(count(`c`.`Row_ID`) * 100.0 / (select count(`c`.`Row_ID`) AS `allcount` from `cars` `c`),0),' %') AS `POAC`, `s`.`Store_Name` AS `Store_Name` FROM (`cars` `c` join `stores` `s` on(`c`.`Store_ID` = `s`.`Store_ID`)) GROUP BY `s`.`Store_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `percentage_of_cars_by_color`
--
DROP TABLE IF EXISTS `percentage_of_cars_by_color`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `percentage_of_cars_by_color`  AS SELECT `cars`.`Color` AS `Color`, count(`cars`.`Row_ID`) AS `NOC`, concat(round(count(`cars`.`Row_ID`) * 100.0 / (select count(`cars`.`Row_ID`) AS `allcount` from `cars`),0),' %') AS `POAC` FROM `cars` GROUP BY `cars`.`Color` ;

-- --------------------------------------------------------

--
-- Structure for view `percentage_of_cars_by_drawmethod`
--
DROP TABLE IF EXISTS `percentage_of_cars_by_drawmethod`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `percentage_of_cars_by_drawmethod`  AS SELECT `cars`.`Draw_Method` AS `Draw_Method`, count(`cars`.`Row_ID`) AS `NOC`, concat(round(count(`cars`.`Row_ID`) * 100.0 / (select count(`cars`.`Row_ID`) AS `allcount` from `cars`),0),' %') AS `POAC` FROM `cars` GROUP BY `cars`.`Draw_Method` ;

-- --------------------------------------------------------

--
-- Structure for view `percentage_of_cars_by_gearbox`
--
DROP TABLE IF EXISTS `percentage_of_cars_by_gearbox`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `percentage_of_cars_by_gearbox`  AS SELECT `cars`.`Gearbox` AS `Gearbox`, count(`cars`.`Row_ID`) AS `NOC`, concat(round(count(`cars`.`Row_ID`) * 100.0 / (select count(`cars`.`Row_ID`) AS `allcount` from `cars`),0),' %') AS `POAC` FROM `cars` GROUP BY `cars`.`Gearbox` ;

-- --------------------------------------------------------

--
-- Structure for view `percentage_of_cars_by_type_of_body`
--
DROP TABLE IF EXISTS `percentage_of_cars_by_type_of_body`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `percentage_of_cars_by_type_of_body`  AS SELECT `cars`.`Type_OF_Body` AS `Type_OF_Body`, count(`cars`.`Row_ID`) AS `NOC`, concat(round(count(`cars`.`Row_ID`) * 100.0 / (select count(`cars`.`Row_ID`) AS `allcount` from `cars`),0),' %') AS `POAC` FROM `cars` GROUP BY `cars`.`Type_OF_Body` ;

-- --------------------------------------------------------

--
-- Structure for view `percentage_of_cars_by_type_of_car`
--
DROP TABLE IF EXISTS `percentage_of_cars_by_type_of_car`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `percentage_of_cars_by_type_of_car`  AS SELECT `cars`.`Type_OF_Car` AS `Type_OF_Car`, count(`cars`.`Row_ID`) AS `NOC`, concat(round(count(`cars`.`Row_ID`) * 100.0 / (select count(`cars`.`Row_ID`) AS `allcount` from `cars`),0),' %') AS `POAC` FROM `cars` GROUP BY `cars`.`Type_OF_Car` ;

-- --------------------------------------------------------

--
-- Structure for view `percentage_of_cars_by_type_of_fuel`
--
DROP TABLE IF EXISTS `percentage_of_cars_by_type_of_fuel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `percentage_of_cars_by_type_of_fuel`  AS SELECT `cars`.`Fuel_Type` AS `Fuel_Type`, count(`cars`.`Row_ID`) AS `NOC`, concat(round(count(`cars`.`Row_ID`) * 100.0 / (select count(`cars`.`Row_ID`) AS `allcount` from `cars`),0),' %') AS `POAC` FROM `cars` GROUP BY `cars`.`Fuel_Type` ;

-- --------------------------------------------------------

--
-- Structure for view `stores_by_branches`
--
DROP TABLE IF EXISTS `stores_by_branches`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stores_by_branches`  AS SELECT count(`stores`.`Store_ID`) AS `NumberOFStores`, `store_branches`.`Name` AS `Name` FROM (`stores` join `store_branches` on(`store_branches`.`Branch_Store_ID` = `stores`.`Branch_Store_ID`)) GROUP BY `stores`.`Branch_Store_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `store_by_cars_value`
--
DROP TABLE IF EXISTS `store_by_cars_value`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `store_by_cars_value`  AS SELECT sum(`c`.`Price`) AS `carValuePrice`, `s`.`Store_Name` AS `Store_Name` FROM (`cars` `c` join `stores` `s` on(`c`.`Store_ID` = `s`.`Store_ID`)) GROUP BY `s`.`Store_ID` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`Brand_ID`),
  ADD KEY `Row_ID` (`Brand_ID`);

--
-- Indexes for table `carfeatures`
--
ALTER TABLE `carfeatures`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `VIN` (`VIN`),
  ADD KEY `Feature_ID` (`Feature_ID`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `VIN` (`VIN`),
  ADD KEY `Brand_ID` (`Brand_ID`),
  ADD KEY `Price` (`Price`),
  ADD KEY `Number_Plate` (`Number_Plate`),
  ADD KEY `Store_ID` (`Store_ID`) USING BTREE;

--
-- Indexes for table `carsold`
--
ALTER TABLE `carsold`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `Sold_By` (`Sold_By`),
  ADD KEY `Sold_To` (`Sold_To`),
  ADD KEY `VIN` (`VIN`) USING BTREE,
  ADD KEY `Original_Price` (`Original_Price`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `Code` (`Code`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`Credentials_ID`),
  ADD KEY `idx_Emp_ID` (`Emp_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `credentials_logs`
--
ALTER TABLE `credentials_logs`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `idx_Credentials_ID` (`Credentials_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD KEY `Fk_Customer_Postalcodes` (`PostalCode`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Nationality` (`Nationality`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Emp_ID`),
  ADD KEY `idx_Emp_ID` (`Emp_ID`),
  ADD KEY `FK_Employee_Employee` (`Reports_To`),
  ADD KEY `PostalCodre` (`PostalCode`),
  ADD KEY `SSN` (`SSN`);

--
-- Indexes for table `employee_service_langauge`
--
ALTER TABLE `employee_service_langauge`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `Emp_ID` (`Emp_ID`),
  ADD KEY `Language` (`Language`);

--
-- Indexes for table `employee_titles`
--
ALTER TABLE `employee_titles`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `idx_Emp_ID` (`Emp_ID`),
  ADD KEY `idx_Title_ID` (`Title_ID`) USING BTREE;

--
-- Indexes for table `emp_salaries`
--
ALTER TABLE `emp_salaries`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `idx_Emp_ID` (`Emp_ID`);

--
-- Indexes for table `feature_list`
--
ALTER TABLE `feature_list`
  ADD PRIMARY KEY (`Feature_ID`),
  ADD KEY `Feature_ID` (`Feature_ID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `VIN` (`VIN`);

--
-- Indexes for table `postalcodes`
--
ALTER TABLE `postalcodes`
  ADD PRIMARY KEY (`PostalCode`),
  ADD KEY `PostalCode` (`PostalCode`),
  ADD KEY `Region` (`Region`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`Store_ID`),
  ADD KEY `idx_Branch_Store_ID` (`Branch_Store_ID`),
  ADD KEY `Store_ID` (`Store_ID`),
  ADD KEY `PostalCode` (`PostalCode`);

--
-- Indexes for table `stores_employee`
--
ALTER TABLE `stores_employee`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `idx_Store_ID` (`Store_ID`),
  ADD KEY `idx_Emp_ID` (`Emp_ID`);

--
-- Indexes for table `store_branches`
--
ALTER TABLE `store_branches`
  ADD PRIMARY KEY (`Branch_Store_ID`),
  ADD KEY `Branch_Store_ID` (`Branch_Store_ID`);

--
-- Indexes for table `temporary_image`
--
ALTER TABLE `temporary_image`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `VIN` (`VIN`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`Title_ID`),
  ADD KEY `idx_Title_ID` (`Title_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `Brand_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `carfeatures`
--
ALTER TABLE `carfeatures`
  MODIFY `Row_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `carsold`
--
ALTER TABLE `carsold`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `Credentials_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `credentials_logs`
--
ALTER TABLE `credentials_logs`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Customer_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `Emp_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `employee_service_langauge`
--
ALTER TABLE `employee_service_langauge`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `employee_titles`
--
ALTER TABLE `employee_titles`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `emp_salaries`
--
ALTER TABLE `emp_salaries`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feature_list`
--
ALTER TABLE `feature_list`
  MODIFY `Feature_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=842;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `Store_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `stores_employee`
--
ALTER TABLE `stores_employee`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `store_branches`
--
ALTER TABLE `store_branches`
  MODIFY `Branch_Store_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `temporary_image`
--
ALTER TABLE `temporary_image`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `Title_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carfeatures`
--
ALTER TABLE `carfeatures`
  ADD CONSTRAINT `CarFeatures_Cars` FOREIGN KEY (`VIN`) REFERENCES `cars` (`VIN`),
  ADD CONSTRAINT `FK_CarFeatures_FeatureList` FOREIGN KEY (`Feature_ID`) REFERENCES `feature_list` (`Feature_ID`);

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `FK_Cars_Brand` FOREIGN KEY (`Brand_ID`) REFERENCES `brands` (`Brand_ID`),
  ADD CONSTRAINT `FK_Cars_Store` FOREIGN KEY (`Store_ID`) REFERENCES `stores` (`Store_ID`);

--
-- Constraints for table `carsold`
--
ALTER TABLE `carsold`
  ADD CONSTRAINT `FK_CarSold_Cars` FOREIGN KEY (`VIN`) REFERENCES `cars` (`VIN`),
  ADD CONSTRAINT `FK_CarSold_Employee` FOREIGN KEY (`Sold_By`) REFERENCES `employees` (`Emp_ID`),
  ADD CONSTRAINT `Fk_CarSold_Customer` FOREIGN KEY (`Sold_To`) REFERENCES `customers` (`Customer_ID`);

--
-- Constraints for table `credentials`
--
ALTER TABLE `credentials`
  ADD CONSTRAINT `FK_Credentials_Customers` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`),
  ADD CONSTRAINT `Fk_Credentials_Employee` FOREIGN KEY (`Emp_ID`) REFERENCES `employees` (`Emp_ID`);

--
-- Constraints for table `credentials_logs`
--
ALTER TABLE `credentials_logs`
  ADD CONSTRAINT `Fk_CredentialsLog_Credentials` FOREIGN KEY (`Credentials_ID`) REFERENCES `credentials` (`Credentials_ID`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `FK_Customers_Country` FOREIGN KEY (`Nationality`) REFERENCES `country` (`Code`),
  ADD CONSTRAINT `Fk_Customer_Postalcodes` FOREIGN KEY (`PostalCode`) REFERENCES `postalcodes` (`PostalCode`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `FK_Employee_Employee` FOREIGN KEY (`Reports_To`) REFERENCES `employees` (`Emp_ID`),
  ADD CONSTRAINT `FK_Employee_Postalcode` FOREIGN KEY (`PostalCode`) REFERENCES `postalcodes` (`PostalCode`);

--
-- Constraints for table `employee_service_langauge`
--
ALTER TABLE `employee_service_langauge`
  ADD CONSTRAINT `FK_ESL_Esmployee` FOREIGN KEY (`Emp_ID`) REFERENCES `employees` (`Emp_ID`);

--
-- Constraints for table `employee_titles`
--
ALTER TABLE `employee_titles`
  ADD CONSTRAINT `FK_EmployeeTitles_Employees` FOREIGN KEY (`Emp_ID`) REFERENCES `employees` (`Emp_ID`),
  ADD CONSTRAINT `FK_EmployeeTitles_Titles` FOREIGN KEY (`Title_ID`) REFERENCES `titles` (`Title_ID`);

--
-- Constraints for table `emp_salaries`
--
ALTER TABLE `emp_salaries`
  ADD CONSTRAINT `FK_EmployeeSalary_Employee` FOREIGN KEY (`Emp_ID`) REFERENCES `employees` (`Emp_ID`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_Cars_Images` FOREIGN KEY (`VIN`) REFERENCES `cars` (`VIN`);

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `FK_Stores_Storebranches` FOREIGN KEY (`Branch_Store_ID`) REFERENCES `store_branches` (`Branch_Store_ID`),
  ADD CONSTRAINT `Fk_Stores_PostalCodes` FOREIGN KEY (`PostalCode`) REFERENCES `postalcodes` (`PostalCode`);

--
-- Constraints for table `stores_employee`
--
ALTER TABLE `stores_employee`
  ADD CONSTRAINT `Fk_StoreEmployee_Employee` FOREIGN KEY (`Emp_ID`) REFERENCES `employees` (`Emp_ID`),
  ADD CONSTRAINT `Fk_StoreEmployee_Store` FOREIGN KEY (`Store_ID`) REFERENCES `stores` (`Store_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
