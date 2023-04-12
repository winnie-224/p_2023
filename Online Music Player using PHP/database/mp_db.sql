-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 11, 2023 at 06:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `music_list`
--

CREATE TABLE `music_list` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `audio_path` text DEFAULT NULL,
  `image_path` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `music_list`
--

INSERT INTO `music_list` (`id`, `title`, `description`, `audio_path`, `image_path`) VALUES
(1, 'Deep House', 'Sample Music', './audio/edm-deep-house-ish-female-vocal-112184.mp3?v=1679865196', './images/logo1.jpg?v=1679865196'),
(2, 'Groovy Light Future', 'New Sample01', './audio/groovy-light-future-bass-15881.mp3?v=1679865293', './images/logo2.jpg?v=1679865293'),
(3, 'One Hip Hop ', 'Sample Music 01', './audio/lkb-one-hip-hop-beat-300-138129.mp3?v=1679865402', './images/logo3.jpg?v=1679865402'),
(4, 'Lonely Girl', 'Sample Music 5', './audio/lonely-girl-beat-9522.mp3?v=1679865474', './images/song3.jpg?v=1679865474'),
(5, 'Solitary Man in Black', 'Sample Music 6', './audio/solitarymaninblack-putin-99465.mp3?v=1679865570', './images/logo4.jpg?v=1679865570'),
(6, 'Tomrrow', 'Sample Music 007', './audio/tomorrow-114848.mp3?v=1679865638', './images/song3.jpg?v=1679865638'),
(7, 'New Sonh', 'Son', './audio/edm-deep-house-ish-female-vocal-112184_(1).mp3?v=1679908944', './images/logo4.jpg?v=1679908944');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `music_list`
--
ALTER TABLE `music_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `music_list`
--
ALTER TABLE `music_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
