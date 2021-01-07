-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2020 at 12:57 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ubwuzu`
--

-- --------------------------------------------------------

--
-- Table structure for table `adjust`
--

CREATE TABLE `adjust` (
  `id` int(250) NOT NULL,
  `order_id` varchar(250) NOT NULL,
  `barcode` varchar(250) NOT NULL,
  `item` varchar(250) NOT NULL,
  `qty` varchar(250) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `exp` varchar(250) NOT NULL,
  `cost` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL,
  `pay_type` varchar(250) NOT NULL,
  `paid` varchar(250) NOT NULL,
  `sdc` varchar(250) NOT NULL,
  `stock_status` varchar(250) NOT NULL,
  `sale_status` varchar(250) NOT NULL,
  `done` varchar(250) NOT NULL,
  `customer` varchar(250) NOT NULL,
  `date_done` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `done_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adjust`
--

INSERT INTO `adjust` (`id`, `order_id`, `barcode`, `item`, `qty`, `reason`, `exp`, `cost`, `total`, `pay_type`, `paid`, `sdc`, `stock_status`, `sale_status`, `done`, `customer`, `date_done`, `done_date`) VALUES
(1, 'invoice136', '', 'ACYCLOVIR CREAM 1OGR', '-2', '              test            \r\n                          ', '', '1200', '-2400', '', '', '', 'inve', 'ordered', 'fullname', '', '2020-02-27 07:03:26', '2020-02-26'),
(2, 'invoice138', '', 'ABACOFF SP 100ML', '1', '                                                                                                                ', '', '700', '700', '', '', '', 'inve', 'pending', 'fullname', '', '2020-03-06 18:18:08', '2020-02-27'),
(3, 'invoice138', '', 'ACNESOL CREAM', '2', '                                                                                                                ', '', '1', '2', '', '', '', 'inve', 'pending', 'fullname', '', '2020-03-06 18:31:33', '2020-03-06'),
(4, 'Ref_Number139', '', 'NOOTROPYL 800MG 45CES', '1', '', '', '1', '1', '', '', '', 'inve', 'pending', 'fullname', '', '2020-03-06 19:29:19', '2020-03-06'),
(5, 'invoice140', '', 'ABACOFF SP 100ML', '5', '                                                                                    ', '', '700', '3500', '', '', '', 'inve', 'ordered', 'fullname', '', '2020-03-09 20:04:08', '2020-03-09'),
(6, 'invoice140', '', 'ABAISSE LANGUE', '1', '', '', '1', '1', '', '', '', 'inve', 'pending', 'fullname', '', '2020-03-09 20:05:35', '2020-03-09'),
(7, 'invoice141', '', 'ABACOFF SP 100ML', '5', '                            ', '', '700', '3500', '', '', '', 'inve', 'pending', 'fullname', '', '2020-03-13 02:49:43', '2020-03-12'),
(8, 'invoice142', '', 'PAIDOTERIN SP 100ML', '1', '', '', '4000', '4000', '', '', '', 'inve', 'ordered', 'fullname', '', '2020-04-01 16:10:30', '2020-04-01'),
(9, 'invoice142', '', 'PARACETAMOL SP 100ML', '4', '                            ', '', '600', '2400', '', '', '', 'inve', 'ordered', 'fullname', '', '2020-04-01 16:46:06', '2020-04-01'),
(10, 'invoice143', '', 'PARACETAMOL SP 100ML', '1', '', '', '600', '600', '', '', '', 'inve', 'ordered', 'fullname', '', '2020-04-01 16:48:07', '2020-04-01'),
(11, 'invoice143', '', 'PARACETAMOL SP 60ML', '1', '                            ', '', '500', '500', '', '', '', 'inve', 'ordered', 'fullname', '', '2020-04-01 16:48:07', '2020-04-01'),
(12, 'invoice144', '', 'PARACETAMOL SP 60ML', '1', '', '', '500', '500', '', '', '', 'inve', 'pending', 'fullname', '', '2020-04-01 16:48:25', '2020-04-01'),
(13, 'invoice163', '', 'AUGMENTIN ENFANT SP 60ML', '1', '', '', '6000', '6000', '', '', '', 'inve', 'pending', 'fullname', '', '2020-04-05 22:46:08', '2020-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `branch_address` varchar(100) NOT NULL,
  `branch_contact` varchar(50) NOT NULL,
  `skin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_address`, `branch_contact`, `skin`) VALUES
(1, 'Cashier', 'Nyamirambo', '0787381418', 'red'),
(2, 'superadmin', 'Nyamirambo', '0787381418', 'purple'),
(3, 'admin', 'Nyamirambo', '', 'black');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `lot` varchar(250) NOT NULL,
  `done` varchar(250) NOT NULL,
  `datedone` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `lot`, `done`, `datedone`) VALUES
(2, 'beverage', '', '', '2019-12-06 15:26:10'),
(3, 'Drinks', '', '', '2019-12-06 15:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(250) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `tin_number` varchar(250) NOT NULL,
  `nid` varchar(250) NOT NULL,
  `done` varchar(250) NOT NULL,
  `date_done` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fullname`, `phone`, `email`, `tin_number`, `nid`, `done`, `date_done`) VALUES
(3, 'Rutembesa Shema Elvis', '0787381418', 'rutembesaelvis@gmail.com', '334455221144', '11223344', 'fullname', '2019-12-05 02:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(250) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `post` varchar(250) NOT NULL,
  `nid` varchar(250) NOT NULL,
  `done` varchar(250) NOT NULL,
  `date_done` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `fullname`, `username`, `password`, `phone`, `email`, `photo`, `post`, `nid`, `done`, `date_done`) VALUES
