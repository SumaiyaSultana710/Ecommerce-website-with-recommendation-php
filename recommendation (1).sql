-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2020 at 06:15 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recommendation`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contact` bigint(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `username`, `email`, `password`, `contact`) VALUES
(1, 'Sumaiya', 'sumaiya.sultana.710@gmail.com', '123456', 123456789),
(2, 'koly', 'koly79@gmail.com', '1234', 98727772);

-- --------------------------------------------------------

--
-- Table structure for table `buyerorder`
--

CREATE TABLE `buyerorder` (
  `orderid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `total` float(10,10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyerorder`
--

INSERT INTO `buyerorder` (`orderid`, `pid`, `uid`, `quantity`, `total`) VALUES
(0, 3, 1, 6, 1.0000000000),
(0, 6, 1, 2, 1.0000000000),
(0, 10, 2, 1, 1.0000000000),
(0, 24, 2, 1, 1.0000000000);

-- --------------------------------------------------------

--
-- Table structure for table `buyerorder2`
--

CREATE TABLE `buyerorder2` (
  `order` int(10) NOT NULL,
  `proid` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `ttl` float(10,2) NOT NULL,
  `qnty` int(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `cat_id` int(20) NOT NULL,
  `cat_title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`cat_id`, `cat_title`) VALUES
(1, 'Men casual'),
(2, 'Men formal'),
(3, 'Men watch'),
(4, 'men others'),
(5, 'women casual'),
(6, 'women formal'),
(7, 'women watch'),
(8, 'jewellery'),
(9, 'women other'),
(10, 'girl'),
(11, 'boy'),
(12, 'kid accessories'),
(13, 'home decor'),
(14, 'kitchen,dining'),
(15, 'storage'),
(16, 'Mobile'),
(17, 'Laptop'),
(18, 'camera'),
(19, 'Seagrass Busket');

-- --------------------------------------------------------

--
-- Table structure for table `count`
--

CREATE TABLE `count` (
  `countid` int(100) NOT NULL,
  `productid` int(100) NOT NULL,
  `count` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `mailid` int(100) NOT NULL,
  `holdername` varchar(50) NOT NULL,
  `holderemail` varchar(100) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `msg` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `tyype` varchar(10) NOT NULL,
  `maildate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `nid` int(10) NOT NULL,
  `Date` date NOT NULL,
  `buyer` int(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `amount` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payid` int(10) NOT NULL,
  `cardnumber` int(50) NOT NULL,
  `cardholder` varchar(500) NOT NULL,
  `amount` int(255) NOT NULL,
  `cvv` int(100) NOT NULL,
  `valid` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(15) NOT NULL,
  `product_cat` int(15) NOT NULL,
  `stock` int(20) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `product_desc` varchar(500) NOT NULL,
  `product_image` varchar(250) NOT NULL,
  `count` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `stock`, `product_title`, `product_price`, `product_desc`, `product_image`, `count`) VALUES
(1, 15, 6000, 'Anti bacterial bottle', 200, 'Anti bacterial bottle \r\nin various colour', 'photos/anti bacterial bottle.PNG', 2),
(2, 18, 6000, 'Camera Stand', 800, 'Camera Stand \r\nBlack', 'photos/camera stand.PNG', 2),
(3, 18, 6000, 'Photo Frame', 300, 'Digital Photo frame', 'photos/digital photoframe.PNG', 2),
(4, 10, 6000, 'Party Dress', 1000, 'Party dress for girl kids', 'photos/k1.PNG', 2),
(5, 11, 2000, 'boys dress', 500, 'Baby Boy DRess', 'photos/k4.PNG', 2),
(6, 5, 4000, 'Girls huddies', 500, 'Girls Huddies', 'photos/w4.png', 3),
(7, 19, 4000, 'Busket', 300, 'round shape Busket in different Sizes', 'photos/s1.png', 2),
(8, 15, 100, 'bottle', 200, 'owls stainless steel water bottle one size,Turquoise', 'photos/IMG_20191211_230551.jpg', 0),
(9, 5, 100, 'Floral Swing Dress', 800, 'women\'s v shape spaghetti strap summer casual swing dress with pocket', 'photos/IMG_20191211_233433.jpg', 0),
(10, 5, 100, 'Flared swing dress', 500, 'fugyuhhkjhcnm', 'photos/IMG_20191211_234009.jpg', 1),
(11, 5, 100, 'Faux Wrap long Maxi', 500, 'jhgfdfghjk', 'photos/IMG_20191211_234053.jpg', 0),
(12, 5, 400, 'Cocktail swing dress', 1000, 'lkjhgfdghjjbj hvjhcgk bjbjhxjvb mvcgxvb,j  mvhcgnjfhn mvcjn  mcgcvg ', 'photos/IMG_20191211_234035.jpg', 3),
(13, 5, 100, 'Tie neck dress', 1000, 'ghhjjjjjjj', 'photos/IMG_20191211_234110.jpg', 0),
(14, 7, 100, 'Gray tweeted leather watch', 4000, 'ghhhjjjjj', 'photos/IMG_20191211_233328.jpg', 8),
(15, 3, 400, 'Business Classic wrist watch', 5000, 'ghhjjjj', 'photos/IMG_20191211_233350.jpg', 0),
(16, 7, 400, 'Virginia quartz watch', 3000, 'fhgjdd', 'photos/IMG_20191211_233244.jpg', 0),
(17, 7, 100, 'Quartz rose gold watch', 2500, 'hghgh', 'photos/IMG_20191211_230408.jpg', 0),
(18, 7, 400, 'Ladies wrist watch', 4000, 'gggg', 'photos/IMG_20191211_230329.jpg', 0),
(19, 9, 1000, 'Stylish crossbody bags', 1500, 'ttttt', 'photos/IMG_20191211_233010.jpg', 0),
(20, 9, 400, 'Soft leather handbags', 800, 'rrrr', 'photos/IMG_20191211_233045.jpg', 0),
(21, 9, 100, 'purse faux leather', 1500, 'ssss', 'photos/IMG_20191211_233105.jpg', 4),
(22, 9, 100, '3 pcs handle bags', 2000, 'tttt', 'photos/IMG_20191211_233133.jpg', 0),
(23, 16, 100, 'Wireless headphone', 1500, 'ffoooo', 'photos/IMG_20191211_234310.jpg', 0),
(24, 16, 400, 'Oneplus 7 pro', 40000, 'hhhhhhh', 'photos/IMG_20191211_234333.jpg', 1),
(25, 10, 100, 'Kids Dress', 500, 'fgfhfhfh', 'photos/IMG_20191211_232715.jpg', 0),
(26, 19, 100, 'Basket', 200, 'shdhdhdhf', 'photos/IMG_20191211_230757.jpg', 0),
(27, 19, 100, 'Floral Basket', 200, 'fhghhgghg', 'photos/IMG_20191211_230837.jpg', 0),
(28, 19, 100, 'Doodle Basket', 300, 'fhfhhhfhf', 'photos/IMG_20191211_230741.jpg', 0),
(29, 8, 100, 'Jewelry Box', 500, 'hghhhdhd', 'photos/IMG_20191211_231319.jpg', 2),
(30, 8, 100, 'Silver Pearl set', 1000, 'hhhdhdhh', 'photos/IMG_20191211_231420.jpg', 0),
(31, 10, 100, 'Kids Dress', 500, 'fhhdhdh', 'photos/IMG_20191211_232119.jpg', 0),
(32, 13, 100, 'Flower Vase', 400, 'ghhhhgg', 'photos/IMG_20191211_234158.jpg', 0),
(33, 13, 100, 'Wooden wall', 500, 'dhfhfhfh', 'photos/IMG_20191211_234135.jpg', 0),
(34, 14, 100, 'Box', 800, 'dhhfhhff', 'photos/IMG_20191211_230517.jpg', 0),
(35, 14, 100, 'Water Pot', 500, 'dhdhhdd', 'photos/IMG_20191211_230608.jpg', 0),
(36, 13, 100, 'Stone pot', 800, 'hhdhhdh', 'photos/IMG_20191211_234219.jpg', 0),
(37, 8, 100, 'Earring', 500, 'shddhdh', 'photos/IMG_20191211_231353.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rateid` int(20) NOT NULL,
  `user` int(20) NOT NULL,
  `product` int(20) NOT NULL,
  `rate` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rateid`, `user`, `product`, `rate`) VALUES
(1, 1, 14, 4.00),
(2, 1, 12, 3.00),
(3, 2, 14, 3.00),
(4, 3, 13, 2.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyerorder2`
--
ALTER TABLE `buyerorder2`
  ADD PRIMARY KEY (`order`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `count`
--
ALTER TABLE `count`
  ADD PRIMARY KEY (`countid`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`mailid`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rateid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buyerorder2`
--
ALTER TABLE `buyerorder2`
  MODIFY `order` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `cat_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `count`
--
ALTER TABLE `count`
  MODIFY `countid` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `mailid` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `nid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rateid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
