-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2020 at 07:31 PM
-- Server version: 10.2.10-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(2, 'tanvir', 'tanvir', 'tanvir@tanvir.com', '5db85fe4d7c285f5b49749b7a411daf6');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(6, 'Chronograph Watch'),
(7, 'Table Clock'),
(8, 'Wall Clock'),
(9, 'Wrist Watch'),
(10, 'Timex'),
(11, 'Tommy'),
(12, 'Tissot');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pquantity` varchar(255) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productprice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `pid`, `pquantity`, `orderid`, `productprice`) VALUES
(1, 19, '5', 1, '16'),
(2, 19, '5', 2, '16'),
(3, 1, '2', 2, '20990'),
(4, 1, '1', 3, '20990'),
(5, 20, '10', 3, '99'),
(6, 18, '1', 4, '12890'),
(7, 21, '1', 4, '75'),
(8, 2, '1', 5, '7590'),
(9, 19, '10', 5, '16'),
(10, 1, '1', 6, '20990'),
(11, 26, '2', 8, '300'),
(12, 56, '1', 8, '140');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `totalprice` varchar(255) NOT NULL,
  `orderstatus` varchar(255) NOT NULL,
  `paymentmode` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `totalprice`, `orderstatus`, `paymentmode`, `timestamp`) VALUES
(1, 2, '80', 'Order Placed', 'cod', '2017-10-28 12:22:36'),
(2, 2, '42060', 'Order Placed', 'cod', '2017-10-28 12:27:16'),
(3, 6, '21980', 'Cancelled', 'cod', '2017-10-28 14:25:23'),
(4, 6, '12965', 'Delivered', 'cod', '2017-10-28 14:28:29'),
(5, 6, '7750', 'Delivered', 'cod', '2017-11-06 19:40:34'),
(6, 7, '20990', 'Dispatched', 'cod', '2020-10-28 02:56:30'),
(7, 8, '0', 'Order Placed', 'cod', '2020-10-28 04:49:42'),
(8, 11, '740', 'Order Placed', '', '2020-10-29 00:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `ordertracking`
--

CREATE TABLE `ordertracking` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertracking`
--

INSERT INTO `ordertracking` (`id`, `orderid`, `status`, `message`, `timestamp`) VALUES
(3, 3, 'Cancelled', ' I don&#39;t want this item now.', '2017-10-28 17:54:18'),
(5, 4, 'In Progress', ' Order is in Progress', '2017-10-30 13:31:08'),
(6, 5, 'In Progress', ' Order is in Progress', '2017-11-06 19:45:11'),
(7, 6, 'Delivered', ' ', '2020-10-28 03:00:31'),
(8, 6, 'Dispatched', ' ', '2020-10-28 03:27:09'),
(9, 5, 'Delivered', ' ', '2020-10-28 03:27:21'),
(10, 4, 'In Progress', ' ', '2020-10-28 03:27:34'),
(11, 4, 'Delivered', ' ', '2020-10-28 03:27:41');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT 9,
  `price` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `catid`, `price`, `thumb`, `description`) VALUES
