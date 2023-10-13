-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 12, 2023 at 11:46 AM
-- Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `darshit_nodejs`
--

-- --------------------------------------------------------

--
-- Table structure for table `auths`
--

CREATE TABLE `auths` (
  `iUserId` int(11) NOT NULL,
  `vUsername` varchar(255) DEFAULT NULL,
  `vEmail` varchar(255) DEFAULT NULL,
  `vAddress` varchar(255) NOT NULL,
  `vCity` varchar(255) NOT NULL,
  `vPincode` varchar(255) NOT NULL,
  `vOTP` int(11) DEFAULT NULL,
  `vPassword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auths`
--

INSERT INTO `auths` (`iUserId`, `vUsername`, `vEmail`, `vAddress`, `vCity`, `vPincode`, `vOTP`, `vPassword`) VALUES
(1, 'celio', 'celio@gmail.com', '0', '0', '', 12224, '12345678'),
(2, 'celio', 'celio@gmail.com', '0', '0', '', NULL, '12345678'),
(3, 'celio', NULL, '0', '0', '', 12224, '12345678'),
(4, 'celio', NULL, '0', '0', '', 12224, '12345678'),
(5, 'celio', 'celio@gmail.com', '0', '0', '', NULL, '12345678'),
(6, 'glenn', 'glenn@gmail.com', 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(7, 'glenn', NULL, 'East AVenue', 'New York', '+856964', 45693, '12345678'),
(8, 'glenn', NULL, 'East AVenue', 'New York', '+856964', 45693, '12345678'),
(9, 'glenn', NULL, 'East AVenue', 'New York', '+856964', 45693, '12345678'),
(10, 'glenn', NULL, 'East AVenue', 'New York', '+856964', 45693, '12345678'),
(11, 'glenn', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(12, 'glenn', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(13, 'glenn', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(14, 'glenn', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(15, 'glenn', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(16, 'glenn', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(17, 'glenn', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(18, 'glenn', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(19, 'glenn', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(20, 'glenn', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(21, 'glenn', '', 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(22, 'glenn', '', 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(23, 'glennnn', '', 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(24, 'glennnn', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(25, 'glennnn', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(26, 'glennnn', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(27, 'glennnn', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(28, 'sandy', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(29, 'sandy', 'w', 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(30, 'sandy', 'w', 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(31, 'sandy', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(32, 'sandy', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(33, 'sandy', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(34, 'sandy', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(35, 'sandy', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678'),
(36, 'sandy', NULL, 'East AVenue', 'New York', '+856964', NULL, '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `iCommentId` int(11) NOT NULL,
  `vTitle` varchar(50) NOT NULL,
  `vCommentTableId` varchar(50) NOT NULL,
  `vCommentTableType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`iCommentId`, `vTitle`, `vCommentTableId`, `vCommentTableType`) VALUES
(1, 'Awesome', '2', 'Image'),
(2, 'Bad Movie', '1', 'video');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `iCustomerId` int(11) NOT NULL,
  `vFullName` varchar(50) DEFAULT NULL,
  `vPhone` varchar(50) NOT NULL,
  `vEmail` varchar(50) NOT NULL,
  `vCity` varchar(50) NOT NULL,
  `vPin_Code` varchar(50) NOT NULL,
  `vLandmark` varchar(50) NOT NULL,
  `vState` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `RandomString` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`iCustomerId`, `vFullName`, `vPhone`, `vEmail`, `vCity`, `vPin_Code`, `vLandmark`, `vState`, `createdAt`, `updatedAt`, `RandomString`) VALUES
(1, 'Shaun Murphy', '8564796321', 'shaun.murphy@gmail.com', 'Nagpur', '440030', 'Near RBI Sq.', 'Maharashtra', '2023-04-20 04:29:03', '2023-04-20 04:29:03', 'asdwerwefwef'),
(2, 'ATif', '8564796321', 'atif@gmail.com', 'Nagpur', '440030', 'Near Shiv Mandir.', 'Maharashtra', '2023-04-20 04:29:03', '2023-04-20 04:29:03', ''),
(3, 'mukesh', '8564796321', 'mukesh@gmail.com', 'Delhi', '440030', 'Near Shiv Mandir.', 'MH', '2023-04-20 07:24:25', '2023-04-20 07:24:25', ''),
(5, 'brijesh', '8564796321', 'mukesh@gmail.com', 'Delhi', '440030', 'Near Shiv Mandir.', 'MH', '2023-04-20 07:26:32', '2023-04-20 07:26:32', ''),
(6, 'raj', '8527419633', 'raj@gmail.com', 'gorkhpur', '440020', 'Near Ram Mandir.', 'UP', '2023-04-20 07:27:05', '2023-05-05 07:49:27', ''),
(7, 'mukesh', '8564796321', 'mukesh@gmail.com', 'Delhi', '440030', 'Near Shiv Mandir.', 'MH', '2023-04-26 06:53:53', '2023-04-26 06:53:53', ''),
(8, 'rajessh', '8564796321', 'mukesh@gmail.com', 'Delhi', '440030', 'Near Shiv Mandir.Near Saudi', 'MH', '2023-04-26 08:47:01', '2023-04-26 08:47:01', ''),
(9, 'mukesh', '8564796321', 'mukesh@gmail.com', 'Delhi', '440030', 'Near Shiv Mandir.', 'MH', '2023-05-05 07:47:41', '2023-05-05 07:47:41', 'asd'),
(10, 'mukesh', '8564796321', 'mukesh@gmail.com', 'Delhi', '440030', 'Near Shiv Mandir.', 'MH', '2023-05-05 07:48:41', '2023-05-05 07:48:41', 'JWxlWXc'),
(11, 'mukesh ambani', '8564796321', 'mukesh@gmail.com', 'Delhi', '440030', 'Near Shiv Mandir.', 'MH', '2023-05-05 07:50:50', '2023-05-05 07:50:50', 'WDQDmKWyaR'),
(12, 'mukesh ambani', '8564796321', 'mukesh@gmail.com', 'Delhi', '440030', 'Near Shiv Mandir.', 'MH', '2023-05-05 13:16:31', '2023-05-05 13:16:31', '9N97bTkwP3'),
(13, 'mukesh ambani', '8564796321', 'mukesh@gmail.com', 'Delhi', '440030', 'Near Shiv Mandir.', 'MH', '2023-05-05 13:16:34', '2023-05-05 13:16:34', 'ZpQsZfVqNP');

-- --------------------------------------------------------

--
-- Table structure for table `excel_csv`
--

CREATE TABLE `excel_csv` (
  `iCsvId` int(11) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `vCity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `iImageId` int(11) NOT NULL,
  `vTitle` varchar(50) NOT NULL,
  `vUrl` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`iImageId`, `vTitle`, `vUrl`) VALUES
(1, 'profile pic', 'profile1.jpg'),
(2, 'gallary pic', 'gallary.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `iLangId` int(11) NOT NULL,
  `vLang` varchar(50) NOT NULL,
  `vLangCode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`iLangId`, `vLang`, `vLangCode`) VALUES
(1, 'English', 'EN'),
(2, 'Hebrew', 'HB'),
(3, 'Arabic', 'AR');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `iOrderId` int(11) NOT NULL,
  `iCustomerId` int(11) NOT NULL,
  `eOrder_Status` enum('Active','Inactive') NOT NULL,
  `dOrder_Date` datetime NOT NULL,
  `dRequired_Date` datetime NOT NULL,
  `dShipped_Date` datetime NOT NULL,
  `iStoreId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`iOrderId`, `iCustomerId`, `eOrder_Status`, `dOrder_Date`, `dRequired_Date`, `dShipped_Date`, `iStoreId`) VALUES
(1, 1, 'Inactive', '2023-04-21 04:04:30', '2023-04-21 04:04:30', '2023-04-21 04:04:30', 1),
(2, 2, 'Active', '2023-04-21 04:04:50', '2023-04-21 04:04:50', '2023-04-21 04:04:50', 2),
(3, 3, 'Inactive', '2023-04-21 04:37:53', '2023-04-21 04:37:53', '2023-04-21 04:37:53', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `iPostId` int(11) NOT NULL,
  `vName` varchar(50) NOT NULL,
  `vTitle` varchar(50) NOT NULL,
  `vContent` varchar(50) NOT NULL,
  `iUserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`iPostId`, `vName`, `vTitle`, `vContent`, `iUserId`) VALUES
(1, 'News', 'car', 'car details', 8),
(2, 'News', 'bike', 'bike details', 5),
(3, 'News', 'cycle', 'cycle details', 5),
(4, 'News', 'cycle', 'cycle details', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `iPostTagId` int(11) NOT NULL,
  `iPostId` int(11) NOT NULL,
  `iTagId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`iPostTagId`, `iPostId`, `iTagId`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `iProductId` int(11) NOT NULL,
  `vName` varchar(50) NOT NULL,
  `tDescription` text NOT NULL,
  `vCity` varchar(50) NOT NULL,
  `vLangCode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`iProductId`, `vName`, `tDescription`, `vCity`, `vLangCode`) VALUES
(1, 'News', 'news desciption', 'nagpur', 'EN'),
(2, 'bike', 'bike description', 'mumbai', 'HB'),
(3, 'car', 'car description', 'mumbai', 'AR'),
(4, 'car', 'car description', 'mumbai', 'EN'),
(5, 'cycle', 'cycle description', 'mumbai', 'HB');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_lang`
--

CREATE TABLE `restaurant_lang` (
  `iRestaurantId` int(11) NOT NULL,
  `vLangCode` varchar(50) NOT NULL,
  `vRestaurant` varchar(50) NOT NULL,
  `tDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant_lang`
--

INSERT INTO `restaurant_lang` (`iRestaurantId`, `vLangCode`, `vRestaurant`, `tDescription`) VALUES
(1, 'EN', 'Mocha', 'good place for hangout\r\n'),
(2, 'HB', 'frullato', 'Most amazing place for thick shakes'),
(3, 'AR', 'Arbian Taj', 'Best place for non-veg food'),
(4, 'AR', 'Arbian Taj', 'Best place for non-veg food'),
(5, 'HB', 'Tandoor', 'Best place for non-veg food'),
(6, 'HB', 'delhi darbar', 'Best place for non-veg food');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `iStoreId` int(11) NOT NULL,
  `vStoreName` varchar(50) NOT NULL,
  `vPhone` varchar(50) NOT NULL,
  `vEmail` varchar(50) NOT NULL,
  `vStreet` varchar(50) NOT NULL,
  `vCity` varchar(50) NOT NULL,
  `vState` varchar(50) NOT NULL,
  `vZipCode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`iStoreId`, `vStoreName`, `vPhone`, `vEmail`, `vStreet`, `vCity`, `vState`, `vZipCode`) VALUES
(1, 'Dominos', '8564796321', 'dominos.india@gmail.com', 'Nehru Street', 'Nagpur', 'Maharashtra', '440025'),
(2, 'amigo', '8564796321', 'amigo.india@gmail.com', 'walk Street', 'pune', 'Maharashtra', '440026');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `iTagId` int(11) NOT NULL,
  `vName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`iTagId`, `vName`) VALUES
(1, 'Latest'),
(2, 'Popular'),
(3, 'Sports'),
(13, 'Information');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `iUserId` int(11) NOT NULL,
  `vName` varchar(255) DEFAULT NULL,
  `iAge` int(11) DEFAULT NULL,
  `vCity` varchar(255) DEFAULT NULL,
  `vHobbies` varchar(255) DEFAULT NULL,
  `vFav_Food` varchar(255) DEFAULT NULL,
  `vEmail` varchar(255) NOT NULL,
  `vGender` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`iUserId`, `vName`, `iAge`, `vCity`, `vHobbies`, `vFav_Food`, `vEmail`, `vGender`) VALUES
(1, 'Manji', 34, 'Jaipur', 'Golf', 'dal bati', 'sd@123', 'male'),
(4, 'sam', 34, 'Jaipur', 'Golf', 'dal bati', 'sam@123', 'male'),
(5, 'sam', 34, 'jodhpur', 'Golf', 'dal bati', 'samm@123', 'male'),
(8, 'sam', 34, 'Jaipur', 'Golf', 'dal bati', 'sa@123', 'female'),
(9, 'sam', 34, 'Jaipur', 'Golf', 'dal bati', 'demo@gmail.com', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `iVideoId` int(11) NOT NULL,
  `vTitle` varchar(50) NOT NULL,
  `VText` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`iVideoId`, `vTitle`, `VText`) VALUES
(1, 'movie', 'bollywood'),
(2, 'Comedy', 'Bollywood');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auths`
--
ALTER TABLE `auths`
  ADD PRIMARY KEY (`iUserId`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`iCommentId`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`iCustomerId`);

--
-- Indexes for table `excel_csv`
--
ALTER TABLE `excel_csv`
  ADD PRIMARY KEY (`iCsvId`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`iImageId`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`iLangId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`iOrderId`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`iPostId`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`iPostTagId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`iProductId`);

--
-- Indexes for table `restaurant_lang`
--
ALTER TABLE `restaurant_lang`
  ADD PRIMARY KEY (`iRestaurantId`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`iStoreId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`iTagId`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`iUserId`),
  ADD UNIQUE KEY `vEmail` (`vEmail`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`iVideoId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auths`
--
ALTER TABLE `auths`
  MODIFY `iUserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `iCommentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `iCustomerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `excel_csv`
--
ALTER TABLE `excel_csv`
  MODIFY `iCsvId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `iImageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `iLangId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `iOrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `iPostId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `iPostTagId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `iProductId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `restaurant_lang`
--
ALTER TABLE `restaurant_lang`
  MODIFY `iRestaurantId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `iStoreId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `iTagId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `iUserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `iVideoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
