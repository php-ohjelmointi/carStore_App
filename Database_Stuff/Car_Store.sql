-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 11, 2024 at 03:03 PM
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
(124, 'ZFFMN34A0L0085788', 19);

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
  `Number_Of_Person` int(5) DEFAULT NULL,
  `Number_OF_Doors` int(5) DEFAULT NULL,
  `Power` varchar(15) DEFAULT NULL,
  `Mass` varchar(15) DEFAULT NULL,
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
  `Store_ID` int(15) DEFAULT NULL,
  `Date_OF_Add` date DEFAULT current_timestamp(),
  `Date_OF_Update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`Row_ID`, `VIN`, `Number_Plate`, `Brand_ID`, `Model`, `Model_Spec`, `Price`, `Year`, `Gearbox`, `Fuel_Type`, `Mileage`, `Type_OF_Car`, `Type_OF_Body`, `Draw_Method`, `Color`, `Number_Of_Person`, `Number_OF_Doors`, `Power`, `Mass`, `TopSpeed`, `Engine_Capacity`, `Steering`, `Energy_label`, `Electric_Range`, `Battery_Capacity`, `Acceleration`, `Height`, `Width`, `Length`, `Store_ID`, `Date_OF_Add`, `Date_OF_Update`) VALUES
(1, 'YV1SW61R021197119', 'VAR-873', 10, 'XC90', NULL, 65000, 2020, 'Automatic', 'Petrol', 119000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'White', 7, 5, '252', '3500', '250', '3.1', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133, '2024-03-05', '2024-05-30 11:18:14'),
(2, '1D7HA18N38J191236', 'JIZ-610', 1, 'E-tron', 'GT', 116000, 2020, 'Automatic', 'Petrol', 59000, 'Sedan (Henkilöauto)', 'Coupe', '4WD', 'Silver', 5, 3, '300', '2100', '300', '2.5', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-03-06', '2024-05-30 11:18:07'),
(3, '4S3BJ6329M1918965', 'IAR-058', 10, 'XC90', 'T8 TwE AWD Recharge Inscription aut', 70000, 2021, 'Automatic', 'Petrol', 104000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', 'RWD', 'White', 7, 5, '252', '3500', '250', '3.1', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2024-03-06', '2024-05-30 11:18:03'),
(4, 'JN6DY1AY8EX602144', 'HUI-995', 38, 'Pathfinder', '2,5 dCi SE 5AT 5-ov.', 7500, 2008, 'Manual', 'Diesel', 220000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', 'RWD', 'Blue', 5, 5, '150', '2600', '170', '3.5', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2024-03-13', '2024-05-30 11:17:59'),
(5, 'WVGMR67L090010501', 'IJN-970', 9, 'Passat', 'Sedan Comfortline 2,0 TDI 103 kW', 5000, 2010, 'Automatic', 'Petrol', 425000, 'Sedan (Henkilöauto)', 'Sedan (Porrasperä)', 'RWD', 'Silver', 5, 5, '160', '1600', '250', '2.5', 'Left', 137, NULL, NULL, NULL, NULL, NULL, NULL, 74, '2024-03-07', '2024-05-30 11:17:52'),
(6, 'WB10557A13ZG36939', 'IPE-528', 2, '420', 'G26 Gran Coupé 420d A xDrive M Sport MHEV', 46500, 2022, 'Automatic', 'Diesel', 17000, 'Sedan (Henkilöauto)', 'Coupe', '4WD', 'Black', 5, 4, '140', NULL, NULL, '2.1', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2024-03-06', '2024-05-30 11:17:47'),
(7, 'YV1AX4747E1960685', 'LOE-886', 10, 'S90', 'D4 Business R-Design aut', 68000, 2018, 'Automatic', 'Petrol', 145000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Silver', NULL, NULL, NULL, NULL, NULL, NULL, 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2024-03-07', '2024-05-30 11:17:38'),
(8, 'WDBLK70G61T061039', 'JJE-655', 4, 'G-Wagon', '63 AMG, G700 Brabus Widestar', 120000, 2020, 'Automatic', 'Petrol', 1000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Black', NULL, NULL, NULL, NULL, NULL, NULL, 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2024-03-07', '2024-05-30 11:17:33'),
(9, 'WDDUG7JB1EA027074', 'HYY-779', 4, 'GLS', '600 Maybach', 99900, 2021, 'Automatic', 'Diesel', 63600, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Black', 6, 5, '210', '2485', '227', '2.1', 'Left', NULL, NULL, NULL, '2.5', NULL, NULL, NULL, 72, '2024-03-07', '2024-06-11 15:14:03'),
(10, 'ZA9DU01B21L903178', 'MMH-119', 22, 'Huracán', 'Huracan Evo Spyder 640hv', 98000, 2020, 'Automatic', 'Petrol', 16000, 'Sedan (Henkilöauto)', 'Coupe', 'RWD', 'White', NULL, NULL, NULL, NULL, NULL, NULL, 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, '2024-03-07', '2024-05-30 11:02:38'),
(11, 'ZFF73SKA9E0200021', 'LLK-225', 12, 'Portofino', 'Ferrari M Ferrari Portofino M Avoauto (AE)', 98000, 2023, 'Automatic', 'Petrol', 1000, 'Sedan (Henkilöauto)', 'Coupe', 'RWD', 'Red', NULL, NULL, NULL, NULL, NULL, NULL, 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2024-03-07', '2024-05-30 11:02:41'),
(12, 'WAU3FLFF5F1034279', 'OXS-665', 1, 'RS6', NULL, 67000, 2020, 'Automatic', 'Petrol', 44000, 'Sedan (Henkilöauto)', 'Wagon (Farmari)', '4WD', 'Blue', 5, 5, NULL, NULL, '350', '2.9', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '2024-03-07', '2024-06-11 15:22:40'),
(13, 'WUAENAFG5FN000527', 'FRM-648', 1, 'Q8 e-tron', 'SQ8 e-tron quattro', 125000, 2024, 'Automatic', 'Electric', 12000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Red', 5, 4, '370', '2300', '300', NULL, 'Left', NULL, 434, '114', NULL, 2500, 2300, 2500, 2, '2024-03-07', '2024-06-11 14:35:43'),
(14, 'JT2VV22E0J0018536', 'YLC-633', 8, 'Land Cruiser', NULL, 65000, 2019, 'Automatic', 'Diesel', 75000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'White', 7, 5, '0', '0', '0', '', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2024-03-07', '2024-05-30 11:11:20'),
(15, 'SCBBB7ZH2FC053880', 'GTW-129', 19, 'Continental', 'GT Coupe W12 Twin Turbo', 79000, 2006, 'Automatic', 'Diesel', 75000, 'Sedan (Henkilöauto)', 'Coupe', '4WD', 'Black', 4, 5, '350', '2600', '350', '5.1', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 84, '2024-03-07', '2024-05-30 11:16:52'),
(16, '1GKEC13V21J196436', 'UJH-331', 14, 'Sierra', '1500 Crew cab 3.0 duramax Turbo-diesel, 10-speed A', 125000, 2024, 'Automatic', 'Diesel', 5000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Red', 5, 2, '350', '3500', '250', '6.1', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, '2024-03-06', '2024-05-30 11:10:50'),
(17, 'WAUHFBFR9AA011915', 'GYA-181', 1, 'A6', 'Sedan 50 TFSI e quattro S-tronic', 59500, 2023, 'Automatic', 'Petrol', 13000, 'Sedan (Henkilöauto)', 'Sedan (Porrasperä)', '4WD', 'Silver', 5, 5, '295', '2100', '270', NULL, 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 91, '2024-03-18', '2024-05-30 11:16:58'),
(18, 'WA1VGCFE0D0016673', 'IMA-570', 1, 'S3', 'Sedan 2,0 TFSI quattro S tronic', 33990, 2015, 'Automatic', 'Petrol', 96000, 'Sedan (Henkilöauto)', 'Sedan (Porrasperä)', '4WD', 'Red', 5, 4, '221', '1535', '250', '2.1', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 93, '2024-03-18', '2024-05-30 11:17:04'),
(19, 'WAUHE98P29A071392', 'BXU-870', 2, '318', 'G20 Sedan 318d A Business', 24890, 2019, 'Automatic', 'Diesel', 70000, 'Sedan (Henkilöauto)', 'Sedan (Porrasperä)', 'RWD', 'Black', 7, 5, '189', '2600', '210', '1.8', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2024-03-18', '2024-05-30 11:17:08'),
(20, '1M2AA18C0WW092489', 'KUA-347', 7, 'Octavia', 'Ambition Launch Edition DSG', 18650, 2020, 'Automatic', 'Diesel', 136000, 'Sedan (Henkilöauto)', 'Wagon (Farmari)', 'FWD', 'Blue', 5, 4, '115', '1461', '227', '2.1', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 93, '2024-03-18', '2024-05-30 11:17:21'),
(21, '3N1AB61E59L645953', 'JKC-161', 38, 'Qashqai', 'DIG-T 115 Acenta 2WD 6M/T Safety Pack', 12400, 2017, 'Manual', 'Petrol', 98000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', 'FWD', 'Blue', 5, 5, '86', NULL, NULL, '1.2', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, '2024-03-21', '2024-05-30 11:12:04'),
(22, '5YJSA1DP2DFP07403', 'VAR-657', 11, 'Model 3', 'Long-Range Dual Motor AWD', 32800, 2016, 'Automatic', 'Electric', 88000, 'Sedan (Henkilöauto)', 'Hatchback (Viistoperä)', '4WD', 'Blue', 5, 4, '65', NULL, NULL, NULL, 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '2024-03-21', '2024-05-30 11:12:20'),
(23, '3VWJ17AT8EM646195', 'NKF-190', 9, 'Passat', 'Variant Alltrack 2,0 TDI 140 kW 4MOTION DSG', 16900, NULL, 'Automatic', 'Diesel', 220000, 'Sedan (Henkilöauto)', 'Wagon (Farmari)', '4WD', 'Red', 5, 5, NULL, NULL, NULL, NULL, 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, '2024-03-21', '2024-05-30 11:13:13'),
(24, '5XYKWDA20BG098863', 'OYU-292', 32, 'Venga', '1,4 ISG EX 5D EcoDynamics', 4400, 2011, 'Automatic', 'Petrol', 184000, 'Sedan (Henkilöauto)', 'Hatchback (Viistoperä)', 'FWD', 'Blue', 5, 4, NULL, NULL, NULL, 'NULL', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-21', '2024-05-30 11:13:25'),
(25, 'KNDMB5C13H6230590', 'VAR-461', 32, 'Sorento', '1,6 T-GDI Plug-in Hybrid AWD Business Premium AT 7', 40500, 2017, 'Automatic', 'Plug-In Hybrid', 11000, 'Sedan (Henkilöauto)', 'Hatchback (Viistoperä)', '4WD', 'Blue', 5, 4, NULL, NULL, NULL, NULL, 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135, '2024-03-21', '2024-05-30 12:16:40'),
(26, '4JGBB72E98A297923', 'VXN-476', 4, 'EQC', '400 4MATIC Business', 50900, NULL, 'Automatic', 'Electric', 56000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'White', 5, 4, '0', NULL, NULL, 'NULL', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-21', '2024-05-30 11:13:47'),
(27, '1NXAE82G1HZ435690', 'LKJ-876', 8, 'RAV4', '2,5 Hybrid AWD-i Active', 42800, NULL, 'Manual', 'Plug-In Hybrid', 42000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'White', 5, 4, 'NULL', 'NULL', 'NULL', 'NULL', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-21', '2024-05-30 11:13:58'),
(28, '4V1KLDJF1LN627146', 'EWR-876', 10, 'V60', 'T8 AWD Long Range High Performance R-Design aut', 47900, NULL, 'Automatic', 'Plug-In Hybrid', 89000, 'Sedan (Henkilöauto)', 'Wagon (Farmari)', '4WD', 'Silver', 5, 4, '335', 'NULL', 'NULL', '2.1', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2024-03-21', '2024-05-30 11:14:43'),
(29, 'JM3KE4BE2F0432552', 'RSE-128', 34, '6', 'Sedan 2,0 (165) SKYACTIV-G Premium Plus 6AT 4ov SL', 16900, NULL, 'Manual', 'Petrol', 110000, 'Sedan (Henkilöauto)', 'Sedan (Porrasperä)', 'FWD', 'Blue', 5, 4, '121', '1500', '209', '2.1', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2024-03-21', '2024-05-30 11:14:58'),
(30, '1YVGF22D225527370', 'CTG-337', 34, '6', 'Sport Wagon 2,2 (150) SKYACTIV-D PREMIUM Plus 6AT', 12400, 2015, 'Manual', 'Diesel', 157000, 'Sedan (Henkilöauto)', 'Wagon (Farmari)', 'FWD', 'Red', 5, 4, '110', '1600', '202', '2.2', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2024-03-21', '2024-05-30 11:15:13'),
(31, 'WVWAAA3C2CE516820', 'AAQ-980', 9, 'Arteon', 'Shooting Brake R-Line eHybrid ', 34400, 2021, 'Automatic', 'Plug-In Hybrid', 58000, 'Sedan (Henkilöauto)', 'Sedan (Porrasperä)', 'FWD', 'Silver', 5, 4, '160', 'NULL', 'NULL', '1.4', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-21', '2024-05-30 11:06:56'),
(32, 'WBAFF8402D7852216', 'LRT-399', 2, '530', 'G30 Sedan 530e xDrive A Charged Edition M Sport', 57900, 2023, 'Automatic', 'Plug-In Hybrid', 14000, 'Sedan (Henkilöauto)', 'Sedan (Porrasperä)', '4WD', 'Silver', 5, 4, '135', '2000', '290', '3.0', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 112, '2024-03-22', '2024-05-30 11:09:06'),
(33, 'WBAYF8C52EDS00432', 'NNB-507', 2, 'M2', 'M2 Coupé', 133859, 2023, 'Automatic', 'Petrol', 5, 'Sedan (Henkilöauto)', 'Coupe', 'RWD', 'Red', 4, 2, '338', '1200', '310', '4.2', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 111, '2024-03-22', '2024-05-30 11:06:41'),
(34, 'SALWA2BY5LA713795', 'RUK-178', 13, 'Range Rover Spo', '400e Plug-in Hybrid HSE Dynamic', 68000, 2020, 'Automatic', 'Plug-In Hybrid', 78000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'White', 5, 5, '221', NULL, NULL, '2.9', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 113, '2024-03-28', '2024-05-30 11:09:15'),
(35, 'W1N1673171A302625', 'CPO-562', 4, 'GLE', '350 de 4MATIC Coupé AMG', 81800, 2021, 'Automatic', 'Plug-In Hybrid', 45000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'White', 5, 5, '143', NULL, NULL, '1.95', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 113, '2024-03-28', '2024-05-30 11:09:23'),
(36, 'WF0YXXTTGYNS57312', 'XRL-291', 3, 'Transit Custom', '320 2,0TDCi 170 hv A6 Etuveto Limited Van N1 L2H1', 39800, 2022, 'Manual', 'Diesel', 25000, 'Van (Pakettiauto)', 'Other (Muu)', 'FWD', 'White', 2, 3, '125', NULL, NULL, '2.0', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 114, '2024-03-28', '2024-05-30 11:16:32'),
(37, 'SALGA2BY7JA507105', 'JLF-602', 13, 'Range Rover', 'P400e Autobiography', 76800, 2018, 'Automatic', 'Plug-In Hybrid', 90000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Silver', 5, 5, '221', '2000', '290', '3.0', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 116, '2024-04-05', '2024-05-30 11:16:27'),
(38, 'WDBEA30E1NB582331', 'NNN-400', 4, 'EQB', '300 4MATIC Business Progressive', 49800, 2022, 'Automatic', 'Electric', 12000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Silver', 5, 5, '228', '2202', '160', '1.2', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 71, '2024-04-09', '2024-05-30 11:16:22'),
(39, 'JH4KA8260PC000495', 'GGY-123', 43, 'Formentor', 'VZ 1.4 PHEV 180 kW e-HYBRID DSG', 29890, 2023, 'Automatic', 'Plug-In Hybrid', 53000, 'Sedan (Henkilöauto)', 'Hatchback (Viistoperä)', 'FWD', 'Silver', 5, 5, '110', '2120', '210', '1.4', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132, '2024-04-09', '2024-05-30 11:16:16'),
(40, 'WBAVB13256PS66453', 'GGY-098', 2, 'X5', 'G05 xDrive45e \"X5 M\" * ACC', 74690, 2023, 'Automatic', 'Plug-In Hybrid', 82000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'Silver', 5, 4, '290', '2150', '310', '3.0', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133, '2024-04-09', '2024-05-30 11:16:08'),
(41, 'WP0AA2964PS820410', 'KLP-337', 16, 'Taycan', '4S Cross Turismo', 88990, 2023, 'Automatic', 'Electric', 53000, 'Sedan (Henkilöauto)', 'Coupe', '4WD', 'Black', 5, 4, '420', '2885', '240', '0.0', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132, '2024-04-09', '2024-05-30 11:15:59'),
(42, '1FTDR15X4TPA96892', 'UVG-483', 32, 'Sportage', '1,6 ISG Urban Active EcoDynamics ', 12500, 2014, 'Automatic', 'Petrol', 107000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', 'FWD', 'Silver', 5, 4, '99', '1200', '178', '1,6', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134, '2024-04-10', '2024-05-30 11:15:54'),
(43, '3GYFNHEY4BS0002EX', 'SOU-807', 15, 'Escalade', 'Sport Platinum 3.0l Duramax', 184000, 2023, 'Automatic', 'Diesel', 40000, 'Sedan (Henkilöauto)', 'SUV (Maastoauto)', '4WD', 'White', 7, 5, ' 204', '3 500', '290', '3.0', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '2024-05-06', '2024-06-11 15:07:25'),
(44, 'ZFFMN34A0L0085788', 'WQY-449', 12, 'SF90', 'STRADALE 3.9 V8 DCT', 599900, 2021, 'Automatic', 'Plug-In Hybrid', 2300, 'Sedan (Henkilöauto)', 'Coupe', '4WD', 'Black', 2, 2, '735', 'NULL', '359', '3.9', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 152, '2024-05-06', '2024-05-30 11:05:48'),
(45, 'WA1YD54B02N082537', 'CRK-698', 1, 'E-tron', 'GT RS', 94900, 2022, 'Automatic', 'Electric', 46000, 'Sedan (Henkilöauto)', 'Coupe', '4WD', 'Brown', 5, 4, '440', NULL, '310', NULL, 'Right', 87, 486, '93.0', '3.3', 1414, 1964, 4989, 33, '2024-05-24', '2024-06-10 14:53:37'),
(46, 'WBADC7407H1715209', 'JFH-279', 2, 'M8', 'F92 Coupé M8 * B&W / Carbon -Paketti ', 204890, 2021, 'Automatic', 'Petrol', 32000, 'Sedan (Henkilöauto)', 'Coupe', '4WD', 'White', 4, 2, '441', '2385', '250', '4.39', 'Right', 0, 0, '', '', 1360, 1910, 4870, 132, '2024-05-27', '2024-06-11 15:51:19');

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
(9, 'JN6DY1AY8EX602144', 19, 22, 7500, 7000, '2024-05-14');

-- --------------------------------------------------------

--
-- Stand-in structure for view `cars_by_stores`
-- (See below for the actual view)
--
CREATE TABLE `cars_by_stores` (
`VIN` char(50)
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
  `PostalCode` char(5) NOT NULL,
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
(22, '161299-3937', 'Samuel', 'F. Cruz', 'Male', '041 363 3776', 'SamuelFCruz@armyspy.com', 'Gesterbyntie 58', '13130', '2024-05-06', '2024-05-06 11:53:35', NULL, '161299-3937.jpg');

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
`Emp_ID` int(15)
,`SSN` char(15)
,`F_Name` varchar(50)
,`L_Name` varchar(50)
,`Gender` enum('Male','Female')
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
(69, 'Vetokoukku, sähkötoiminen perävaunuavustimella'),
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
(375, 'WUAENAFG5FN000527', 'WUAENAFG5FN000527_65344.jpg', '2024-06-11', NULL);

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
`Number_OF_Cars` bigint(21)
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
('02200', 'Espoo'),
('02300', 'Espoo'),
('02600', 'Espoo'),
('02920', 'Espoo'),
('30100', 'Forssa'),
('18120', 'Heinola'),
('00100', 'Helsinki'),
('00390', 'Helsinki'),
('00700', 'Helsinki'),
('00880', 'Helsinki'),
('15840', 'Hyvinkää'),
('13130', 'Hämeenlinna'),
('74120', 'Iisalmi'),
('80100', 'Joensuu'),
('40320', 'Jyväskylä'),
('42100', 'Jämsa'),
('04420', 'Järvenpää'),
('20780', 'Kaarina'),
('87400', 'Kajaani'),
('02400', 'Kirkkonummi'),
('48600', 'Kotka'),
('45130', 'Kouvola'),
('70200', 'Kuopio'),
('15610', 'Lahti'),
('53500', 'Lappeenranta'),
('37570', 'Lempäälä'),
('08680', 'Lohja'),
('50100', 'Mikkeli'),
('40950', 'Muurame'),
('03100', 'Nummela'),
('90100', 'Oulu'),
('90400', 'Oulu'),
('90420', 'Oulu'),
('28360', 'Pori'),
('06100', 'Porvoo'),
('60510', 'Seinäjoki'),
('33400', 'Tampere'),
('20320', 'Turku'),
('04300', 'Tuusula'),
('65300', 'Vaasa'),
('01510', 'Vantaa'),
('01610', 'Vantaa'),
('01720', 'Vantaa');

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
(1, 1, 'SAKA Finland Oy, Herttoniemi', 'Mekaanikonkatu 17', NULL, '', '00880', '2024-03-06', '2024-05-06 12:14:11', '1.jpg'),
(2, 2, 'Kamux Konala', 'Päiväläisentie 1-6', NULL, '', '00390', '2024-03-06', '2024-05-27 12:18:23', '2.jpg'),
(3, 1, 'SAKA Finland Oy, Koskelo', 'Koskelontie 15', NULL, '', '02920', '2024-03-03', '2024-05-06 12:24:55', '3.jpeg'),
(4, 1, 'SAKA Finland Oy, Konala', 'Päiväläisentie 1-6', NULL, '', '00390', '2024-03-06', '2024-05-06 12:25:42', '4.jpeg'),
(5, 1, 'SAKA Finland Oy, Hyvinkää', 'Helletorpankatu 31', NULL, '', '15840', '2024-03-06', '2024-05-06 12:27:32', '5.jpeg'),
(6, 1, 'SAKA Finland Oy, Hämeenlinna', 'Eino Leinon katu 40', NULL, '', '13130', '2024-03-06', '2024-05-06 12:30:02', '6.jpeg'),
(7, 1, 'SAKA Finland Oy, Joensuu', 'Raatekankaantie 4', NULL, '', '80100', '2024-03-06', '2024-05-27 12:22:01', '7.jpg'),
(8, 1, 'SAKA Finland Oy, Jyväskylä', 'Ahjokatu 1', NULL, '', '40320', '2024-03-06', '2024-05-27 12:22:17', '8.jpeg'),
(9, 1, 'SAKA Finland Oy, Järvenpää', 'Diggarinkatu 10', NULL, '', '04420', '2024-03-06', '2024-05-27 12:22:30', '9.jpg'),
(10, 1, 'SAKA Finland Oy, Kirkkonummi', 'Purotie 1', NULL, '', '02400', '2024-03-06', '2024-05-06 12:30:16', '10.jpeg'),
(11, 2, 'Kamux Koskelo', 'Koskelontie 19', NULL, '', '02920', '2024-03-05', '2024-05-27 14:02:17', '11.jpg'),
(12, 2, 'Kamux Niittykumpu', 'Riihitontuntie 10-12', NULL, '', '02200', '2024-03-05', '2024-05-27 12:28:13', '12.jpg'),
(13, 2, 'Kamux Hyvinkää', 'Avainkierto 17', NULL, '', '15840', '2024-03-05', '2024-05-06 12:18:09', '13.jpg'),
(14, 2, 'Kamux Hämeenlinna', 'Parolantie 66 A', NULL, '', '13130', '2024-03-05', '2024-05-27 12:28:27', '14.jpg'),
(15, 2, 'Kamux Joensuu', 'Kuurnankatu 14', NULL, '', '80100', '2024-03-05', '2024-05-27 12:28:40', '15.jpg'),
(18, 1, 'SAKA Finland Oy, Kouvola', 'Tommolankatu 7', NULL, '', '45130', '2024-03-14', '2024-05-27 12:28:55', '18.jpg'),
(19, 1, 'SAKA Finland Oy, Kuopio', 'Leväsentie 2', NULL, '', '70200', '2024-03-14', '2024-05-27 12:39:58', '19.jpg'),
(20, 1, 'SAKA Finland Oy, Lahti', 'Alavankatu 4', NULL, '', '15610', '2024-03-14', '2024-05-27 12:40:08', '20.jpeg'),
(21, 1, 'SAKA Finland Oy, Lappeenranta', 'Toikansuontie 6', NULL, '', '53500', '2024-03-14', '2024-05-27 12:40:20', '21.jpeg'),
(22, 1, 'SAKA Finland Oy, Lempäälä', 'Ideaparkinkatu 4', NULL, '', '37570', '2024-03-14', '2024-05-27 12:40:32', '22.jpeg'),
(23, 1, 'SAKA Finland Oy, Nummela', 'Ratastie 24', NULL, '', '03100', '2024-03-14', '2024-05-27 12:40:40', '23.jpeg'),
(24, 1, 'SAKA Finland Oy, Oulu', 'Portinkaarre 3', NULL, '', '90100', '2024-03-14', '2024-05-27 12:40:52', '24.jpg'),
(25, 1, 'SAKA Finland Oy, Pori', 'Helmentie 6-8', NULL, '', '28360', '2024-03-14', '2024-05-27 12:41:01', '25.jpeg'),
(26, 1, 'SAKA Finland Oy, Porvoo', 'Ratsumestarinkatu 8', NULL, '', '06100', '2024-03-14', '2024-05-27 12:41:12', '26.jpeg'),
(27, 1, 'SAKA Finland Oy, Raisio', 'Vahdontie 30', NULL, '', '20320', '2024-03-14', '2024-05-27 12:41:22', '27.jpeg'),
(28, 1, 'SAKA Finland Oy, Seinäjoki', 'Lieskatie 2', NULL, '', '60510', '2024-03-14', '2024-05-27 12:41:32', '28.jpg'),
(29, 1, 'SAKA Finland Oy, Tampere', 'Sellukatu 8', NULL, '', '33400', '2024-03-14', '2024-05-27 12:41:42', '29.jpg'),
(32, 1, 'SAKA Finland Oy, Koivuhaka', 'Kuriiritie 17', NULL, '', '01510', '2024-03-14', '2024-05-27 13:40:25', '32.jfif'),
(33, 1, 'SAKA Finland Oy, Varisto', 'Martinkyläntie 59', NULL, '', '01720', '2024-03-14', '2024-05-27 13:40:39', '33.jpg'),
(34, 2, 'Kamux Forssa', 'Aukeentie 5', NULL, '', '30100', '2024-03-15', '2024-05-27 14:02:31', '34.jpg'),
(35, 2, 'Kamux Malmi', 'Takoraudantie 2', NULL, '', '00700', '2024-03-15', '2024-05-27 14:02:43', '35.jpg'),
(36, 2, 'Kamux Iisalmi', 'Kilpivirrantie 1', NULL, '', '70200', '2024-03-15', '2024-05-27 14:02:51', '36.jpg'),
(37, 2, 'Kamux Jyväskylä', 'Laukaantie 1', NULL, '', '40320', '2024-03-15', '2024-05-27 14:02:58', '37.jpg'),
(38, 2, 'Kamux Jämsä', 'Ekosentie 2', NULL, '', '42100', '2024-03-18', '2024-05-27 14:03:44', '38.jpg'),
(39, 2, 'Kamux Järvenpää', 'Rajaniitynkatu 2', NULL, '', '04420', '2024-03-18', '2024-05-27 14:03:04', '39.jpg'),
(40, 2, 'Kamux Kaarina', 'Autoilijankatu 30', NULL, '', '20780', '2024-03-18', '2024-05-27 14:03:11', '40.jpg'),
(41, 2, 'Kamux Kajaani', 'Kehräämöntie 22', NULL, '', '87400', '2024-03-18', '2024-05-27 14:09:43', '41.jpg'),
(42, 2, 'Kamux Kouvola', 'Tommolankatu 16', NULL, '', '45130', '2024-03-18', '2024-05-27 14:04:05', '42.jpg'),
(43, 2, 'Kamux Kuopio', 'Väliköntie 4', NULL, '', '70200', '2024-03-18', '2024-05-27 14:04:12', '43.jpg'),
(44, 2, 'Kamux Lahti', 'Tupalankatu 3', NULL, '', '15610', '2024-03-18', '2024-05-27 14:09:49', '44.jpg'),
(47, 2, 'Kamux Lappeenranta', 'Ajurinkatu 8', NULL, '', '53500', '2024-03-18', '2024-05-27 14:04:41', '47.jfif'),
(48, 2, 'Kamux Lempäälä Ideapark', 'Ideaparkinkatu 4', NULL, '', '37570', '2024-03-18', '2024-05-27 14:04:49', '48.jpg'),
(49, 2, 'Kamux Lohja', 'Seisaketie 5', NULL, '', '08680', '2024-03-18', '2024-05-27 14:04:58', '49.jpg'),
(50, 2, 'Kamux Mikkeli', 'Hietakatu 1', 'mikkeli@kamux.fi', '010 420 8877', '50100', '2024-03-18', '2024-05-27 14:05:11', '50.jpg'),
(51, 2, 'Kamux Oulu Limingantulli', 'Tyrnäväntie 6', NULL, '', '90400', '2024-03-18', '2024-05-27 14:05:18', '51.jpg'),
(52, 2, 'Kamux Oulunportti', 'Portinkaarre 1', NULL, '', '90420', '2024-03-18', '2024-05-27 14:05:26', '52.jpeg'),
(62, 2, 'Kamux Pori', 'Pohjoisväylä 3', NULL, '', '28360', '2024-03-18', '2024-05-27 14:07:20', '62.jpg'),
(63, 2, 'Kamux Porvoo', 'Kuninkaantie 1', NULL, '', '06100', '2024-03-18', '2024-05-27 14:07:10', '63.jpg'),
(64, 2, 'Kamux Seinäjoki', 'Nurmontie 113', NULL, '', '60510', '2024-03-18', '2024-05-27 14:07:04', '64.jpg'),
(65, 2, 'Kamux Tampere Hatanpää', 'Lahdenperänkatu 3', NULL, '', '33400', '2024-03-18', '2024-05-27 14:06:52', '65.jfif'),
(66, 2, 'Kamux Turku', 'Nuppulantie 21', NULL, '', '20320', '2024-03-18', '2024-05-27 14:06:43', '66.jpg'),
(67, 2, 'Kamux Tuusula', 'Hiekkamäentie 5', NULL, '', '04300', '2024-03-18', '2024-05-27 14:06:33', '67.jpg'),
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
(79, 5, 'J. Rinta-Jouppi Hyvinkää', 'Veikkarinkatu 1', 'hyvinkaa@rintajouppi.fi', '', '15840', '2024-03-17', '2024-05-27 14:28:24', '79.jpg'),
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
(101, 1, 'SAKA Finland Oy, Vaasa', 'Kivihaantie 9', 'NULL', '020 703 2840', '65300', '2024-03-22', '2024-05-27 13:39:26', '101.jpg'),
(102, 7, 'Bavaria Airport Vantaa', 'Antaksentie 4', 'NULL', '0106258330', '01510', '2024-03-22', '2024-05-27 14:45:13', '102.jpg'),
(103, 7, 'Bavaria Lappeenranta', 'Katsastajankatu 4', 'NULL', '0106258230', '53500', '2024-03-22', '2024-05-27 14:45:24', '103.jpg'),
(105, 7, 'Bavaria Lahti', 'Aukeankatu 1', 'NULL', '0106258550', '15610', '2024-03-22', '2024-05-27 14:45:36', '105.jpg'),
(106, 7, 'Bavaria Kuopio', 'Kallantie 10', 'NULL', '0106258600', '70200', '2024-03-22', '2024-05-27 14:45:50', '106.jpg'),
(107, 7, 'Bavaria Kouvola', 'Korjalankatu 4', 'NULL', '0106258170', '45130', '2024-03-22', '2024-05-27 14:46:05', '107.jpg'),
(109, 7, 'Bavaria Jyväskylä', 'Palokankaantie 20', 'jyvaskyla@bavaria.fi', '0106258350', '40320', '2024-03-22', '2024-05-27 14:46:27', '109.jpg'),
(110, 7, 'Bavaria Joensuu', 'Voimatie 1', 'NULL', '0106258650', '80100', '2024-03-22', '2024-05-27 14:46:37', '110.jpg'),
(111, 7, 'Bavaria Helsinki', 'Mekaanikonkatu 2', 'helsinki@bavaria.fi', '0106258510', '00880', '2024-03-22', '2024-05-27 14:46:49', '111.jpg'),
(112, 7, 'Bavaria Espoo', 'Luomannotko 7', 'NULL', '0106258270', '02200', '2024-03-22', '2024-05-27 14:47:01', '112.jpg'),
(113, 8, 'SCC - Airport', 'Aamuruskontie 12', 'airport@scc.fi', '0300 472219', '00700', '2024-03-25', '2024-05-27 16:03:07', '113.jpg'),
(114, 8, 'SCC - Espoo', 'Olarinluoma 19', 'espoo@scc.fi', '0300472211', '02200', '2024-03-25', '2024-05-27 16:03:15', '114.jpg'),
(115, 8, 'SCC - Jyväskylä', 'Laukaantie 4', 'jyvaskyla@scc.fi', '0300472214', '40320', '2024-03-26', '2024-05-27 16:03:25', '115.jpg'),
(116, 8, 'SCC - Turku', 'Tuotekatu 4', 'turku@scc.fi', '0300472230', '20320', '2024-03-26', '2024-05-27 16:03:34', '116.jpg'),
(120, 10, 'LänsiAuto Espoo', 'Marsbyntie 3', 'NULL', 'NULL', '02920', '2024-04-09', '2024-05-27 15:54:24', '120.jpg'),
(121, 10, 'LänsiAuto Helsinki', 'Laivalahdenkatu 8', 'NULL', '010 525 2820', '00880', '2024-04-09', '2024-05-27 15:54:31', '121.jpg'),
(122, 10, 'LänsiAuto Hyvinkää', 'Helletorpankatu 1', '010 525 2372', 'NULL', '15840', '2024-04-09', '2024-05-27 15:55:36', '122.jpg'),
(123, 10, 'LänsiAuto Hämeenlinna', 'Uhrikivenkatu 18', 'NULL', '010 525 2320', '13130', '2024-04-09', '2024-05-27 15:55:45', '123.jpg'),
(124, 10, 'LänsiAuto Lahti', 'Patometsänkatu 1', 'NULL', '010 525 2220', '15610', '2024-04-09', '2024-05-27 15:56:05', '124.jpg'),
(125, 10, 'LänsiAuto Oulu', 'Kallisenkaarre 5', 'NULL', '010 525 2570', '90400', '2024-04-09', '2024-05-27 15:56:15', '125.webp'),
(126, 10, 'LänsiAuto Seinäjoki', 'Rengastie 42', 'NULL', '010 504 7960', '60510', '2024-04-09', '2024-05-27 15:56:25', '126.webp'),
(127, 10, 'LänsiAuto Suomenoja', 'Kuitinmäentie 30', 'NULL', '010 525 2700', '02920', '2024-04-09', '2024-05-27 15:56:34', '127.jpg'),
(128, 10, 'LänsiAuto Tampere', 'Taninkatu 3', 'NULL', '010 504 7975', '33400', '2024-04-09', '2024-05-27 15:56:43', '128.jpg'),
(129, 10, 'LänsiAuto Toyota Espoo', 'Marsbyntie 3', 'NULL', '010 525 2180', '02300', '2024-04-09', '2024-05-27 15:56:54', '129.webp'),
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
(157, 8, 'SCC - Tampere', 'Pitkäkurunkuja 6', 'tampere@scc.fi', '0300472282', '33400', '2024-05-27', '2024-05-27 16:05:34', '157.jpg');

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
(42, 134, 12, '2024-03-01', '2024-05-31', 'Temporary', 'Active'),
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
(13, 'CAR STORE');

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cars_by_stores`  AS SELECT `c`.`VIN` AS `VIN`, `c`.`Number_Plate` AS `Number_Plate`, `b`.`Name` AS `Brand`, `c`.`Model` AS `Model`, `c`.`Model_Spec` AS `Model_Spec`, `s`.`Store_Name` AS `Store_Name` FROM ((`cars` `c` join `stores` `s` on(`c`.`Store_ID` = `s`.`Store_ID`)) join `brands` `b` on(`b`.`Brand_ID` = `c`.`Brand_ID`)) GROUP BY `c`.`VIN` ;

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_without_contract`  AS SELECT `employees`.`Emp_ID` AS `Emp_ID`, `employees`.`SSN` AS `SSN`, `employees`.`F_Name` AS `F_Name`, `employees`.`L_Name` AS `L_Name`, `employees`.`Gender` AS `Gender` FROM `employees` WHERE !exists(select 1 from `stores_employee` where `employees`.`Emp_ID` = `stores_employee`.`Emp_ID` limit 1) ;

-- --------------------------------------------------------

--
-- Structure for view `employee_with_active_contract`
--
DROP TABLE IF EXISTS `employee_with_active_contract`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_with_active_contract`  AS SELECT `e`.`Emp_ID` AS `EMP_ID`, `e`.`SSN` AS `SSN`, concat(`e`.`F_Name`,' ',`e`.`L_Name`) AS `EmployeeName`, `s`.`Store_Name` AS `Store_Name`, `se`.`From_Date` AS `From_Date`, `se`.`To_Date` AS `To_Date`, `se`.`Service_Status` AS `Service_Status`, `se`.`Contract_Type` AS `Contract_Type` FROM ((`stores_employee` `se` join `stores` `s` on(`se`.`Store_ID` = `s`.`Store_ID`)) join `employees` `e` on(`se`.`Emp_ID` = `e`.`Emp_ID`)) ;

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `number_of_cars_by_stores`  AS SELECT count(`c`.`VIN`) AS `Number_OF_Cars`, concat(round(count(`c`.`Row_ID`) * 100.0 / (select count(`c`.`Row_ID`) AS `allcount` from `cars` `c`),0),' %') AS `POAC`, `s`.`Store_Name` AS `Store_Name` FROM (`cars` `c` join `stores` `s` on(`c`.`Store_ID` = `s`.`Store_ID`)) GROUP BY `s`.`Store_ID` ;

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
  MODIFY `Row_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `carsold`
--
ALTER TABLE `carsold`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `Emp_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `Store_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `stores_employee`
--
ALTER TABLE `stores_employee`
  MODIFY `Row_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `store_branches`
--
ALTER TABLE `store_branches`
  MODIFY `Branch_Store_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  ADD CONSTRAINT `FK_CarSold_Cars_2` FOREIGN KEY (`Original_Price`) REFERENCES `cars` (`Price`),
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