(24, 'Chronograph Watch 1', 6, '100', 'uploads/Chronograph_Watch (1).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(25, 'Chronograph Watch 2', 6, '200', 'uploads/Chronograph_Watch (2).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(26, 'Chronograph Watch 3', 6, '300', 'uploads/Chronograph_Watch (3).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(27, 'Chronograph Watch 4', 6, '400', 'uploads/Chronograph_Watch (4).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(28, 'Chronograph Watch 5', 6, '500', 'uploads/Chronograph_Watch (5).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(29, 'Table Clock 1', 7, '111', 'uploads/table_clock (1).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(30, 'Table Clock 2', 7, '222', 'uploads/table_clock (2).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(31, 'Table Clock 3', 7, '333', 'uploads/table_clock (3).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(32, 'Table Clock 4', 7, '444', 'uploads/table_clock (4).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(33, 'Table Clock 5', 7, '555', 'uploads/table_clock (5).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(34, 'Wall Clock 1', 8, '909', 'uploads/wall_clock (1).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(35, 'Wall Clock 2', 8, '809', 'uploads/wall_clock (2).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(36, 'Wall Clock 3', 8, '509', 'uploads/wall_clock (3).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(37, 'Wall Clock 4', 8, '409', 'uploads/wall_clock (4).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(38, 'Wall Clock 5', 8, '609', 'uploads/wall_clock (7).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(39, 'Wrist Watch 1', 9, '10', 'uploads/wrist_watch (1).jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(40, 'Wrist Watch 2', 9, '20', 'uploads/wrist_watch (2).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(41, 'Wrist Watch 3', 9, '30', 'uploads/wrist_watch (4).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(42, 'Wrist Watch 4', 9, '40', 'uploads/wrist_watch (7).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(43, 'Wrist Watch 5', 9, '50', 'uploads/wrist_watch (8).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(44, 'Essex Silver Watch', 10, '150', 'uploads/image1.png', 'The Timex Essex watch is simply paired with a silver tone case, classic black date dial and silver tone bracelet style strap. The perfect accessory to elevate your style with a masculine and sophisticated look.'),
(45, 'Essex Black Watch', 10, '150', 'uploads/image2.png', 'This Essex paired silver-tone case with a black date dial and black leather strap to elevate your style with a masculine and sophisticated look.'),
(46, 'Essex Brown Watch', 10, '150', 'uploads/image3.png', 'This Essex paired silver-tone case with a blue date dial and brown leather strap to elevate your style with a masculine and sophisticated look.'),
(47, 'Weekender Brown Chrono Watch', 10, '200', 'uploads/image4.png', 'The Weekender chronograph features Timex classic chronograph blue dial offset by a brown two-piece stitched leather strap featuring our quick release functionality. The perfect accessory for any look.'),
(48, 'Weekender black Chrono Watch', 10, '140', 'uploads/image5.png', 'The Weekender chronograph features Timex classic chronograph cream dial offset by a black two-piece stitched leather strap featuring our quick release functionality. The perfect accessory for any look.'),
(49, 'Easy Reader Brown Watch', 10, '99', 'uploads/image6.png', 'We took a modern approach to our classic 1977 Timex watch with updates to its gold-tone case, easy-to-read white dial and brown leather strap bringing together simplicity and effortless style.'),
(50, 'Southview Tan Watch', 10, '130', 'uploads/image7.png', 'We have combined premium style with the precision craftsmanship that you have come to expect from Timex. With its blue dial and silver-tone case paired with a tan leather strap gives you a distinguished look you can wear from day to night.'),
(51, 'Q Watch', 10, '320', 'uploads/image8.png', 'First released in 1979, our original diver-inspired Q Timex gave a new generation a modern Timex watch with quartz technology. A true reissue, we recreated every detail including the true-to-the-era woven stainless-steel bracelet, functional battery hatch, rotating top ring, luminescent paint and ticking inside is a modern quartz movement.'),
(52, 'Fairfield Gunmetal Watch', 10, '149', 'uploads/image9.png', 'The Fairfield Chrono Supernova watch highlights an innovative laser-cut perforated dial with INDIGLO display. Cut from metal, shaped by light the latest in our Fairfield collection'),
(53, 'Southview Black Watch', 10, '130', 'uploads/image10.png', 'The black dial and black case paired with a black leather strap gives you a distinguished look you can wear from day to night.'),
(54, 'LADIES ALEXA WATCH', 11, '199', 'uploads/image11.png', 'Gold, Silver or Rose Gold Tone relates to the product color, not the metal element. Water Resistance (WR) refers to a pressure test and do not signify a diving depth.'),
(55, 'Gents Daniel Watch', 11, '340', 'uploads/image12.png', 'Gold, Silver or Rose Gold Tone relates to the product colour, not the metal element. Water Resistance (WR) refers to a pressure test and do not signify a diving depth.'),
(56, 'Damon Watch', 11, '140', 'uploads/image13.png', 'Gold, Silver or Rose Gold Tone relates to the product colour, not the metal element. Water Resistance (WR) refers to a pressure test and do not signify a diving depth.'),
(57, 'Mason Watch', 11, '140', 'uploads/image14.png', 'Gold, Silver or Rose Gold Tone relates to the product colour, not the metal element. Water Resistance (WR) refers to a pressure test and do not signify a diving depth.'),
(58, 'Ladies blake watch', 11, '180', 'uploads/image15.png', 'Gold, Silver or Rose Gold Tone relates to the product color, not the metal element. Water Resistance (WR) refers to a pressure test and do not signify a diving depth.'),
(59, 'Daniel Black Watch', 11, '190', 'uploads/image16.png', 'Gold, Silver or Rose Gold Tone relates to the product color, not the metal element. Water Resistance (WR) refers to a pressure test and do not signify a diving depth.'),
(60, 'Gents Barclay watch', 11, '320', 'uploads/image17.png', 'Gold, Silver or Rose Gold Tone relates to the product color, not the metal element. Water Resistance (WR) refers to a pressure test and do not signify a diving depth.'),
(61, 'Men DECKER watch', 11, '320', 'uploads/image18.png', 'Gold, Silver or Rose Gold Tone relates to the product color, not the metal element. Water Resistance (WR) refers to a pressure test and do not signify a diving depth.'),
(62, 'Silver Daniel Men Watch', 11, '110', 'uploads/image19.png', 'Gold, Silver or Rose Gold Tone relates to the product color, not the metal element. Water Resistance (WR) refers to a pressure test and do not signify a diving depth.'),
(63, 'Ladies Alexa Watch', 11, '100', 'uploads/image20.png', 'Gold, Silver or Rose Gold Tone relates to the product color, not the metal element. Water Resistance (WR) refers to a pressure test and do not signify a diving depth.'),
(64, 'T-Race Swissmatic Watch', 12, '200', 'uploads/image21.png', 'One for the speed fanatics, the Tissot T-Race is inspired by the frame and parts of motorbike. Its dynamic design captures the spirit of motorsports and integrates it with the Swissmatic movement.'),
(65, 'Tradition Watch', 12, '200', 'uploads/image22.png', 'One for the speed fanatics, the Tissot T-Race is inspired by the frame and parts of motorbike. Its dynamic design captures the spirit of motorsports and integrates it with the Swissmatic movement.'),
(66, 'Gentleman Brown Automatic Silicium Watch', 12, '200', 'uploads/image23.png', 'One for the speed fanatics, the Tissot T-Race is inspired by the frame and parts of motorbike. Its dynamic design captures the spirit of motorsports and integrates it with the Swissmatic movement.'),
(67, 'Le Locle Powermatic 80 watch', 12, '200', 'uploads/image24.png', 'One for the speed fanatics, the Tissot T-Race is inspired by the frame and parts of motorbike. Its dynamic design captures the spirit of motorsports and integrates it with the Swissmatic movement.'),
(68, 'Gentleman Black Automatic Silicium Watch', 12, '200', 'uploads/image25.png', 'One for the speed fanatics, the Tissot T-Race is inspired by the frame and parts of motorbike. Its dynamic design captures the spirit of motorsports and integrates it with the Swissmatic movement.'),
(69, 'Everytime Medium Watch', 12, '200', 'uploads/image26.png', 'One for the speed fanatics, the Tissot T-Race is inspired by the frame and parts of motorbike. Its dynamic design captures the spirit of motorsports and integrates it with the Swissmatic movement.'),
(70, 'Brown Gentleman Watch', 12, '200', 'uploads/image27.png', 'One for the speed fanatics, the Tissot T-Race is inspired by the frame and parts of motorbike. Its dynamic design captures the spirit of motorsports and integrates it with the Swissmatic movement.'),
(71, 'Le Loclesilver Powermatic 80 Watch', 12, '200', 'uploads/image28.png', 'One for the speed fanatics, the Tissot T-Race is inspired by the frame and parts of motorbike. Its dynamic design captures the spirit of motorsports and integrates it with the Swissmatic movement.'),
(72, 'Flamingo Watch', 12, '200', 'uploads/image29.png', 'One for the speed fanatics, the Tissot T-Race is inspired by the frame and parts of motorbike. Its dynamic design captures the spirit of motorsports and integrates it with the Swissmatic movement.'),
(73, 'Chrono XL Classic Watch', 12, '200', 'uploads/image30.png', 'One for the speed fanatics, the Tissot T-Race is inspired by the frame and parts of motorbike. Its dynamic design captures the spirit of motorsports and integrates it with the Swissmatic movement.');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `review` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `pid`, `uid`, `review`, `timestamp`) VALUES
(1, 1, 6, 'It&#39;s an awesome Product...', '2017-10-30 15:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `timestamp`) VALUES
(11, 'user1@user.com', '$2y$10$49kbfbyIWEikvvtUz2SYfeqrPCyrmT5b3XHELg/5HvdENxzqFNBmq', '2020-10-28 20:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `usersmeta`
--

CREATE TABLE `usersmeta` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersmeta`
--

INSERT INTO `usersmeta` (`id`, `uid`, `firstname`, `lastname`, `company`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `mobile`) VALUES
(6, 11, 'MAX', 'WELL', 'Company Name', 'address', '', 'city', 'state', '', '1999', '498494');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `pid`, `uid`, `timestamp`) VALUES
(1, 1, 6, '2017-10-30 16:36:45'),
(2, 2, 6, '2017-10-30 16:38:07'),
(3, 21, 6, '2017-11-06 19:42:35'),
(4, 38, 8, '2020-10-28 07:05:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertracking`
--
ALTER TABLE `ordertracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `usersmeta`
--
ALTER TABLE `usersmeta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ordertracking`
--
ALTER TABLE `ordertracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `usersmeta`
--
ALTER TABLE `usersmeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
