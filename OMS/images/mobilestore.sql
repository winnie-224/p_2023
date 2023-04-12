-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2011 at 05:03 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

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
-- Table structure for table `mobileinfo`
--

CREATE TABLE IF NOT EXISTS `mobileinfo` (
  `proid` int(10) NOT NULL,
  `mobname` varchar(20) NOT NULL,
  `mobcompany` varchar(20) NOT NULL,
  `mrp` float NOT NULL,
  `ofprice` float NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'Available',
  `image` varchar(100) NOT NULL DEFAULT 'images/m1.jpg',
  `Category` varchar(40) NOT NULL DEFAULT 'Mobile',
  PRIMARY KEY (`proid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobileinfo`
--

INSERT INTO `mobileinfo` (`proid`, `mobname`, `mobcompany`, `mrp`, `ofprice`, `Status`, `image`, `Category`) VALUES
(0, 'BL-5C', 'NOKIA', 450, 299, 'Available', 'images/m1.jpg', 'Battery'),
(1, 'Blackberry 8250', 'Blackberry', 12490, 9800, 'Available', 'images/mobile/1.jpg', 'Mobile'),
(2, 'Blackberry 9300', 'Blackberry', 20990, 14400, 'Available', 'images/mobile/2.jpg', 'Mobile'),
(3, 'Blackberry 9780', 'Blackberry', 27990, 22400, 'Available', 'images/mobile/3.jpg', 'Mobile'),
(4, 'iPhone 4', 'Apple', 19990, 16780, 'Available', 'images/mobile/4.jpg', 'Mobile'),
(5, 'iPhone 5', 'Apple', 34500, 23400, 'Available', 'images/mobile/5.jpg', 'Mobile'),
(6, 'Optimus', 'LG', 29000, 27890, 'Available', 'images/mobile/6.jpg', 'Mobile'),
(7, 'Optimus 2x', 'LG', 32000, 28780, 'Available', 'images/mobile/7.jpg', 'Mobile'),
(8, 'GS190', 'LG', 4555, 1999, 'Available', 'images/mobile/8.jpg', 'Mobile'),
(9, 'Q2', 'MIcromax', 2789, 2500, 'Available', 'images/mobile/9.jpg', 'Mobile'),
(10, 'A60', 'MIcromax', 7500, 5490, 'Available', 'images/mobile/10.jpg', 'Mobile'),
(11, 'XT5 Quench', 'Motorola', 15400, 12300, 'Available', 'images/mobile/11.jpg', 'Mobile'),
(12, 'Starling', 'Motorola', 5600, 4500, 'Available', 'images/mobile/12.jpg', 'Mobile'),
(13, 'C3', 'Nokia', 7600, 6000, 'Available', 'images/mobile/13.jpg', 'Mobile'),
(14, 'C3-02', 'Nokia', 8890, 7450, 'Available', 'images/mobile/14.jpg', 'Mobile'),
(15, '2760', 'Nokia', 5600, 3421, 'Available', 'images/mobile/15.jpg', 'Mobile'),
(16, 'Galaxy Tab', 'Samsung', 32500, 27000, 'Available', 'images/mobile/16.jpg', 'Mobile'),
(17, 'C3530', 'Samsung', 7569, 5677, 'Available', 'images/mobile/17.jpg', 'Mobile'),
(18, 'W8', ' Sony Ericsson', 10999, 7899, 'Available', 'images/mobile/18.jpg', 'Mobile'),
(19, 'X10', 'Sony Ericsson', 32780, 22789, 'Available', 'images/mobile/19.jpg', 'Mobile'),
(20, '6270', 'Nokia', 12480, 7999, 'Available', 'images/mobile/20.jpg', 'Mobile'),
(21, 'w530i', 'Sony Ericsson', 10999, 8999, 'delete', 'images/mobile/21.jpg', 'Mobile');

-- --------------------------------------------------------

--
-- Table structure for table `phone_features`
--

CREATE TABLE IF NOT EXISTS `phone_features` (
  `proid` int(10) NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT 'images/n3.jpg',
  `size` varchar(20) NOT NULL,
  `weight` varchar(10) NOT NULL,
  `dissize` varchar(10) NOT NULL,
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
  `video` varchar(10) NOT NULL,
  KEY `proid` (`proid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone_features`
--

INSERT INTO `phone_features` (`proid`, `image`, `size`, `weight`, `dissize`, `discol`, `calrec`, `ringtone`, `ntwrkstandby`, `battery`, `games`, `java`, `3g`, `sms`, `mms`, `email`, `wap`, `usb`, `opsys`, `headset`, `speaker`, `gps`, `camera`, `bluetooth`, `musicplayer`, `fmradio`, `gprs`, `edge`, `webbrowser`, `socialnetworking`, `wifi`, `phonebook`, `memory`, `talktime`, `video`) VALUES
(1, 'images/mobile/1.jpg', '109x60x13.9', '106gns', '24inch', '65k', 'yes', 'mp3', 'quad band', '150mAh', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'blackberry', 'yes', 'yes', 'no', '2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(2, 'images/mobile/2.jpg', '109x60x13.9', '106gm', '24inch', '65k', 'yes', 'mp3', 'quad band', '150mAh', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'blackberry', 'yes', 'yes', 'no', '2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(3, 'images/mobile/3.jpg', '109x60x13.9', '106gm', '24inch', '65k', 'yes', 'mp3', '3G', '1500mAh', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'blackberry', 'yes', 'yes', 'yes', '2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(4, 'images/mobile/4.jpg', '109x60x13.9', '106gm', '2.4inch', '65k', 'yes', 'mp3', '3G', '1500mAh', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'Apple', 'yes', 'yes', 'yes', '3.2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(5, 'images/mobile/5.jpg', '109x60x13.9', '106gm', '3.4inch', '65k', 'yes', 'mp3', '3G', '1500mAh', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'Apple', 'yes', 'yes', 'yes', '1.2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(6, 'images/mobile/6.jpg', '109x60x13.9', '106gm', '2.4inch', '65k', 'yes', 'mp3', '3G', '1500mAh', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'LG', 'yes', 'yes', 'yes', '2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(7, 'images/mobile/7.jpg', '109x60x13.9', '106gm', '24inch', '65k', 'yes', 'mp3', '3G', '1500mAh', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'LG', 'yes', 'yes', 'yes', '2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(8, 'images/mobile/8.jpg', '109x60x13.9', '106gm', '2.4inch', '65k', 'yes', 'mp3', '3G', '1500mAh', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'LG', 'yes', 'yes', 'no', '3.2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(9, 'images/mobile/9.jpg', '109x60x13.9', '106gm', '2.4inch', '65k', 'yes', 'mp3', 'quad band', '150mAh', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'Micromax', 'yes', 'yes', 'no', '1.2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(10, 'images/mobile/10.jpg', '109x60x13.9', '106gm', '2.4inch', '65k', 'yes', 'mp3', 'quad band', '150mAh', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'Micromax', 'yes', 'yes', 'no', '2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(11, 'images/mobile/11.jpg', '109x60x13.9', '106gm', '24inch', '65k', 'yes', 'mp3', 'quad band', '150mAh', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'Motorola', 'yes', 'yes', 'no', '2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(12, 'images/mobile/13.jpg', '109x60x13.9', '106gm', '2.4inch', '65k', 'yes', 'mp3', '3G', '1500mAh', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'Motorola', 'yes', 'yes', 'yes', '2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(13, 'images/mobile/13.jpg', '109x60x13.9', '106gm', '2.4inch', '65k', 'yes', 'mp3', '3G', '150mAh', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'Nokia', 'yes', 'yes', 'no', '2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(14, 'images/mobile/14.jpg', '109x60x13.9', '106gm', '24inch', '65k', 'yes', 'mp3', '3G', '1500mAh', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'Nokia', 'yes', 'yes', 'no', '2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(15, 'images/mobile/15.jpg', '109x60x13.9', '106gm', '2.4inch', '65k', 'yes', 'mp3', 'quad band', '150mAh', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'Nokia', 'yes', 'yes', 'no', '1.2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(16, 'images/mobile/16.jpg', '109x60x13.9', '106gm', '2.4inch', '65k', 'yes', 'mp3', '3G', '150mAh', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'Samsung', 'yes', 'yes', 'yes', '3.2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(17, 'images/mobile/17.jpg', '109x60x13.9', '106gm', '3.4inch', '65k', 'yes', 'mp3', '3G', '1500mAh', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'Samsung', 'yes', 'yes', 'yes', '2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(18, 'images/mobile/18.jpg', '109x60x13.9', '106gm', '2.4inch', '65k', 'yes', 'mp3', '3G', '1500mAh', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'Sony', 'yes', 'yes', 'no', '2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(19, 'images/mobile/19.jpg', '109x60x13.9', '106gm', '2.4inch', '65k', 'yes', 'mp3', 'quad band', '150mAh', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'Sony', 'yes', 'yes', 'no', '2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(20, 'images/mobile/20.jpg', '109x60x13.9', '106gm', '2.4inch', '65k', 'yes', 'mp3', '3G', '1500mAh', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'Nokia', 'yes', 'yes', 'no', '2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes'),
(21, 'images/mobile/21.jpg', '109x60x13.9', '106gm', '2.4inch', '65k', 'yes', 'mp3', 'quad band', '1500mAh', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '2.5micro', 'Sony', 'yes', 'yes', 'no', '2mp', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '20hrs', 'yes');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `phone_features`
--
ALTER TABLE `phone_features`
  ADD CONSTRAINT `phone_features_ibfk_1` FOREIGN KEY (`proid`) REFERENCES `mobileinfo` (`proid`) ON DELETE CASCADE ON UPDATE CASCADE;
