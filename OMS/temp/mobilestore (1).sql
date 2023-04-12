-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 12, 2010 at 06:35 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mobilestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `key_features`
--

CREATE TABLE IF NOT EXISTS `key_features` (
  `proid` int(10) NOT NULL,
  `camera` varchar(10) NOT NULL,
  `bluetooth` varchar(10) NOT NULL,
  `musicplayer` varchar(10) NOT NULL,
  `fmradio` varchar(10) NOT NULL,
  `gprs` varchar(10) NOT NULL,
  `edge` varchar(10) NOT NULL,
  `webbrowser` varchar(10) NOT NULL,
  `socialnetworking` varchar(10) NOT NULL,
  `wifi` varchar(10) NOT NULL,
  `phonebook` varchar(10) NOT NULL,
  `memory` varchar(10) NOT NULL,
  `talktime` varchar(10) NOT NULL,
  `video` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `key_features`
--


-- --------------------------------------------------------

--
-- Table structure for table `mobileinfo`
--

CREATE TABLE IF NOT EXISTS `mobileinfo` (
  `proid` int(10) NOT NULL,
  `mobname` varchar(20) NOT NULL,
  `mobcompany` varchar(20) NOT NULL,
  `mrp` float NOT NULL,
  `ofprice` float NOT NULL,
  PRIMARY KEY (`proid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobileinfo`
--

INSERT INTO `mobileinfo` (`proid`, `mobname`, `mobcompany`, `mrp`, `ofprice`) VALUES
(1, 'Blackberry 8250', 'Blackberry', 12490, 9800),
(2, 'Blackberry 9300', 'Blackberry', 20990, 14400),
(3, 'Blackberry 9780', 'Blackberry', 27990, 22400),
(4, 'iPhone 4', 'Apple', 19990, 16780),
(5, 'iPhone 5', 'Apple', 34500, 23400),
(6, 'Optimus', 'LG', 29000, 27890),
(7, 'Optimus 2x', 'LG', 32000, 28780),
(8, 'GS190', 'LG', 4555, 1999),
(9, 'Q2', 'MIcromax', 2789, 2500),
(10, 'A60', 'MIcromax', 7500, 5490),
(11, 'XT5 Quench', 'Motorola', 15400, 12300),
(12, 'Starling', 'Motorola', 5600, 4500),
(13, 'C3', 'Nokia', 7600, 5231),
(14, 'C3-02', 'Nokia', 8890, 7450),
(15, '2760', 'Nokia', 5600, 3421),
(16, 'Galaxy Tab', 'Samsung', 32500, 27000),
(17, 'C3530', 'Samsung', 7569, 5677),
(18, 'W8', ' Sony Ericsson', 10999, 7899),
(19, 'X10', 'Sony Ericsson', 32780, 22789);

-- --------------------------------------------------------

--
-- Table structure for table `phone_features`
--

CREATE TABLE IF NOT EXISTS `phone_features` (
  `proid` int(10) NOT NULL,
  `size` float NOT NULL,
  `weight` float NOT NULL,
  `dissize` float NOT NULL,
  `discol` varchar(10) NOT NULL,
  `calrec` varchar(10) NOT NULL,
  `ringtone` varchar(10) NOT NULL,
  `ntwrkstandby` varchar(10) NOT NULL,
  `battery` varchar(10) NOT NULL,
  `games` varchar(10) NOT NULL,
  `java` varchar(10) NOT NULL,
  `3g` varchar(10) NOT NULL,
  `sms` varchar(10) NOT NULL,
  `mms` varchar(10) NOT NULL,
  `email` varchar(10) NOT NULL,
  `wap` varchar(10) NOT NULL,
  `usb` varchar(10) NOT NULL,
  `opsys` varchar(10) NOT NULL,
  `headset` varchar(10) NOT NULL,
  `speaker` varchar(10) NOT NULL,
  `gps` varchar(10) NOT NULL,
  KEY `proid` (`proid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone_features`
--

