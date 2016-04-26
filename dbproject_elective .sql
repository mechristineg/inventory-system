-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2016 at 11:31 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbproject_elective`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE IF NOT EXISTS `category_table` (
  `CATEGORY` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`CATEGORY`) VALUES
('BRIEF'),
('CAP'),
('DRESS'),
('JACKET'),
('PANTS'),
('PANTY'),
('SHAWL'),
('SHOES'),
('SHORTS'),
('SLEEVELESS'),
('SLIPPERS'),
('T-SHIRTS');

-- --------------------------------------------------------

--
-- Table structure for table `color_table`
--

CREATE TABLE IF NOT EXISTS `color_table` (
  `COLOR` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color_table`
--

INSERT INTO `color_table` (`COLOR`) VALUES
('BLUE'),
('RED'),
('YELLOW');

-- --------------------------------------------------------

--
-- Table structure for table `description_table`
--

CREATE TABLE IF NOT EXISTS `description_table` (
  `DESCRIPTION` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `description_table`
--

INSERT INTO `description_table` (`DESCRIPTION`) VALUES
('BASEBALL CAP'),
('BEACH SHORT'),
('BOOTS'),
('CARDIGAN'),
('COCKTAIL'),
('COTTON'),
('FLOWERY DRESS'),
('KHAKI'),
('LEATHER'),
('LEGGINGS'),
('MAONG'),
('ROUND NECK T-SHIRT'),
('RUBBER'),
('RUFFLED DRESS'),
('SHEATH DRESS'),
('SILK'),
('SILK NECK T-SHIRT'),
('SLACKS'),
('TURTLENECK'),
('V NECK T-SHIRT');

-- --------------------------------------------------------

--
-- Table structure for table `main_table`
--

CREATE TABLE IF NOT EXISTS `main_table` (
`BARCODE` int(200) NOT NULL,
  `COLOR` varchar(200) NOT NULL,
  `SIZE` varchar(200) NOT NULL,
  `CATEGORY` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(200) NOT NULL,
  `STATUS` varchar(200) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=533 ;

--
-- Dumping data for table `main_table`
--

INSERT INTO `main_table` (`BARCODE`, `COLOR`, `SIZE`, `CATEGORY`, `DESCRIPTION`, `STATUS`) VALUES
(1, 'RED', 'S', 'T-SHIRTS', 'CARDIGAN', ''),
(2, 'RED', 'S', 'T-SHIRTS', 'TURTLENECK', ''),
(3, 'RED', 'S', 'T-SHIRTS', 'SILK NECK T-SHIRT', ''),
(4, 'RED', 'S', 'T-SHIRTS', 'V NECK T-SHIRT', ''),
(5, 'RED', 'S', 'T-SHIRTS', 'ROUND NECK T-SHIRT', ''),
(6, 'RED', 'M', 'T-SHIRTS', 'CARDIGAN', ''),
(7, 'RED', 'M', 'T-SHIRTS', 'TURTLENECK', ''),
(8, 'RED', 'M', 'T-SHIRTS', 'SILK NECK T-SHIRT', ''),
(9, 'RED', 'M', 'T-SHIRTS', 'V NECK T-SHIRT', ''),
(10, 'RED', 'M', 'T-SHIRTS', 'ROUND NECK T-SHIRT', ''),
(11, 'RED', 'L', 'T-SHIRTS', 'CARDIGAN', ''),
(12, 'RED', 'L', 'T-SHIRTS', 'TURTLENECK', ''),
(13, 'RED', 'L', 'T-SHIRTS', 'SILK NECK T-SHIRT', ''),
(14, 'RED', 'L', 'T-SHIRTS', 'V NECK T-SHIRT', ''),
(15, 'RED', 'L', 'T-SHIRTS', 'ROUND NECK T-SHIRT', ''),
(16, 'RED', 'XL', 'T-SHIRTS', 'CARDIGAN', ''),
(17, 'RED', 'XL', 'T-SHIRTS', 'TURTLENECK', ''),
(18, 'RED', 'XL', 'T-SHIRTS', 'SILK NECK T-SHIRT', ''),
(19, 'RED', 'XL', 'T-SHIRTS', 'V NECK T-SHIRT', ''),
(20, 'RED', 'XL', 'T-SHIRTS', 'ROUND NECK T-SHIRT', ''),
(21, 'YELLOW', 'S', 'T-SHIRTS', 'CARDIGAN', ''),
(22, 'YELLOW', 'S', 'T-SHIRTS', 'TURTLENECK', ''),
(23, 'YELLOW', 'S', 'T-SHIRTS', 'SILK NECK T-SHIRT', ''),
(24, 'YELLOW', 'S', 'T-SHIRTS', 'V NECK T-SHIRT', ''),
(25, 'YELLOW', 'S', 'T-SHIRTS', 'ROUND NECK T-SHIRT', ''),
(26, 'YELLOW', 'M', 'T-SHIRTS', 'CARDIGAN', ''),
(27, 'YELLOW', 'M', 'T-SHIRTS', 'TURTLENECK', ''),
(28, 'YELLOW', 'M', 'T-SHIRTS', 'SILK NECK T-SHIRT', ''),
(29, 'YELLOW', 'M', 'T-SHIRTS', 'V NECK T-SHIRT', ''),
(30, 'YELLOW', 'M', 'T-SHIRTS', 'ROUND NECK T-SHIRT', ''),
(31, 'YELLOW', 'M', 'T-SHIRTS', 'CARDIGAN', ''),
(32, 'YELLOW', 'M', 'T-SHIRTS', 'TURTLENECK', ''),
(33, 'YELLOW', 'M', 'T-SHIRTS', 'SILK NECK T-SHIRT', ''),
(34, 'YELLOW', 'M', 'T-SHIRTS', 'V NECK T-SHIRT', ''),
(35, 'YELLOW', 'M', 'T-SHIRTS', 'ROUND NECK T-SHIRT', ''),
(36, 'YELLOW', 'L', 'T-SHIRTS', 'CARDIGAN', ''),
(37, 'YELLOW', 'L', 'T-SHIRTS', 'TURTLENECK', ''),
(38, 'YELLOW', 'L', 'T-SHIRTS', 'SILK NECK T-SHIRT', ''),
(39, 'YELLOW', 'L', 'T-SHIRTS', 'V NECK T-SHIRT', ''),
(40, 'YELLOW', 'L', 'T-SHIRTS', 'ROUND NECK T-SHIRT', ''),
(41, 'YELLOW', 'XL', 'T-SHIRTS', 'CARDIGAN', ''),
(42, 'YELLOW', 'XL', 'T-SHIRTS', 'TURTLENECK', ''),
(43, 'YELLOW', 'XL', 'T-SHIRTS', 'SILK NECK T-SHIRT', ''),
(44, 'YELLOW', 'XL', 'T-SHIRTS', 'V NECK T-SHIRT', ''),
(45, 'YELLOW', 'XL', 'T-SHIRTS', 'ROUND NECK T-SHIRT', ''),
(46, 'BLUE', 'S', 'T-SHIRTS', 'CARDIGAN', ''),
(47, 'BLUE', 'S', 'T-SHIRTS', 'TURTLENECK', ''),
(48, 'BLUE', 'S', 'T-SHIRTS', 'SILK NECK T-SHIRT', ''),
(49, 'BLUE', 'S', 'T-SHIRTS', 'V NECK T-SHIRT', ''),
(50, 'BLUE', 'S', 'T-SHIRTS', 'ROUND NECK T-SHIRT', ''),
(51, 'BLUE', 'M', 'T-SHIRTS', 'CARDIGAN', ''),
(52, 'BLUE', 'M', 'T-SHIRTS', 'TURTLENECK', ''),
(53, 'BLUE', 'M', 'T-SHIRTS', 'SILK NECK T-SHIRT', ''),
(54, 'BLUE', 'M', 'T-SHIRTS', 'V NECK T-SHIRT', ''),
(55, 'BLUE', 'M', 'T-SHIRTS', 'ROUND NECK T-SHIRT', ''),
(56, 'BLUE', 'L', 'T-SHIRTS', 'CARDIGAN', ''),
(57, 'BLUE', 'L', 'T-SHIRTS', 'TURTLENECK', ''),
(58, 'BLUE', 'L', 'T-SHIRTS', 'SILK NECK T-SHIRT', ''),
(59, 'BLUE', 'L', 'T-SHIRTS', 'V NECK T-SHIRT', ''),
(60, 'BLUE', 'L', 'T-SHIRTS', 'ROUND NECK T-SHIRT', ''),
(61, 'BLUE', 'XL', 'T-SHIRTS', 'CARDIGAN', ''),
(62, 'BLUE', 'XL', 'T-SHIRTS', 'TURTLENECK', ''),
(63, 'BLUE', 'XL', 'T-SHIRTS', 'SILK NECK T-SHIRT', ''),
(64, 'BLUE', 'XL', 'T-SHIRTS', 'V NECK T-SHIRT', ''),
(65, 'BLUE', 'XL', 'T-SHIRTS', 'ROUND NECK T-SHIRT', ''),
(66, 'RED', 'S', 'SLEEVELESS', 'CARDIGAN', ''),
(67, 'RED', 'S', 'SLEEVELESS', 'SILK', ''),
(68, 'RED', 'S', 'SLEEVELESS', 'MAONG', ''),
(69, 'RED', 'S', 'SLEEVELESS', 'CARDIGAN', ''),
(70, 'RED', 'S', 'SLEEVELESS', 'SILK', ''),
(71, 'RED', 'M', 'SLEEVELESS', 'MAONG', ''),
(72, 'RED', 'M', 'SLEEVELESS', 'CARDIGAN', ''),
(73, 'RED', 'M', 'SLEEVELESS', 'SILK', ''),
(74, 'RED', 'M', 'SLEEVELESS', 'MAONG', ''),
(75, 'RED', 'M', 'SLEEVELESS', 'CARDIGAN', ''),
(76, 'RED', 'L', 'SLEEVELESS', 'SILK', ''),
(77, 'RED', 'L', 'SLEEVELESS', 'MAONG', ''),
(78, 'RED', 'L', 'SLEEVELESS', 'CARDIGAN', ''),
(79, 'RED', 'L', 'SLEEVELESS', 'SILK', ''),
(80, 'RED', 'L', 'SLEEVELESS', 'MAONG', ''),
(81, 'RED', 'XL', 'SLEEVELESS', 'CARDIGAN', ''),
(82, 'RED', 'XL', 'SLEEVELESS', 'SILK', ''),
(83, 'RED', 'XL', 'SLEEVELESS', 'MAONG', ''),
(84, 'RED', 'XL', 'SLEEVELESS', 'CARDIGAN', ''),
(85, 'RED', 'XL', 'SLEEVELESS', 'SILK', ''),
(86, 'YELLOW', 'S', 'SLEEVELESS', 'MAONG', ''),
(87, 'YELLOW', 'S', 'SLEEVELESS', 'CARDIGAN', ''),
(88, 'YELLOW', 'S', 'SLEEVELESS', 'SILK', ''),
(89, 'YELLOW', 'S', 'SLEEVELESS', 'MAONG', ''),
(90, 'YELLOW', 'S', 'SLEEVELESS', 'CARDIGAN', ''),
(91, 'YELLOW', 'M', 'SLEEVELESS', 'SILK', ''),
(92, 'YELLOW', 'M', 'SLEEVELESS', 'MAONG', ''),
(93, 'YELLOW', 'M', 'SLEEVELESS', 'CARDIGAN', ''),
(94, 'YELLOW', 'M', 'SLEEVELESS', 'SILK', ''),
(95, 'YELLOW', 'M', 'SLEEVELESS', 'SILK', ''),
(96, 'YELLOW', 'L', 'SLEEVELESS', 'CARDIGAN', ''),
(97, 'YELLOW', 'L', 'SLEEVELESS', 'SILK', ''),
(98, 'YELLOW', 'L', 'SLEEVELESS', 'MAONG', ''),
(99, 'YELLOW', 'L', 'SLEEVELESS', 'CARDIGAN', ''),
(100, 'YELLOW', 'L', 'SLEEVELESS', 'SILK', ''),
(101, 'YELLOW', 'XL', 'SLEEVELESS', 'MAONG', ''),
(102, 'YELLOW', 'XL', 'SLEEVELESS', 'CARDIGAN', ''),
(103, 'YELLOW', 'XL', 'SLEEVELESS', 'SILK', ''),
(104, 'YELLOW', 'XL', 'SLEEVELESS', 'MAONG', ''),
(105, 'YELLOW', 'XL', 'SLEEVELESS', 'CARDIGAN', ''),
(106, 'BLUE', 'S', 'SLEEVELESS', 'SILK', ''),
(107, 'BLUE', 'S', 'SLEEVELESS', 'MAONG', ''),
(108, 'BLUE', 'S', 'SLEEVELESS', 'CARDIGAN', ''),
(109, 'BLUE', 'S', 'SLEEVELESS', 'SILK', ''),
(110, 'BLUE', 'S', 'SLEEVELESS', 'MAONG', ''),
(111, 'BLUE', 'M', 'SLEEVELESS', 'CARDIGAN', ''),
(112, 'BLUE', 'M', 'SLEEVELESS', 'SILK', ''),
(113, 'BLUE', 'M', 'SLEEVELESS', 'MAONG', ''),
(114, 'BLUE', 'M', 'SLEEVELESS', 'CARDIGAN', ''),
(115, 'BLUE', 'M', 'SLEEVELESS', 'SILK', ''),
(116, 'BLUE', 'L', 'SLEEVELESS', 'MAONG', ''),
(117, 'BLUE', 'L', 'SLEEVELESS', 'CARDIGAN', ''),
(118, 'BLUE', 'L', 'SLEEVELESS', 'SILK', ''),
(119, 'BLUE', 'L', 'SLEEVELESS', 'MAONG', ''),
(120, 'BLUE', 'L', 'SLEEVELESS', 'CARDIGAN', ''),
(121, 'BLUE', 'XL', 'SLEEVELESS', 'SILK', ''),
(122, 'BLUE', 'XL', 'SLEEVELESS', 'MAONG', ''),
(123, 'BLUE', 'XL', 'SLEEVELESS', 'CARDIGAN', ''),
(124, 'BLUE', 'XL', 'SLEEVELESS', 'SILK', ''),
(125, 'BLUE', 'XL', 'SLEEVELESS', 'MAONG', ''),
(126, 'RED', 'S', 'JACKET', 'LEATHER', ''),
(127, 'RED', 'S', 'JACKET', 'MAONG', ''),
(128, 'RED', 'S', 'JACKET', 'CARDIGAN', ''),
(129, 'RED', 'S', 'JACKET', 'COTTON', ''),
(130, 'RED', 'S', 'JACKET', 'LEATHER', ''),
(131, 'RED', 'M', 'JACKET', 'MAONG', ''),
(132, 'RED', 'M', 'JACKET', 'CARDIGAN', ''),
(133, 'RED', 'M', 'JACKET', 'COTTON', ''),
(134, 'RED', 'M', 'JACKET', 'LEATHER', ''),
(135, 'RED', 'M', 'JACKET', 'MAONG', ''),
(136, 'RED', 'L', 'JACKET', 'CARDIGAN', ''),
(137, 'RED', 'L', 'JACKET', 'COTTON', ''),
(138, 'RED', 'L', 'JACKET', 'LEATHER', ''),
(139, 'RED', 'L', 'JACKET', 'MAONG', ''),
(140, 'RED', 'L', 'JACKET', 'CARDIGAN', ''),
(141, 'RED', 'XL', 'JACKET', 'COTTON', ''),
(142, 'RED', 'XL', 'JACKET', 'LEATHER', ''),
(143, 'RED', 'XL', 'JACKET', 'MAONG', ''),
(144, 'RED', 'XL', 'JACKET', 'CARDIGAN', ''),
(145, 'RED', 'XL', 'JACKET', 'COTTON', ''),
(146, 'YELLOW', 'S', 'JACKET', 'LEATHER', ''),
(147, 'YELLOW', 'S', 'JACKET', 'MAONG', ''),
(148, 'YELLOW', 'S', 'JACKET', 'CARDIGAN', ''),
(149, 'YELLOW', 'S', 'JACKET', 'COTTON', ''),
(150, 'YELLOW', 'S', 'JACKET', 'LEATHER', ''),
(151, 'YELLOW', 'M', 'JACKET', 'MAONG', ''),
(152, 'YELLOW', 'M', 'JACKET', 'CARDIGAN', ''),
(153, 'YELLOW', 'M', 'JACKET', 'COTTON', ''),
(154, 'YELLOW', 'M', 'JACKET', 'LEATHER', ''),
(155, 'YELLOW', 'M', 'JACKET', 'MAONG', ''),
(156, 'YELLOW', 'L', 'JACKET', 'CARDIGAN', ''),
(157, 'YELLOW', 'L', 'JACKET', 'COTTON', ''),
(158, 'YELLOW', 'L', 'JACKET', 'LEATHER', ''),
(159, 'YELLOW', 'L', 'JACKET', 'MAONG', ''),
(160, 'YELLOW', 'L', 'JACKET', 'CARDIGAN', ''),
(161, 'YELLOW', 'XL', 'JACKET', 'COTTON', ''),
(162, 'YELLOW', 'XL', 'JACKET', 'LEATHER', ''),
(163, 'YELLOW', 'XL', 'JACKET', 'MAONG', ''),
(164, 'YELLOW', 'XL', 'JACKET', 'CARDIGAN', ''),
(165, 'YELLOW', 'XL', 'JACKET', 'COTTON', ''),
(166, 'BLUE', 'S', 'JACKET', 'LEATHER', ''),
(167, 'BLUE', 'S', 'JACKET', 'MAONG', ''),
(168, 'BLUE', 'S', 'JACKET', 'CARDIGAN', ''),
(169, 'BLUE', 'S', 'JACKET', 'COTTON', ''),
(170, 'BLUE', 'S', 'JACKET', 'LEATHER', ''),
(171, 'BLUE', 'M', 'JACKET', 'MAONG', ''),
(172, 'BLUE', 'M', 'JACKET', 'CARDIGAN', ''),
(173, 'BLUE', 'M', 'JACKET', 'COTTON', ''),
(174, 'BLUE', 'M', 'JACKET', 'LEATHER', ''),
(175, 'BLUE', 'M', 'JACKET', 'MAONG', ''),
(176, 'BLUE', 'L', 'JACKET', 'CARDIGAN', ''),
(177, 'BLUE', 'L', 'JACKET', 'COTTON', ''),
(178, 'BLUE', 'L', 'JACKET', 'LEATHER', ''),
(179, 'BLUE', 'L', 'JACKET', 'MAONG', ''),
(180, 'BLUE', 'L', 'JACKET', 'CARDIGAN', ''),
(181, 'BLUE', 'XL', 'JACKET', 'COTTON', ''),
(182, 'BLUE', 'XL', 'JACKET', 'LEATHER', ''),
(183, 'BLUE', 'XL', 'JACKET', 'MAONG', ''),
(184, 'BLUE', 'XL', 'JACKET', 'CARDIGAN', ''),
(185, 'BLUE', 'XL', 'JACKET', 'COTTON', ''),
(186, 'RED', 'S', 'DRESS', 'FLOWERY DRESS', ''),
(187, 'RED', 'S', 'DRESS', 'RUFFLED DRESS', ''),
(188, 'RED', 'S', 'DRESS', 'COCKTAIL', ''),
(189, 'RED', 'S', 'DRESS', 'SHEATH DRESS', ''),
(190, 'RED', 'S', 'DRESS', 'FLOWERY DRESS', ''),
(191, 'RED', 'M', 'DRESS', 'RUFFLED DRESS', ''),
(192, 'RED', 'M', 'DRESS', 'COCKTAIL', ''),
(193, 'RED', 'M', 'DRESS', 'SHEATH DRESS', ''),
(194, 'RED', 'M', 'DRESS', 'FLOWERY DRESS', ''),
(195, 'RED', 'M', 'DRESS', 'RUFFLED DRESS', ''),
(196, 'RED', 'L', 'DRESS', 'COCKTAIL', ''),
(197, 'RED', 'L', 'DRESS', 'SHEATH DRESS', ''),
(198, 'RED', 'L', 'DRESS', 'FLOWERY DRESS', ''),
(199, 'RED', 'L', 'DRESS', 'RUFFLED DRESS', ''),
(200, 'RED', 'L', 'DRESS', 'COCKTAIL', ''),
(201, 'RED', 'XL', 'DRESS', 'SHEATH DRESS', ''),
(202, 'RED', 'XL', 'DRESS', 'FLOWERY DRESS', ''),
(203, 'RED', 'XL', 'DRESS', 'RUFFLED DRESS', ''),
(204, 'RED', 'XL', 'DRESS', 'COCKTAIL', ''),
(205, 'RED', 'XL', 'DRESS', 'SHEATH DRESS', ''),
(206, 'YELLOW', 'S', 'DRESS', 'FLOWERY DRESS', ''),
(207, 'YELLOW', 'S', 'DRESS', 'RUFFLED DRESS', ''),
(208, 'YELLOW', 'S', 'DRESS', 'COCKTAIL', ''),
(209, 'YELLOW', 'S', 'DRESS', 'SHEATH DRESS', ''),
(210, 'YELLOW', 'S', 'DRESS', 'FLOWERY DRESS', ''),
(211, 'YELLOW', 'M', 'DRESS', 'RUFFLED DRESS', ''),
(212, 'YELLOW', 'M', 'DRESS', 'COCKTAIL', ''),
(213, 'YELLOW', 'M', 'DRESS', 'SHEATH DRESS', ''),
(214, 'YELLOW', 'M', 'DRESS', 'FLOWERY DRESS', ''),
(215, 'YELLOW', 'M', 'DRESS', 'RUFFLED DRESS', ''),
(216, 'YELLOW', 'L', 'DRESS', 'COCKTAIL', ''),
(217, 'YELLOW', 'L', 'DRESS', 'SHEATH DRESS', ''),
(218, 'YELLOW', 'L', 'DRESS', 'FLOWERY DRESS', ''),
(219, 'YELLOW', 'L', 'DRESS', 'RUFFLED DRESS', ''),
(220, 'YELLOW', 'L', 'DRESS', 'COCKTAIL', ''),
(221, 'YELLOW', 'XL', 'DRESS', 'SHEATH DRESS', ''),
(222, 'YELLOW', 'XL', 'DRESS', 'FLOWERY DRESS', ''),
(223, 'YELLOW', 'XL', 'DRESS', 'RUFFLED DRESS', ''),
(224, 'YELLOW', 'XL', 'DRESS', 'COCKTAIL', ''),
(225, 'YELLOW', 'XL', 'DRESS', 'SHEATH DRESS', ''),
(226, 'BLUE', 'S', 'DRESS', 'FLOWERY DRESS', ''),
(227, 'BLUE', 'S', 'DRESS', 'RUFFLED DRESS', ''),
(228, 'BLUE', 'S', 'DRESS', 'COCKTAIL', ''),
(229, 'BLUE', 'S', 'DRESS', 'SHEATH DRESS', ''),
(230, 'BLUE', 'S', 'DRESS', 'FLOWERY DRESS', ''),
(231, 'BLUE', 'M', 'DRESS', 'RUFFLED DRESS', ''),
(232, 'BLUE', 'M', 'DRESS', 'COCKTAIL', ''),
(233, 'BLUE', 'M', 'DRESS', 'SHEATH DRESS', ''),
(234, 'BLUE', 'M', 'DRESS', 'FLOWERY DRESS', ''),
(235, 'BLUE', 'M', 'DRESS', 'RUFFLED DRESS', ''),
(236, 'BLUE', 'L', 'DRESS', 'COCKTAIL', ''),
(237, 'BLUE', 'L', 'DRESS', 'SHEATH DRESS', ''),
(238, 'BLUE', 'L', 'DRESS', 'FLOWERY DRESS', ''),
(239, 'BLUE', 'L', 'DRESS', 'RUFFLED DRESS', ''),
(240, 'BLUE', 'L', 'DRESS', 'COCKTAIL', ''),
(241, 'BLUE', 'XL', 'DRESS', 'SHEATH DRESS', ''),
(242, 'BLUE', 'XL', 'DRESS', 'FLOWERY DRESS', ''),
(243, 'BLUE', 'XL', 'DRESS', 'RUFFLED DRESS', ''),
(244, 'BLUE', 'XL', 'DRESS', 'COCKTAIL', ''),
(245, 'BLUE', 'XL', 'DRESS', 'SHEATH DRESS', ''),
(246, 'RED', '28', 'SHORTS', 'MAONG', ''),
(247, 'RED', '28', 'SHORTS', 'BEACH SHORT', ''),
(248, 'RED', '28', 'SHORTS', 'MAONG', ''),
(249, 'RED', '28', 'SHORTS', 'BEACH SHORT', ''),
(250, 'RED', '28', 'SHORTS', 'BEACH SHORT', ''),
(251, 'RED', '29', 'SHORTS', 'BEACH SHORT', ''),
(252, 'RED', '29', 'SHORTS', 'MAONG', ''),
(253, 'RED', '29', 'SHORTS', 'BEACH SHORT', ''),
(254, 'RED', '29', 'SHORTS', 'MAONG', ''),
(255, 'RED', '29', 'SHORTS', 'BEACH SHORT', ''),
(256, 'RED', '30', 'SHORTS', 'MAONG', ''),
(257, 'RED', '30', 'SHORTS', 'BEACH SHORT', ''),
(258, 'RED', '30', 'SHORTS', 'MAONG', ''),
(259, 'RED', '30', 'SHORTS', 'BEACH SHORT', ''),
(260, 'RED', '30', 'SHORTS', 'MAONG', ''),
(261, 'YELLOW', '28', 'SHORTS', 'BEACH SHORT', ''),
(262, 'YELLOW', '28', 'SHORTS', 'BEACH SHORT', ''),
(263, 'YELLOW', '28', 'SHORTS', 'MAONG', ''),
(264, 'YELLOW', '28', 'SHORTS', 'BEACH SHORT', ''),
(265, 'YELLOW', '28', 'SHORTS', 'MAONG', ''),
(266, 'YELLOW', '29', 'SHORTS', 'MAONG', ''),
(267, 'YELLOW', '29', 'SHORTS', 'BEACH SHORT', ''),
(268, 'YELLOW', '29', 'SHORTS', 'MAONG', ''),
(269, 'YELLOW', '29', 'SHORTS', 'BEACH SHORT', ''),
(270, 'YELLOW', '29', 'SHORTS', 'BEACH SHORT', ''),
(271, 'YELLOW', '30', 'SHORTS', 'BEACH SHORT', ''),
(272, 'YELLOW', '30', 'SHORTS', 'MAONG', ''),
(273, 'YELLOW', '30', 'SHORTS', 'BEACH SHORT', ''),
(274, 'YELLOW', '30', 'SHORTS', 'MAONG', ''),
(275, 'YELLOW', '30', 'SHORTS', 'BEACH SHORT', ''),
(276, 'BLUE', '28', 'SHORTS', 'MAONG', ''),
(277, 'BLUE', '28', 'SHORTS', 'BEACH SHORT', ''),
(278, 'BLUE', '28', 'SHORTS', 'MAONG', ''),
(279, 'BLUE', '28', 'SHORTS', 'BEACH SHORT', ''),
(280, 'BLUE', '28', 'SHORTS', 'MAONG', ''),
(281, 'BLUE', '29', 'SHORTS', 'BEACH SHORT', ''),
(282, 'BLUE', '29', 'SHORTS', 'MAONG', ''),
(283, 'BLUE', '29', 'SHORTS', 'BEACH SHORT', ''),
(284, 'BLUE', '29', 'SHORTS', 'MAONG', ''),
(285, 'BLUE', '29', 'SHORTS', 'BEACH SHORT', ''),
(286, 'BLUE', '30', 'SHORTS', 'MAONG', ''),
(287, 'BLUE', '30', 'SHORTS', 'BEACH SHORT', ''),
(288, 'BLUE', '30', 'SHORTS', 'MAONG', ''),
(289, 'BLUE', '30', 'SHORTS', 'BEACH SHORT', ''),
(290, 'BLUE', '30', 'SHORTS', 'MAONG', ''),
(291, 'RED', '28', 'PANTS', 'MAONG', ''),
(292, 'RED', '28', 'PANTS', 'LEGGINGS', ''),
(293, 'RED', '28', 'PANTS', 'SLACKS', ''),
(294, 'RED', '28', 'PANTS', 'KHAKI', ''),
(295, 'RED', '28', 'PANTS', 'MAONG', ''),
(296, 'RED', '29', 'PANTS', 'LEGGINGS', ''),
(297, 'RED', '29', 'PANTS', 'SLACKS', ''),
(298, 'RED', '29', 'PANTS', 'KHAKI', ''),
(299, 'RED', '29', 'PANTS', 'MAONG', ''),
(300, 'RED', '29', 'PANTS', 'LEGGINGS', ''),
(301, 'RED', '29', 'PANTS', 'LEGGINGS', ''),
(302, 'RED', '29', 'PANTS', 'SLACKS', ''),
(303, 'RED', '29', 'PANTS', 'KHAKI', ''),
(304, 'RED', '29', 'PANTS', 'MAONG', ''),
(305, 'RED', '29', 'PANTS', 'LEGGINGS', ''),
(306, 'RED', '30', 'PANTS', 'SLACKS', ''),
(307, 'RED', '30', 'PANTS', 'KHAKI', ''),
(308, 'RED', '30', 'PANTS', 'MAONG', ''),
(309, 'RED', '30', 'PANTS', 'LEGGINGS', ''),
(310, 'RED', '30', 'PANTS', 'SLACKS', ''),
(311, 'YELLOW', '28', 'PANTS', 'KHAKI', ''),
(312, 'YELLOW', '28', 'PANTS', 'MAONG', ''),
(313, 'YELLOW', '28', 'PANTS', 'LEGGINGS', ''),
(314, 'YELLOW', '28', 'PANTS', 'SLACKS', ''),
(315, 'YELLOW', '28', 'PANTS', 'KHAKI', ''),
(316, 'YELLOW', '29', 'PANTS', 'MAONG', ''),
(317, 'YELLOW', '29', 'PANTS', 'LEGGINGS', ''),
(318, 'YELLOW', '29', 'PANTS', 'SLACKS', ''),
(319, 'YELLOW', '29', 'PANTS', 'KHAKI', ''),
(320, 'YELLOW', '29', 'PANTS', 'MAONG', ''),
(321, 'YELLOW', '30', 'PANTS', 'LEGGINGS', ''),
(322, 'YELLOW', '30', 'PANTS', 'SLACKS', ''),
(323, 'YELLOW', '30', 'PANTS', 'KHAKI', ''),
(324, 'YELLOW', '30', 'PANTS', 'MAONG', ''),
(325, 'YELLOW', '30', 'PANTS', 'LEGGINGS', ''),
(326, 'BLUE', '28', 'PANTS', 'SLACKS', ''),
(327, 'BLUE', '28', 'PANTS', 'KHAKI', ''),
(328, 'BLUE', '28', 'PANTS', 'MAONG', ''),
(329, 'BLUE', '28', 'PANTS', 'LEGGINGS', ''),
(330, 'BLUE', '28', 'PANTS', 'SLACKS', ''),
(331, 'BLUE', '29', 'PANTS', 'KHAKI', ''),
(332, 'BLUE', '29', 'PANTS', 'MAONG', ''),
(333, 'BLUE', '29', 'PANTS', 'LEGGINGS', ''),
(334, 'BLUE', '29', 'PANTS', 'SLACKS', ''),
(335, 'BLUE', '29', 'PANTS', 'KHAKI', ''),
(336, 'BLUE', '30', 'PANTS', 'MAONG', ''),
(337, 'BLUE', '30', 'PANTS', 'LEGGINGS', ''),
(338, 'BLUE', '30', 'PANTS', 'SLACKS', ''),
(339, 'BLUE', '30', 'PANTS', 'KHAKI', ''),
(340, 'BLUE', '30', 'PANTS', 'MAONG', ''),
(341, '', '5', 'SHOES', 'RUBBER', ''),
(342, '', '5', 'SHOES', 'LEATHER', ''),
(343, '', '5', 'SHOES', 'BOOTS', ''),
(344, '', '5', 'SHOES', 'RUBBER', ''),
(345, '', '5', 'SHOES', 'LEATHER', ''),
(346, '', '6', 'SHOES', 'BOOTS', ''),
(347, '', '6', 'SHOES', 'RUBBER', ''),
(348, '', '6', 'SHOES', 'LEATHER', ''),
(349, '', '6', 'SHOES', 'BOOTS', ''),
(350, '', '6', 'SHOES', 'RUBBER', ''),
(351, '', '7', 'SHOES', 'LEATHER', ''),
(352, '', '7', 'SHOES', 'BOOTS', ''),
(353, '', '7', 'SHOES', 'RUBBER', ''),
(354, '', '7', 'SHOES', 'LEATHER', ''),
(355, '', '7', 'SHOES', 'BOOTS', ''),
(356, '', '8', 'SHOES', 'RUBBER', ''),
(357, '', '8', 'SHOES', 'LEATHER', ''),
(358, '', '8', 'SHOES', 'BOOTS', ''),
(359, '', '8', 'SHOES', 'RUBBER', ''),
(360, '', '8', 'SHOES', 'LEATHER', ''),
(361, '', '9', 'SHOES', 'BOOTS', ''),
(362, '', '9', 'SHOES', 'RUBBER', ''),
(363, '', '9', 'SHOES', 'LEATHER', ''),
(364, '', '9', 'SHOES', 'BOOTS', ''),
(365, '', '9', 'SHOES', 'RUBBER', ''),
(366, '', '10', 'SHOES', 'LEATHER', ''),
(367, '', '10', 'SHOES', 'BOOTS', ''),
(368, '', '10', 'SHOES', 'RUBBER', ''),
(369, '', '10', 'SHOES', 'LEATHER', ''),
(370, '', '10', 'SHOES', 'BOOTS', ''),
(371, '', '11', 'SHOES', 'RUBBER', ''),
(372, '', '11', 'SHOES', 'LEATHER', ''),
(373, '', '11', 'SHOES', 'BOOTS', ''),
(374, '', '11', 'SHOES', 'RUBBER', ''),
(375, '', '11', 'SHOES', 'LEATHER', ''),
(376, '', '12', 'SHOES', 'BOOTS', ''),
(377, '', '12', 'SHOES', 'RUBBER', ''),
(378, '', '12', 'SHOES', 'LEATHER', ''),
(379, '', '12', 'SHOES', 'BOOTS', ''),
(380, '', '12', 'SHOES', 'RUBBER', ''),
(381, '', '5', 'SLIPPERS', 'LEATHER', ''),
(382, '', '5', 'SLIPPERS', 'RUBBER', ''),
(383, '', '5', 'SLIPPERS', 'LEATHER', ''),
(384, '', '5', 'SLIPPERS', 'RUBBER', ''),
(385, '', '5', 'SLIPPERS', 'LEATHER', ''),
(386, '', '6', 'SLIPPERS', 'RUBBER', ''),
(387, '', '6', 'SLIPPERS', 'LEATHER', ''),
(388, '', '6', 'SLIPPERS', 'RUBBER', ''),
(389, '', '6', 'SLIPPERS', 'LEATHER', ''),
(390, '', '6', 'SLIPPERS', 'RUBBER', ''),
(391, '', '7', 'SLIPPERS', 'LEATHER', ''),
(392, '', '7', 'SLIPPERS', 'RUBBER', ''),
(393, '', '7', 'SLIPPERS', 'LEATHER', ''),
(394, '', '7', 'SLIPPERS', 'RUBBER', ''),
(395, '', '7', 'SLIPPERS', 'LEATHER', ''),
(396, '', '8', 'SLIPPERS', 'RUBBER', ''),
(397, '', '8', 'SLIPPERS', 'LEATHER', ''),
(398, '', '8', 'SLIPPERS', 'RUBBER', ''),
(399, '', '8', 'SLIPPERS', 'LEATHER', ''),
(400, '', '8', 'SLIPPERS', 'RUBBER', ''),
(401, '', '9', 'SLIPPERS', 'LEATHER', ''),
(402, '', '9', 'SLIPPERS', 'RUBBER', ''),
(403, '', '9', 'SLIPPERS', 'LEATHER', ''),
(404, '', '9', 'SLIPPERS', 'RUBBER', ''),
(405, '', '9', 'SLIPPERS', 'LEATHER', ''),
(406, '', '10', 'SLIPPERS', 'RUBBER', ''),
(407, '', '10', 'SLIPPERS', 'LEATHER', ''),
(408, '', '10', 'SLIPPERS', 'RUBBER', ''),
(409, '', '10', 'SLIPPERS', 'LEATHER', ''),
(410, '', '10', 'SLIPPERS', 'RUBBER', ''),
(411, '', '11', 'SLIPPERS', 'LEATHER', ''),
(412, '', '11', 'SLIPPERS', 'RUBBER', ''),
(413, '', '11', 'SLIPPERS', 'LEATHER', ''),
(414, '', '11', 'SLIPPERS', 'RUBBER', ''),
(415, '', '11', 'SLIPPERS', 'LEATHER', ''),
(416, '', '12', 'SLIPPERS', 'RUBBER', ''),
(417, '', '12', 'SLIPPERS', 'LEATHER', ''),
(418, '', '12', 'SLIPPERS', 'RUBBER', ''),
(419, '', '12', 'SLIPPERS', 'LEATHER', ''),
(420, '', '12', 'SLIPPERS', 'RUBBER', ''),
(421, '', 'S', 'BRIEF', 'COTTON', ''),
(422, '', 'S', 'BRIEF', 'SILK', ''),
(423, '', 'S', 'BRIEF', 'COTTON', ''),
(424, '', 'S', 'BRIEF', 'SILK', ''),
(425, '', 'S', 'BRIEF', 'COTTON', ''),
(426, '', 'M', 'BRIEF', 'SILK', ''),
(427, '', 'M', 'BRIEF', 'COTTON', ''),
(428, '', 'M', 'BRIEF', 'SILK', ''),
(429, '', 'M', 'BRIEF', 'COTTON', ''),
(430, '', 'M', 'BRIEF', 'SILK', ''),
(431, '', 'L', 'BRIEF', 'COTTON', ''),
(432, '', 'L', 'BRIEF', 'SILK', ''),
(433, '', 'L', 'BRIEF', 'COTTON', ''),
(434, '', 'L', 'BRIEF', 'SILK', ''),
(435, '', 'L', 'BRIEF', 'COTTON', ''),
(436, '', 'XL', 'BRIEF', 'SILK', ''),
(437, '', 'XL', 'BRIEF', 'COTTON', ''),
(438, '', 'XL', 'BRIEF', 'SILK', ''),
(439, '', 'XL', 'BRIEF', 'COTTON', ''),
(440, '', 'XL', 'BRIEF', 'SILK', ''),
(441, '', 'S', 'PANTY', 'COTTON', ''),
(442, '', 'S', 'PANTY', 'SILK', ''),
(443, '', 'S', 'PANTY', 'COTTON', ''),
(444, '', 'S', 'PANTY', 'SILK', ''),
(445, '', 'S', 'PANTY', 'COTTON', ''),
(446, '', 'M', 'PANTY', 'SILK', ''),
(447, '', 'M', 'PANTY', 'COTTON', ''),
(448, '', 'M', 'PANTY', 'SILK', ''),
(449, '', 'M', 'PANTY', 'COTTON', ''),
(450, '', 'M', 'PANTY', 'SILK', ''),
(451, '', 'L', 'PANTY', 'COTTON', ''),
(452, '', 'L', 'PANTY', 'SILK', ''),
(453, '', 'L', 'PANTY', 'COTTON', ''),
(454, '', 'L', 'PANTY', 'SILK', ''),
(455, '', 'L', 'PANTY', 'COTTON', ''),
(456, '', 'XL', 'PANTY', 'SILK', ''),
(457, '', 'XL', 'PANTY', 'COTTON', ''),
(458, '', 'XL', 'PANTY', 'SILK', ''),
(459, '', 'XL', 'PANTY', 'COTTON', ''),
(460, '', 'XL', 'PANTY', 'SILK', ''),
(461, 'RED', '', 'CAP', 'BASEBALL CAP', ''),
(462, 'RED', '', 'CAP', 'BASEBALL CAP', ''),
(463, 'RED', '', 'CAP', 'BASEBALL CAP', ''),
(464, 'RED', '', 'CAP', 'BASEBALL CAP', ''),
(465, 'RED', '', 'CAP', 'BASEBALL CAP', ''),
(466, 'YELLOW', '', 'CAP', 'BASEBALL CAP', ''),
(467, 'YELLOW', '', 'CAP', 'BASEBALL CAP', ''),
(468, 'YELLOW', '', 'CAP', 'BASEBALL CAP', ''),
(469, 'YELLOW', '', 'CAP', 'BASEBALL CAP', ''),
(470, 'YELLOW', '', 'CAP', 'BASEBALL CAP', ''),
(471, 'BLUE', '', 'CAP', 'BASEBALL CAP', ''),
(472, 'BLUE', '', 'CAP', 'BASEBALL CAP', ''),
(473, 'BLUE', '', 'CAP', 'BASEBALL CAP', ''),
(474, 'BLUE', '', 'CAP', 'BASEBALL CAP', ''),
(475, 'BLUE', '', 'CAP', 'BASEBALL CAP', ''),
(476, 'RED', '', 'SHAWL', 'COTTON', ''),
(477, 'RED', '', 'SHAWL', 'SILK', ''),
(478, 'RED', '', 'SHAWL', 'COTTON', ''),
(479, 'RED', '', 'SHAWL', 'SILK', ''),
(480, 'RED', '', 'SHAWL', 'COTTON', ''),
(481, 'YELLOW', '', 'SHAWL', 'SILK', ''),
(482, 'YELLOW', '', 'SHAWL', 'COTTON', ''),
(483, 'YELLOW', '', 'SHAWL', 'SILK', ''),
(484, 'YELLOW', '', 'SHAWL', 'COTTON', ''),
(485, 'YELLOW', '', 'SHAWL', 'SILK', ''),
(486, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(487, 'BLUE', '', 'SHAWL', 'SILK', ''),
(488, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(489, 'BLUE', '', 'SHAWL', 'SILK', ''),
(490, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(491, 'BLUE', '', 'SHAWL', 'SILK', ''),
(492, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(493, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(494, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(495, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(496, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(497, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(498, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(499, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(500, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(501, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(502, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(503, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(504, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(505, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(506, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(507, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(508, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(509, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(510, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(511, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(512, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(513, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(514, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(515, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(516, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(517, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(518, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(519, 'BLUE', '', 'SHAWL', 'COTTON', ''),
(520, 'BLUE', '', 'SHAWL', 'SILK', ''),
(521, 'BLUE', '', 'SHAWL', 'SILK', ''),
(522, 'BLUE', '', 'SHAWL', 'SILK', ''),
(523, 'RED', '', 'SHAWL', 'SILK', ''),
(524, 'RED', '', 'SHAWL', 'SILK', ''),
(525, 'yellow', '', 'shawl', 'silk', ''),
(526, 'yellow', '', 'shawl', 'silk', ''),
(527, 'yellow', '', 'shawl', 'silk', ''),
(528, 'red', '', 'jacket', 'leather', ''),
(529, 'red', '', 'jacket', 'leather', ''),
(530, 'hg', '', 'jgg', 'jh', ''),
(531, 'adhk', 'kaakh', 'jkh', 'kkh', 'kkh'),
(532, 'adhk', 'kaakh', 'jkh', 'kkh', 'kkh');

-- --------------------------------------------------------

--
-- Table structure for table `size_table`
--

CREATE TABLE IF NOT EXISTS `size_table` (
  `SIZE` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size_table`
--

INSERT INTO `size_table` (`SIZE`) VALUES
('10'),
('11'),
('12'),
('28'),
('29'),
('30'),
('5'),
('6'),
('7'),
('8'),
('9'),
('L'),
('M'),
('S'),
('XL');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`username`, `password`) VALUES
('admin', '01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
 ADD PRIMARY KEY (`CATEGORY`);

--
-- Indexes for table `color_table`
--
ALTER TABLE `color_table`
 ADD PRIMARY KEY (`COLOR`);

--
-- Indexes for table `description_table`
--
ALTER TABLE `description_table`
 ADD PRIMARY KEY (`DESCRIPTION`);

--
-- Indexes for table `main_table`
--
ALTER TABLE `main_table`
 ADD PRIMARY KEY (`BARCODE`,`COLOR`,`SIZE`,`CATEGORY`,`DESCRIPTION`,`STATUS`);

--
-- Indexes for table `size_table`
--
ALTER TABLE `size_table`
 ADD PRIMARY KEY (`SIZE`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
 ADD PRIMARY KEY (`username`,`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main_table`
--
ALTER TABLE `main_table`
MODIFY `BARCODE` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=533;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
