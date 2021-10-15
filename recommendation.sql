-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2020 at 07:13 AM
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
(2, 'koly', 'koly79@gmail.com', '1234', 98727772),
(3, 'Tasnuva Rohin', 'tasnuva@gmail.com', '999999', 977523651122),
(4, 'Sharmin Ara', 'sharmin@gmail.com', '7777', 191435867),
(5, 'Tabassum Nusrat', 'tabassum@gmail.com', '6666', 141395782),
(8, 'sayma', 'sayma@gmail.com', '118', 46785993),
(9, 'medha', 'medha@gmail.com', '62', 564777474),
(10, 'sim', 'sim@gmail.com', '74', 6778555),
(11, 'topu', 'topu@gmail.com', '55', 67887665),
(12, 'Afroza', 'afroza@gmail.com', '123', 4755588),
(13, 'tamanna', 'tamanna@gmail.com', '1234', 4744588),
(14, 'adiba', 'adiba@gmail.com', '1234', 5784848),
(15, 'maliha', 'maliha@gmail.com', '1234', 675848),
(16, 'himel', 'himel@gmail.com', '1234', 4657477),
(17, 'opu', 'opu@gmail.com', '1234', 576885),
(18, 'esha', 'esha@gmail.com', '1234', 566868),
(19, 'sabir', 'sabir@gmail.com', '1234', 576768686),
(20, 'tahsin', 'tahsin@gmail.com', '1234', 3637737),
(21, 'MD Asfaque', 'asfaque@gmail.com', '1234', 1914437824),
(22, 'Tania Haque', 'tania@gmail.com', '1234', 1778345567),
(23, 'moinul islam', 'moinul@gmail.com', '1234', 1914437824),
(24, 'siara banu', 'siara@gmail.com', '1234', 1914437824),
(25, 'sahin', 'sahin@gmail.com', '1234', 1914437824),
(26, 'sara', 'saraali@gmail.com', '1234', 1914437824),
(27, 'carry wan', 'wan@gmail.com', '1234', 986512345),
(28, 'alan wood', 'alan@gmail.com', '1234', 1914437824),
(29, 'amrita', 'amrita@gmail.com', '1234', 1914437824),
(30, 'ananya', 'ananya@gmail.com', '1234', 1914437824),
(31, 'afsara', 'afsara@gmail.com', '1234', 1914437824),
(32, 'beak mathew', 'beak@gmail.com', '1234', 1914437824),
(33, 'barasat', 'barasat@gmail.com', '1234', 1914437824),
(34, 'cody', 'cody@gmail.com', '1234', 1914437824),
(35, 'camaron', 'camaron@gmail.com', '1234', 9876543213),
(36, 'collin', 'collin123@gmail.com', '1234', 1914437824),
(37, 'darek', 'darek@gmail.com', '1234', 1914437824),
(38, 'doly', 'doly@gmail.com', '1234', 1914437824),
(39, 'dina ', 'dina@gmail.com', '1234', 1914437824),
(40, 'nishat', 'nishat@gmail.com', '1234', 5768668);

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
(0, 24, 2, 1, 1.0000000000),
(0, 23, 3, 1, 1.0000000000),
(0, 32, 3, 2, 1.0000000000),
(0, 12, 3, 2, 1.0000000000),
(0, 28, 3, 1, 1.0000000000),
(0, 7, 3, 1, 1.0000000000),
(0, 16, 3, 2, 1.0000000000),
(0, 12, 3, 1, 1.0000000000),
(0, 12, 3, 1, 1.0000000000),
(0, 10, 8, 1, 1.0000000000),
(0, 10, 8, 1, 1.0000000000),
(0, 33, 8, 2, 1.0000000000),
(0, 16, 3, 1, 1.0000000000),
(0, 64, 13, 3, 1.0000000000),
(0, 18, 14, 1, 1.0000000000),
(0, 11, 15, 2, 1.0000000000),
(0, 72, 16, 3, 1.0000000000),
(0, 20, 17, 2, 1.0000000000),
(0, 16, 18, 3, 1.0000000000),
(0, 58, 19, 3, 1.0000000000),
(0, 32, 20, 2, 1.0000000000),
(0, 71, 21, 2, 1.0000000000),
(0, 9, 22, 3, 1.0000000000),
(0, 17, 23, 3, 1.0000000000),
(0, 10, 24, 3, 1.0000000000),
(0, 15, 25, 3, 1.0000000000),
(0, 5, 26, 1, 1.0000000000),
(0, 8, 27, 3, 1.0000000000),
(0, 14, 28, 2, 1.0000000000),
(0, 13, 29, 34, 1.0000000000),
(0, 9, 30, 2, 1.0000000000),
(0, 31, 31, 4, 1.0000000000),
(0, 13, 32, 3, 1.0000000000),
(0, 36, 33, 2, 1.0000000000),
(0, 81, 34, 1, 1.0000000000),
(0, 1, 35, 2, 1.0000000000),
(0, 8, 36, 3, 1.0000000000),
(0, 53, 37, 4, 1.0000000000),
(0, 52, 39, 2, 1.0000000000),
(0, 14, 3, 3, 1.0000000000),
(0, 52, 5, 1, 1.0000000000);

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
(1, 15, 6000, 'Anti bacterial bottle', 200, 'Anti bacterial bottle \r\nin various colour', 'photos/anti bacterial bottle.PNG', 3),
(2, 18, 6000, 'Camera Stand', 800, 'Camera Stand \r\nBlack', 'photos/camera stand.PNG', 2),
(3, 18, 6000, 'Photo Frame', 300, 'Digital Photo frame', 'photos/digital photoframe.PNG', 2),
(4, 10, 6000, 'Party Dress', 1000, 'Party dress for girl kids', 'photos/k1.PNG', 2),
(5, 11, 2000, 'boys dress', 500, 'Baby Boy DRess', 'photos/k4.PNG', 3),
(6, 5, 4000, 'Girls huddies', 500, 'Girls Huddies', 'photos/w4.png', 3),
(7, 19, 4000, 'Busket', 300, 'round shape Busket in different Sizes', 'photos/s1.png', 3),
(8, 15, 100, 'bottle', 200, 'owls stainless steel water bottle one size,Turquoise', 'photos/IMG_20191211_230551.jpg', 2),
(9, 5, 100, 'Floral Swing Dress', 800, 'women\'s v shape spaghetti strap summer casual swing dress with pocket', 'photos/IMG_20191211_233433.jpg', 2),
(10, 5, 100, 'Flared swing dress', 500, 'fugyuhhkjhcnm', 'photos/IMG_20191211_234009.jpg', 4),
(11, 5, 100, 'Faux Wrap long Maxi', 500, 'jhgfdfghjk', 'photos/IMG_20191211_234053.jpg', 1),
(12, 5, 400, 'Cocktail swing dress', 1000, 'lkjhgfdghjjbj hvjhcgk bjbjhxjvb mvcgxvb,j  mvhcgnjfhn mvcjn  mcgcvg ', 'photos/IMG_20191211_234035.jpg', 6),
(13, 5, 100, 'Tie neck dress', 1000, 'ghhjjjjjjj', 'photos/IMG_20191211_234110.jpg', 2),
(14, 7, 100, 'Gray tweeted leather watch', 4000, 'ghhhjjjjj', 'photos/IMG_20191211_233328.jpg', 10),
(16, 7, 400, 'Virginia quartz watch', 3000, 'fhgjdd', 'photos/IMG_20191211_233244.jpg', 7),
(17, 7, 100, 'Quartz rose gold watch', 2500, 'hghgh', 'photos/IMG_20191211_230408.jpg', 1),
(18, 7, 400, 'Ladies wrist watch', 4000, 'gggg', 'photos/IMG_20191211_230329.jpg', 1),
(19, 9, 1000, 'Stylish crossbody bags', 1500, 'ttttt', 'photos/IMG_20191211_233010.jpg', 0),
(20, 9, 400, 'Soft leather handbags', 800, 'rrrr', 'photos/IMG_20191211_233045.jpg', 1),
(21, 9, 100, 'purse faux leather', 1500, 'ssss', 'photos/IMG_20191211_233105.jpg', 4),
(22, 9, 100, '3 pcs handle bags', 2000, 'tttt', 'photos/IMG_20191211_233133.jpg', 0),
(23, 16, 100, 'Wireless headphone', 1500, 'ffoooo', 'photos/IMG_20191211_234310.jpg', 1),
(24, 16, 400, 'Oneplus 7 pro', 40000, 'hhhhhhh', 'photos/IMG_20191211_234333.jpg', 1),
(25, 10, 100, 'Kids Dress', 500, 'fgfhfhfh', 'photos/IMG_20191211_232715.jpg', 0),
(26, 19, 100, 'Basket', 200, 'shdhdhdhf', 'photos/IMG_20191211_230757.jpg', 0),
(27, 19, 100, 'Floral Basket', 200, 'fhghhgghg', 'photos/IMG_20191211_230837.jpg', 0),
(28, 19, 100, 'Doodle Basket', 300, 'fhfhhhfhf', 'photos/IMG_20191211_230741.jpg', 1),
(29, 8, 100, 'Jewelry Box', 500, 'hghhhdhd', 'photos/IMG_20191211_231319.jpg', 2),
(30, 8, 100, 'Silver Pearl set', 1000, 'hhhdhdhh', 'photos/IMG_20191211_231420.jpg', 0),
(31, 10, 100, 'Kids Dress', 500, 'fhhdhdh', 'photos/IMG_20191211_232119.jpg', 1),
(32, 13, 100, 'Flower Vase', 400, 'ghhhhgg', 'photos/IMG_20191211_234158.jpg', 2),
(33, 13, 100, 'Wooden wall', 500, 'dhfhfhfh', 'photos/IMG_20191211_234135.jpg', 1),
(34, 14, 100, 'Box', 800, 'dhhfhhff', 'photos/IMG_20191211_230517.jpg', 0),
(35, 14, 100, 'Water Pot', 500, 'dhdhhdd', 'photos/IMG_20191211_230608.jpg', 0),
(36, 13, 100, 'Stone pot', 800, 'hhdhhdh', 'photos/IMG_20191211_234219.jpg', 1),
(37, 8, 100, 'Earring', 500, 'shddhdh', 'photos/IMG_20191211_231353.jpg', 0),
(38, 14, 400, 'chopping board', 500, 'chopping board set of 3 sizes', 'photos/IMG_20191211_230428.jpg', 0),
(39, 10, 400, 'Kids Floral Dress', 500, 'Kids Floral dress', 'photos/IMG_20191211_232451.jpg', 0),
(40, 10, 100, 'kids Jacket', 800, 'Kids jacket', 'photos/IMG_20191211_231819.jpg', 0),
(41, 14, 100, 'Blender', 500, 'Blender', 'photos/IMG_20191211_230444.jpg', 0),
(42, 10, 100, 'Kids pink Dress', 800, 'Kids pink Dress', 'photos/IMG_20191211_232145.jpg', 0),
(43, 10, 100, 'Girls Frock', 800, 'Girls Frock', 'photos/IMG_20191211_232943.jpg', 0),
(44, 11, 100, 'Kids t-shirt', 800, 'Kids t-shirt', 'photos/IMG_20191211_231933.jpg', 0),
(48, 5, 100, 'jnhfu', 500, 'hgnbcvrcvb', 'photos/IMG_20200121_134537.jpg', 0),
(49, 9, 100, 'Soft leather shoe', 2000, 'mkjghzdxcvbnm', 'photos/IMG_20200121_135010.jpg', 0),
(50, 9, 100, 'velvet shoes', 1500, 'velvet shoes', 'photos/IMG_20200121_135049.jpg', 0),
(51, 9, 100, 'Flat sandal', 1000, 'Flat sandal', 'photos/IMG_20200121_134953.jpg', 0),
(52, 9, 400, 'Victorian ruffle shoe', 2000, 'Victorian ruffle shoe', 'photos/IMG_20200121_134824.jpg', 2),
(53, 9, 100, 'Black sandal', 1500, 'Black sandal', 'photos/IMG_20200121_134838.jpg', 1),
(54, 9, 100, 'Margaret flat sandal', 3000, 'Margaret flat sandal', 'photos/IMG_20200121_134854.jpg', 0),
(55, 9, 100, 'Balerina sandal', 800, 'Balerina sandal', 'photos/IMG_20200121_135101.jpg', 0),
(56, 8, 100, 'Loreal lipstic', 800, 'Loreal Red lipstic', 'photos/IMG_20200121_144029.jpg', 0),
(57, 8, 100, 'Matte lipstic', 200, 'Matte lip crayon', 'photos/IMG_20200121_144040.jpg', 0),
(58, 8, 100, 'Red velvet lipstic', 500, 'Huda beauty red velvet lipstic', 'photos/IMG_20200121_144056.jpg', 1),
(59, 14, 100, 'Square plate', 1000, 'Square ceramics plate', 'photos/IMG_20200121_144409.jpg', 0),
(60, 14, 400, 'Full Dinner set', 2500, 'Full Dinner set', 'photos/IMG_20200121_144422.jpg', 0),
(61, 14, 400, 'Blue Ceramic set', 1500, 'Blue Ceramic set', 'photos/IMG_20200121_144435.jpg', 0),
(62, 14, 100, 'Multi-color plate', 1000, 'Multi-color plate', 'photos/IMG_20200121_144447.jpg', 0),
(63, 9, 100, 'Leather sandal', 1500, 'Leather sandal', 'photos/IMG_20200121_134808.jpg', 0),
(64, 5, 400, 'Red tunic dress', 3000, 'Red Tunic Dress', 'photos/IMG_20200121_134639.jpg', 1),
(65, 5, 400, 'Floral frock ', 4000, 'Floral Frock ', 'photos/IMG_20200121_134652.jpg', 0),
(66, 6, 400, 'Victoria dress', 5600, 'Victoria dress', 'photos/IMG_20200121_134704.jpg', 0),
(67, 5, 100, 'Ladies floral swing dress', 800, 'Ladies floral swing dress', 'photos/IMG_20200121_134718.jpg', 0),
(68, 6, 100, 'white thick tunic', 1500, 'white thick tunic', 'photos/IMG_20200121_134622.jpg', 0),
(69, 6, 100, 'Blue velvet  swing dress', 1500, 'Blue velvet  swing dress', 'photos/IMG_20200121_134553.jpg', 0),
(70, 5, 100, 'Ladies tunic', 800, 'Ladies tunic', 'photos/IMG_20200121_134458.jpg', 0),
(71, 5, 100, 'Stylish floral dress', 1000, 'Stylish floral dress', 'photos/IMG_20200121_134733.jpg', 1),
(72, 8, 100, 'Eye-shadow box', 800, 'Eye-shadow box', 'photos/IMG_20200121_144110.jpg', 1),
(73, 8, 100, 'Loreal-paris face powder', 400, 'Loreal-paris face powder', 'photos/IMG_20200121_144127.jpg', 0),
(74, 8, 100, 'Diamond Locket', 1000, 'Diamond Locket', 'photos/IMG_20191211_231437.jpg', 0),
(75, 8, 100, 'Platinum Locket', 30000, 'Platinum Locket', 'photos/IMG_20191211_231503.jpg', 0),
(76, 8, 100, 'Bracelet for girls', 4500, 'Bracelet for girls', 'photos/IMG_20191211_231521.jpg', 0),
(77, 8, 100, 'white pearl locket', 9000, 'white pearl locket', 'photos/IMG_20191211_231222.jpg', 0),
(78, 9, 100, 'Cosmetics bag for ladies', 3000, 'Cosmetics bag for ladies', 'photos/IMG_20191211_231302.jpg', 0),
(79, 8, 100, 'Blue stone necklace', 500, 'Blue stone necklace', 'photos/IMG_20191211_231336.jpg', 0),
(80, 17, 100, 'Asus Laptop', 50000, 'Asus Laptop', 'photos/laptop.jpg', 0),
(81, 17, 100, 'LG Laptop', 60000, 'LG Laptop', 'photos/laptop1.jpg', 1),
(82, 17, 100, 'hp laptop', 45000, 'hp laptop', 'photos/laptop2.jpg', 0),
(83, 17, 100, 'Asus Laptop', 60000, 'Asus Laptop', 'photos/laptop3.jpg', 0),
(84, 17, 100, 'Samsung Galaxy note', 56000, 'Samsung Galaxy note', 'photos/laptop4.jpg', 0),
(85, 16, 100, 'Oppo phone', 23000, 'Oppo phone', 'photos/oppo.jpg', 0),
(86, 16, 40, 'Walton phone', 21000, 'Walton phone', 'photos/mobile.jpg', 0),
(87, 16, 300, 'Symphony phone', 32000, 'Symphony phone', 'photos/mobile1.jpg', 0),
(88, 16, 100, 'Nokia smartphone', 34000, 'Nokia smartphone', 'photos/mobile2.jpg', 0),
(89, 7, 100, 'Ladies watch', 3000, 'Ladies watch', 'photos/watch.jpg', 0),
(90, 7, 100, 'Ladies watch', 3000, 'Ladies watch', 'photos/watch1.jpg', 0),
(91, 7, 100, 'Ladies watch', 3000, 'Ladies watch', 'photos/watch2.jpg', 0),
(92, 7, 100, 'Ladies watch', 1500, 'Ladies watch', 'photos/watch3.jpg', 0),
(93, 7, 100, 'Ladies watch', 3000, 'Ladies watch', 'photos/watch4.jpg', 0),
(94, 7, 100, 'Ladies watch', 3000, 'Ladies watch', 'photos/watch5.jpg', 0),
(95, 7, 100, 'Ladies watch', 3000, 'Ladies watch', 'photos/watch6.jpg', 0),
(96, 7, 100, 'Ladies watch', 1500, 'Ladies watch', 'photos/watch7.jpg', 0),
(97, 7, 100, 'Ladies watch', 3000, 'Ladies watch', 'photos/watch8.jpg', 0),
(98, 7, 100, 'Ladies watch', 1500, 'Ladies watch', 'photos/watch9.jpg', 0),
(99, 7, 100, 'Ladies watch', 500, 'Ladies watch', 'photos/watch10.jpg', 0),
(100, 7, 100, 'Ladies watch', 1500, 'Ladies watch', 'photos/watch11.jpg', 0),
(101, 16, 100, 'Samsung phone', 34000, 'Samsung phone', 'photos/phone1.jpg', 0),
(102, 16, 100, 'Samsung phone', 10000, 'Samsung phone', 'photos/phone2.jpg', 0),
(103, 16, 300, 'Samsung phone', 45000, 'Samsung phone', 'photos/phone3.jpg', 0),
(104, 16, 400, 'Samsung phone', 40000, 'Samsung phone', 'photos/phone4.jpg', 0),
(105, 16, 300, 'Samsung phone', 40000, 'Samsung phone', 'photos/phone5.jpg', 0),
(106, 14, 200, 'Tea set', 3000, 'Tea set with 6 cups and two pots', 'photos/tee set.PNG', 0),
(107, 13, 100, 'LED Wall mirror', 1500, 'LED wall mirror ', 'photos/led wall mirror.PNG', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `rid` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `prate` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`rid`, `uname`, `pname`, `prate`) VALUES
(1, 'Sumaiya', 'Wireless headphone', 5),
(2, 'medha', 'Wireless headphone', 2),
(3, 'topu', 'Wireless headphone', 2),
(4, 'sim', 'Wireless headphone', 5),
(5, 'sayma', 'Wireless headphone', 4),
(7, 'Sumaiya', 'Anti bacterial bottle', 3),
(8, 'medha', 'Anti bacterial bottle', 2),
(9, 'sayma', 'Anti bacterial bottle', 3),
(13, 'Sumaiya', 'Virginia quartz watch', 2),
(14, 'medha', 'Virginia quartz watch', 5),
(15, 'sim', 'Virginia quartz watch', 3),
(16, 'sayma', 'Virginia quartz watch', 3),
(17, 'medha', 'Gray tweeted leather', 2),
(18, 'topu', 'Gray tweeted leather', 4),
(19, 'sim', 'Gray tweeted leather', 4),
(20, 'sayma', 'Gray tweeted leather', 4),
(21, 'topu', 'purse faux leather', 4),
(22, 'sayma', 'purse faux leather', 3),
(25, 'topu', 'Oneplus 7 pro', 5),
(27, 'sayma', 'Wooden wall', 4),
(28, 'Tasnuva Rohin', 'Virginia quartz watch', 5),
(29, 'tamanna', 'Red tunic dress', 5),
(30, 'adiba', 'Ladies wrist watch', 4),
(31, 'maliha', 'Faux Wrap long Maxi', 4),
(32, 'himel', 'Eye-shadow box', 4),
(33, 'opu', 'Soft leather handbags', 3),
(34, 'esha', 'Virginia quartz watch', 4),
(35, 'sabir', 'Red velvet lipstic', 4),
(36, 'tahsin', 'Flower Vase', 3),
(37, 'MD Asfaque', 'Stylish floral dress', 5),
(38, 'Tania Haque', 'Floral Swing Dress', 4),
(39, 'moinul islam', 'Quartz rose gold watch', 5),
(40, 'siara banu', 'Flared swing dress', 5),
(41, 'sahin', 'Business Classic wrist watch', 3),
(42, 'sara', 'boys dress', 5),
(43, 'carry wan', 'bottle', 4),
(44, 'alan wood', 'Gray tweeted leather watch', 4),
(45, 'ananya', 'Floral Swing Dress', 3),
(46, 'afsara', 'Kids Dress', 5),
(47, 'beak mathew', 'Tie neck dress', 4),
(48, 'barasat', 'Stone pot', 4),
(49, 'cody', 'LG Laptop', 3),
(50, 'camaron', 'Anti bacterial bottle', 3),
(51, 'collin', 'bottle', 5),
(52, 'darek', 'Black sandal', 3),
(53, 'dina ', 'Victorian ruffle shoe', 4),
(54, 'Tasnuva Rohin', 'Gray tweeted leather watch', 5),
(55, 'Tabassum Nusrat', 'Victorian ruffle shoe', 3);

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
(1, 1, 23, 5.00),
(2, 2, 23, 2.00),
(3, 3, 23, 2.00),
(4, 4, 23, 5.00),
(5, 5, 23, 4.00),
(6, 1, 1, 3.00),
(7, 2, 1, 2.00),
(8, 5, 1, 3.00),
(9, 1, 16, 2.00),
(10, 2, 16, 5.00),
(11, 4, 16, 3.00),
(12, 5, 16, 3.00),
(13, 2, 14, 2.00),
(14, 3, 14, 4.00),
(17, 4, 14, 4.00),
(18, 5, 14, 4.00),
(21, 3, 21, 4.00),
(22, 5, 21, 3.00),
(25, 3, 24, 5.00),
(26, 3, 16, 5.00);

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
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`rid`);

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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
  MODIFY `product_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rateid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