(2, 'fullname', 'admin', 'admin', '0787381418', 'rutembesaelvis2@gmail.com', '', '2', '11223344556', 'Rutembesa Elvis', '2019-10-12 16:35:52'),
(5, 'KAMALI THEOPHILE', 'YUHI', '19800', '0783330060', 'theophila.kamali@gmail.com', '', '1', '1198080165932017', 'fullname', '2017-01-12 06:49:23'),
(6, 'niwemahoro nicole', 'nick', '1987', '0781909325', 'niwenicole45@gmail.com', '', '1', '1199570068410249', 'fullname', '2017-01-12 06:53:22'),
(7, 'B2J', 'kaka', '1452', '02783219180', 'hygrestha@fr', '', '2', '1452', 'fullname', '2017-01-12 11:22:17'),
(8, '', '', '', '', '', '', '1', '', 'fullname', '2020-05-19 08:50:24'),
(9, '', '', '', '', '', '', '1', '', 'fullname', '2020-05-19 08:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 0, 'has logged out the system at ', '2019-10-10 08:41:45'),
(2, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(3, 0, 'has logged out the system at ', '2019-10-10 08:43:35'),
(4, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(5, 0, 'has logged out the system at ', '2019-10-10 17:40:00'),
(6, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(7, 0, 'has logged out the system at ', '2019-10-10 17:42:14'),
(8, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(9, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(10, 0, 'has logged out the system at ', '2019-10-11 09:10:43'),
(11, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(12, 0, 'has logged out the system at ', '2019-10-11 09:11:38'),
(13, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(14, 0, 'has logged out the system at ', '2019-10-11 09:12:14'),
(15, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(16, 0, 'has logged out the system at ', '2019-10-11 09:56:01'),
(17, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(18, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(19, 0, 'has logged out the system at ', '2019-10-12 04:28:42'),
(20, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(21, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(22, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(23, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(24, 0, 'has logged out the system at ', '2019-10-13 00:29:46'),
(25, 0, 'has logged out the system at ', '2019-10-13 00:30:01'),
(26, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(27, 0, 'has logged out the system at ', '2019-10-13 00:30:49'),
(28, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(29, 0, 'has logged out the system at ', '2019-10-13 00:31:38'),
(30, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(31, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(32, 0, 'has logged out the system at ', '2019-10-13 00:36:09'),
(33, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(34, 0, 'has logged out the system at ', '2019-10-13 00:36:30'),
(35, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(36, 0, 'has logged out the system at ', '2019-10-13 02:19:09'),
(37, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(38, 0, 'has logged out the system at ', '2019-10-13 06:46:39'),
(39, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(40, 0, 'has logged out the system at ', '2019-10-13 15:23:46'),
(41, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(42, 0, 'has logged out the system at ', '2019-10-13 15:55:05'),
(43, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(44, 0, 'has logged out the system at ', '2019-10-13 15:55:37'),
(45, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(46, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(47, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(48, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(49, 0, 'has logged out the system at ', '2019-10-14 13:31:30'),
(50, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(51, 0, 'has logged out the system at ', '2019-10-14 14:30:10'),
(52, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(53, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(54, 0, 'has logged out the system at ', '2019-10-16 00:43:16'),
(55, 0, 'has logged out the system at ', '2019-10-16 01:58:44'),
(56, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(57, 0, 'has logged out the system at ', '2019-10-16 02:00:01'),
(58, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(59, 0, 'has logged out the system at ', '2019-10-16 23:27:43'),
(60, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(61, 0, 'has logged out the system at ', '2019-10-17 02:04:32'),
(62, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(63, 0, 'has logged out the system at ', '2019-10-17 02:05:53'),
(64, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(65, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(66, 0, 'has logged out the system at ', '2019-10-20 01:21:17'),
(67, 0, 'has logged out the system at ', '2019-10-20 01:21:59'),
(68, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(69, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(70, 0, 'has logged out the system at ', '2019-10-22 01:17:58'),
(71, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(72, 0, 'has logged out the system at ', '2019-10-23 05:58:25'),
(73, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(74, 0, 'has logged out the system at ', '2019-10-23 05:58:37'),
(75, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(76, 0, 'has logged out the system at ', '2019-10-23 06:07:37'),
(77, 0, 'has logged out the system at ', '2019-10-24 02:30:12'),
(78, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(79, 0, 'has logged out the system at ', '2019-10-24 04:49:43'),
(80, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(81, 0, 'has logged out the system at ', '2019-10-24 14:34:27'),
(82, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(83, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(84, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(85, 0, 'has logged out the system at ', '2019-10-24 22:32:41'),
(86, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(87, 0, 'has logged out the system at ', '2019-10-25 00:23:33'),
(88, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(89, 0, 'has logged out the system at ', '2019-10-25 01:28:59'),
(90, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(91, 0, 'has logged out the system at ', '2019-10-25 01:30:16'),
(92, 0, 'has logged out the system at ', '2019-10-25 01:30:18'),
(93, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(94, 0, 'has logged out the system at ', '2019-10-25 01:32:18'),
(95, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(96, 0, 'has logged out the system at ', '2019-10-25 01:38:38'),
(97, 0, 'has logged out the system at ', '2019-10-28 18:23:08'),
(98, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(99, 0, 'has logged out the system at ', '2019-10-29 05:37:39'),
(100, 0, 'has logged out the system at ', '2019-10-29 05:38:06'),
(101, 0, 'has logged out the system at ', '2019-10-29 05:40:24'),
(102, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(103, 0, 'has logged out the system at ', '2019-10-29 05:50:16'),
(104, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(105, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(106, 0, 'has logged out the system at ', '2019-11-23 06:44:20'),
(107, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(108, 0, 'has logged out the system at ', '2019-12-06 00:13:04'),
(109, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(110, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(111, 0, 'has logged out the system at ', '2019-12-06 22:56:07'),
(112, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(113, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(114, 0, 'has logged out the system at ', '2019-12-12 15:23:50'),
(115, 0, 'has logged out the system at ', '2019-12-12 15:24:20'),
(116, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(117, 0, 'has logged out the system at ', '2019-12-12 19:11:48'),
(118, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(119, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(120, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(121, 0, 'has logged out the system at ', '2019-12-16 18:53:25'),
(122, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(123, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(124, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(125, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(126, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(127, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(128, 0, 'has logged out the system at ', '2019-12-20 04:42:43'),
(129, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(130, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(131, 0, 'has logged out the system at ', '2019-12-20 09:02:27'),
(132, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(133, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(134, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(135, 0, 'has logged out the system at ', '2019-12-22 19:19:30'),
(136, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(137, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(138, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(139, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(140, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(141, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(142, 0, 'has logged out the system at ', '2020-01-11 19:23:46'),
(143, 0, 'has logged out the system at ', '2020-01-11 19:23:47'),
(144, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(145, 0, 'has logged out the system at ', '2020-01-11 19:32:58'),
(146, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(147, 0, 'has logged out the system at ', '2020-01-14 18:05:47'),
(148, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(149, 0, 'has logged out the system at ', '2020-01-20 17:55:57'),
(150, 0, 'has logged out the system at ', '2020-01-20 17:55:57'),
(151, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(152, 0, 'has logged out the system at ', '2020-01-21 08:09:04'),
(153, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(154, 0, 'has logged out the system at ', '2020-01-29 17:44:18'),
(155, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(156, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(157, 0, 'has logged out the system at ', '2020-01-31 20:20:02'),
(158, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(159, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(160, 0, 'has logged out the system at ', '2020-02-08 10:33:06'),
(161, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(162, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(163, 0, 'has logged out the system at ', '2020-02-08 20:58:38'),
(164, 0, 'has logged out the system at ', '2020-02-08 20:59:05'),
(165, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(166, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(167, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(168, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(169, 0, 'has logged out the system at ', '2017-01-12 14:53:30'),
(170, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(171, 0, 'has logged out the system at ', '2017-01-12 14:55:41'),
(172, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(173, 0, 'has logged out the system at ', '2017-01-12 14:59:29'),
(174, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(175, 0, 'has logged out the system at ', '2017-01-12 15:00:02'),
(176, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(177, 0, 'has logged out the system at ', '2017-01-12 15:01:32'),
(178, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(179, 0, 'has logged out the system at ', '2017-01-12 15:02:13'),
(180, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(181, 0, 'has logged out the system at ', '2017-01-12 15:06:35'),
(182, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(183, 0, 'has logged out the system at ', '2017-01-12 15:29:06'),
(184, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(185, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(186, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(187, 0, 'has logged out the system at ', '2017-01-12 17:53:01'),
(188, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(189, 0, 'has logged out the system at ', '2017-01-12 19:22:24'),
(190, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(191, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(192, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(193, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(194, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(195, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(196, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(197, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(198, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(199, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(200, 0, 'has logged out the system at ', '2020-02-27 03:55:05'),
(201, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(202, 0, 'has logged out the system at ', '2020-02-27 05:45:04'),
(203, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(204, 0, 'has logged out the system at ', '2020-02-27 17:27:27'),
(205, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(206, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(207, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(208, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(209, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(210, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(211, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(212, 0, 'has logged out the system at ', '2020-03-29 05:10:29'),
(213, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(214, 0, 'has logged out the system at ', '2020-04-01 22:49:23'),
(215, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(216, 0, 'has logged out the system at ', '2020-04-02 04:14:17'),
(217, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(218, 0, 'has logged out the system at ', '2020-04-06 04:03:16'),
(219, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(220, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(221, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(222, 0, 'has logged out the system at ', '2020-04-27 06:18:28'),
(223, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(224, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(225, 0, 'has logged out the system at ', '2020-05-03 21:41:30'),
(226, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(227, 0, 'has logged out the system at ', '2020-05-05 17:46:14'),
(228, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(229, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(230, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(231, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(232, 0, 'has logged out the system at ', '2020-05-19 15:51:36'),
(233, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(234, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(235, 0, 'has logged in the system at ', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `insurances`
--

CREATE TABLE `insurances` (
  `id` int(250) NOT NULL,
  `insu_name` varchar(250) NOT NULL,
  `percentage` varchar(250) NOT NULL,
  `done` varchar(250) NOT NULL,
  `done_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurances`
--

INSERT INTO `insurances` (`id`, `insu_name`, `percentage`, `done`, `done_date`) VALUES
(1, 'RSSB', '85', 'fullname', '2020-02-26 20:09:55'),
(2, 'UAP', '100', 'fullname', '2020-02-26 20:10:24'),
(3, '', '', 'fullname', '2020-05-19 08:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(250) NOT NULL,
  `order_id` varchar(250) NOT NULL,
  `datedone` date NOT NULL,
  `doneby` varchar(250) NOT NULL,
  `donedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `order_id`, `datedone`, `doneby`, `donedate`, `status`) VALUES
(1, 'invoice', '2019-10-02', 'Admin ', '2019-10-01 23:36:48', 'pending'),
(2, 'invoice1', '2019-10-03', 'Rutembesa Elvis', '2019-10-03 13:34:46', 'ordered'),
(3, 'invoice2', '2019-10-03', 'Rutembesa Elvis', '2019-10-03 13:34:46', 'pending'),
(4, 'invoice3', '2019-10-07', 'Rutembesa Elvis', '2019-10-07 14:04:44', 'ordered'),
(5, 'invoice4', '2019-10-07', 'Rutembesa Elvis', '2019-10-07 14:04:44', 'pending'),
(6, 'invoice5', '2019-10-10', 'Rutembesa Elvis', '2019-10-10 00:21:03', 'pending'),
(7, 'invoice6', '2019-10-10', 'Rutembesa Elvis', '2019-10-10 09:39:13', 'pending'),
(8, 'invoice7', '2019-10-11', 'Rutembesa Elvis', '2019-10-11 00:27:31', 'pending'),
(9, 'invoice8', '2019-10-13', 'fullname', '2019-10-13 12:16:00', 'ordered'),
(10, 'invoice9', '2019-10-13', 'fullname', '2019-10-13 12:16:00', 'pending'),
(11, 'invoice10', '2019-10-13', 'fullname', '2019-10-13 21:42:47', 'pending'),
(12, 'invoice11', '2019-10-14', 'fullname', '2019-10-14 03:49:51', 'ordered'),
(13, 'invoice12', '2019-10-14', 'fullname', '2019-10-14 04:59:09', 'ordered'),
(14, 'invoice13', '2019-10-14', 'fullname', '2019-10-14 05:08:26', 'ordered'),
(15, 'invoice14', '2019-10-14', 'fullname', '2019-10-14 05:08:35', 'ordered'),
(16, 'invoice15', '2019-10-14', 'fullname', '2019-10-14 05:09:03', 'ordered'),
(17, 'invoice16', '2019-10-14', 'fullname', '2019-10-14 05:09:11', 'ordered'),
(18, 'invoice17', '2019-10-14', 'fullname', '2019-10-14 05:10:09', 'ordered'),
(19, 'invoice18', '2019-10-14', 'fullname', '2019-10-14 05:10:35', 'ordered'),
(20, 'invoice19', '2019-10-14', 'fullname', '2019-10-14 05:11:41', 'ordered'),
(21, 'invoice20', '2019-10-14', 'fullname', '2019-10-14 05:13:54', 'ordered'),
(22, 'invoice21', '2019-10-14', 'fullname', '2019-10-14 05:14:35', 'ordered'),
(23, 'invoice22', '2019-10-14', 'fullname', '2019-10-14 05:20:06', 'ordered'),
(24, 'invoice23', '2019-10-14', 'fullname', '2019-10-14 05:22:38', 'ordered'),
(25, 'invoice24', '2019-10-14', 'fullname', '2019-10-14 05:27:47', 'ordered'),
(26, 'invoice25', '2019-10-14', 'fullname', '2019-10-14 05:27:47', 'pending'),
(27, 'invoice26', '2019-10-23', 'fullname', '2019-10-23 20:53:57', 'ordered'),
(28, 'invoice27', '2019-10-23', 'fullname', '2019-10-23 20:57:02', 'ordered'),
(29, 'invoice28', '2019-10-23', 'fullname', '2019-10-23 21:02:50', 'ordered'),
(30, 'invoice29', '2019-10-23', 'fullname', '2019-10-23 21:03:24', 'ordered'),
(31, 'invoice30', '2019-10-23', 'fullname', '2019-10-23 21:04:07', 'ordered'),
(32, 'invoice31', '2019-10-23', 'fullname', '2019-10-23 21:05:25', 'ordered'),
(33, 'invoice32', '2019-10-23', 'fullname', '2019-10-23 21:05:39', 'ordered'),
(34, 'invoice33', '2019-10-23', 'fullname', '2019-10-23 21:06:44', 'ordered'),
(35, 'invoice34', '2019-10-23', 'fullname', '2019-10-23 21:08:13', 'ordered'),
(36, 'invoice35', '2019-10-23', 'fullname', '2019-10-23 21:08:13', 'pending'),
(37, 'invoice36', '2019-10-24', 'fullname', '2019-10-24 14:01:49', 'ordered'),
(38, 'invoice37', '2019-10-24', 'fullname', '2019-10-24 14:08:40', 'ordered'),
(39, 'invoice38', '2019-10-24', 'fullname', '2019-10-24 14:08:40', 'pending'),
(40, 'invoice39', '2019-10-24', 'fullname', '2019-10-24 16:48:56', 'pending'),
(41, 'invoice40', '2019-10-28', 'fullname', '2019-10-28 11:15:12', 'ordered'),
(42, 'invoice41', '2019-10-28', 'fullname', '2019-10-28 11:57:45', 'ordered'),
(43, 'invoice42', '2019-10-28', 'fullname', '2019-10-28 12:24:39', 'unpaid'),
(44, 'invoice43', '2019-10-28', 'fullname', '2019-10-28 21:22:29', 'ordered'),
(45, 'invoice44', '2019-10-28', 'fullname', '2019-10-28 21:03:29', 'unpaid'),
(46, 'invoice45', '2019-10-28', 'fullname', '2019-10-28 21:10:36', 'unpaid'),
(47, 'invoice46', '2019-10-28', 'fullname', '2019-10-28 21:15:23', 'ordered'),
(48, 'invoice47', '2019-10-28', 'fullname', '2019-10-28 21:11:46', 'pending'),
(49, 'invoice48', '2019-10-28', 'fullname', '2019-10-28 21:22:38', 'ordered'),
(50, 'invoice49', '2019-10-28', 'fullname', '2019-10-28 21:22:15', 'pending'),
(51, 'invoice50', '2019-10-28', 'fullname', '2019-10-28 21:22:29', 'pending'),
(52, 'invoice51', '2019-10-28', 'fullname', '2019-10-28 21:22:38', 'pending'),
(53, 'invoice52', '2019-10-28', 'fullname', '2019-10-28 21:49:17', 'unpaid'),
(54, 'invoice53', '2019-10-28', 'fullname', '2019-12-05 10:02:45', 'ordered'),
(55, 'invoice54', '2019-10-28', 'fullname', '2019-10-28 21:50:04', 'ordered'),
(56, 'invoice55', '2019-10-28', 'fullname', '2019-10-28 21:50:04', 'pending'),
(57, 'invoice56', '2019-12-05', 'fullname', '2019-12-05 04:10:08', 'pending'),
(58, 'invoice57', '2019-12-05', 'fullname', '2019-12-05 10:02:45', 'pending'),
(59, 'invoice58', '2019-12-06', 'fullname', '2019-12-06 08:13:43', 'pending'),
(60, 'invoice59', '2019-12-07', 'fullname', '2019-12-07 02:30:58', 'ordered'),
(61, 'invoice60', '2019-12-07', 'fullname', '2019-12-07 02:30:58', 'pending'),
(62, 'invoice61', '2019-12-07', 'fullname', '2019-12-07 14:11:54', 'ordered'),
(63, 'invoice62', '2019-12-07', 'fullname', '2019-12-07 14:14:02', 'ordered'),
(64, 'invoice63', '2019-12-07', 'fullname', '2019-12-07 14:16:13', 'ordered'),
(65, 'invoice64', '2019-12-07', 'fullname', '2019-12-07 14:19:15', 'ordered'),
(66, 'invoice65', '2019-12-07', 'fullname', '2019-12-07 14:19:57', 'ordered'),
(67, 'invoice66', '2019-12-07', 'fullname', '2019-12-07 20:40:00', 'ordered'),
(68, 'invoice67', '2019-12-07', 'fullname', '2019-12-07 20:40:25', 'ordered'),
(69, 'invoice68', '2019-12-07', 'fullname', '2019-12-07 20:54:10', 'ordered'),
(70, 'invoice69', '2019-12-07', 'fullname', '2019-12-07 20:54:10', 'pending'),
(71, 'invoice70', '2019-12-08', 'fullname', '2019-12-08 14:51:48', 'ordered'),
(72, 'invoice71', '2019-12-08', 'fullname', '2019-12-08 14:51:49', 'pending'),
(73, 'invoice72', '2019-12-08', 'fullname', '2019-12-08 16:04:35', 'pending'),
(74, 'invoice73', '2019-12-11', 'fullname', '2019-12-11 11:44:06', 'ordered'),
(75, 'invoice74', '2019-12-11', 'fullname', '2019-12-11 11:44:48', 'ordered'),
(76, 'invoice75', '2019-12-11', 'fullname', '2019-12-11 11:44:49', 'pending'),
(77, 'invoice76', '2019-12-12', 'fullname', '2019-12-12 08:19:00', 'pending'),
(78, 'invoice77', '2019-12-12', 'fullname', '2019-12-12 08:19:33', 'pending'),
(79, 'invoice78', '2019-12-12', 'fullname', '2019-12-12 15:29:41', 'pending'),
(80, 'invoice79', '2019-12-12', 'fullname', '2019-12-12 15:36:28', 'pending'),
(81, 'invoice80', '2019-12-12', 'fullname', '2019-12-12 15:58:23', 'pending'),
(82, 'invoice81', '2019-12-12', 'fullname', '2019-12-12 16:08:43', 'pending'),
(83, 'invoice82', '2019-12-12', 'fullname', '2020-02-11 22:12:12', 'ordered'),
(84, 'invoice83', '2019-12-12', 'fullname', '2019-12-12 18:46:16', 'ordered'),
(85, 'invoice84', '2019-12-12', 'fullname', '2019-12-12 18:46:17', 'pending'),
(86, 'invoice85', '2019-12-16', 'fullname', '2019-12-16 15:13:09', 'ordered'),
(87, 'invoice86', '2019-12-16', 'fullname', '2019-12-16 15:13:09', 'pending'),
(88, 'invoice87', '2019-12-17', 'fullname', '2019-12-17 00:13:08', 'ordered'),
(89, 'invoice88', '2019-12-17', 'fullname', '2019-12-17 00:13:08', 'pending'),
(90, 'invoice89', '2019-12-19', 'fullname', '2019-12-19 00:29:24', 'pending'),
(91, 'invoice90', '2019-12-19', 'fullname', '2019-12-19 01:03:54', 'inventory'),
(92, 'invoice91', '2019-12-19', 'fullname', '2019-12-19 01:03:54', 'pending'),
(93, 'invoice92', '2019-12-19', 'fullname', '2019-12-19 07:40:30', 'pending'),
(94, 'invoice93', '2019-12-19', 'fullname', '2019-12-19 08:47:06', 'unpaid'),
(95, 'invoice94', '2019-12-19', 'fullname', '2019-12-19 08:47:06', 'pending'),
(96, 'invoice95', '2019-12-19', 'fullname', '2019-12-19 09:33:52', 'pending'),
(97, 'invoice96', '2019-12-19', 'fullname', '2019-12-19 09:36:37', 'pending'),
(98, 'invoice97', '2019-12-19', 'fullname', '2019-12-19 09:39:38', 'pending'),
(99, 'invoice98', '2019-12-19', 'fullname', '2019-12-19 09:44:04', 'pending'),
(100, 'invoice99', '2019-12-19', 'fullname', '2019-12-19 09:46:35', 'pending'),
(101, 'invoice100', '2019-12-19', 'fullname', '2019-12-19 10:01:36', 'pending'),
(102, 'invoice101', '2019-12-20', 'fullname', '2019-12-20 08:21:17', 'pending'),
(103, 'Ref_Number102', '2019-12-20', 'fullname', '2019-12-20 08:39:10', 'pending'),
(104, 'Ref_Number103', '2019-12-20', 'fullname', '2019-12-20 09:16:39', 'pending'),
(105, 'Ref_Number104', '2019-12-20', 'fullname', '2019-12-20 09:17:02', 'pending'),
(106, 'Ref_Number105', '2019-12-20', 'fullname', '2019-12-20 09:17:28', 'ordered'),
(107, 'Ref_Number106', '2019-12-20', 'fullname', '2019-12-20 09:17:30', 'ordered'),
(108, 'Ref_Number107', '2019-12-20', 'fullname', '2019-12-20 09:17:31', 'ordered'),
(109, 'Ref_Number108', '2019-12-20', 'fullname', '2019-12-20 09:17:46', 'ordered'),
(110, 'Ref_Number109', '2019-12-20', 'fullname', '2019-12-20 09:17:52', 'ordered'),
(111, 'Ref_Number110', '2019-12-20', 'fullname', '2019-12-20 09:17:57', 'ordered'),
(112, 'Ref_Number111', '2019-12-20', 'fullname', '2019-12-20 11:13:01', 'ordered'),
(113, 'invoice112', '2019-12-20', 'fullname', '2019-12-20 11:13:01', 'pending'),
(114, 'Ref_Number113', '2019-12-20', 'fullname', '2019-12-20 13:34:40', 'ordered'),
(115, 'Ref_Number114', '2019-12-20', 'fullname', '2019-12-20 13:34:48', 'ordered'),
(116, 'Ref_Number115', '2019-12-20', 'fullname', '2019-12-20 13:34:57', 'ordered'),
(117, 'Ref_Number116', '2019-12-20', 'fullname', '2019-12-20 13:35:13', 'ordered'),
(118, 'Ref_Number117', '2019-12-20', 'fullname', '2019-12-20 13:39:59', 'ordered'),
(119, 'Ref_Number118', '2019-12-20', 'fullname', '2019-12-20 13:46:00', 'ordered'),
(120, 'Ref_Number119', '2019-12-20', 'fullname', '2019-12-20 13:48:32', 'ordered'),
(121, 'Ref_Number120', '2019-12-20', 'fullname', '2019-12-20 13:51:52', 'ordered'),
(122, 'Ref_Number121', '2019-12-20', 'fullname', '2019-12-20 13:51:56', 'ordered'),
(123, 'Ref_Number122', '2019-12-20', 'fullname', '2019-12-20 13:51:58', 'ordered'),
(124, 'Ref_Number123', '2019-12-20', 'fullname', '2019-12-20 13:52:13', 'ordered'),
(125, 'Ref_Number124', '2019-12-20', 'fullname', '2019-12-20 13:52:39', 'ordered'),
(126, 'Ref_Number125', '2019-12-20', 'fullname', '2019-12-20 13:53:44', 'ordered'),
(127, 'Ref_Number126', '2019-12-20', 'fullname', '2019-12-20 13:57:35', 'ordered'),
(128, 'Ref_Number127', '2019-12-20', 'fullname', '2019-12-20 13:57:36', 'pending'),
(129, 'Ref_Number128', '2019-12-20', 'fullname', '2019-12-20 15:15:02', 'pending'),
(130, 'Ref_Number129', '2020-01-31', 'fullname', '2020-01-31 11:12:32', 'pending'),
(131, 'invoice130', '2020-02-11', 'fullname', '2020-02-11 22:03:05', 'ordered'),
(132, 'invoice131', '2020-02-12', 'fullname', '2020-02-11 22:03:05', 'pending'),
(133, 'invoice132', '2020-02-12', 'fullname', '2020-02-11 22:12:12', 'pending'),
(134, 'invoice133', '2017-01-11', 'fullname', '2017-01-12 07:27:14', 'pending'),
(135, 'Ref_Number134', '2020-02-26', 'fullname', '2020-02-26 20:56:08', 'pending'),
(136, 'invoice135', '2020-02-26', 'fullname', '2020-02-26 21:28:53', 'pending'),
(137, 'invoice136', '2020-02-27', 'fullname', '2020-02-27 07:03:26', 'pending'),
(138, 'Ref_Number137', '2020-02-27', 'fullname', '2020-02-27 09:10:00', 'pending'),
(139, 'Ref_Number138', '2020-03-06', 'fullname', '2020-03-06 19:26:32', 'ordered'),
(140, 'Ref_Number139', '2020-03-06', 'fullname', '2020-03-06 19:26:32', 'pending'),
(141, 'invoice140', '2020-03-09', 'fullname', '2020-03-09 20:04:08', 'pending'),
(142, 'Ref_Number141', '2020-04-01', 'fullname', '2020-04-01 15:56:40', 'pending'),
(143, 'invoice142', '2020-04-01', 'fullname', '2020-04-01 16:46:06', 'ordered'),
(144, 'invoice143', '2020-04-01', 'fullname', '2020-04-01 16:48:07', 'ordered'),
(145, 'invoice144', '2020-04-01', 'fullname', '2020-04-01 16:50:11', 'ordered'),
(146, 'invoice145', '2020-04-01', 'fullname', '2020-04-01 16:50:11', 'pending'),
(147, 'invoice146', '2020-04-01', 'fullname', '2020-04-01 17:01:33', 'pending'),
(148, 'Ref_Number147', '2020-04-05', 'fullname', '2020-04-05 19:30:39', 'pending'),
(149, 'Ref_Number148', '2020-04-05', 'fullname', '2020-04-05 19:49:31', 'ordered'),
(150, 'Ref_Number149', '2020-04-05', 'fullname', '2020-04-05 19:49:31', 'pending'),
(151, 'Ref_Number150', '2020-04-05', 'fullname', '2020-04-05 20:17:24', 'pending'),
(152, 'Ref_Number151', '2020-04-05', 'fullname', '2020-04-05 20:25:29', 'ordered'),
(153, 'Ref_Number152', '2020-04-05', 'fullname', '2020-04-05 20:25:29', 'pending'),
(154, 'Ref_Number153', '2020-04-05', 'fullname', '2020-04-05 21:11:34', 'ordered'),
(155, 'Ref_Number154', '2020-04-05', 'fullname', '2020-04-05 21:11:34', 'pending'),
(156, 'Ref_Number155', '2020-04-05', 'fullname', '2020-04-05 21:42:06', 'ordered'),
(157, 'Ref_Number156', '2020-04-05', 'fullname', '2020-04-05 21:45:03', 'ordered'),
(158, 'Ref_Number157', '2020-04-05', 'fullname', '2020-04-05 21:45:03', 'pending'),
(159, 'Ref_Number158', '2020-04-05', 'fullname', '2020-04-05 22:04:36', 'pending'),
(160, 'Ref_Number159', '2020-04-05', 'fullname', '2020-04-05 22:06:01', 'pending'),
(161, 'invoice160', '2020-04-05', 'fullname', '2020-04-05 22:29:18', 'ordered'),
(162, 'invoice161', '2020-04-05', 'fullname', '2020-04-05 22:38:38', 'ordered'),
(163, 'invoice162', '2020-04-05', 'fullname', '2020-04-05 22:38:38', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(250) NOT NULL,
  `barcode` varchar(250) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `cost` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL,
  `unit` varchar(250) NOT NULL,
  `expired_date` varchar(250) NOT NULL,
  `taxes` varchar(250) NOT NULL,
  `stock` varchar(250) NOT NULL,
  `supplier` varchar(250) NOT NULL,
  `done` varchar(250) NOT NULL,
  `date_done` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category` varchar(250) NOT NULL,
  `measure` varchar(250) NOT NULL,
  `lot` varchar(250) NOT NULL,
  `sdc_n` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `barcode`, `item_name`, `quantity`, `price`, `cost`, `total`, `unit`, `expired_date`, `taxes`, `stock`, `supplier`, `done`, `date_done`, `category`, `measure`, `lot`, `sdc_n`) VALUES
(1, '', 'ABACOFF SP 100ML', '-10', '', '700', '', '', '', '', '', '', '', '2020-03-09 20:04:08', '', '', '', ''),
(2, '', 'ABAISSE LANGUE', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:06', '', '', '', ''),
(3, '', 'ACIDE NALIDIXIC 500MG TAB 10X10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:06', '', '', '', ''),
(4, '', 'ACINET SP 100ML', '', '', '3000', '', '', '', '', '', '', '', '2020-02-08 17:35:06', '', '', '', ''),
(5, '', 'ACINET TAB 625MG', '', '', '210', '', '', '', '', '', '', '', '2020-02-08 17:35:06', '', '', '', ''),
(6, '', 'DEPAKINE 500MG 40 CES', '', '', '340', '', '', '', '', '', '', '', '2020-02-08 17:35:06', '', '', '', ''),
(7, '', 'ACNESOL CREAM', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:06', '', '', '', ''),
(8, '', 'ACTAPULGITE 1GR', '', '', '150', '', '', '', '', '', '', '', '2020-02-08 17:35:06', '', '', '', ''),
(9, '', 'DERMALEX 500ML LAIT CORPOREL', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:06', '', '', '', ''),
(10, '', 'ACTAPULGITE 3GR', '', '', '160', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(11, '', 'DERMOBACTER SLN 300ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(12, '', 'ACTION TABS 100', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(13, '', 'DERMOVATE 0.05% 30GR CREME', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(14, '', 'ACYCLOVIR 200MG TAB 10X10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(15, '', 'DESLOR ORAL 5MG 15CES', '', '', '380', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(16, '', 'DEXAGENTA COLLYRE 5ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(17, '', 'ACYCLOVIR(UNIVIR) TAB 200MG 30', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(18, '', 'DEXAMETHASONE CES 1000tabs', '', '', '10', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(19, '', 'ACYCLOVIR(UNIVIR) TAB 400MG 10TABS', '', '', '1200', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(20, '', 'ACYCLOVIR(UNIVIR) TAB 800MG 10TABS', '', '', '1600', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(21, '', 'ACYCLOVIR CREAM 1OGR', '-2', '', '1200', '', '', '', '', '', '', '', '2020-02-27 07:03:26', '', '', '', ''),
(22, '', 'ACYCLOVIR CREAM 5GR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(23, '', 'ADALATE RETARD TAB 20MG 30', '', '', '180', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(24, '', 'ADRENALINE INJ 1MG/1ML', '', '', '150', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(25, '', 'AERIUS SP 60ML', '', '', '5900', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(26, '', 'AGYRAX TAB 25MG 15TABS', '', '', '250', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(27, '', 'AIGUILLE G21', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(28, '', 'AIGUILLE G23', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(29, '', 'ALBENDAZOLE TAB 400MG 1TAB', '', '', '300', '', '', '', '', '', '', '', '2020-02-08 17:35:07', '', '', '', ''),
(30, '', 'ALBENDAZOLE SP 10ML', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(31, '', 'ALCOOL DENATURE 96,4% 25L', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(32, '', 'ALCOOL DENATURE 96.4% 20L', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(33, '', 'ALCOOL DENATURE 96.4% 1L', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(34, '', 'ALCOOL DENATURE 96.4% 120ML', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(35, '', 'ALDACTONE TAB 25MG 50TABS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(36, '', 'ALDOMET TAB 250MG 30', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(37, '', 'DEXAMETHASONE COLLYRE', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(38, '', 'ALGESAL BAUME 40GR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(39, '', 'ALGESAL SURACTIVE 40GR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(40, '', 'DEXAMETHASONE COLLYRE+NEOMYCIN', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(41, '', 'AMAREL TAB 2MG 30', '', '', '310', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(42, '', 'DEXAMETHASONE INJECTABLE', '', '', '200', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(43, '', 'AMARYL M 2MG 30TABS', '', '', '373.3334', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(44, '', 'NITROFURSANTOIN 100MG TABS 1000', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(45, '', 'DIAZEPAM 5MG 1000TABS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(46, '', 'NITROFURANTOINE 100MG B/ 100', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(47, '', 'DICLOFENAC 100MG 10X10', '', '', '30', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(48, '', 'NIZORAL CREME 15GR', '', '', '3700', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(49, '', 'DICLOFENAC 50MG 1000CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(50, '', 'AMIFER SP 172MG/5ML 200ML', '', '', '6300', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(51, '', 'DICLOFENAC 50MG 10X10', '', '', '20', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(52, '', 'DICLOFENAC INJECTABLE', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:08', '', '', '', ''),
(53, '', 'AMINOPHILLINE  1000TABS', '', '', '10', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(54, '', 'DICLOFENAC PDE', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(55, '', 'AMINOPHILLINE INJ', '', '', '250', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(56, '', 'DICLOFENAC SUPPO', '', '', '150', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(57, '', 'NOOTROPYL 800MG 45CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(58, '', 'DICYNONE 250MG INJ 4 AMP', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(59, '', 'NORFLOXACIN 400MG TABS 10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(60, '', 'DICYNONE 500MG 20CES', '', '', '370', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(61, '', 'NORLEVO 1.5MG 1CES', '', '', '10000', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(62, '', 'DIPROSALIC 30GR PDE', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(63, '', 'DITROPAN 5MG 60CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(64, '', 'AMITRIPTYILLINE TAB 25MG 1000', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(65, '', 'AMLODIPINE  5MG 100TABS', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(66, '', 'DOLIPRANE 100MG NOUR 10 SUPPO', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(67, '', 'DOLIPRANE 150MG 10 SUPPO', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(68, '', 'NORMAL SALINE 0.9% 500ML', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(69, '', 'AMOXYCILLIN CAPS 500MG 500CAPS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(70, '', 'DOLIPRANE 200MG 10 SUPPO', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(71, '', 'AMOXYCILLIN SP 125MG/5ML 100ML', '', '', '800', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(72, '', 'DOLIPRANE 300MG 10 SUPPO', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(73, '', 'DOLIPRANE 500MG 16CES EFFERV', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(74, '', 'AMOXYCILLIN SP 125MG/5ML 60ML', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(75, '', 'DOLIPREX 500MG 8 POWD', '', '', '400', '', '', '', '', '', '', '', '2020-02-08 17:35:09', '', '', '', ''),
(76, '', 'AMOXYCILLIN CAPS 250MG 1000 TABS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(77, '', 'DOXYCYCLINE 100MG 1000', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(78, '', 'AMOXYCILLIN CAPS 250MG 10X10', '', '', '25', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(79, '', 'DOXYCYCLINE 100MG SF 10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(80, '', 'DUPHALAC SP  200ML', '', '', '2800', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(81, '', 'AMOXYCILLIN SP 250MG/5ML100ML', '', '', '800', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(82, '', 'DUSPATALIN 200MG 30CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(83, '', 'AMOXYCILLIN CAPS 500MG 10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(84, '', 'DYNAMOGEN 20 AMP BUVABLE', '', '', '300', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(85, '', 'EASCOFF 100ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(86, '', 'AMPICILLIN INJ 1GR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(87, '', 'EAU OXYGENEE 120ML', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(88, '', 'AMPICILLIN INJ 500MG', '', '', '250', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(89, '', 'EAU POUR INJECTION 10ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(90, '', 'ARGYROL 1% 20ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(91, '', 'EFFERALGAN CODEINE', '', '', '1500', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(92, '', 'ARGYROL 0.5% 20ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(93, '', 'ASCORIL SP 100ML', '', '', '1200', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(94, '', 'EFFERALGAN PEDIATRIQUE 90ML SIROP', '', '', '2100', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(95, '', 'ASPEGIC POWDER 1000MG 20SACHETS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(96, '', 'ASPEGIC POWDER 250MG 20SACHETS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(97, '', 'ASPEGIC INJ 1GR', '', '', '1900', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(98, '', 'ASPIRIN TAB 300MG 1000TABS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(99, '', 'NUCLEO CMP FORTE 30GELULES FERREI', '', '', '280', '', '', '', '', '', '', '', '2020-02-08 17:35:10', '', '', '', ''),
(100, '', 'ASPIRINTAB 500MG 1000TABS', '', '', '10', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(101, '', 'ASPIRIN TAB 75MG 1000TABS', '', '', '10', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(102, '', 'ASPIRIN UPSA TAB 330/200MG 20TABS', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(103, '', 'ATENOLOL TAB 100MG 10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(104, '', 'ATENOLOL TAB 50MG 10X10', '', '', '30', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(105, '', 'EFFERALGAN VIT C', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(106, '', 'ELASTOPLASTE', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(107, '', 'ATENOLOL-DENK TAB 50MG 10X10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(108, '', 'ELMEX DENT SENSITIVE 75ML', '', '', '4400', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(109, '', 'ATORVASTATIN TAB 10MG 30', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(110, '', 'ELMEX DENTIFRICE JUNIOR 6/12 75ML', '', '', '4000', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(111, '', 'ELMEX ENFANT 0-6ANS', '', '', '4000', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(112, '', 'ATROPINE INJ', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(113, '', 'AUGMENTIN NOURISSON SP 30ML', '', '', '3500', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(114, '', 'AUGMENTIN ENFANT SP 60ML', '20', '', '6000', '', '', '', '', '', '', '', '2020-04-05 22:14:41', '', '', '', 'SXW66'),
(115, '', 'NYSTATIN CREM', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(116, '', 'AUGMENTIN CAPS 500/62.5MG ', '', '', '300', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(117, '', 'NYSTATINNE OVULE SF 14', '', '', '800', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(118, '', 'AVAMYS SPRAY NASAL 27.5 MICRO', '', '', '6100', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(119, '', 'NYSTATINE  OVULE 100.000UI 100', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(120, '', 'NYSTATINE SP 30ML ', '', '', '800', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(121, '', 'AZITHROMYCIN SP 200MG/5ML 15ML', '', '', '2100', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(122, '', 'AZITHROMYCIN TAB 500MG 3TABS', '', '', '1200', '', '', '', '', '', '', '', '2020-02-08 17:35:11', '', '', '', ''),
(123, '', 'BANDE DE GAZE 12PCS', '', '', '150', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(124, '', 'NYSTATINE TABS 500.000UI 100TABS OR VRAC', '', '', '80', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(125, '', 'BANDE ELASTIQUE 10CM', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(126, '', 'O.R.S', '', '', '150', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(127, '', 'BANDE ELASTIQUE 7.5CM', '', '', '800', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(128, '', 'BECOACTIN SP 200ML', '', '', '2300', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(129, '', 'EMBALLAGE DE MEDICAMENT', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(130, '', 'OLFEN- 100-5 RECTOCAPS SUPOSITOIR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(131, '', 'EMITINO SP 30ML', '', '', '2300', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(132, '', 'OLFEN GEL 50 GR', '', '', '3100', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(133, '', 'EMITINO TABS 10tabs', '', '', '250', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(134, '', 'OMEPRAZOLE TABS 100CAPS', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(135, '', 'BECOACTIN TAB 4MG', '', '', '120', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(136, '', 'ENTAMIZOLE 500MG 15CES', '', '', '300', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(137, '', 'ONACOF SP 100ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(138, '', 'EOSINE SOLUTION 20ML', '', '', '800', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(139, '', 'BETADINE GARGARISME 125ML', '', '', '2800', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(140, '', 'ONGUENT EMULSIFIANT 400GR', '', '', '8300', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(141, '', 'OPELE 50ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(142, '', 'ERYTHROMYCINE 125MG/100ML', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(143, '', 'BETADINE DERMIQUE 125ML', '', '', '2800', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(144, '', 'ORACEFAL 125MG 60ML POUDRE', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(145, '', 'ORACEFAL 250MG 60ML POUDRE', '', '', '4500', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(146, '', 'ORACEFAL 500MG 12GELLULES bms', '', '', '650', '', '', '', '', '', '', '', '2020-02-08 17:35:12', '', '', '', ''),
(147, '', 'BETAMETHASONE CREAM(UNIBET) 15GR', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(148, '', 'OROKEN 200MG B/8', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(149, '', 'BETAPYN 18TABS', '', '', '200', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(150, '', 'BETASERC TAB 8MG B/100', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(151, '', 'BETNEVAL CREAM 10GR', '', '', '1400', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(152, '', 'BICARBONATE DE SODIUM', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(153, '', 'OROKEN PDR SUSP 40MG/5ML NOUR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(154, '', 'OTIPAX SOL OURI', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(155, '', 'BISACODYL TAB 5MG 10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(156, '', 'ERYTHROMYCINE 250MG 10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(157, '', 'BISTOURI G22 100', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(158, '', 'BISTOURI G23 100', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(159, '', 'OTRIVINE GUTTE 0.05FL/10ML ENF', '', '', '2250', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(160, '', 'BISTOURI G24 100', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(161, '', 'ERYTHROMYCINE 250MG TAB 1000', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(162, '', 'BRONCHALENE AD SP 150ML', '', '', '3950', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(163, '', 'OTRIVINE GUTTE 0.1% /10ML AD', '', '', '2500', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(164, '', 'ETHINYL OESTRADIOL 50MCGR 15CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(165, '', 'BRONCHALENE ENF SP 150ML', '', '', '3600', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(166, '', 'BRUFEN TAB 400MG 30tabs', '', '', '120', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(167, '', 'OXYTOCINE INJ', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(168, '', 'EURAX 10% CREME 60GR 1TUBE', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(169, '', 'OXYDE DE ZINC PDR 50GR', '', '', '1400', '', '', '', '', '', '', '', '2020-02-08 17:35:13', '', '', '', ''),
(170, '', 'BRUFEN SP 100ML', '', '', '5600', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(171, '', 'PAIDOTERIN SP 100ML', '-1', '', '4000', '', '', '', '', '', '', '', '2020-04-01 16:10:30', '', '', '', ''),
(172, '', 'EXOFENE 160GR TALC(PEROXIDE DE ZINC)', '', '', '3900', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(173, '', 'BURNEM PDE(BURN-CUR)', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(174, '', 'FEBRILEX CO 50x4', '', '', '400', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(175, '', 'BUSCOPAN TAB 10MG 10X10', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(176, '', 'FEBRILEX SP 150ML', '', '', '2500', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(177, '', 'BUSCOPAN INJ', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(178, '', 'FEFOL 150MG 30CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(179, '', 'PAPAVERINE  INJECTION', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(180, '', 'CADISTIN SP 100ML', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(181, '', 'CAFERGOT TAB 100', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(182, '', 'PARACETAMOL 500MG 1000TABS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(183, '', 'CALCIUM INJ', '', '', '450', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(184, '', 'FELDENE 20MG B/15TABS ORALE', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(185, '', 'PARACETAMOL 500MG 10*10', '', '', '10', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(186, '', 'FELDENE SUPPO 20MG B/15', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(187, '', 'CALCIUM LACTATETAB 300MG 1000', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(188, '', 'PARACETAMOL INJECTABLE 120MG', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(189, '', 'PARACETAMOL JUNIOR TABS ', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(190, '', 'CALCIUM SANDOZ 1000MG', '', '', '280', '', '', '', '', '', '', '', '2020-02-08 17:35:14', '', '', '', ''),
(191, '', 'PARACETAMOL SP 100ML', '41', '', '600', '', '', '2020-08-01', '', '', '', '', '2020-04-01 16:48:07', '', '', '', '223'),
(192, '', 'FERCEFOL 150ML SP', '', '', '2000', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(193, '', 'CALCIUM SANDOZTAB 500MG', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(194, '', 'PARACETAMOL SP 60ML', '0', '', '500', '', '', '', '', '', '', '', '2020-04-01 16:48:07', '', '', '', ''),
(195, '', 'FER-SURFATE', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(196, '', 'PARACETAMOL SUPPO 125MG B/100', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(197, '', 'CAMPHREE PDE 10%', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(198, '', 'PARACETAMOL SUPPO 250MG 100', '', '', '150', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(199, '', 'CANDEREL EFF 100', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(200, '', 'FER-SURFATE+FORIC ACID(FERROLIC)', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(201, '', 'CANDEREL TABS 300', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(202, '', 'PARLODEL CPR 2.5MG 30CES', '', '', '266.66667', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(203, '', 'FLAGENTYL 500MG', '', '', '6100', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(204, '', 'PDE ANTTIHEMORROIDAIRE ', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(205, '', 'FLAGYL4% SP 120ML', '', '', '3700', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(206, '', 'PDE CAMPHREE 50GR', '', '', '800', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(207, '', 'CANDID V1 500MG 1', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(208, '', 'PDE ICHTYOLEE 10% 50GR', '', '', '1400', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(209, '', 'FLAGYL 500MG 10 OVULES', '', '', '340', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(210, '', 'CANDID V3 200MG 3', '', '', '2000', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(211, '', 'FLAGYL 500MG 14CES', '', '', '264.2857', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(212, '', 'PENI BENZATHINE INJ 2.4MG', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(213, '', 'CANDIDERM CREAM 15GR', '', '', '1700', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(214, '', 'PENI V 250MG SF 10*10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:15', '', '', '', ''),
(215, '', 'FLAMMAZINE 50GR CREME', '', '', '4700', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(216, '', 'PENI V 250MG TABS 1000TABS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(217, '', 'FLOXSOL 0.3%SLN OPHT 5ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(218, '', 'PERMANGANATE DE POTASSIUM 500MG', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(219, '', 'FLUCAZOL100MG 1X10(FLUCONAZOLE)', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(220, '', 'PHOSPHARUGEL SACHETS 26', '', '', '250', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(221, '', 'FLUCOLDEX SP 100ML', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(222, '', 'PIROXICAM TABS 10*10 20GR', '', '', '40', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(223, '', 'PLAISIR C/12', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(224, '', 'POLARAMINE 2MG 30CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(225, '', 'POLYGYNAX 12 OVULE', '', '', '590', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(226, '', 'POSITON 30GR CREME 1 TUBE FAES', '8', '', '500', '', '', '', '', '', '', '', '2020-04-05 20:47:32', '', '', '', '500'),
(227, '', 'POSITON PDE 30GR', '', '', '4200', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(228, '', 'POTENCIATOR BUVABLE 5GR 20 AMP 1', '', '', '350', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(229, '', 'POVIDONE 200ML', '', '', '1500', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(230, '', 'POVIDONE 500ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(231, '', 'POWERGRA 100MG', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(232, '', 'PPF  4MEGA', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(233, '', 'PREDNISOLONE CES 1000TABS', '', '', '10', '', '', '', '', '', '', '', '2020-02-08 17:35:16', '', '', '', ''),
(234, '', 'PREDNISOLONE COLLYRE', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(235, '', 'PRIMOLUT NOR 10MG 30CES  BAYER', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(236, '', 'PROMETHAZINE SP 60ML', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(237, '', 'FLUCOLDEX TABS 12X10', '', '', '58.333', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(238, '', 'PROMETHAZINE TABS 25MG 1000CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(239, '', 'FLUCON COLLYRE 3ML', '', '', '2500', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(240, '', 'PROPRANOLOL CES 10*10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(241, '', 'PROVIRON 25MG 20CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(242, '', 'FLUDITEC SP 2% ENF 125ML', '', '', '2800', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(243, '', 'PRUDENCE', '', '', '200', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(244, '', 'FLUDITEC SP 5% AD 125ML', '', '', '3000', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(245, '', 'QUININE INJ', '', '', '600', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(246, '', 'FLUFED CES B/100', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(247, '', 'QUININE SULPHATE 300MG 10*10', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(248, '', 'FLUOCARIL 250 MENTHE 75ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(249, '', 'RELCEL SP  180ML ', '', '', '2100', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(250, '', 'FORIC ACIDE 1000TABS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(251, '', 'RELIEF TABS', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(252, '', 'REXE- DINE BUCCALE SP 100ML', '', '', '1500', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(253, '', 'RHINATHIOL ENFANT SP 125ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:17', '', '', '', ''),
(254, '', 'RHINATIOL ADULTE SP 125ML', '', '', '3400', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(255, '', 'FUCIDINE CREME 2% 15GR', '', '', '3200', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(256, '', 'FUCIDINE PDE 2% 15GR', '', '', '3200', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(257, '', 'RHINATIOL PROMETHAZINE SP 125ML', '', '', '3950', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(258, '', 'RINGER  LACTATE', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(259, '', 'ROVAMYCINE 3MUI 10CES SANOFI AV', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(260, '', 'GAMALATE 80ML SP FERRER', '', '', '5600', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(261, '', 'SALBUTAMOL SP 100ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(262, '', 'GAMALATE B6 20CES FERRER', '', '', '290', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(263, '', 'SALBUTAMOL SPRAY', '', '', '2100', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(264, '', 'SALBUTAMOL TABS 1000TABS', '', '', '10', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(265, '', 'SALCOF 100ML', '', '', '1200', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(266, '', 'GANT NON STERILLE MEDIUM', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(267, '', 'GANT STERILLE 7.5', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(268, '', 'SALIMIA OINTMENT ', '', '', '1100', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(269, '', 'SENSODYNE RAPID 75 ML', '', '', '4900', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(270, '', 'SERINGUE 10ML', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(271, '', 'SERINGUE 2ML', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(272, '', 'SERINGUE 5ML', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(273, '', 'SOLUTION PHYSIOLOGIQUE/ EAU PHY', '', '', '800', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(274, '', 'SONADERM CREAM 10GR', '', '', '1300', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(275, '', 'GANT STERILLE 8CM', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(276, '', 'SPARADRAP 10CM', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:18', '', '', '', ''),
(277, '', 'SPARADRAP 2.5CM', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(278, '', 'GAVISCON 250ML SP', '', '', '3400', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(279, '', 'CAPTOPRIL TAB 25MG 10X10', '', '', '30', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(280, '', 'CARYL EXPECTORANT 100ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(281, '', 'GEL-LARME OPHTALMIQUE 10GR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(282, '', 'GENTAMYCIN COLLYRE', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(283, '', 'CATGUT 2% B/12', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(284, '', 'GENTAMYCIN INJECTABLE', '', '', '150', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(285, '', 'CATGUT 3% B/12', '', '', '600', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(286, '', 'CATHETER G18', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(287, '', 'CATHETER G20', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(288, '', 'GLIBENCLAMIDE TABS 10X10', '', '', '15', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(289, '', 'CATHETER G22', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(290, '', 'GLUCOSEE 5% 500ML', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(291, '', 'CATHETER G24', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(292, '', 'GLUCOSEE 50% 100ML', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(293, '', 'CEFIXIME TAB 200MG 10', '', '', '210', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(294, '', 'CEFOTAXIME INJ 1GR', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(295, '', 'GLYCERINE SUPPOS ADULT B/10', '', '', '320', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(296, '', 'CEFTRIAXONE INJ 1GR', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(297, '', 'GLYCERINE SUPPOS ENF B/10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(298, '', 'GOOD MORNING CES 10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(299, '', 'CEFTRIAXONE INJ+WATER 1GR', '', '', '600', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(300, '', 'SPARADRAP 5CM', '', '', '1150', '', '', '', '', '', '', '', '2020-02-08 17:35:19', '', '', '', ''),
(301, '', 'GOOD MORNING SP 100ML', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(302, '', 'SPARADRAP 7.5', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(303, '', 'CELESTAMINE TAB 30', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(304, '', 'CELESTENE TAB 2MG 20', '', '', '230', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(305, '', 'CELESTENE GTTE 0.05% 30ML', '', '', '4900', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(306, '', 'CETIRIZINE TAB 10MG 10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(307, '', 'CETIRIZINE SP 60ML', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(308, '', 'CHLORAMPHENICOL SP 100ML', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(309, '', 'CHLORAMPHENICOL INJ 1GR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(310, '', 'CHLORAMPHENICOL GEL 250MG 10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(311, '', 'CHLORAMPHENICOL EYE DROPS 10ML', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(312, '', 'CHLORAMPHENICOL EAR DROPS 10ML', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(313, '', 'CHLORAMPHENICOL GEL 250MG 1000', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(314, '', 'CHLORPHENIRAMINE TAB 4MG 1000tabs', '', '', '10', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(315, '', 'CIMETIDINE TAB 200MG 10X10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(316, '', 'CIMETIDINE TAB 400MG 10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(317, '', 'CIMETIDINE INJ 200MG/2ML', '', '', '600', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(318, '', 'CIPROFLOXACIN COLLYRE 0.3% 5ML', '', '', '1200', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(319, '', 'CIPROFLOXACIN TAB 500MG 10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(320, '', 'CIPRO-TRO TAB 500MG', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(321, '', 'CLAMOXYL SP 125MG 60ML', '', '', '1300', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(322, '', 'GRIPPE WATER SP 100ML', '', '', '600', '', '', '', '', '', '', '', '2020-02-08 17:35:20', '', '', '', ''),
(323, '', 'CLAMOXYL SP 250MG 60ML', '', '', '1850', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(324, '', 'GRISEOFULVIN 125MG 10X10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(325, '', 'CLAMOXYL TAB 500MG 12tabs', '', '', '116.66', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(326, '', 'GRISEOFULVINE 250MG TAB 100', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(327, '', 'GRISEOFULVINE 500MG TAB 100', '', '', '70', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(328, '', 'CLARICOS TAB 500MG 14', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(329, '', 'GRISEOFULVINE PDE/CREAM', '', '', '2800', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(330, '', 'GYNO-DAKTARIN 200MG 7 OVULES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(331, '', 'GYNO-DAKTARIN 400MG 3OVULES', '', '', '5600', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(332, '', 'CHLORPHENIRAMINE TAB 4MG 10X10', '', '', '20', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(333, '', 'CHLORPHENIRAMINE SP 60ML', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(334, '', 'CLARICOS SP 125MG 75ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(335, '', 'CLOTRIMAZOLE OV B/6', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(336, '', 'CLOTRIMAZOLE CREAM 15GR', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(337, '', 'CLOXACILLIN SP 125MG/5ML 100ML', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(338, '', 'CLOXACILLIN CAPS 250MG 10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(339, '', 'CLOXACILLIN CAPS 250MG 1000tabs', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(340, '', 'CLOXACILLIN INJ 500MG', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(341, '', 'COARTEM TAB 24', '', '', '145.84', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(342, '', 'COFTA TAB 10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:21', '', '', '', ''),
(343, '', 'SPASFON 10 SUPPOS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(344, '', 'COLCHICINE TAB OPOCALICIUM 1MG 20', '', '', '200', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(345, '', 'COLDAMOL SP 100ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(346, '', 'SPASFON 80MG 30CES', '', '', '115', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(347, '', 'COLDAREST TAB 100tabs', '', '', '300', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(348, '', 'COLDCAP CAPS 8X12', '', '', '66.667', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(349, '', 'COLDCAP SP 100ML', '', '', '1200', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(350, '', 'SPECTINOMYCIN INJ 2GR/ GONO', '', '', '7000', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(351, '', 'COLFLU CAPS 120MG', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(352, '', 'STOPACID SP 100ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(353, '', 'HALOPERIDOL 5MG100TABS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(354, '', 'COMPRESSE ROULEAU 90X100 1.5kg', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(355, '', 'STUGERON CES 25MG', '', '', '70', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(356, '', 'COMPRESSE ROULEAU 90CMX50 0.5kg', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(357, '', 'SUPRADYN EFF 10 CES', '', '', '540', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(358, '', 'COMPRESSE ROULEAU 90CMX70 1kg', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(359, '', 'SUR EAU N12', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(360, '', 'TEMFLAM 100ML( PARACET+IBUPRF)', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(361, '', 'COMPRESSE STERILE 10x10cm', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(362, '', 'TEST DE GROSSESSE', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(363, '', 'CONFIANCE INJ', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(364, '', 'TETRACYCLINE OPHTARMIQUE', '', '', '300', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(365, '', 'CONFIANCE TAB ', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:22', '', '', '', ''),
(366, '', 'TETRACYCLINE PDE DERMIQUE', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(367, '', 'COTRIMOXAZOLE SP 100ML/BACTRIM', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(368, '', 'THERMOMETRE A MERCURE', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(369, '', 'COTRIMOXAZOLE JUNIOR TAB 120MG 1000tabs', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(370, '', 'THERMOMETRE  DIGITAL', '', '', '2800', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(371, '', 'COTRIMOXAZOLE TAB 480MG 1000tabs', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(372, '', 'THIAMINE CES 1000TABS', '', '', '30', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(373, '', 'COTRIMOXAZOLE TAB 480MG 10X10', '', '', '40', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(374, '', 'TIMOLOR 0.5% COLLYRE 5ML', '', '', '4000', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(375, '', 'HED REST 100 CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(376, '', 'TINIDAZOLE 500MG 100 TABS', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(377, '', 'HEDEX TABS 10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(378, '', 'COTRIMOXAZOLE SP 60ML', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(379, '', 'TOPIC CREME LOTION 500ML', '', '', '19500', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(380, '', 'TOPLEXIL SP 150ML', '', '', '4000', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(381, '', 'COTRIMOXAZOLE TAB 960MG 10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(382, '', 'HEDON TABS 100', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(383, '', 'TRAMADOL 50MG 10*10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(384, '', 'HEEL CREAM', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(385, '', 'TRIBEES FORTE 20TABS', '', '', '200', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(386, '', 'TROUSSE DE PERFUSSION ', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(387, '', 'COTTON 100GM', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(388, '', 'UNIBROL 250MG TABS 24', '', '', '350', '', '', '', '', '', '', '', '2020-02-08 17:35:23', '', '', '', ''),
(389, '', 'COTTON 500GM', '', '', '2800', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(390, '', 'HICONCIL 250MG 60ML POUDRE', '', '', '2100', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(391, '', 'UNIBROL SP 60ML', '', '', '2500', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(392, '', 'COTTON 50GM', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(393, '', 'HOMAGON CAPS 10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(394, '', 'CRAYON NITRATE DARGENT', '', '', '3000', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(395, '', 'UNIGEL SP 180ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(396, '', 'CROMSOL COLLYRE 5ML', '', '', '1200', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(397, '', 'HYDROCORTISONE CREAM 15GR', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(398, '', 'CUTACNYL GEL 10% 40GR', '', '', '3800', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(399, '', 'HYDROCORTISONE INJECTABLE', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(400, '', 'CUTACNYL GEL 5% 40GR', '', '', '4000', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(401, '', 'UNIGENTYL  4CES', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(402, '', 'UTROGESTAN 100MG 30CES', '', '', '295', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(403, '', 'DACOF SP 100ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(404, '', 'DACOLD CAPS10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(405, '', 'UTROGESTAN 200MG VAG 45 OVULES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(406, '', 'DACOLD SP 100ML', '', '', '800', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(407, '', 'DAFLON TABS 500MG', '', '', '220', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(408, '', 'DAKIN SOLUTION 120ML', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(409, '', 'UVEX 500MG ( LEVOFLOXACIN )', '', '', '280', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(410, '', 'DAKTACORT CREAM 15GR', '', '', '3500', '', '', '', '', '', '', '', '2020-02-08 17:35:24', '', '', '', ''),
(411, '', 'VASELINE 150GR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(412, '', 'DAKTARIN CREAM 15GR', '', '', '2800', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(413, '', 'VASELINE 250 GR', '', '', '2600', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(414, '', 'HYDROCORTISONE OPHTALMIQUE', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(415, '', 'DAWAVATE CREAM', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(416, '', 'VASELINE 500GR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(417, '', 'DEBRIDAT125MG SP ENFT&BB', '', '', '4200', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(418, '', 'VENOSMIL 200MG B/20 GEL', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(419, '', 'VERZOL 4% SP 10ML', '', '', '1200', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(420, '', 'DECONTRACTYL TABS 250MG 50', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(421, '', 'DECONTRACTYL BAUME 80GR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(422, '', 'HYDROCORTISONE PDE 15GR', '', '', '600', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(423, '', 'VERMOX SP 20MG/30ML( SPECIALITE)', '', '', '2800', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(424, '', 'HYDROXYDE DALLUMINIUM 370MG 1000tabs', '', '', '10', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(425, '', 'VERZOL CES 400MG', '', '', '1150', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(426, '', 'DEPAKINE SP 57.64MG/ML 150ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(427, '', 'DEPAKINE TABS 200MG 40', '', '', '112.5', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(428, '', 'VIOLET DE GENTIANE 20ML', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', ''),
(429, '', 'VITAMIN B COMPLEX  TABS 1000', '', '', '20', '', '', '', '', '', '', '', '2020-02-08 17:35:25', '', '', '', '');
INSERT INTO `items` (`id`, `barcode`, `item_name`, `quantity`, `price`, `cost`, `total`, `unit`, `expired_date`, `taxes`, `stock`, `supplier`, `done`, `date_done`, `category`, `measure`, `lot`, `sdc_n`) VALUES
(430, '', 'IBUPROFEN SP 100MG 60ML', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(431, '', 'VITAMIN B COMPLEX INJECTABLE', '', '', '300', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(432, '', 'IBUPROFENE TABS 200MG 1000tabs', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(433, '', 'IBUPROFENE TABS 200MG 10X10', '', '', '20', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(434, '', 'VITAMIN C TABS 1000', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(435, '', 'IBUPROFENE TABS 400MG 1000tabs', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(436, '', 'IBUPROFENE TABS 400MG 500tabs', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(437, '', 'VITAMIN K INJECTABLE', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(438, '', 'IBUPROFENE TABS 400MG 10X10', '', '', '30', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(439, '', 'VOLTARENE 100MG  15CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(440, '', 'IBUPROFENE SP 100ML', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(441, '', 'INDOCID CAPS 25MG 1000tabs', '', '', '10', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(442, '', 'WHITE FIELD PDE', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(443, '', 'INDOMETHACIN CAPS 25MG 10X10', '', '', '20', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(444, '', 'INDOMTHACIN SUPPO 100MG 100', '', '', '150', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(445, '', 'XALATAN COLLYRE 0.005% 2.5ML1FL', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(446, '', 'INNOTEX COCKTAIL B/3 CONDOMS', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(447, '', 'XYLOMETAZOLINE HYDROCLORIDE ADULTE', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(448, '', 'INNOTEX NATUREL B/3 CONDOMS', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(449, '', 'INNOTEX PLUS B/3 CONDOMS', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(450, '', 'XYLOMETAZOLINE HYDROCLORIDE ENFANT', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:26', '', '', '', ''),
(451, '', 'INNOTEX RETARDANT B/3CONDOMS', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(452, '', 'INTETRIX CAPS B/20', '', '', '200', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(453, '', 'ZEDCAL CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(454, '', 'FRUSEMIDE CES 1000TABS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(455, '', 'ZENTEL SP 4% 10ML', '', '', '2900', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(456, '', 'KALIFUMA 4GR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(457, '', 'ZENTEL 400MG CES B/ 1', '', '', '1400', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(458, '', 'FRUSEMIDE CES 10X10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(459, '', 'LEVAMIZOLE 40MG 1000TABS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(460, '', 'KENACORT RETARD 40MG/1ML 1AMP', '', '', '3700', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(461, '', 'ZINC SULFATE 100CES', '', '', '40', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(462, '', 'LIDOCAINE 2%', '', '', '800', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(463, '', 'ZINNAT 125MG SP 40ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(464, '', 'LOCKIT SP 100ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(465, '', 'KETOCONAZOL CREAM 15GR', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(466, '', 'ZINNAT 125MG SP 80ML', '', '', '9550', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(467, '', 'KETOCONAZOLE tabs 200mg 10x10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(468, '', 'KOF OFF SP 100ML', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(469, '', 'ZITHROCARE ( AZYTHROMYXCIN)CES 500MG B/3', '', '', '2100', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(470, '', 'KOFLYN SP PINEAPPLES AND RASBERRY', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(471, '', 'ZWITSAL SAVON 2*90GR', '', '', '2800', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(472, '', 'LABELLO CLASSIC ', '', '', '4800', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(473, '', 'LAME PORTE OBJET ', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:27', '', '', '', ''),
(474, '', 'LAMELLE', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:28', '', '', '', ''),
(475, '', 'LOCKIT SP 30ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:28', '', '', '', ''),
(476, '', 'LARMES  ARTIFICIELLES COLLYRE 10ML', '', '', '2300', '', '', '', '', '', '', '', '2020-02-08 17:35:28', '', '', '', ''),
(477, '', 'LOCKIT TABS 10MG 20', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:28', '', '', '', ''),
(478, '', 'LASILIX TABS 40MG 30', '', '', '140', '', '', '', '', '', '', '', '2020-02-08 17:35:28', '', '', '', ''),
(479, '', 'LASILIX FAIBLE TABS 20MG 30', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:28', '', '', '', ''),
(480, '', 'LOPERAMIDE 10X10 TABS', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:28', '', '', '', ''),
(481, '', 'LORTAN H(LOSARTAN POTASSIUM 50MG)', '', '', '230', '', '', '', '', '', '', '', '2020-02-08 17:35:28', '', '', '', ''),
(482, '', 'LORTAN TABS', '', '', '185', '', '', '', '', '', '', '', '2020-02-08 17:35:28', '', '', '', ''),
(483, '', 'LUTENYL 10 CES', '', '', '560', '', '', '', '', '', '', '', '2020-02-08 17:35:28', '', '', '', ''),
(484, '', 'MAALOX SP 180ML', '', '', '3100', '', '', '', '', '', '', '', '2020-02-08 17:35:28', '', '', '', ''),
(485, '', 'MARA MOJA TAB 10X10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:29', '', '', '', ''),
(486, '', 'MAXIDEX COLLYRE 5ML', '', '', '1900', '', '', '', '', '', '', '', '2020-02-08 17:35:29', '', '', '', ''),
(487, '', 'MAXIDROL COLLYRE 5ML', '', '', '3300', '', '', '', '', '', '', '', '2020-02-08 17:35:29', '', '', '', ''),
(488, '', 'MEBENDAZOLE 100MG 1000/VERMOX', '', '', '16.6666667', '', '', '', '', '', '', '', '2020-02-08 17:35:29', '', '', '', ''),
(489, '', 'MEBENDAZOLE 100MG 10X10/VERMOX', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:29', '', '', '', ''),
(490, '', 'MEBENDAZOLE SP 30ML/VERMOX', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:29', '', '', '', ''),
(491, '', 'MEBENDAZOLE TABS B/6/NATOA', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:29', '', '', '', ''),
(492, '', 'MELADININE 0.1% SOL', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:29', '', '', '', ''),
(493, '', 'METFORMINE 500MG B/100(DIAPHAGE)', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:29', '', '', '', ''),
(494, '', 'METHYLDOPAN 250MG 10X10', '', '', '40', '', '', '', '', '', '', '', '2020-02-08 17:35:29', '', '', '', ''),
(495, '', 'METOCLOPRAMIDE INJ', '', '', '300', '', '', '', '', '', '', '', '2020-02-08 17:35:29', '', '', '', ''),
(496, '', 'METOCLOPRAMIDE TABS 10X10', '', '', '20', '', '', '', '', '', '', '', '2020-02-08 17:35:29', '', '', '', ''),
(497, '', 'METRONIDAZOLE 250MG 1000/FLAGYL', '', '', '16.67', '', '', '', '', '', '', '', '2020-02-08 17:35:29', '', '', '', ''),
(498, '', 'METRONIDAZOLE 250MG SF 10X10/FLAGYL', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:29', '', '', '', ''),
(499, '', 'METRONIDAZOLE INJ /FLAGYL', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:29', '', '', '', ''),
(500, '', 'METRONIDAZOLE SP 100ML/FLAGYL', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:30', '', '', '', ''),
(501, '', 'METRONIDAZOLE SP 60ML/FLAGY', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:30', '', '', '', ''),
(502, '', 'MICONAZOLE CREAM 15GR', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:30', '', '', '', ''),
(503, '', 'MOTILIUM 10MG 30CES ORALE', '', '', '130', '', '', '', '', '', '', '', '2020-02-08 17:35:30', '', '', '', ''),
(504, '', 'MOTILIUM ENFANT 30MG 6SUPPO', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:30', '', '', '', ''),
(505, '', 'MULTIVITAMINE 100ML/POLVIT', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:30', '', '', '', ''),
(506, '', 'MULTIVITAMINE 60ML/POLVIT', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:30', '', '', '', ''),
(507, '', 'MULTIVITAMINE TABS 1000/POLVIT', '', '', '20', '', '', '', '', '', '', '', '2020-02-08 17:35:30', '', '', '', ''),
(508, '', 'MYCOLOG PDE 15 GR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:30', '', '', '', ''),
(509, '', 'NAAXIA COLLYRE 5ML', '', '', '4200', '', '', '', '', '', '', '', '2020-02-08 17:35:30', '', '', '', ''),
(510, '', 'NAUMA PDE 20GR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:31', '', '', '', ''),
(511, '', 'NELGRA 100MG 4/SILDENAFIL', '', '', '250', '', '', '', '', '', '', '', '2020-02-08 17:35:31', '', '', '', ''),
(512, '', 'NELGRA 50MG 4/SILDENAFIL', '', '', '250', '', '', '', '', '', '', '', '2020-02-08 17:35:31', '', '', '', ''),
(513, '', 'NEOMEDROL ACNE LOTION 25ML', '', '', '6300', '', '', '', '', '', '', '', '2020-02-08 17:35:31', '', '', '', ''),
(514, '', 'NEOMYCIN PDE 30GR', '', '', '600', '', '', '', '', '', '', '', '2020-02-08 17:35:31', '', '', '', ''),
(515, '', 'NEUROBA 300MG TABS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:31', '', '', '', ''),
(516, '', 'NICLOSAMIDE 500MG 1000TABS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:31', '', '', '', ''),
(517, '', 'NIFEDIPINE 10MG 10X10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:31', '', '', '', ''),
(518, '', 'NIFEDIPINE 20MG 10X10', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:31', '', '', '', ''),
(519, '', 'NIFLUGEL 2.5% 60 GR', '', '', '3100', '', '', '', '', '', '', '', '2020-02-08 17:35:32', '', '', '', ''),
(520, '', 'FER SULPHATE +FOLIC ACID 10X10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:32', '', '', '', ''),
(521, '', 'THIOPENTAL 500MG INJ', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:32', '', '', '', ''),
(522, '', 'WATER FOR INJECTION 10ML 50S', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:32', '', '', '', ''),
(523, '', 'FERROPLEX SP 100ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:32', '', '', '', ''),
(524, '', 'KENACORT RETARD 80MG/2ML INJ', '', '', '7700', '', '', '', '', '', '', '', '2020-02-08 17:35:32', '', '', '', ''),
(525, '', 'OLFEN 100MG DEPOCAPS B/10', '', '', '490', '', '', '', '', '', '', '', '2020-02-08 17:35:32', '', '', '', ''),
(526, '', 'GLYCERINE SUPPOS BEBE B/10', '', '', '300', '', '', '', '', '', '', '', '2020-02-08 17:35:32', '', '', '', ''),
(527, '', 'ACIMED 625 MG TABS 10X5', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:32', '', '', '', ''),
(528, '', 'ARTEMETHER20MG&LUMEFANTRINE120MG TABS B/24', '', '', '125', '', '', '', '', '', '', '', '2020-02-08 17:35:32', '', '', '', ''),
(529, '', 'BRONCATHIOL SP ADULTE 150ML', '', '', '3500', '', '', '', '', '', '', '', '2020-02-08 17:35:32', '', '', '', ''),
(530, '', 'MUCOLYN SYRUP 100ML', '', '', '1200', '', '', '', '', '', '', '', '2020-02-08 17:35:32', '', '', '', ''),
(531, '', 'FOLEY CATHETER CH 16', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:32', '', '', '', ''),
(532, '', 'HALOTHANE 250ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:32', '', '', '', ''),
(533, '', 'LYSINE ACETYLSALICYLATE 0.9GR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:33', '', '', '', ''),
(534, '', 'PAPAVERINE 40MG 1000CES ', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:33', '', '', '', ''),
(535, '', 'FUROSEMIDE INJECTABLE', '', '', '150', '', '', '', '', '', '', '', '2020-02-08 17:35:33', '', '', '', ''),
(536, '', 'PREGNASAFE CAPS B/30', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:33', '', '', '', ''),
(537, '', 'TENSIOMETRE DIGITAL', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:33', '', '', '', ''),
(538, '', 'PROVIRON CES 25MG B/50', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:33', '', '', '', ''),
(539, '', 'FLEXDOL 10CES', '', '', '170', '', '', '', '', '', '', '', '2020-02-08 17:35:33', '', '', '', ''),
(540, '', 'ONGUENT EMULSIFIANT 200GR', '', '', '4400', '', '', '', '', '', '', '', '2020-02-08 17:35:33', '', '', '', ''),
(541, '', 'LRJ 30MG COLLYRE 10ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:33', '', '', '', ''),
(542, '', 'SEKROL 30MG SP ADULTE 150ML', '', '', '4900', '', '', '', '', '', '', '', '2020-02-08 17:35:33', '', '', '', ''),
(543, '', 'SEKROL SP 15MG 100ML ENFANT', '16', '', '600', '', '', '', '', '', '', '', '2020-04-05 21:24:28', '', '', '', 'xd087'),
(544, '', 'DAONIL 5MG 100CES', '', '', '120', '', '', '', '', '', '', '', '2020-02-08 17:35:33', '', '', '', ''),
(545, '', 'THIOBACTIN SP 60ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:33', '', '', '', ''),
(546, '', 'VERMOX 500MG 1CES', '', '', '1900', '', '', '', '', '', '', '', '2020-02-08 17:35:33', '', '', '', ''),
(547, '', 'MAALOX 30 SACHETS', '', '', '200', '', '', '', '', '', '', '', '2020-02-08 17:35:33', '', '', '', ''),
(548, '', 'GYNO DAKTARIN CREME', '', '', '7000', '', '', '', '', '', '', '', '2020-02-08 17:35:33', '', '', '', ''),
(549, '', 'THERMO CREME', '', '', '4650', '', '', '', '', '', '', '', '2020-02-08 17:35:33', '', '', '', ''),
(550, '', 'CHIBRO CADRON COLLYRE', '', '', '3000', '', '', '', '', '', '', '', '2020-02-08 17:35:34', '', '', '', ''),
(551, '', 'GLUCOPHAGE 850MG B/100CES', '', '', '60', '', '', '', '', '', '', '', '2020-02-08 17:35:34', '', '', '', ''),
(552, '', 'NEO CODION SP ENF 125ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:34', '', '', '', ''),
(553, '', 'NEO CODION SP NOURISSON 125ML', '', '', '2800', '', '', '', '', '', '', '', '2020-02-08 17:35:34', '', '', '', ''),
(554, '', 'POLYDEXA GTTES OTIQUE 10ML', '', '', '3400', '', '', '', '', '', '', '', '2020-02-08 17:35:34', '', '', '', ''),
(555, '', 'PREDNISONE 5MG 10X10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:34', '', '', '', ''),
(556, '', 'PROMETHAZINE HYDROCHLORIDE 25MG 10X10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:34', '', '', '', ''),
(557, '', 'SALBUTAMOL TABS 4MG 10X10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:34', '', '', '', ''),
(558, '', 'ACICLOVIR CREAM 10GR', '', '', '1200', '', '', '', '', '', '', '', '2020-02-08 17:35:34', '', '', '', ''),
(559, '', 'AMINOSIDINE SULPHATE125MG/60ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:34', '', '', '', ''),
(560, '', 'AMINOSIDINE SULPHATE 250MG', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:34', '', '', '', ''),
(561, '', 'ZINNAT CES 250MG B/8', '', '', '450', '', '', '', '', '', '', '', '2020-02-08 17:35:34', '', '', '', ''),
(562, '', 'AMITRIPTYLINE 25MG TABS 10X10', '', '', '30', '', '', '', '', '', '', '', '2020-02-08 17:35:34', '', '', '', ''),
(563, '', 'FERRO B SP 100ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:35', '', '', '', ''),
(564, '', 'CIPROFLOXACIN INJ 02%', '', '', '450', '', '', '', '', '', '', '', '2020-02-08 17:35:35', '', '', '', ''),
(565, '', 'CLOXACILLIN 500MG 10X10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:35', '', '', '', ''),
(566, '', 'CALCIUM LACTATE 300MG TABS 100', '', '', '40', '', '', '', '', '', '', '', '2020-02-08 17:35:35', '', '', '', ''),
(567, '', 'ALDOMET 250MG 100CES', '', '', '170', '', '', '', '', '', '', '', '2020-02-08 17:35:35', '', '', '', ''),
(568, '', 'FERCEFOL 3X10CES', '', '', '80', '', '', '', '', '', '', '', '2020-02-08 17:35:35', '', '', '', ''),
(569, '', 'PYOREX DENTIFRICE', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:35', '', '', '', ''),
(570, '', 'NEUROCARE CAPS 30CES', '', '', '360', '', '', '', '', '', '', '', '2020-02-08 17:35:35', '', '', '', ''),
(571, '', 'NEUROCARE PLUS', '', '', '510', '', '', '', '', '', '', '', '2020-02-08 17:35:35', '', '', '', ''),
(572, '', 'COTRMOXAZOLE 960MG 1000CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:35', '', '', '', ''),
(573, '', 'CLOMID CES 50MG B/10', '', '', '510', '', '', '', '', '', '', '', '2020-02-08 17:35:35', '', '', '', ''),
(574, '', 'CLOFAINS 10 TAB/BOX', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(575, '', 'ESIDREX CES 25MG B/20', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(576, '', 'FORLAX SACHET B/20', '', '', '300', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(577, '', 'IBIDROXIL CAPS 500MG B/8', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(578, '', 'IBIDROXIL SOLUTION 250MG SP 60ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(579, '', 'MOTILIUM SP ENFT', '', '', '5800', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(580, '', 'NO-SPA 40MG 100CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(581, '', 'TOTHEMA 20AMP', '', '', '350', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(582, '', 'EFFERALGAN 500MG 16CES EFF', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(583, '', 'VASELINE BLANCHE 250GR(KIPHARMA)', '', '', '2600', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(584, '', 'VASELINE BLANCHE 500GR(KIPHARMA)', '', '', '4500', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(585, '', 'ACTIFED SP DRY', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(586, '', 'OVACARE TABS 30S', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(587, '', 'OLIGOCARE TABS 30S', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(588, '', 'METFORMINE CES 850MG 10X10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(589, '', 'ASPIRIN 100MG TABS 1000''S', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(590, '', 'CLARITHROMYCIN 500MG TABS 1X10', '', '', '350', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(591, '', 'BRONQUIDIAZINA SP', '', '', '4400', '', '', '', '', '', '', '', '2020-02-08 17:35:36', '', '', '', ''),
(592, '', 'MICROLAX BEBE', '', '', '2000', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(593, '', 'ENTAMIZOLE SP 250MG 100ML', '', '', '4100', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(594, '', 'DERMOBACTER125ML', '', '', '2250', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(595, '', 'MASQUE DE PROTECTION B/50', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(596, '', 'TULLE GRAS 10X10CM', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(597, '', 'VENTOLIN SP', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(598, '', 'POLYCLACTINE 0', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(599, '', 'SERINGUE A INSULINE', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(600, '', 'GAUZE ROLL 90*91', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(601, '', 'FOLEY CATHETER CH18', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(602, '', 'STREPSIL MIEL CITRON 36 PASTILLES', '', '', '250', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(603, '', 'STREPSIL VITC 36 PASTILLES', '', '', '250', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(604, '', 'TRAMADOL INJ', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(605, '', 'VANTOLIN SPRAY', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(606, '', 'HICONCIL 125MG/5ML SP 60ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(607, '', 'THIOBACTIN 500MG 24CES', '', '', '470', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(608, '', 'VENTOLINE SPRAY 100MG', '', '', '2500', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(609, '', 'VERMOX 100MG 6CES', '', '', '1900', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(610, '', 'DOXY 200MG 8CES', '', '', '235', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(611, '', 'CHLORPROMAZINE INJECT', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:37', '', '', '', ''),
(612, '', 'XYLOCAINE SPRAY', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(613, '', 'COTTON HYDROPHILE 500GR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(614, '', 'ENTAMIZOLE 250MG 30CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(615, '', 'ANTALGEX-T 20GEL', '', '', '90', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(616, '', 'SUPER WELGRA 100MG', '', '', '375', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(617, '', 'PROFENID 100MG 12 SUPPO', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(618, '', 'BIPROFENID 100MG 20TAB', '', '', '160', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(619, '', 'SELEXID 200MG 12CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(620, '', 'NIFLURIL SUPPO 700MG ADULTES B/8', '', '', '350', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(621, '', 'AMAREL 4MG 30CES', '', '', '590', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(622, '', 'GRAMOCEF-O 200MG B/10', '', '', '980', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(623, '', 'CLARITYNE CES 10MGB/30', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(624, '', 'HELMINTOX 250MG 3CES/BLISTER', '', '', '1400', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(625, '', 'ESOZ 20MG(ESOMEPRAZOLE) B/10', '', '', '120', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(626, '', 'GEL POUR ECHOGRAPHIE 250ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(627, '', 'PAPAVERINE 40MG 2ML 100AMP', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(628, '', 'SERUM ANTITETANIQUE 1500UI', '', '', '4000', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(629, '', 'AIGUILLE VACCUTAINER', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(630, '', 'SUXAMETHONIUM 50MG/ML INJ', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(631, '', 'VIOLET DE GENTIANE 25MG PDRE', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(632, '', 'MOTILIUM SP BUV 200ML ', '', '', '3300', '', '', '', '', '', '', '', '2020-02-08 17:35:38', '', '', '', ''),
(633, '', 'FRANCE LAIT 400G 0-6 MOIS', '', '', '9100', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(634, '', 'PEDIFEN SP 100ML', '', '', '3100', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(635, '', 'SECNIDAZOLE 1GR ', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(636, '', 'AERIUS CES 5MG B/15', '', '', '580', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(637, '', 'TERPONE SP 180ML AD', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(638, '', 'TERPONE SP ENF', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(639, '', 'CATGUT CHROME 1 12S', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(640, '', 'GELOFUSINE 4% 500ML HAEMACEL', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(641, '', 'METRONIDAZOLE INJ 5MG /MI', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(642, '', 'GAUZE 1.5KG', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(643, '', 'NIFLURIL 250MG', '', '', '95', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(644, '', 'KETAMINE 50MG/ML INJ.10ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(645, '', 'SONATEC 250ML', '', '', '2100', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(646, '', 'paractamol', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(647, '', 'BETNEVAL CREAM 30GR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(648, '', 'COMPRESS STERILE 20X20CM 10PCS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(649, '', 'DOLIPRANE 1000MG 8CES EFFERV', '', '', '1950', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(650, '', 'MICROGYNON FE 28 TAB', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(651, '', 'FERVEX ADULTE 8 SATCHET', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(652, '', 'FERVEX ADULTE 8 SACHETS', '', '', '550', '', '', '', '', '', '', '', '2020-02-08 17:35:39', '', '', '', ''),
(653, '', 'GYNOFER OVULE', '', '', '1800', '', '', '', '', '', '', '', '2020-02-08 17:35:40', '', '', '', ''),
(654, '', 'LOFNAC TAB 100MG', '', '', '30', '', '', '', '', '', '', '', '2020-02-08 17:35:40', '', '', '', ''),
(655, '', 'MEBENDAZOLE 6X10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:40', '', '', '', ''),
(656, '', 'PIP OFF GEL 25GR', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:40', '', '', '', ''),
(657, '', 'FUNBACT CREAM 30GR', '', '', '900', '', '', '', '', '', '', '', '2020-02-08 17:35:40', '', '', '', ''),
(658, '', 'HUILE A IMMERSION', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:40', '', '', '', ''),
(659, '', 'RPR 150TESTS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:40', '', '', '', ''),
(660, '', 'SECNIDAZOLE 500MG 4CES', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:40', '', '', '', ''),
(661, '', 'DUPHASTON CES 10MG', '', '', '4700', '', '', '', '', '', '', '', '2020-02-08 17:35:40', '', '', '', ''),
(662, '', 'CIPRONAT CES 500MG B/14', '', '', '250', '', '', '', '', '', '', '', '2020-02-08 17:35:40', '', '', '', ''),
(663, '', 'SILDENAFIL 100MG (SANTRO)', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:40', '', '', '', ''),
(664, '', 'SILDENAFIL 50MG (SANTRO)', '', '', '250', '', '', '', '', '', '', '', '2020-02-08 17:35:40', '', '', '', ''),
(665, '', 'SODIUM VALPROATE 500MG TAB 10X10', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:40', '', '', '', ''),
(666, '', 'FILM RADIO 35X35 100"S', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:40', '', '', '', ''),
(667, '', 'FILM RADIO 35X43 100''S', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:40', '', '', '', ''),
(668, '', 'ALVITE SP 200ML', '', '', '5200', '', '', '', '', '', '', '', '2020-02-08 17:35:40', '', '', '', ''),
(669, '', 'LOFNAC GEL 30GR ', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(670, '', 'KLOVINAL B/6', '', '', '2000', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(671, '', 'DAKTARIN GEL ORAL', '', '', '5200', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(672, '', 'COLDEASE SP 100ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(673, '', 'COLDEASE CAP 10X10', '', '', '600', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(674, '', 'RENIRON(IRON+ZINC SULPH+Mg SULPH+B VIT)SP 100ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(675, '', 'RENIRON(IRON+ZINC SULPH+Mg SULPH+B VIT)SP 200ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(676, '', 'COSYP-D LICTUS SP 100ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(677, '', 'RECODIN SP 100ML', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(678, '', 'PAINEX(PCT 500MG+AAS500MG+CAFF50MG)4X25 TABS', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(679, '', 'BENZYL BENZOATE 100ML', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(680, '', 'MASQUE FOSIAL 50''S', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(681, '', 'CHLORHEXIDINE 15%+CETRIMIDE 1.5%1LT', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(682, '', 'AC ANTI HCV RAPID B/50', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(683, '', 'AG HBSAG TEST B/50', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(684, '', 'TOXOPLASMA  TEST IgG,IgM B/25', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(685, '', 'LEVOZ 500MG(LEVOFLOXACIN)5TAB', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(686, '', 'LOFNAC SUPPO 100MG(DICLOFENAC SUPPO)', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(687, '', 'GLYCERINE PHENIQUE 20ML', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(688, '', 'HELMINTOX SP 15ML', '', '', '2800', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(689, '', 'DOLOSPAM CES', '', '', '210', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(690, '', 'GACET SUPPO 125MG(PARACET SUPPO125MG)', '', '', '1', '', '', '', '', '', '', '', '2020-02-08 17:35:41', '', '', '', ''),
(691, '', 'TRAMAXEMIC ACID(TRAMA03)', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(692, '', 'ANGINOVAG SPRAY FL/10ML(ANGIN01)', '', '', '3700', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(693, '', 'BACTOOX SP 125 MG(BACTO01)', '', '', '1850', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(694, '', 'BACTOX SP 250MG(BACTO02)', '', '', '2500', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(695, '', 'CARTIL FORTE B/30(CARTI01)', '', '', '375', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(696, '', 'DEBRIDAT 100MG 30CE(DEBRI01)', '', '', '120', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(697, '', 'BEPANTHOL REAM A LEVRE 7.5ML(BEPAN01)', '', '', '5900', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(698, '', 'ZUITSAL BODY LOTION 200ML(ZUITS01)', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(699, '', 'ZWITSAL BODY LOTION 200ML(ZWITS02)', '', '', '7500', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(700, '', 'MAALOX 40CES AVENTIS(MAALO03)', '', '', '80', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(701, '', 'DAZEL KIT(DAZEL01)', '', '', '5400', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(702, '', 'SEBAMED CLEANSING BAR 100GR(SEBAM01)', '', '', '2600', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(703, '', 'SEBAMED BEBE CLEANSING BAR 100GR(SEBAM02)', '', '', '2600', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(704, '', 'ENO LEMON(ENOLE01)', '', '', '200', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(705, '', 'MEFTAL FORTE PLUS(MEFTA01)', '', '', '2000', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(706, '', 'MEFTAL 500MG(MEFTA02)', '', '', '120', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(707, '', 'BIO-OIL 60ML(BIO-O01)', '', '', '5000', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(708, '', 'NOBACTER SAVON(NOBAC01)', '', '', '2800', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(709, '', 'NIFLURIL ENFANT 400MG 8SUPPO(NIFLU04)', '', '', '300', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(710, '', 'VISINE COLLYRE(VISIN01)', '', '', '6700', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(711, '', 'BRONCATHIOL SP ENFANT /NOURR 125ML(BRONC04)', '', '', '3300', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(712, '', 'CETIRIZINE SP 60ML(CETIR03)', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:42', '', '', '', ''),
(713, '', 'CETIRIZINE TAB 10MG 10*10(CETIR04)', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(714, '', 'HEXTRIL SOLUTION 200ML(HEXTR01)', '', '', '4900', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(715, '', 'IDEOS 30 CES(IDEOS01)', '', '', '215', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(716, '', 'UNISTEN COMBI PACK 20GM(UNIST01)', '', '', '1500', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(717, '', 'AMLODIPINE 10MG(AMLOD02)', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(718, '', 'PARAFFIN GAUZE(PARAF01)', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(719, '', 'BILAXTEN 20MG(BILAX01)', '', '', '550', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(720, '', 'DIABLE VERT LIQUIDE(DIABL01)', '', '', '7000', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(721, '', 'GINSOMIN SOFT 3*10(GINSO01)', '', '', '350', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(722, '', 'FLUCONAZOLE 200MG(FLUCO04)', '', '', '350', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(723, '', 'DERMOFIX CREME 20GR(DERMO04)', '', '', '4000', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(724, '', 'AMAREL 1MG 30 CES(AMARE03)', '', '', '185', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(725, '', 'DIPROSONE 30GR CREME(DIPRO02)', '', '', '4400', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(726, '', 'DAKTARIN PDRE 20GR(DAKTA04)', '', '', '3500', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(727, '', 'INSULATARD 100UI HM 10ML(INSUL01)', '', '', '6800', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(728, '', 'INSULINE MIXTARD 30/70 100 UI/NML 10ML(INSUL02)', '', '', '7700', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(729, '', 'TITANOREINE SUPPO B/12(TITAN01)', '', '', '266.66667', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(730, '', 'WATER 500ML INYANGE(WATER02)', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(731, '', 'WATER 500ML INYANGE(WATER03)', '', '', '300', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(732, '', 'COTTON PIECES(COTTO05)', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:43', '', '', '', ''),
(733, '', 'AVODART 0.5MG 30CE(AVODA01)', '', '', '260', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(734, '', 'FUCITHALMIC GEL OPHT 1(FUCIT01)', '', '', '3700', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(735, '', 'KNAC 75MG 30 CO(KNAC701)', '', '', '125', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(736, '', 'ANTI RABIES VACCINE INJ(ANTIR01)', '', '', '9100', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(737, '', 'DEEP HEAT POMMADE 15GR(DEEPH01)', '', '', '1600', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(738, '', 'DEEP HEAT SPRAY 150ML(DEEPH02)', '', '', '4900', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(739, '', 'VACCIN ANTI TETANIQUE 0.5ML 1AMP(VACCI01)', '', '', '4000', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(740, '', 'VOLTARENE 100MG 30 CE(VOLTA02)', '', '', '550', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(741, '', 'VOLTARENE 100MG SUPPO-10(VOLTA03)', '', '', '450', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(742, '', 'OMIX 0.4MG 30CE(OMIX001)', '', '', '560', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(743, '', 'CIPRONAT 750MG 2=7(CIPRO06)', '', '', '380', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(744, '', 'MICROLAX ADULT 5ML 4TUBES(MICRO03)', '', '', '1750', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(745, '', 'MIGRALGINE CES B/12(MIGRA01)', '', '', '200', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(746, '', 'ANTI-HEMORROIDAL POMMADE(ANTI-01)', '', '', '3500', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(747, '', 'ANUSOL 18 SUPP(ANUSO01)', '', '', '650', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(748, '', 'CARBAMAZEPINE 200MG 10*10(CARBA01)', '', '', '30', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(749, '', 'NEBILONG-AM 3 * 10(NEBIL01)', '', '', '260', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(750, '', 'ALVITYL PLUS 40COMP(ALVIT02)', '', '', '130', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(751, '', 'BEPANTHOL CREME 50 G(BEPAN02)', '', '', '8400', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(752, '', 'CIPROFLOXACINE- DENK 500MG (CIPRO07)', '', '', '400', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(753, '', 'GABAPANTIN 300MG(GABAP01)', '', '', '330', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(754, '', 'TEGRETOL 200MG 50 CE(TEGRE01)', '', '', '210', '', '', '', '', '', '', '', '2020-02-08 17:35:44', '', '', '', ''),
(755, '', 'TRANEXAMIC ACID 500MG(TRANE01)', '', '', '260', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(756, '', 'ENEAS 10/20 MG(ENEAS01)', '', '', '325', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(757, '', 'DICLOFENAC SUPPO(GENERIC)(DICLO07)', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(758, '', 'PRED FORTE 1% COLLYRE(PREDF01)', '', '', '5600', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(759, '', 'FENISTIL 1 MG BT/20DRAGEE(FENIS01)', '', '', '170', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(760, '', 'HALDOL 5 MG B/30(HALDO01)', '', '', '140', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(761, '', 'NEO CODION SP ADULT 18OML(NEOCO01)', '', '', '3500', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(762, '', 'AMAREL 3MG TABS(AMARE04)', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(763, '', 'ERYTHROGEL 30 G(ERYTH04)', '', '', '4200', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(764, '', 'OFLOCET 200MG 10 CE(OFLOC01)', '', '', '910', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(765, '', 'AMLOZAR TABS 30(AMLOZ01)', '', '', '265', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(766, '', 'ALDACTONE 100MG(ALDAC02)', '', '', '560', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(767, '', 'NEBILONG 5MG(3X10)(NEBIL02)', '', '', '235', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(768, '', 'NEBILONG-H (3X10)(NEBIL03)', '', '', '280', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(769, '', 'ORNILOX 10S(ORNIL01)', '', '', '1400', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(770, '', 'GRAMOCEF-O 400MG(GRAMO02)', '', '', '1015', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(771, '', 'GRAMOCEF-O 50MG SP(GRAMO03)', '', '', '6200', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(772, '', 'GRAMOCEF-O 100MG SP(GRAMO04)', '', '', '6750', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(773, '', 'AMAREL 3MG 30TABS(AMARE05)', '', '', '370', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(774, '', 'AMAREL 3 MG (AMARE06)', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:45', '', '', '', ''),
(775, '', 'AMAREL 3MG 30(AMARE07)', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(776, '', 'FLUCONAZOL 200MG(FLUCO05)', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(777, '', 'UVEX 500MG (LEVOFLOXACIN)(UVEX501)', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(778, '', 'KLY LUBRICANT GEL 82GR(KLYLU01)', '', '', '3500', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(779, '', 'MUSTELLA BEBE LAIT HYDRA CORP 500ML(MUSTE01)', '', '', '17500', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(780, '', 'TRANEXAMIC ACID[ PAUSE] 500MG(TRANE02)', '', '', '260', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(781, '', 'MUSTELLA SAVON COLD CREAM 150MG(MUSTE02)', '', '', '6300', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(782, '', 'BECLO ASMA 250MG 200DOSES(BECLO01)', '', '', '13800', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(783, '', 'BACTRIM ENF/NUR 100ML SP(BACTR01)', '', '', '3000', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(784, '', 'ATARAX 25 MG BGTE 30(ATARA01)', '', '', '110', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(785, '', 'SEBAMED CLEANSING BAR LIP STICK 4.8GR(SEBAM03)', '', '', '4000', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(786, '', 'AMLOZAAR-H(AMLOZ02)', '', '', '300', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(787, '', 'ANOMEX( RECTAL SUPPO)(ANOME01)', '', '', '2500', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(788, '', 'BGMET(METFORMIN)(BGMET01)', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(789, '', 'CIMETIDINE INJECTABLE(CIMET04)', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(790, '', 'DICLO-DENK 100MG(DICLO08)', '', '', '100', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(791, '', 'DISTEN 50CES(DISTE01)', '', '', '130', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(792, '', 'CERULYX 10ML GTTES(CERUL01)', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(793, '', 'LOSAR-DENK 50MG2*14(LOSAR01)', '', '', '250', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(794, '', 'NEXIUM 20MG(NEXIU01)', '', '', '450', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(795, '', 'VIBROCIL GTTE NASALE 15ML(VIBRO01)', '', '', '3200', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(796, '', 'CONFIANCE INJ FOR 3M.(CONFI03)', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(797, '', 'CANDID POWDER 30GM(CANDI04)', '', '', '2100', '', '', '', '', '', '', '', '2020-02-08 17:35:46', '', '', '', ''),
(798, '', 'CANDID-B CREAM(CANDI05)', '', '', '2000', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(799, '', 'CANDID V6(CANDI06)', '', '', '1600', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(800, '', 'BETASALIC OINTMENT T/15GM(BETAS02)', '', '', '1400', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(801, '', 'CANDIZOLE CAPS 150MG(CANDI07)', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(802, '', 'SEBAMED BODYMILK 200ML(SEBAM04)', '', '', '5400', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(803, '', 'SEBAMED FACE CLEANSING BAR 100GR(SEBAM05)', '', '', '3300', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(804, '', 'SEBAMED BEBE BODY LOTION 200ML(SEBAM06)', '', '', '7500', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(805, '', 'SEBAMED MOISTURIZING BODY LOTION(SEBAM07)', '', '', '5400', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(806, '', 'UNOROCK KIT(UNORO01)', '', '', '3500', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(807, '', 'PANTO-DENK 20MG(PANTO01)', '', '', '220', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(808, '', 'ENAT (VITAMIN E) 400MG(ENAT(01)', '', '', '280', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(809, '', 'FELDENE 200MG(FELDE03)', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(810, '', 'FELDENE 20 MG 30GELULES(FELDE04)', '', '', '230', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(811, '', 'LEEFLOX 500MG (LEEFL01)', '', '', '280', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(812, '', 'CANDID MOUTHPAINT 15ML(CANDI08)', '', '', '2300', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(813, '', 'PANTO-DENK 40MG(PANTO02)', '', '', '255', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(814, '', 'VENTOLIN SIROP 2MG/5ML FL/150ML(VENTO03)', '', '', '3800', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(815, '', 'NEUROGIL-75(NEURO04)', '', '', '420', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(816, '', 'VENTOLINE NEBULISEUR 2.5MG/2.5ML(VENTO04)', '', '', '2700', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(817, '', 'CORTANCYL 20MG(CORTA01)', '', '', '250', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(818, '', 'CORTANCYL 5MG(CORTA02)', '', '', '90', '', '', '', '', '', '', '', '2020-02-08 17:35:47', '', '', '', ''),
(819, '', 'VIT B COMPLEX INJ(VITBC01)', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(820, '', 'AKEROL 5MG(AKERO01)', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(821, '', 'ALWAYZ PADS(ALWAY01)', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(822, '', 'BROSSE A DENT(BROSS01)', '', '', '700', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(823, '', 'PAMPER (WOMEN)(PAMPE01)', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(824, '', 'COTTON BUDS (TIGE COTTON)(COTTO06)', '', '', '800', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(825, '', 'PAPIER MOUCHOIR (MENTHOL)(PAPIE01)', '', '', '500', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(826, '', 'PAPIER MOUCHOIR (EVERY DAY)(PAPIE02)', '', '', '300', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(827, '', ' INSULINE RAPID 10ML(INSUL03)', '', '', '7000', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(828, '', 'AUGPEN 625(AUGPE01)', '', '', '220', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(829, '', 'UNISTEN HC CREAM 20MG(UNIST02)', '', '', '1500', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(830, '', 'LIST MOUTH WASH COOLMINT(LISTM01)', '', '', '4200', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(831, '', 'LIST MOUTH WASH FRESH(LISTM02)', '', '', '4200', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(832, '', 'GLUCOPHAGE 500MG 60COMP(GLUCO04)', '', '', '50', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(833, '', 'LOSARTAN DENK 50MG 28COMP(LOSAR02)', '', '', '250', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(834, '', 'PIETEL CREAM 30G(PIETE01)', '', '', '6800', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(835, '', 'DEEP HEAT PDE 35GR(DEEPH03)', '', '', '2600', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(836, '', 'NUSAR-H(NUSAR01)', '', '', '120', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(837, '', 'TRIMEX DIABETIC 100ML(TRIME01)', '', '', '1200', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(838, '', 'MEXIC 7.5 TAB 30CES(MEXIC01)', '', '', '60', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(839, '', 'VITAMINE K1 10MG INJ(VITAM05)', '', '', '250', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(840, '', 'SPASFON INJECT 4ML(SPASF03)', '', '', '750', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(841, '', 'EROSTIN 10MG 10CES(EROST01)', '', '', '270', '', '', '', '', '', '', '', '2020-02-08 17:35:48', '', '', '', ''),
(842, '', 'LEVOBACT 750MG 10CE(LEVOB01)', '', '', '600', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(843, '', 'PROFENID 100MG 30COMP (PROFE02)', '', '', '160', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(844, '', 'FRANCE LAIT 2EM AGE 400GR(FRANC02)', '', '', '9100', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(845, '', 'LYDIA POSTPIL TAB(LYDIA01)', '', '', '5000', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(846, '', 'MICROGYNON  FE 8S(MICRO04)', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', '');
INSERT INTO `items` (`id`, `barcode`, `item_name`, `quantity`, `price`, `cost`, `total`, `unit`, `expired_date`, `taxes`, `stock`, `supplier`, `done`, `date_done`, `category`, `measure`, `lot`, `sdc_n`) VALUES
(847, '', 'ZITHROCARE  200 SP (ZITHR02)', '', '', '2100', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(848, '', 'NAN 800G 2  . 6-12 MOID(NAN8001)', '', '', '30000', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(849, '', 'OTIPAX GOUTTE OTIQUE(OTIPA02)', '', '', '4000', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(850, '', 'ANTI-HEMORROIDAL POMMADE(ANTI-02)', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(851, '', 'NAN 2 800G(NAN2801)', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(852, '', 'NAN 1 800GR(NAN1801)', '', '', '30000', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(853, '', 'STIMOL 10ML 18 AMP(STIMO01)', '', '', '450', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(854, '', 'EROSTIN 5MG 60ML SP(EROST02)', '', '', '2700', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(855, '', 'MICROGYNON FE 28(EUROPEAN)(MICRO05)', '', '', '1000', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(856, '', 'FLUDEX 2.5 MG 20CES(FLUDE01)', '', '', '300', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(857, '', 'POVID (VAGINAL PESSARIES)', '', '', '2000', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(858, '', 'SMECTA SACHET POWDER', '', '', '420', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(859, '', 'MAXITROL 5ML COLLYRE', '', '', '2400', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(860, '', 'RENIRON CAPSULES', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(861, '', 'MEFTAL [ABACUS]', '', '', '120', '', '', '', '', '', '', '', '2020-02-08 17:35:49', '', '', '', ''),
(862, '', 'CLARITHROMYCIN 500MG 100CE(CLARI05)', '', '', '0', '', '', '', '', '', '', '', '2020-02-08 17:35:50', '', '', '', ''),
(863, '', 'CLARITHROMYCIN 500MG 100CES(CLARI06)', '', '', '252', '', '', '', '', '', '', '', '2020-02-08 17:35:50', '', '', '', ''),
(864, '', 'ALVITYL 150ML SP(ALVIT03)', '', '', '5900', '', '', '', '', '', '', '', '2020-02-08 17:35:50', '', '', '', ''),
(865, '6925608200635', '', '', '', '', '', '', '', '', '', '', 'fullname', '2020-05-08 11:23:13', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `measurement`
--

CREATE TABLE `measurement` (
  `id` int(250) NOT NULL,
  `measure` varchar(250) NOT NULL,
  `done` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `measurement`
--

INSERT INTO `measurement` (`id`, `measure`, `done`) VALUES
(11, 'pc', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(250) NOT NULL,
  `order_id` varchar(250) NOT NULL,
  `barcode` varchar(250) NOT NULL,
  `item` varchar(250) NOT NULL,
  `qty` varchar(250) NOT NULL,
  `exp` varchar(250) NOT NULL,
  `cost` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL,
  `pay_type` varchar(250) NOT NULL,
  `paid` varchar(250) NOT NULL,
  `sdc` varchar(250) NOT NULL,
  `stock_status` varchar(250) NOT NULL,
  `sale_status` varchar(250) NOT NULL,
  `done` varchar(250) NOT NULL,
  `customer` varchar(250) NOT NULL,
  `date_done` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `done_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `order_id`, `barcode`, `item`, `qty`, `exp`, `cost`, `total`, `pay_type`, `paid`, `sdc`, `stock_status`, `sale_status`, `done`, `customer`, `date_done`, `done_date`) VALUES
(2, 'invoice1', '333333', 'indagara', '1', '', '3000', '3000', '', '', '', 'out', 'ordered', 'Rutembesa Elvis', '', '2019-10-03 13:04:17', '2019-10-03'),
(3, 'invoice1', '1111', 'Rutembesa Elvis', '3', '', '300', '1500', '', '', '', 'out', 'ordered', 'Rutembesa Elvis', '', '2019-12-07 02:27:52', '2019-10-03'),
(4, 'invoice1', '', 'imiteja', '1', '', '100', '100', '', '', '', 'out', 'ordered', 'Rutembesa Elvis', '', '2019-10-03 13:34:46', '2019-10-03'),
(5, 'invoice1', '44444', 'igitunguru', '1', '', '50', '50', '', '', '', 'out', 'ordered', 'Rutembesa Elvis', '', '2019-10-03 13:34:46', '2019-10-03'),
(6, 'invoice3', '333333', 'indagara', '1', '', '3000', '3000', '', '', '', 'out', 'ordered', 'Rutembesa Elvis', '', '2019-10-07 14:04:36', '2019-10-06'),
(7, 'invoice3', '55555', 'igikukuru ', '1', '', '50', '50', '', '', '', 'out', 'ordered', 'Rutembesa Elvis', '', '2019-10-07 14:04:36', '2019-10-06'),
(8, 'invoice3', '1111', 'Rutembesa Elvis', '1', '', '280', '280', '', '', '', 'in', 'ordered', 'Rutembesa Elvis', '', '2019-10-07 14:04:36', '2019-10-06'),
(9, 'invoice3', '333333', 'indagara', '1', '', '2500', '2500', '', '', '', 'in', 'ordered', 'Rutembesa Elvis', '', '2019-10-07 14:04:36', '2019-10-06'),
(10, 'invoice3', '44444', 'igitunguru', '1', '', '50', '50', '', '', '', 'out', 'ordered', 'Rutembesa Elvis', '', '2019-10-07 14:04:44', '2019-10-07'),
(11, 'invoice5', '', 'imiteja', '1', '', '100', '100', '', '', '', 'out', 'ordered', 'Rutembesa Elvis', '', '2019-10-10 00:21:03', '2019-10-10'),
(12, 'invoice5', '44444', 'igitunguru', '1', '', '50', '50', '', '', '', 'out', 'ordered', 'Rutembesa Elvis', '', '2019-10-10 00:21:03', '2019-10-10'),
(13, 'invoice5', '333333', 'indagara', '1', '', '3000', '3000', '', '', '', 'out', 'ordered', 'Rutembesa Elvis', '', '2019-10-10 00:21:03', '2019-10-10'),
(14, 'invoice5', '55555', 'igikukuru ', '12', '2020-02-25', '50', '7200', '', '', '223', 'out', 'pending', 'Rutembesa Elvis', '', '2020-02-27 08:59:57', '2019-10-10'),
(15, 'invoice5', '22222', 'inyanya', '1', '', '500', '500', '', '', '', 'out', 'pending', 'Rutembesa Elvis', '', '2019-10-10 00:21:10', '2019-10-10'),
(16, 'invoice6', '5053990101597', 'Pringles', '2', '', '2500', '5000', '', '', '', 'out', 'ordered', 'Rutembesa Elvis', '', '2019-10-10 09:39:13', '2019-10-10'),
(17, 'invoice6', '', 'Sambusa', '6', '', '100', '600', '', '', '', 'out', 'ordered', 'Rutembesa Elvis', '', '2019-10-10 09:39:13', '2019-10-10'),
(18, 'invoice6', '5053990101597', 'Pringles', '3', '', '2500', '7500', '', '', '', 'out', 'pending', 'Rutembesa Elvis', '', '2019-10-10 09:39:23', '2019-10-10'),
(19, 'invoice7', '5053990101597', 'Pringles', '1', '', '2000', '2000', '', '', '', 'in', 'ordered', 'Rutembesa Elvis', '', '2019-10-11 00:27:31', '2019-10-11'),
(20, 'invoice7', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'Rutembesa Elvis', '', '2019-10-11 00:27:31', '2019-10-11'),
(21, 'invoice7', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'Rutembesa Elvis', '', '2019-10-11 00:27:31', '2019-10-11'),
(22, 'invoice7', '', 'Sambusa', '1', '', '100', '100', '', '', '', 'out', 'pending', 'Rutembesa Elvis', '', '2019-10-11 00:27:36', '2019-10-11'),
(23, 'invoice7', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'pending', 'Rutembesa Elvis', '', '2019-10-11 00:27:38', '2019-10-11'),
(24, 'invoice8', '1111', 'Rutembesa Elvis', '1', '', '76', '76', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-13 12:11:26', '2019-10-13'),
(25, 'invoice8', '44444', 'Inyange Milk', '1', '', '21321', '21321', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-13 12:16:00', '2019-10-13'),
(26, 'invoice9', '', 'Sambusa', '1', '', '100', '100', '', '', '', 'out', 'pending', 'fullname', '', '2019-10-13 12:19:10', '2019-10-13'),
(28, 'invoice9', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'pending', 'fullname', '', '2019-10-13 12:23:33', '2019-10-13'),
(29, 'invoice9', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'pending', 'fullname', '', '2019-10-13 12:27:30', '2019-10-13'),
(30, 'invoice9', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'pending', 'fullname', '', '2019-10-13 13:27:25', '2019-10-13'),
(31, 'invoice9', '5053990101597', 'Pringles', '1', '', '2000', '2000', '', '', '', 'in', 'pending', 'fullname', '', '2019-10-13 15:05:28', '2019-10-13'),
(33, 'invoice11', '5053990101597', 'Pringles', '1', '', '2000', '2000', '', '', '', 'in', 'ordered', 'fullname', '', '2019-10-14 03:47:37', '2019-10-14'),
(34, 'invoice11', '5053990101597', 'Pringles', '2', '', '2500', '5000', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-14 03:47:37', '2019-10-14'),
(35, 'invoice11', '5053990101597', 'Pringles', '1', '', '2000', '2000', '', '', '', 'in', 'ordered', 'fullname', '', '2019-10-14 03:49:51', '2019-10-14'),
(36, 'invoice12', '5053990101597', 'Pringles', '10', '', '2500', '25000', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-14 04:59:08', '2019-10-14'),
(37, 'invoice14', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-14 05:08:35', '2019-10-14'),
(38, 'invoice16', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-14 05:09:11', '2019-10-14'),
(39, 'invoice17', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-14 05:10:09', '2019-10-14'),
(40, 'invoice18', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-14 05:10:35', '2019-10-14'),
(41, 'invoice19', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-14 05:11:40', '2019-10-14'),
(42, 'invoice20', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-14 05:13:54', '2019-10-14'),
(43, 'invoice21', '5053990101597', 'Pringles', '10', '', '2500', '25000', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-14 05:14:35', '2019-10-14'),
(44, 'invoice21', '55555', 'Rutembesa Elvis', '5', '', '45', '225', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-14 05:14:35', '2019-10-14'),
(45, 'invoice22', '5053990101597', 'Pringles', '12', '', '2500', '30000', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-14 05:20:06', '2019-10-14'),
(47, 'invoice22', '44444', 'Inyange Milk', '5', '', '21321', '106605', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-14 05:20:06', '2019-10-14'),
(48, 'invoice23', '5053990101597', 'Pringles', '10', '', '2500', '25000', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-14 05:22:38', '2019-10-14'),
(49, 'invoice23', '44444', 'Inyange Milk', '3', '', '21321', '63963', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-14 05:22:38', '2019-10-14'),
(50, 'invoice24', '44444', 'Inyange Milk', '8', '', '122', '976', '', '', '', 'in', 'ordered', 'fullname', '', '2019-10-14 05:27:47', '2019-10-14'),
(51, 'invoice24', '5053990101597', 'Pringles', '43', '', '2000', '86000', '', '', '', 'in', 'ordered', 'fullname', '', '2019-10-14 05:27:47', '2019-10-14'),
(69, 'invoice26', '', 'imigati', '1', '', '350', '350', '', '', '', 'in', 'ordered', 'fullname', '', '2019-10-23 20:53:47', '2019-10-16'),
(77, 'invoice26', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', 'Rutembesa Elvis', '2019-10-23 20:53:47', '2019-10-23'),
(78, 'invoice26', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', 'Rutembesa Elvis', '2019-10-23 20:53:57', '2019-10-23'),
(82, 'invoice28', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', 'Rutembesa Elvis', '2019-10-23 21:02:50', '2019-10-23'),
(83, 'invoice29', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', 'Rutembesa Elvis', '2019-10-23 21:03:24', '2019-10-23'),
(84, 'invoice32', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', 'Rutembesa Elvis', '2019-10-23 21:05:39', '2019-10-23'),
(86, 'invoice33', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', 'Rutembesa Elvis', '2019-10-23 21:06:44', '2019-10-23'),
(87, 'invoice33', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-23 21:06:44', '2019-10-23'),
(88, 'invoice33', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-23 21:06:44', '2019-10-23'),
(89, 'invoice34', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', 'Rutembesa Elvis', '2019-10-23 21:08:13', '2019-10-23'),
(90, 'invoice34', '', 'Sambusa', '1', '', '100', '100', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-23 21:08:13', '2019-10-23'),
(91, 'invoice34', '', 'imigati', '1', '', '450', '450', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-23 21:08:13', '2019-10-23'),
(94, 'invoice36', '222222', 'Inyange Milk', '1', '', '800', '800', '', '', '', 'out', 'ordered', 'fullname', 'Rutembesa Elvis', '2019-10-24 13:58:44', '2019-10-24'),
(95, 'invoice36', '5053990101597', 'Pringles', '4', '', '2500', '10000', '', '', '', 'out', 'ordered', 'fullname', 'Rutembesa Elvis', '2019-10-24 13:58:44', '2019-10-24'),
(96, 'invoice36', '5053990101597', 'Pringles', '2', '', '2500', '5000', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-24 14:01:49', '2019-10-24'),
(97, 'invoice37', '5053990101597', 'Pringles', '5', '', '2000', '10000', '', '', '', 'in', 'ordered', 'fullname', '', '2019-10-24 14:08:40', '2019-10-24'),
(98, 'invoice39', '1111111', 'Inyange Milk', '1', '', '1500', '1500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-24 16:48:56', '2019-10-24'),
(99, 'invoice39', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-24 16:48:56', '2019-10-24'),
(100, 'invoice39', '5053990101597', 'Pringles', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-24 16:48:56', '2019-10-24'),
(102, 'invoice40', '7312058087104', 'alchohol', '3', '', '2500', '7500', '', '', '', 'out', 'ordered', 'fullname', 'Rutembesa Elvis', '2019-10-28 11:05:56', '2019-10-28'),
(103, 'invoice40', '7312058087104', 'alchohol', '55', '', '2000', '110000', '', '', '', 'in', 'ordered', 'fullname', '', '2019-10-28 11:05:56', '2019-10-28'),
(104, 'invoice40', '7312058087104', 'alchohol', '1', '', '2500', '2500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-28 11:15:12', '2019-10-28'),
(105, 'invoice41', '7312058087104', 'alchohol', '3', '', '2500', '7500', '', '', '', 'out', '', 'fullname', '', '2019-10-28 11:57:45', '2019-10-28'),
(107, 'invoice43', '6161108975370', 'kiwi', '5', '', '4500', '22500', '', '', '', 'out', 'ordered', 'fullname', 'Rutembesa Elvis', '2019-10-28 21:22:29', '2019-10-28'),
(108, 'invoice43', '5053990101597', 'Pringles', '3', '', '2500', '7500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-28 21:22:29', '2019-10-28'),
(114, 'invoice46', '5053990101597', 'Pringles', '3', '', '2500', '7500', '', '', '', 'out', 'ordered', 'fullname', 'Rutembesa Elvis', '2019-10-28 21:15:23', '2019-10-28'),
(117, 'invoice48', '222222', 'Inyange Milk', '2', '', '800', '1600', '', '', '', 'out', 'ordered', 'fullname', 'yooooooo', '2019-10-28 21:22:38', '2019-10-28'),
(118, 'invoice48', '1111111', 'Inyange Milk', '3', '', '1500', '4500', '', '', '', 'out', 'ordered', 'fullname', 'yooooooo', '2019-10-28 21:22:38', '2019-10-28'),
(119, 'invoice48', '5053990101597', 'Pringles', '4', '', '2500', '10000', '', '', '', 'out', 'ordered', 'fullname', 'yooooooo', '2019-10-28 21:22:38', '2019-10-28'),
(123, 'invoice53', '7312058087104', 'alchohol', '4', '', '2500', '10000', '', '', '', 'out', 'ordered', 'fullname', 'Rutembesa Elvis', '2019-12-05 10:02:44', '2019-10-28'),
(124, 'invoice54', '1111111', 'Inyange Milk', '2', '', '1500', '3000', '', '', '', 'out', 'ordered', 'fullname', '', '2019-10-28 21:50:04', '2019-10-28'),
(125, 'invoice56', '2111111', 'inyanya', '1', '', '200', '200', '', '', '', 'out', 'ordered', 'fullname', '', '2019-12-05 04:10:08', '2019-12-05'),
(126, 'invoice56', '2111111', 'inyanya', '1', '', '200', '200', '', '', '', 'out', 'pending', 'fullname', 'Rutembesa Shema Elvis', '2019-12-05 09:49:14', '2019-12-05'),
(127, 'invoice56', '2111111', 'inyanya', '1', '', '200', '200', '', '', '', 'out', 'pending', 'fullname', 'Rutembesa Shema Elvis', '2019-12-05 09:49:14', '2019-12-05'),
(128, 'invoice58', '2111111', 'inyanya', '1', '', '200', '200', '', '', '', 'out', 'ordered', 'fullname', 'Rutembesa Shema Elvis', '2019-12-06 08:13:43', '2019-12-05'),
(129, 'invoice58', '2111111', 'inyanya', '1', '', '200', '200', '', '', '', 'out', 'pending', 'fullname', '', '2019-12-06 08:23:12', '2019-12-06'),
(130, 'invoice61', '122334455', 'Energry', '10', '', '500', '5000', '', '', '', 'in', 'ordered', 'fullname', 'Nyirangarama', '2019-12-07 14:08:19', '2019-12-07'),
(131, 'invoice61', '122334455', 'Energry', '10', '', '500', '5000', '', '', '', 'in', 'ordered', 'fullname', 'Nyirangarama', '2019-12-07 14:11:54', '2019-12-07'),
(132, 'invoice62', '122334455', 'Energry', '10', '', '500', '5000', '', '', '', 'in', 'ordered', 'fullname', 'Nyirangarama', '2019-12-07 14:14:02', '2019-12-07'),
(133, 'invoice63', '122334455', 'Energry', '5', '', '500', '2500', '', '', '', 'in', 'ordered', 'fullname', 'Nyirangarama', '2019-12-07 14:16:13', '2019-12-07'),
(134, 'invoice64', '122334455', 'Energry', '35', '', '500', '17500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-12-07 14:19:15', '2019-12-07'),
(135, 'invoice65', '122334455', 'Energry', '10', '', '500', '5000', '', '', '', 'in', 'ordered', 'fullname', 'Nyirangarama', '2019-12-07 14:19:57', '2019-12-07'),
(136, 'invoice68', '122334455', 'Energry', '45', '', '500', '22500', '', '', '', 'in', 'ordered', 'fullname', 'Nyirangarama', '2019-12-07 20:54:10', '2019-12-07'),
(137, 'invoice70', '122334455', 'Energry', '1', '', '500', '2', '', '', '', 'inve', 'ordered', 'fullname', '', '2019-12-08 14:51:48', '2019-12-08'),
(138, 'invoice72', '122334455', 'Energry', '15', '2019-12-17', '500', '7500', '', '', '11223366', 'in', 'ordered', 'fullname', 'Nyirangarama', '2019-12-08 16:04:35', '2019-12-08'),
(139, 'invoice73', '122334455', 'Energry', '1', '1', '500', '69', '', '', '', 'inve', 'ordered', 'fullname', '', '2019-12-11 11:42:15', '2019-12-10'),
(140, 'invoice73', '122334455', 'Energry', '1', '', '500', '500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-12-11 11:42:15', '2019-12-10'),
(141, 'invoice73', '122334455', 'Energry', '1', '', '500', '500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-12-11 11:42:15', '2019-12-10'),
(143, 'invoice75', '122334455', 'Energry', '1', '', '500', '500', '', '', '', 'out', 'pending', 'fullname', '', '2019-12-11 12:53:08', '2019-12-11'),
(144, 'invoice79', '1011', 'Fanta', '50', '2020-01-10', '12000', '600000', '', '', 'sdc01010101010', 'in', 'pending', 'fullname', 'Kababa', '2019-12-12 15:52:57', '2019-12-12'),
(145, 'invoice79', '1022', 'Jus Inyange', '30', '2020-01-10', '4000', '120000', '', '', 'sdc010101011', 'in', 'pending', 'fullname', 'Kababa', '2019-12-12 15:52:57', '2019-12-12'),
(146, 'invoice79', '1033', 'Colgate', '20', '', '14400', '288000', '', '', '', 'in', 'pending', 'fullname', 'Kababa', '2019-12-12 15:52:57', '2019-12-12'),
(147, 'invoice79', '1044', 'Toilet Paper', '20', '2020-01-10', '1400', '28000', '', '', 'sdc010101010103', 'in', 'pending', 'fullname', 'Kababa', '2019-12-12 15:52:57', '2019-12-12'),
(148, 'invoice79', '1055', 'OMO', '20', '2020-01-10', '8000', '160000', '', '', 'sdc01010101014', 'in', 'pending', 'fullname', 'Kababa', '2019-12-12 15:52:57', '2019-12-12'),
(149, 'invoice79', '101', 'Fanta', '50', '2020-01-10', '500', '25000', '', '', 'sdc01010101010', 'in', 'pending', 'fullname', 'Kababa', '2019-12-12 15:52:57', '2019-12-12'),
(150, 'invoice79', '102', 'Jus Inyange', '30', '2020-01-10', '500', '15000', '', '', 'sdc010101011', 'in', 'pending', 'fullname', 'Kababa', '2019-12-12 15:52:57', '2019-12-12'),
(151, 'invoice79', '103', 'Colgate', '20', '2020-01-10', '1200', '24000', '', '', 'sdc0101010101012', 'in', 'pending', 'fullname', 'Kababa', '2019-12-12 15:52:57', '2019-12-12'),
(152, 'invoice79', '105', 'OMO', '20', '2020-01-10', '600', '12000', '', '', 'sdc010101010103', 'in', 'pending', 'fullname', 'Kababa', '2019-12-12 15:52:57', '2019-12-12'),
(162, 'invoice82', '101', 'Fanta', '10', '', '500', '5000', '', '', '', 'out', 'ordered', 'fullname', '', '2020-02-11 22:12:12', '2019-12-12'),
(163, 'invoice83', '101', 'Fanta', '5', '', '500', '2500', '', '', '', 'out', 'ordered', 'fullname', 'fab', '2019-12-12 18:46:16', '2019-12-12'),
(164, 'invoice85', '1022', 'Jus Inyange', '13', '2022-12-06', '4000', '52000', '', '', '11223366', 'in', 'ordered', 'fullname', '', '2019-12-16 15:13:09', '2019-12-16'),
(168, 'invoice85', '122334455', 'Energry', '1', '', '500', '500', '', '', '', 'inve', 'ordered', 'fullname', '', '2019-12-16 15:13:09', '2019-12-16'),
(169, 'invoice86', '1022', 'Jus Inyange', '1', '', '4000', '4000', '', '', '', 'inve', 'pending', 'fullname', '', '2019-12-16 15:13:22', '2019-12-16'),
(173, 'invoice87', '122334455', 'Energry', '5', '', '500', '2500', '', '', '', 'out', 'ordered', 'fullname', '', '2019-12-17 00:11:45', '2019-12-17'),
(174, 'invoice87', '101', 'Fanta', '4', '', '500', '2000', '', '', '', 'in', 'ordered', 'fullname', '', '2019-12-17 00:11:45', '2019-12-17'),
(177, 'invoice87', '1022', 'Jus Inyange', '1', '', '4000', '4000', '', '', '', 'inve', 'ordered', 'fullname', '', '2019-12-17 00:11:45', '2019-12-17'),
(180, 'invoice89', '1011', 'Fanta', '1', '', '12000', '12000', '', '', '', 'in', 'ordered', 'fullname', 'Kababa', '2019-12-19 00:29:24', '2019-12-17'),
(181, 'invoice89', '122334455', 'Energry', '1', '', '500', '500', '', '', '', 'in', 'ordered', 'fullname', 'Kababa', '2019-12-19 00:29:24', '2019-12-17'),
(182, 'invoice89', '102', 'Jus Inyange', '5', '', '500', '20000', '', '', '', 'out', 'ordered', 'fullname', 'fab', '2019-12-19 00:29:24', '2019-12-19'),
(184, 'invoice89', '105', 'OMO', '10', '2019-12-31', '400', '4000', '', '', '7789966554411223300', 'in', 'pending', 'fullname', 'Kababa', '2019-12-19 00:58:16', '2019-12-19'),
(186, 'invoice90', '102', 'Jus Inyange', '1', '', '500', '500', '', '', '', 'inve', 'inventory', 'fullname', '', '2019-12-19 01:03:54', '2019-12-19'),
(187, 'invoice91', '1022', 'Jus Inyange', '1', '', '4000', '4000', '', '', '', 'inve', 'pending', 'fullname', '', '2019-12-19 01:04:01', '2019-12-19'),
(188, 'invoice92', '102', 'Jus Inyange', '2', '', '500', '1000', '', '', '', 'out', 'pending', 'fullname', '', '2019-12-19 01:08:18', '2019-12-19'),
(191, 'invoice94', '101', 'Fanta', '1', '', '500', '500', '', '', '', 'out', 'pending', 'fullname', '', '2019-12-19 08:48:02', '2019-12-19'),
(195, 'invoice101', '101', 'Fanta', '1', '', '500', '500', '', '', '', 'inve', 'pending', 'fullname', '', '2019-12-19 10:34:12', '2019-12-19'),
(197, 'Ref_Number111', '123654789', 'Energry', '1', '2021-12-25', '400', '400', '', '', '55748544', 'in', 'ordered', 'fullname', '', '2019-12-20 11:13:01', '2019-12-20'),
(198, 'invoice112', '123654789', 'Energry', '1', '', '400', '400', '', '', '', 'in', 'pending', 'fullname', '', '2019-12-20 11:46:45', '2019-12-20'),
(199, 'invoice112', '123654789', 'Energry', '1', '', '500', '500', '', '', '', 'inve', 'pending', 'fullname', '', '2019-12-20 11:47:04', '2019-12-20'),
(200, 'invoice129', '123654789', 'Energry', '1', '', '500', '500', '', '', '', 'inve', 'pending', 'fullname', '', '2019-12-21 12:12:40', '2019-12-21'),
(203, 'invoice130', '', 'ABACOFF SP 100ML', '15', '', '700', '10500', '', '', '', 'out', 'ordered', 'fullname', '', '2020-02-11 22:03:05', '2020-02-11'),
(208, 'invoice133', '', 'PARACETAMOL SUPPO 125MG B/100', '2', '', '100', '200', '', '', '', 'out', 'ordered', 'fullname', '', '2017-01-12 07:27:14', '2017-01-11'),
(211, 'Ref_Number134', '', 'PARACETAMOL SP 100ML', '12', '2020-08-01', '', '7200', '', '', '223', 'in', 'pending', 'fullname', '', '2020-02-27 09:21:40', '2020-02-26'),
(212, 'invoice135', '', 'PARACETAMOL SP 60ML', '1', '', '500', '500', '', '', '', 'inve', 'unpaid', 'fullname', '', '2020-02-26 21:28:53', '2020-02-26'),
(213, 'invoice135', '', 'PAIDOTERIN SP 100ML', '2', '', '4000', '8000', '', '', '', 'out', 'unpaid', 'fullname', '', '2020-02-26 21:28:53', '2020-02-26'),
(215, 'invoice137', '', 'PARACETAMOL SP 100ML', '12', '2020-08-01', '', '7200', '', '', '223', 'in', 'pending', 'fullname', '', '2020-02-27 09:21:40', '2020-02-27'),
(216, 'invoice138', '', 'BETADINE GARGARISME 125ML', '1', '', '2800', '2800', '', '', '', 'out', 'pending', 'fullname', '', '2020-02-27 22:09:03', '2020-02-27'),
(217, 'invoice138', '', 'PAIDOTERIN SP 100ML', '1', '', '', '0', '', '', '', 'in', 'pending', 'fullname', '', '2020-03-06 19:24:58', '2020-03-06'),
(218, 'invoice140', '', 'ABACOFF SP 100ML', '', '25', '700', '-35', '', '', '', 'inve', 'pending', 'fullname', '', '2020-03-09 20:08:36', '2020-03-09'),
(219, 'invoice144', '', 'PARACETAMOL SP 60ML', '2', '', '500', '1000', '', '', '', 'out', 'ordered', 'fullname', '', '2020-04-01 16:50:11', '2020-04-01'),
(220, 'invoice146', '', 'PARACETAMOL SP 60ML', '1', '', '500', '500', '', '', '', 'out', 'ordered', 'fullname', '', '2020-04-01 17:01:33', '2020-04-01'),
(221, 'invoice146', '', 'PARACETAMOL SP 100ML', '4', '', '600', '2400', '', '', '', 'out', 'ordered', 'fullname', '', '2020-04-01 17:02:31', '2020-04-01'),
(222, 'invoice160', '', 'AUGMENTIN ENFANT SP 60ML', '10', '', '6000', '60000', '', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 22:29:18', '2020-04-05'),
(223, 'invoice161', '', 'AUGMENTIN NOURISSON SP 30ML', '10', '', '3500', '35000', '', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 22:38:38', '2020-04-05'),
(224, 'invoice163', '', 'AUGMENTIN ENFANT SP 60ML', '1', '', '6000', '6000', '', '', '', 'out', 'pending', 'fullname', '', '2020-04-05 23:04:44', '2020-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(250) NOT NULL,
  `insurance` varchar(250) NOT NULL,
  `insu_pay` varchar(250) NOT NULL,
  `invoice` varchar(250) NOT NULL,
  `paid` varchar(250) NOT NULL,
  `pay_type` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `datedone` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `done` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `insurance`, `insu_pay`, `invoice`, `paid`, `pay_type`, `status`, `datedone`, `done`) VALUES
(14, '', '', 'invoice74', '500', 'credit card', 'ordered', '2019-12-11 11:44:48', 'fullname'),
(15, '', '', 'invoice75', '500', 'credit card', 'pending', '2019-12-11 12:53:14', 'fullname'),
(16, '', '', 'invoice82', '4000', 'cash', 'ordered', '2019-12-12 17:45:22', 'fullname'),
(17, '', '', 'invoice82', '4000', 'credit card', 'ordered', '2019-12-12 17:45:22', 'fullname'),
(18, '', '', 'invoice82', '3000', 'cash', 'ordered', '2019-12-12 17:45:22', 'fullname'),
(19, '', '', 'invoice82', '500o', 'cash', 'pending', '2019-12-12 18:40:00', 'fullname'),
(20, '', '', 'invoice83', '1500', 'mobile money', 'ordered', '2019-12-12 18:46:16', 'fullname'),
(21, '', '', 'invoice83', '1000', 'cash', 'ordered', '2019-12-12 18:46:16', 'fullname'),
(22, '', '', 'invoice89', '20000', 'credit card', 'ordered', '2019-12-19 00:29:24', 'fullname'),
(23, 'RSSB', '8925', '1575', '', '', 'ordered', '2020-02-11 21:36:18', 'fullname'),
(24, 'RSSB', '8925', 'invoice130', '1575', 'mobile money', 'ordered', '2020-02-11 21:50:42', 'fullname'),
(25, 'RSSB', '8925', 'invoice130', '1575', '', 'ordered', '2020-02-11 21:53:31', 'fullname'),
(26, 'RSSB', '8925', 'invoice130', '1575', '', 'ordered', '2020-02-11 22:03:04', 'fullname'),
(27, 'RSSB', '4250', 'invoice82', '750', 'mobile money', 'ordered', '2020-02-11 22:12:12', 'fullname'),
(28, 'MMI', '60', 'invoice133', '40', 'mobile money', 'ordered', '2017-01-12 07:27:14', 'fullname'),
(29, 'UAP', '500', 'invoice144', '1000', 'cash', 'ordered', '2020-04-01 16:50:11', 'fullname'),
(30, 'UAP', '1700', 'invoice146', '1700', '', 'ordered', '2020-04-01 17:01:33', 'fullname'),
(31, 'UAP', '6000', 'invoice160', '60000', 'cash', 'ordered', '2020-04-05 22:29:17', 'fullname'),
(32, 'UAP', '6000', 'invoice160', '60000', 'cash', 'ordered', '2020-04-05 22:29:18', 'fullname'),
(33, 'UAP', '3500', 'invoice161', '3500', '', 'ordered', '2020-04-05 22:38:38', 'fullname');

-- --------------------------------------------------------

--
-- Table structure for table `pmethod`
--

CREATE TABLE `pmethod` (
  `id` int(250) NOT NULL,
  `method` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pmethod`
--

INSERT INTO `pmethod` (`id`, `method`) VALUES
(4, 'cash'),
(6, 'mobile money');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(250) NOT NULL,
  `order_id` varchar(250) NOT NULL,
  `barcode` varchar(250) NOT NULL,
  `item` varchar(250) NOT NULL,
  `qty` varchar(250) NOT NULL,
  `cost` varchar(250) NOT NULL,
  `sdc` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL,
  `pay_type` varchar(250) NOT NULL,
  `paid` varchar(250) NOT NULL,
  `stock_status` varchar(250) NOT NULL,
  `sale_status` varchar(250) NOT NULL,
  `done` varchar(250) NOT NULL,
  `customer` varchar(250) NOT NULL,
  `date_done` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `done_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `order_id`, `barcode`, `item`, `qty`, `cost`, `sdc`, `total`, `pay_type`, `paid`, `stock_status`, `sale_status`, `done`, `customer`, `date_done`, `done_date`) VALUES
(5, 'Ref_Number119', '54366', 'Energry', '1', '4000', '', '4000', '', '', 'out', 'ordered', 'fullname', '', '2019-12-20 13:48:31', '2019-12-20'),
(6, 'Ref_Number120', '54366', 'Energry', '1', '4000', '', '4000', '', '', 'out', 'ordered', 'fullname', '', '2019-12-20 13:51:52', '2019-12-20'),
(7, 'Ref_Number125', '123654789', 'Energry', '1', '400', '', '400', '', '', 'out', 'ordered', 'fullname', '', '2019-12-20 13:53:44', '2019-12-20'),
(8, 'Ref_Number126', '123654789', 'Energry', '1', '400', '', '400', '', '', 'out', 'ordered', 'fullname', '', '2019-12-20 13:57:35', '2019-12-20'),
(9, 'Ref_Number127', '54366', 'Energry', '1', '4000', '', '4000', '', '', 'out', 'pending', 'fullname', 'super', '2019-12-20 15:14:24', '2019-12-20'),
(10, 'invoice129', '54366', 'Energry', '4', '4000', '', '16000', '', '', 'out', 'ordered', 'fullname', 'Sun', '2020-01-31 11:12:32', '2020-01-31'),
(14, 'invoice134', '', 'PARACETAMOL SP 100ML', '12', '600', '', '7200', '', '', 'out', 'ordered', 'fullname', 'Sun', '2020-02-27 09:23:51', '2020-02-26'),
(15, 'invoice137', '', 'PARACETAMOL SP 100ML', '12', '600', '', '7200', '', '', 'out', 'ordered', 'fullname', '', '2020-02-27 09:23:51', '2020-02-27'),
(16, 'invoice138', '', 'ABACOFF SP 100ML', '1', '700', '', '700', '', '', 'out', 'ordered', 'fullname', '', '2020-03-06 19:26:32', '2020-03-05'),
(17, 'invoice138', '', 'PARACETAMOL INJECTABLE 120MG', '1', '1', '', '1', '', '', 'out', 'ordered', 'fullname', '', '2020-03-06 19:26:32', '2020-03-06'),
(18, 'invoice138', '', 'PAIDOTERIN SP 100ML', '3', '4000', '', '12000', '', '', 'out', 'ordered', 'fullname', '', '2020-03-06 19:26:32', '2020-03-06'),
(19, 'invoice138', '', 'AUGMENTIN NOURISSON SP 30ML', '1', '3500', '', '3500', '', '', 'out', 'ordered', 'fullname', '', '2020-03-06 19:26:32', '2020-03-06'),
(20, 'invoice138', '', 'BRUFEN SP 100ML', '1', '5600', '', '5600', '', '', 'out', 'ordered', 'fullname', '', '2020-03-06 19:26:32', '2020-03-06'),
(24, 'invoice141', '', 'PARACETAMOL SP 60ML', '5', '500', '', '2500', '', '', 'out', 'ordered', 'fullname', '', '2020-04-01 15:56:40', '2020-04-01'),
(25, 'invoice141', '', 'PAIDOTERIN SP 100ML', '4', '4000', '', '16000', '', '', 'out', 'ordered', 'fullname', '', '2020-04-01 15:56:40', '2020-04-01'),
(26, 'invoice141', '', 'POLYGYNAX 12 OVULE', '2', '590', '', '1180', '', '', 'out', 'ordered', 'fullname', '', '2020-04-01 15:56:40', '2020-04-01'),
(27, 'invoice147', '', 'PAIDOTERIN SP 100ML', '4', '4000', '', '16000', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 19:30:39', '2020-04-05'),
(28, 'invoice147', '', 'CADISTIN SP 100ML', '5', '1000', '', '5000', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 19:30:39', '2020-04-05'),
(29, 'invoice147', '', 'FLUDITEC SP 2% ENF 125ML', '2', '2800', '', '5600', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 19:30:39', '2020-04-05'),
(30, 'invoice148', '', 'PAIDOTERIN SP 100ML', '1', '4000', '', '4000', '', '', 'out', 'ordered', 'fullname', 'Rutembesa Elvis', '2020-04-05 19:42:52', '2020-04-05'),
(31, 'Ref_Number148', '', 'AUGMENTIN ENFANT SP 60ML', '4', '6000', 'SXW66', '24000', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 21:53:23', '2020-04-05'),
(32, 'Ref_Number148', '', 'TERPONE SP 180ML AD', '2', '1', '', '2', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 19:49:31', '2020-04-05'),
(33, 'invoice150', '', 'ACINET SP 100ML', '4', '3000', '', '12000', '', '', 'out', 'ordered', 'fullname', 'Nyirangarama', '2020-04-05 20:17:24', '2020-04-05'),
(34, 'invoice151', '', 'ACYCLOVIR(UNIVIR) TAB 200MG 30', '1', '1', '', '1', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 20:23:58', '2020-04-05'),
(35, 'Ref_Number151', '', 'PAIDOTERIN SP 100ML', '5', '4000', '', '20000', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 20:25:29', '2020-04-05'),
(36, 'Ref_Number151', '', 'AUGMENTIN ENFANT SP 60ML', '4', '6000', 'SXW66', '24000', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 21:53:23', '2020-04-05'),
(37, 'Ref_Number151', '', 'POSITON 30GR CREME 1 TUBE FAES', '2', '500', '', '1000', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 20:47:12', '2020-04-05'),
(38, 'Ref_Number153', '', 'CANDID MOUTHPAINT 15ML(CANDI08)', '3', '2300', '', '6900', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 21:11:34', '2020-04-05'),
(39, 'Ref_Number153', '', 'PAIDOTERIN SP 100ML', '2', '4000', '', '8000', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 21:11:34', '2020-04-05'),
(40, 'Ref_Number153', '', 'SEKROL SP 15MG 100ML ENFANT', '2', '600', 'xd087', '1200', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 21:24:28', '2020-04-05'),
(41, 'invoice155', '', 'PAIDOTERIN SP 100ML', '1', '4000', '', '4000', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 21:42:06', '2020-04-05'),
(42, 'invoice155', '', 'PARACETAMOL SP 100ML', '1', '600', '', '600', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 21:42:06', '2020-04-05'),
(45, 'Ref_Number156', '', 'AUGMENTIN ENFANT SP 60ML', '4', '6000', 'SXW66', '24000', '', '', 'out', 'ordered', 'fullname', '', '2020-04-05 21:53:23', '2020-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(250) NOT NULL,
  `company` varchar(250) NOT NULL,
  `taxes` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `tin` varchar(250) NOT NULL,
  `done` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `company`, `taxes`, `logo`, `location`, `phone`, `tin`, `done`) VALUES
(1, 'XAVINA PHARMACY', '18%', '', 'Nyamirambo', '+250788659821', '109123649', 'fullname');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(250) NOT NULL,
  `stock_name` varchar(250) NOT NULL,
  `done` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `stock_name`, `done`) VALUES
(1, 'STOCK PRENCIPAL', '');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `tin` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `done` varchar(250) NOT NULL,
  `date_done` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `tin`, `phone`, `email`, `location`, `done`, `date_done`) VALUES
(3, 'Nyirangarama', '11223344556', '0787381418', 'rutembesaelvis2@gmail.com', 'Musanzee', 'fullname', '2019-10-14 02:41:10'),
(4, 'Kababa', '1088885212', '07888888888', 'kaba@gmail.com', 'gisimeti', 'fullname', '2019-12-12 15:32:39'),
(5, 'mutuzo', '10088779', '', '', '', 'fullname', '2019-12-19 09:42:11'),
(6, 'fafa', '7878', '4585454545454', 'fff', 'ff', 'fullname', '2019-12-19 10:04:43'),
(7, '', '', '', '', '', 'fullname', '2019-12-19 10:05:56'),
(8, 'Rutembesa Elvis', '11223344556', '0787381418', 'rutembesaelvis2@gmail.com', 'Nyamirambo', 'fullname', '2019-12-19 22:37:42'),
(9, 'Nyirangaramaaaaaaaaa', '11223344556', '0787381418', 'rutembesaelvis2@gmail.com', '11223344556', 'fullname', '2019-12-19 22:38:26'),
(10, 'fullnameaaaaaa', '11223344556', '0787381418', 'rutembesaelvis2@gmail.com', 'Nyamirambo', 'fullname', '2019-12-19 23:37:03'),
(11, 'bgjilnsldbnjisdnbkjnsdkbnk', '11223344556', '688967898', 'rutembesaelvis2@gmail.com', 'Nyamirambo', 'fullname', '2019-12-19 23:57:40'),
(12, 'super', '100000000', '0788888888', 'dfg@gmail.com', 'kicukiro', 'fullname', '2019-12-20 15:14:09'),
(13, 'Sun', '1010', '078883819', 'sun@gmail.com', 'Kigali', 'fullname', '2020-01-31 11:12:05');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(250) NOT NULL,
  `barcode` varchar(250) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `done` varchar(250) NOT NULL,
  `date_done` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adjust`
--
ALTER TABLE `adjust`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `insurances`
--
ALTER TABLE `insurances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `measurement`
--
ALTER TABLE `measurement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmethod`
--
ALTER TABLE `pmethod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adjust`
--
ALTER TABLE `adjust`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;
--
-- AUTO_INCREMENT for table `insurances`
--
ALTER TABLE `insurances`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=866;
--
-- AUTO_INCREMENT for table `measurement`
--
ALTER TABLE `measurement`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `pmethod`
--
ALTER TABLE `pmethod`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
