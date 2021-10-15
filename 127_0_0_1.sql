-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2020 at 04:04 PM
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
-- Database: `bank`
--
CREATE DATABASE IF NOT EXISTS `bank` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bank`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_name` varchar(50) NOT NULL,
  `customer_street` varchar(50) DEFAULT NULL,
  `customer_city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_name`, `customer_street`, `customer_city`) VALUES
('qq', 'main', 'qw'),
('ss', 'wqw', 'qw'),
('ww', 'main', 'qw');

-- --------------------------------------------------------

--
-- Table structure for table `depositor`
--

CREATE TABLE `depositor` (
  `customer_name` varchar(50) DEFAULT NULL,
  `account_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_name`);

--
-- Indexes for table `depositor`
--
ALTER TABLE `depositor`
  ADD PRIMARY KEY (`account_number`);
--
-- Database: `export_management_system`
--
CREATE DATABASE IF NOT EXISTS `export_management_system` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `export_management_system`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `A_ID` int(5) NOT NULL,
  `Username` varchar(15) DEFAULT NULL,
  `A_password` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`A_ID`, `Username`, `A_password`) VALUES
(101, 'KAZI TASNUVA ', 1604087),
(102, 'SUMAIYA SULTANA', 1604095);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `C_ID` int(10) NOT NULL,
  `C_username` varchar(15) DEFAULT NULL,
  `C_password` int(15) DEFAULT NULL,
  `C_email` varchar(15) DEFAULT NULL,
  `Acc_NO` int(15) DEFAULT NULL,
  `Bank_Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_ID`, `C_username`, `C_password`, `C_email`, `Acc_NO`, `Bank_Name`) VALUES
(1, 'SHARMIN ARA', 112233, 'sharminara@gmai', 10203040, 'HBSC Bank Limited'),
(2, 'ATUL MODI', 11223355, 'atulmodi@gmail.', 10203041, 'Bank of India Limite'),
(3, 'TABASSUM NUSRAT', 112234, 'tabassumnusrat@', 102030412, 'Commercial Bank of D'),
(5, 'PARK CHANYEOL', 1122335566, 'realpcy@gmail.c', 108960, 'Kakau Bank Korea'),
(6, 'Wang Fang', 10203040, 'wangfang@gmail.', 1050601112, 'HBSC Bank Limited'),
(7, 'sss', 1111, 'sumaiya.sultana', NULL, NULL),
(8, 'sss', 5555, 'sumaiya.sultana', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer2`
--

CREATE TABLE `customer2` (
  `C_id` int(10) NOT NULL,
  `C_username` varchar(20) NOT NULL,
  `C_password` varchar(20) NOT NULL,
  `C_email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer2`
--

INSERT INTO `customer2` (`C_id`, `C_username`, `C_password`, `C_email`) VALUES
(1, 'sss', '5555', 'sumaiya.sultana.710@'),
(2, 'bbbb', '6666', 'xxxx@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `debriefing_product`
--

CREATE TABLE `debriefing_product` (
  `p_ID` int(10) NOT NULL,
  `Profit` double(10,2) DEFAULT NULL,
  `Lose` double(10,2) DEFAULT NULL,
  `sold_Quantity` double(10,2) DEFAULT NULL,
  `remaining_Quantity` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debriefing_product`
--

INSERT INTO `debriefing_product` (`p_ID`, `Profit`, `Lose`, `sold_Quantity`, `remaining_Quantity`) VALUES
(1, 10000.00, 0.00, 5.00, 0.00),
(2, 0.00, 500.00, 6.00, 0.00),
(3, 10000.00, 0.00, 4000.00, 500.00),
(4, 8000.00, 0.00, 10000.00, 450.00);

-- --------------------------------------------------------

--
-- Table structure for table `port`
--

CREATE TABLE `port` (
  `Port_name` varchar(20) NOT NULL,
  `Home_port` varchar(20) DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL,
  `Continent` varchar(20) DEFAULT NULL,
  `Ocean_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `P_ID` int(10) NOT NULL,
  `P_Name` varchar(15) DEFAULT NULL,
  `P_Details` varchar(80) DEFAULT NULL,
  `Price` double(5,2) DEFAULT NULL,
  `MOQ` int(10) DEFAULT NULL,
  `Image` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`P_ID`, `P_Name`, `P_Details`, `Price`, `MOQ`, `Image`) VALUES
(1, ' Shrimp', ' Frozen Raw Louisiana Peeled Shrimp', 800.00, 5, 'shrimp.jpg'),
(2, 'Tiger Prawn', 'asian tiger prawn', 12.00, 6, 'asian prawn.jpg'),
(3, 'Jacket', 'PU lather jacket', 40.00, 200, 'lather jacket.jpg'),
(4, 'Wallet', 'handmade medium hard', 20.00, 300, 'wallet.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `order_no` int(10) NOT NULL,
  `quantity` int(10) DEFAULT NULL,
  `total_cost` double(10,2) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `C_name` varchar(80) DEFAULT NULL,
  `P_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`order_no`, `quantity`, `total_cost`, `address`, `C_name`, `P_ID`) VALUES
(1, 12, 1.00, 'Dubai port', 'Tabassum nusrat', 1),
(2, 12, 1.00, 'Shanghai port,China', 'sharmin ara', 1),
(3, 250, 10500.00, 'Mumbai port', 'Atul Modi', 3),
(4, 500, 21000.00, 'Sanghai port', 'Wang Fang', 3);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `P_report_no` int(10) NOT NULL,
  `month` varchar(12) NOT NULL,
  `year` int(12) NOT NULL,
  `lose` double(10,2) DEFAULT NULL,
  `profit` double(10,2) DEFAULT NULL,
  `maintenance_cost` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`P_report_no`, `month`, `year`, `lose`, `profit`, `maintenance_cost`) VALUES
(1, 'January', 2018, 0.00, 2000.00, 1000.00),
(2, 'february', 2018, 20.00, 0.00, 100.00),
(3, 'march', 2018, 0.00, 12000.00, 1000.00),
(4, 'April', 2018, 0.00, 10000.00, 5000.00);

-- --------------------------------------------------------

--
-- Table structure for table `ship`
--

CREATE TABLE `ship` (
  `order_no` int(20) DEFAULT NULL,
  `ship_name` varchar(20) NOT NULL,
  `owner` varchar(100) NOT NULL,
  `Year` int(4) NOT NULL,
  `Month` int(2) NOT NULL,
  `Day` int(2) NOT NULL,
  `Destination` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ship`
--

INSERT INTO `ship` (`order_no`, `ship_name`, `owner`, `Year`, `Month`, `Day`, `Destination`) VALUES
(1, 'Cargo_fransis', 'Premium Ship company', 2018, 12, 3, 'sanghai port,China'),
(2, 'SHINDHU EXPRESS', 'Maersk Bangladesh', 2018, 12, 2, 'Dubai port');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `port_name` varchar(20) DEFAULT NULL,
  `ship_name` varchar(20) NOT NULL,
  `start_date` varchar(20) DEFAULT NULL,
  `arrival_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`port_name`, `ship_name`, `start_date`, `arrival_date`) VALUES
('port of sanghai', 'Cargo_fransis', '20-4-18', '12-5-18'),
('Dubai port', 'SHINDHU EXPRESS', '2-12-18', '1-1-2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`A_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `customer2`
--
ALTER TABLE `customer2`
  ADD PRIMARY KEY (`C_id`);

--
-- Indexes for table `debriefing_product`
--
ALTER TABLE `debriefing_product`
  ADD PRIMARY KEY (`p_ID`);

--
-- Indexes for table `port`
--
ALTER TABLE `port`
  ADD PRIMARY KEY (`Port_name`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`P_ID`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`order_no`),
  ADD KEY `P_ID` (`P_ID`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`P_report_no`);

--
-- Indexes for table `ship`
--
ALTER TABLE `ship`
  ADD PRIMARY KEY (`ship_name`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`ship_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `C_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer2`
--
ALTER TABLE `customer2`
  MODIFY `C_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `P_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `order_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD CONSTRAINT `purchase_order_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `product` (`P_ID`);

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`ship_name`) REFERENCES `ship` (`ship_name`);
--
-- Database: `khanstore`
--
CREATE DATABASE IF NOT EXISTS `khanstore` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `khanstore`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG'),
(6, 'Cloth Brand');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 1, '::1', 3, 3),
(2, 2, '::1', 3, 1),
(3, 3, '::1', 3, 1),
(4, 1, '::1', 4, 1),
(5, 1, '::1', 5, 1),
(6, 3, '::1', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Electronics'),
(2, 'Ladies Wears'),
(3, 'Mens Wear'),
(4, 'Kids Wear'),
(5, 'Furnitures'),
(6, 'Home Appliances'),
(7, 'Electronics Gadgets');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Samsung Dous 2', 5000, 'Samsung Dous 2 sgh ', 'samsung mobile.jpg', 'samsung mobile electronics'),
(2, 1, 3, 'iPhone 5s', 25000, 'iphone 5s', 'iphone mobile.jpg', 'mobile iphone apple'),
(3, 1, 3, 'iPad', 30000, 'ipad apple brand', 'ipad.jpg', 'apple ipad tablet'),
(4, 1, 3, 'iPhone 6s', 32000, 'Apple iPhone ', 'iphone.jpg', 'iphone apple mobile'),
(5, 1, 2, 'iPad 2', 10000, 'samsung ipad', 'ipad 2.jpg', 'ipad tablet samsung'),
(6, 1, 1, 'Hp Laptop r series', 35000, 'Hp Red and Black combination Laptop', 'k2-_ed8b8f8d-e696-4a96-8ce9-d78246f10ed1.v1.jpg-bc204bdaebb10e709a997a8bb4518156dfa6e3ed-optim-450x450.jpg', 'hp laptop '),
(7, 1, 1, 'Laptop Pavillion', 50000, 'Laptop Hp Pavillion', '12039452_525963140912391_6353341236808813360_n.png', 'Laptop Hp Pavillion'),
(8, 1, 4, 'Sony', 40000, 'Sony Mobile', 'sony mobile.jpg', 'sony mobile'),
(9, 1, 3, 'iPhone New', 12000, 'iphone', 'white iphone.png', 'iphone apple mobile'),
(10, 2, 6, 'Red Ladies dress', 1000, 'red dress for girls', 'red dress.jpg', 'red dress '),
(11, 2, 6, 'Blue Heave dress', 1200, 'Blue dress', 'images.jpg', 'blue dress cloths'),
(12, 2, 6, 'Ladies Casual Cloths', 1500, 'ladies casual summer two colors pleted', '7475-ladies-casual-dresses-summer-two-colors-pleated.jpg', 'girl dress cloths casual'),
(13, 2, 6, 'SpringAutumnDress', 1200, 'girls dress', 'Spring-Autumn-Winter-Young-Ladies-Casual-Wool-Dress-Women-s-One-Piece-Dresse-Dating-Clothes-Medium.jpg_640x640.jpg', 'girl dress'),
(14, 2, 6, 'Casual Dress', 1400, 'girl dress', 'download.jpg', 'ladies cloths girl'),
(15, 2, 6, 'Formal Look', 1500, 'girl dress', 'shutterstock_203611819.jpg', 'ladies wears dress girl'),
(16, 3, 6, 'Sweter for men', 600, '2012-Winter-Sweater-for-Men-for-better-outlook', '2012-Winter-Sweater-for-Men-for-better-outlook.jpg', 'black sweter cloth winter'),
(17, 3, 6, 'Gents formal', 1000, 'gents formal look', 'gents-formal-250x250.jpg', 'gents wear cloths'),
(19, 3, 6, 'Formal Coat', 3000, 'ad', 'images (1).jpg', 'coat blazer gents'),
(20, 3, 6, 'Mens Sweeter', 1600, 'jg', 'Winter-fashion-men-burst-sweater.png', 'sweeter gents '),
(21, 3, 6, 'T shirt', 800, 'ssds', 'IN-Mens-Apparel-Voodoo-Tiles-09._V333872612_.jpg', 'formal t shirt black'),
(22, 4, 6, 'Yellow T shirt ', 1300, 'yello t shirt with pant', '1.0x0.jpg', 'kids yellow t shirt'),
(23, 4, 6, 'Girls cloths', 1900, 'sadsf', 'GirlsClothing_Widgets.jpg', 'formal kids wear dress'),
(24, 4, 6, 'Blue T shirt', 700, 'g', 'images.jpg', 'kids dress'),
(25, 4, 6, 'Yellow girls dress', 750, 'as', 'images (3).jpg', 'yellow kids dress'),
(26, 4, 6, 'Skyblue dress', 650, 'nbk', 'kids-wear-121.jpg', 'skyblue kids dress'),
(27, 4, 6, 'Formal look', 690, 'sd', 'image28.jpg', 'formal kids dress'),
(32, 5, 0, 'Book Shelf', 2500, 'book shelf', 'furniture-book-shelf-250x250.jpg', 'book shelf furniture'),
(33, 6, 2, 'Refrigerator', 35000, 'Refrigerator', 'CT_WM_BTS-BTC-AppliancesHome_20150723.jpg', 'refrigerator samsung'),
(34, 6, 4, 'Emergency Light', 1000, 'Emergency Light', 'emergency light.JPG', 'emergency light'),
(35, 6, 0, 'Vaccum Cleaner', 6000, 'Vaccum Cleaner', 'images (2).jpg', 'Vaccum Cleaner'),
(36, 6, 5, 'Iron', 1500, 'gj', 'iron.JPG', 'iron'),
(37, 6, 5, 'LED TV', 20000, 'LED TV', 'images (4).jpg', 'led tv lg'),
(38, 6, 4, 'Microwave Oven', 3500, 'Microwave Oven', 'images.jpg', 'Microwave Oven'),
(39, 6, 5, 'Mixer Grinder', 2500, 'Mixer Grinder', 'singer-mixer-grinder-mg-46-medium_4bfa018096c25dec7ba0af40662856ef.jpg', 'Mixer Grinder'),
(40, 2, 6, 'Formal girls dress', 3000, 'Formal girls dress', 'girl-walking.jpg', 'ladies'),
(45, 1, 2, 'Samsung Galaxy Note 3', 10000, '0', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galaxy Note 3 neo'),
(46, 1, 2, 'Samsung Galaxy Note 3', 10000, '', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galxaxy note 3 neo');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Rizwan', 'Khan', 'rizwankhan.august16@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asansol'),
(2, 'Rizwan', 'Khan', 'rizwankhan.august16@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asa'),
(5, 'Tasnuva', 'rohin', 'u1604087@gmail.com', '6fc4535998f8b811c79e682cecfc02e0', '7894561212', 'bhxcwkckucyuyhchcv', 'ndkjwejkcf ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `little_messenger`
--
CREATE DATABASE IF NOT EXISTS `little_messenger` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `little_messenger`;

-- --------------------------------------------------------

--
-- Table structure for table `employee_registration`
--

CREATE TABLE `employee_registration` (
  `emp_id` int(100) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` int(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `typeno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_registration`
--

INSERT INTO `employee_registration` (`emp_id`, `emp_name`, `password`, `email`, `gender`, `address`, `typeno`) VALUES
(1, 'admin', 'admin', 'admin@message.com', 0, 'admin 5 talay thake', 0),
(2, 'raiyan', 'raiyan', 'raiyan@message.com', 0, 'raiyan er bari nai', 0),
(3, 'raiyan2', 'raiyan2', 'raiyan2@gmail.com', 0, 'raiyan2 er bari ase', 0);

-- --------------------------------------------------------

--
-- Table structure for table `emp_phone`
--

CREATE TABLE `emp_phone` (
  `phone_id` int(100) NOT NULL,
  `phone_1` int(50) NOT NULL,
  `phone_2` int(50) NOT NULL,
  `emp_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `transfer_id` int(100) NOT NULL,
  `url` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `format` varchar(20) NOT NULL,
  `transfer_emp_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msg_id` int(100) NOT NULL,
  `message` text NOT NULL,
  `send_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seen_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sender_emp_id` int(100) DEFAULT NULL,
  `receiver_emp_id` int(100) DEFAULT NULL,
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msg_id`, `message`, `send_time`, `seen_time`, `sender_emp_id`, `receiver_emp_id`, `sender`, `receiver`) VALUES
(12, 'hello', '2019-05-05 07:12:17', '0000-00-00 00:00:00', NULL, NULL, 'raiyan2', 'admin'),
(13, 'hi', '2019-05-05 07:12:23', '0000-00-00 00:00:00', NULL, NULL, 'admin', 'raiyan2'),
(14, 'hello', '2019-05-13 08:03:47', '0000-00-00 00:00:00', NULL, NULL, 'admin', 'raiyan'),
(15, 'hi', '2019-05-13 08:06:38', '0000-00-00 00:00:00', NULL, NULL, 'admin', 'raiyan');

-- --------------------------------------------------------

--
-- Table structure for table `online_who`
--

CREATE TABLE `online_who` (
  `online` int(10) NOT NULL,
  `emp_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `user_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online_who`
--

INSERT INTO `online_who` (`online`, `emp_time`, `user_name`) VALUES
(1, '0000-00-00 00:00:00', 'admin'),
(1, '0000-00-00 00:00:00', 'raiyan'),
(1, '0000-00-00 00:00:00', 'raiyan2');

-- --------------------------------------------------------

--
-- Table structure for table `quickchat`
--

CREATE TABLE `quickchat` (
  `quick_chat_no` int(100) NOT NULL,
  `quick_msg` varchar(100) NOT NULL,
  `seentime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sendtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `send` int(10) NOT NULL,
  `receive` int(10) NOT NULL,
  `sender_emp_id` int(100) NOT NULL,
  `receiver_emp_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_registration`
--
ALTER TABLE `employee_registration`
  ADD PRIMARY KEY (`emp_id`,`emp_name`);

--
-- Indexes for table `emp_phone`
--
ALTER TABLE `emp_phone`
  ADD PRIMARY KEY (`phone_id`),
  ADD KEY `fkempid` (`emp_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`transfer_id`),
  ADD KEY `fk_tr_emp_id` (`transfer_emp_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `fksender_emp_id` (`sender_emp_id`),
  ADD KEY `fkreceiver_emp_id` (`receiver_emp_id`);

--
-- Indexes for table `online_who`
--
ALTER TABLE `online_who`
  ADD PRIMARY KEY (`user_name`),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `quickchat`
--
ALTER TABLE `quickchat`
  ADD PRIMARY KEY (`quick_chat_no`),
  ADD KEY `fk_qsender_emp_id` (`sender_emp_id`),
  ADD KEY `fk_qreceiver_emp_id` (`receiver_emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_registration`
--
ALTER TABLE `employee_registration`
  MODIFY `emp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `emp_phone`
--
ALTER TABLE `emp_phone`
  MODIFY `phone_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `transfer_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msg_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `quickchat`
--
ALTER TABLE `quickchat`
  MODIFY `quick_chat_no` int(100) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp_phone`
--
ALTER TABLE `emp_phone`
  ADD CONSTRAINT `fkempid` FOREIGN KEY (`emp_id`) REFERENCES `employee_registration` (`emp_id`);

--
-- Constraints for table `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `fk_tr_emp_id` FOREIGN KEY (`transfer_emp_id`) REFERENCES `employee_registration` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fkreceiver_emp_id` FOREIGN KEY (`receiver_emp_id`) REFERENCES `employee_registration` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fksender_emp_id` FOREIGN KEY (`sender_emp_id`) REFERENCES `employee_registration` (`emp_id`);

--
-- Constraints for table `quickchat`
--
ALTER TABLE `quickchat`
  ADD CONSTRAINT `fk_qreceiver_emp_id` FOREIGN KEY (`receiver_emp_id`) REFERENCES `employee_registration` (`emp_id`),
  ADD CONSTRAINT `fk_qsender_emp_id` FOREIGN KEY (`sender_emp_id`) REFERENCES `employee_registration` (`emp_id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'sr_export_import', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"bank\",\"export_management_system\",\"khanstore\",\"little_messenger\",\"phpmyadmin\",\"products\",\"products_db_2\",\"sr_export_import\",\"userprofile\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'database', 'recommendation', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"buyer\",\"buyerorder\",\"buyerorder2\",\"catagories\",\"count\",\"mails\",\"notifications\",\"payment\",\"products\"],\"table_structure[]\":[\"buyer\",\"buyerorder\",\"buyerorder2\",\"catagories\",\"count\",\"mails\",\"notifications\",\"payment\",\"products\"],\"table_data[]\":[\"buyer\",\"buyerorder\",\"buyerorder2\",\"catagories\",\"count\",\"mails\",\"notifications\",\"payment\",\"products\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Dumping data for table `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'supplier', 'table', 'sr_export_import', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"recommendation\",\"table\":\"rate\"},{\"db\":\"recommendation\",\"table\":\"rating\"},{\"db\":\"recommendation\",\"table\":\"buyerorder\"},{\"db\":\"recommendation\",\"table\":\"products\"},{\"db\":\"recommendation\",\"table\":\"buyer\"},{\"db\":\"recommendation\",\"table\":\"catagories\"},{\"db\":\"test\",\"table\":\"recommendation_cache\"},{\"db\":\"test\",\"table\":\"user_uploads\"},{\"db\":\"recommendation\",\"table\":\"count\"},{\"db\":\"recommendation\",\"table\":\"buyerorder2\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'export_management_system', 'product', '{\"sorted_col\":\"`product`.`Image` ASC\"}', '2019-06-17 06:53:54'),
('root', 'recommendation', 'products', '{\"sorted_col\":\"`product_id` ASC\"}', '2020-01-16 05:10:14'),
('root', 'sr_export_import', 'buyerorder', '{\"sorted_col\":\"`buyerorder`.`orderid` ASC\"}', '2019-08-23 16:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('', '2019-08-25 08:39:27', '{\"Console\\/Mode\":\"collapse\"}'),
('root', '2020-01-16 15:03:43', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":218}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `products`
--
CREATE DATABASE IF NOT EXISTS `products` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `products`;
--
-- Database: `products_db_2`
--
CREATE DATABASE IF NOT EXISTS `products_db_2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `products_db_2`;
--
-- Database: `recommendation`
--
CREATE DATABASE IF NOT EXISTS `recommendation` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `recommendation`;

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
(11, 'topu', 'topu@gmail.com', '55', 67887665);

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
(0, 16, 3, 1, 1.0000000000);

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
(7, 19, 4000, 'Busket', 300, 'round shape Busket in different Sizes', 'photos/s1.png', 3),
(8, 15, 100, 'bottle', 200, 'owls stainless steel water bottle one size,Turquoise', 'photos/IMG_20191211_230551.jpg', 0),
(9, 5, 100, 'Floral Swing Dress', 800, 'women\'s v shape spaghetti strap summer casual swing dress with pocket', 'photos/IMG_20191211_233433.jpg', 0),
(10, 5, 100, 'Flared swing dress', 500, 'fugyuhhkjhcnm', 'photos/IMG_20191211_234009.jpg', 3),
(11, 5, 100, 'Faux Wrap long Maxi', 500, 'jhgfdfghjk', 'photos/IMG_20191211_234053.jpg', 0),
(12, 5, 400, 'Cocktail swing dress', 1000, 'lkjhgfdghjjbj hvjhcgk bjbjhxjvb mvcgxvb,j  mvhcgnjfhn mvcjn  mcgcvg ', 'photos/IMG_20191211_234035.jpg', 6),
(13, 5, 100, 'Tie neck dress', 1000, 'ghhjjjjjjj', 'photos/IMG_20191211_234110.jpg', 0),
(14, 7, 100, 'Gray tweeted leather watch', 4000, 'ghhhjjjjj', 'photos/IMG_20191211_233328.jpg', 8),
(15, 3, 400, 'Business Classic wrist watch', 5000, 'ghhjjjj', 'photos/IMG_20191211_233350.jpg', 0),
(16, 7, 400, 'Virginia quartz watch', 3000, 'fhgjdd', 'photos/IMG_20191211_233244.jpg', 6),
(17, 7, 100, 'Quartz rose gold watch', 2500, 'hghgh', 'photos/IMG_20191211_230408.jpg', 0),
(18, 7, 400, 'Ladies wrist watch', 4000, 'gggg', 'photos/IMG_20191211_230329.jpg', 0),
(19, 9, 1000, 'Stylish crossbody bags', 1500, 'ttttt', 'photos/IMG_20191211_233010.jpg', 0),
(20, 9, 400, 'Soft leather handbags', 800, 'rrrr', 'photos/IMG_20191211_233045.jpg', 0),
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
(31, 10, 100, 'Kids Dress', 500, 'fhhdhdh', 'photos/IMG_20191211_232119.jpg', 0),
(32, 13, 100, 'Flower Vase', 400, 'ghhhhgg', 'photos/IMG_20191211_234158.jpg', 1),
(33, 13, 100, 'Wooden wall', 500, 'dhfhfhfh', 'photos/IMG_20191211_234135.jpg', 1),
(34, 14, 100, 'Box', 800, 'dhhfhhff', 'photos/IMG_20191211_230517.jpg', 0),
(35, 14, 100, 'Water Pot', 500, 'dhdhhdd', 'photos/IMG_20191211_230608.jpg', 0),
(36, 13, 100, 'Stone pot', 800, 'hhdhhdh', 'photos/IMG_20191211_234219.jpg', 0),
(37, 8, 100, 'Earring', 500, 'shddhdh', 'photos/IMG_20191211_231353.jpg', 0),
(38, 14, 400, 'chopping board', 500, 'chopping board set of 3 sizes', 'photos/IMG_20191211_230428.jpg', 0),
(39, 10, 400, 'Kids Floral Dress', 500, 'Kids Floral dress', 'photos/IMG_20191211_232451.jpg', 0),
(40, 10, 100, 'kids Jacket', 800, 'Kids jacket', 'photos/IMG_20191211_231819.jpg', 0),
(41, 14, 100, 'Blender', 500, 'Blender', 'photos/IMG_20191211_230444.jpg', 0),
(42, 10, 100, 'Kids pink Dress', 800, 'Kids pink Dress', 'photos/IMG_20191211_232145.jpg', 0),
(43, 10, 100, 'Girls Frock', 800, 'Girls Frock', 'photos/IMG_20191211_232943.jpg', 0),
(44, 11, 100, 'Kids t-shirt', 800, 'Kids t-shirt', 'photos/IMG_20191211_231933.jpg', 0),
(45, 0, 0, '', 0, '', 'photos/IMG_20191211_234009.jpg', 0),
(46, 1, 400, 'Men\'s shirt', 500, 'hvcghvbvcn', 'photos/IMG_20191211_230931', 0),
(47, 1, 400, 'Men\'s shirt', 500, 'hvcghvbvcn', 'photos/IMG_20191211_230931', 0);

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
(28, 'Tasnuva Rohin', 'Virginia quartz watch', 5);

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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `product_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rateid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Database: `sr_export_import`
--
CREATE DATABASE IF NOT EXISTS `sr_export_import` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sr_export_import`;

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `companyname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `img` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `username`, `companyname`, `email`, `password`, `address`, `contact`, `img`) VALUES
(27, 'XMWORKSUS', 'XMWORKS INC', 'Mike@XMWORKS.com', '123456', '2150 W. Washington ST ste. 205', 61952626595, 'photos/received_2394146990668742.png'),
(28, 'EUROUS', 'EUROAMIRICANA INC', 'JACOB@EUROAMIRICANAUS.com', '987654', '770 Sandoval Way ,Hayward', 15104778896, 'photos/received_2113555335615036.png'),
(29, 'CSTPLSR', 'Concept System Techn', 'sales@concept-systems.com', '456123', '10 Ubi Crescent, Singapore', 6568585839, 'photos/received_726754774444409.png');

-- --------------------------------------------------------

--
-- Table structure for table `buyerorder`
--

CREATE TABLE `buyerorder` (
  `orderid` int(10) NOT NULL,
  `pid` int(10) DEFAULT NULL,
  `uid` int(10) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `total` double(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buyerorder2`
--

CREATE TABLE `buyerorder2` (
  `order` int(10) NOT NULL,
  `proid` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `qnty` int(20) NOT NULL,
  `ttl` double(20,2) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyerorder2`
--

INSERT INTO `buyerorder2` (`order`, `proid`, `userid`, `qnty`, `ttl`, `date`) VALUES
(7, 14, 27, 900, 9000.00, '2024-08-19 00:00:00'),
(8, 7, 27, 600, 7740.00, '2024-08-19 00:00:00'),
(9, 20, 27, 100, 1250.00, '2024-08-19 00:00:00'),
(10, 25, 28, 1000, 6000.00, '2019-08-26 16:07:26'),
(11, 16, 28, 2000, 24000.00, '2019-08-26 16:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`cat_id`, `cat_title`) VALUES
(1, 'Other Electronics'),
(2, 'laptop'),
(3, 'mobile'),
(4, 'camera'),
(5, 'men'),
(6, 'women'),
(7, 'kids'),
(8, 'home_decor'),
(9, 'kitchen'),
(10, 'storage'),
(11, 'seagrass busket\r\n'),
(12, 'electronics'),
(13, 'Car Parts'),
(14, 'Jewellery'),
(15, 'Medicine'),
(16, 'Mobile parts');

-- --------------------------------------------------------

--
-- Table structure for table `importorder`
--

CREATE TABLE `importorder` (
  `imporderid` int(10) NOT NULL,
  `supplierid` int(10) NOT NULL,
  `productid` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `total` decimal(30,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `importorder`
--

INSERT INTO `importorder` (`imporderid`, `supplierid`, `productid`, `quantity`, `total`) VALUES
(9, 5, 4, 500, '6000.0000');

-- --------------------------------------------------------

--
-- Table structure for table `importproduct`
--

CREATE TABLE `importproduct` (
  `ipid` int(10) NOT NULL,
  `sid` int(10) NOT NULL,
  `ititle` varchar(50) NOT NULL,
  `icat` int(3) NOT NULL,
  `iprice` float NOT NULL,
  `istock` int(30) NOT NULL,
  `idetails` varchar(200) NOT NULL,
  `iimage` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `importproduct`
--

INSERT INTO `importproduct` (`ipid`, `sid`, `ititle`, `icat`, `iprice`, `istock`, `idetails`, `iimage`) VALUES
(4, 5, 'LED Wall Mirror', 12, 12, 200, 'LED Wall Mirror', 'photos2/led wall mirror.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `mailid` int(10) NOT NULL,
  `holdername` varchar(50) NOT NULL,
  `holderemail` varchar(50) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `status` varchar(10) NOT NULL,
  `tyype` varchar(10) NOT NULL,
  `maildate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`mailid`, `holdername`, `holderemail`, `subject`, `msg`, `status`, `tyype`, `maildate`) VALUES
(10, 'XM Imports', 'xmimport@gmail.com', 'Want information about products', 'Here i want to know about your product details and how you export your product etc.', 'read', 'mail', '2019-08-24 14:26:28'),
(11, 'XMWORKS INC', 'Mike@XMWORKS.com', 'Order comfirmation', 'SR Export Import company approved and ordered the product', 'read', 'not', '2019-08-24 14:53:28'),
(12, 'US LUBRICANTES', 'contactus@uslubricant.com', 'Order rejection', 'SR Export Import company rejected the product', 'unread', 'not', '2019-08-24 14:54:09'),
(13, 'XMWORKSUS', 'Mike@XMWORKS.com', 'Get order', '', 'unread', 'mail', '2019-08-24 23:18:36'),
(14, 'XMWORKSUS', 'Mike@XMWORKS.com', 'Get order', '', 'unread', 'mail', '2019-08-26 13:11:49'),
(15, 'EUROUS', 'JACOB@EUROAMIRICANAUS.com', 'Get order', '', 'unread', 'mail', '2019-08-26 16:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `nid` int(10) NOT NULL,
  `Date` date NOT NULL,
  `buyer` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `amount` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`nid`, `Date`, `buyer`, `status`, `amount`) VALUES
(4, '2019-08-24', 27, 'read', 16740),
(5, '2019-08-24', 27, 'unread', 1250),
(6, '2019-08-26', 27, 'read', 17000),
(7, '2019-08-26', 28, 'read', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payid` int(10) NOT NULL,
  `cardnumber` int(30) NOT NULL,
  `cardholder` varchar(30) NOT NULL,
  `amount` double(20,2) NOT NULL,
  `cvv` int(20) NOT NULL,
  `valid` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payid`, `cardnumber`, `cardholder`, `amount`, `cvv`, `valid`) VALUES
(5, 264165, 'XMWORKSUS', 16740.00, 15136, '2019-08-31'),
(6, 4615468, 'XMWORKSUS', 1250.00, 445465, '2019-12-06'),
(7, 4566, 'guvugjv', 17000.00, 16461, '2019-08-13'),
(8, 5623, 'sumaiya sultana', 30000.00, 2631, '2019-09-07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_price` float NOT NULL,
  `product_desc` varchar(500) NOT NULL,
  `product_image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `stock`, `product_title`, `product_price`, `product_desc`, `product_image`) VALUES
(7, 8, 1000, 'clay pot', 12.9, 'clay pot for home decor', 'photos/pot.png'),
(11, 11, 1000, 'Round Frout Cup Busket', 8.5, 'Round Busket made with jut\r\nset of three in different sizes', 'photos/s1.png'),
(12, 11, 1000, 'Kitchen Storage Busket', 9, 'Storage Buskets \r\nset of three', 'photos/s2.png'),
(13, 11, 1000, 'Dhama Dhama', 6, 'round dhama made with jutset of three in different sizes', 'photos/s5.png'),
(14, 11, 1000, 'Rectangular long Busket', 10, 'Rectangular long Busket\r\nset of two\r\nheight 15 inches and 20 inches', 'photos/s4.png'),
(15, 0, 1000, 'Floral Casual Dress', 6.9, 'Casual Dress with Floral print ', 'photos/w1.PNG'),
(16, 7, 1000, 'kids  dress', 12, 'verfcwdcwe', 'photos/k1.PNG'),
(18, 1, 4000, 'Head Phone', 5, 'Head Phone', 'photos/headphone.PNG'),
(19, 7, 1000, 'kid\'s dress', 9, 'Kid\'s dress', 'photos/k4.PNG'),
(20, 6, 1000, 'Women\'s Hoody', 12.5, 'Women\'s Hoody', 'photos/w4.PNG'),
(24, 1, 3000, 'Digital Photo Frame', 2.5, 'Digital Photo Frame', 'photos/digital photoframe.PNG'),
(25, 8, 2000, 'Colourful Vases', 6, 'Colourful vase set\r\nset of 3', 'photos/vase.png');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `s_id` int(20) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `s_company_name` varchar(50) NOT NULL,
  `s_email` varchar(50) NOT NULL,
  `s_password` varchar(20) NOT NULL,
  `s_address` varchar(100) NOT NULL,
  `s_contact` bigint(50) NOT NULL,
  `img` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`s_id`, `s_name`, `s_company_name`, `s_email`, `s_password`, `s_address`, `s_contact`, `img`) VALUES
(4, 'LUBRICANTU$', 'US LUBRICANTS', 'contactus@uslubricant.com', '123654', '4000 E .Washington ,Blvd, CA 9023', 3237809937, 'photos2/received_487925541756498.png'),
(5, 'XMWORKS US', 'XMWORKS INC', 'Mike@XMWORKS.com', '7854', '2150 W. Washington ST ste. 205', 6192961090, 'photos2/received_2394146990668742.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(60) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyerorder`
--
ALTER TABLE `buyerorder`
  ADD PRIMARY KEY (`orderid`);

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
-- Indexes for table `importorder`
--
ALTER TABLE `importorder`
  ADD PRIMARY KEY (`imporderid`);

--
-- Indexes for table `importproduct`
--
ALTER TABLE `importproduct`
  ADD PRIMARY KEY (`ipid`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`mailid`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
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
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `buyerorder`
--
ALTER TABLE `buyerorder`
  MODIFY `orderid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buyerorder2`
--
ALTER TABLE `buyerorder2`
  MODIFY `order` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `importorder`
--
ALTER TABLE `importorder`
  MODIFY `imporderid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `importproduct`
--
ALTER TABLE `importproduct`
  MODIFY `ipid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `mailid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `nid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `s_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `recommendation_cache`
--

CREATE TABLE `recommendation_cache` (
  `reference_id` int(11) NOT NULL,
  `upload_id` int(11) NOT NULL,
  `score` float(10,2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recommendation_cache`
--

INSERT INTO `recommendation_cache` (`reference_id`, `upload_id`, `score`, `date`) VALUES
(2, 4, 2.40, '2012-11-08 15:27:33'),
(2, 6, 2.40, '2012-11-08 15:27:33'),
(3, 4, 5.10, '2012-11-08 15:27:33'),
(3, 6, 4.60, '2012-11-08 15:27:33'),
(3, 5, 2.70, '2012-11-08 15:27:33'),
(4, 3, 5.30, '2012-11-08 15:27:33'),
(4, 6, 2.40, '2012-11-08 15:27:33'),
(4, 2, 2.40, '2012-11-08 15:27:33'),
(5, 6, 5.00, '2012-11-08 15:27:33'),
(5, 3, 2.70, '2012-11-08 15:27:33'),
(6, 5, 5.60, '2012-11-08 15:27:33'),
(6, 3, 4.90, '2012-11-08 15:27:33'),
(6, 2, 2.40, '2012-11-08 15:27:33'),
(6, 4, 2.40, '2012-11-08 15:27:33'),
(7, 8, 2.20, '2012-11-08 15:27:33'),
(8, 7, 2.20, '2012-11-08 15:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_uploads`
--

CREATE TABLE `user_uploads` (
  `upload_id` int(11) NOT NULL,
  `def_title` varchar(100) NOT NULL,
  `def_description` varchar(400) NOT NULL,
  `def_tags` varchar(400) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_uploads`
--

INSERT INTO `user_uploads` (`upload_id`, `def_title`, `def_description`, `def_tags`, `deleted`, `date`) VALUES
(1, 'Computer Technology Topics', 'A searchable database of announced technology-related staff cuts. Go to the layoff database. Microsoft Surface What you need to know about Microsoft\'s tablet', 'technology, good', 0, '2012-11-06 22:00:00'),
(2, 'Networking Technology: Related Topics', 'Cisco SBC technology leads SBC market, more enterprises are choosing SBC technology from their UC vendor for greater interoperability and lower costs.', 'technology, good, case', 0, '2012-10-31 22:00:00'),
(3, 'Computer Technology Topics', 'If you are planning to pursue a career in information technology. You have a lot to learn. This is a compendium of all computer related topics ...', 'programming, good', 0, '2012-11-01 22:00:00'),
(4, 'Computer Technology - Related Topics National Post', 'Property Divisions. James Goodnight isn\'t one to mince words. So what does the no-nonsense CEO and co-founder of privately held software giant SAS Institute.', 'technology, good', 0, '2012-11-02 22:00:00'),
(5, 'Web technology choices', 'Click the links to related topics for more information. ... to help you choose which iSeries Web technology or tool to use depending on your programming goal.', 'technology, good', 0, '2012-11-04 22:00:00'),
(6, 'Technology-Related Topics - Louisiana Tech University', 'Links to Technology-related Topics at Louisiana Tech University. Information on Internet2*. Link to an explanation of Internet2 · Internet2 Web Site · Internet2 ', 'programming, good', 0, '2012-11-03 22:00:00'),
(7, 'Cosmetic - Merriam-Webster Online', 'of, relating to, or making for beauty especially of the complexion : beautifying <cosmetic salves>. 2. : done or made for the sake of appearance: as. a : correcting', 'cosmetic', 0, '2012-11-04 22:00:00'),
(8, 'M·A·C Cosmetics', 'Professional makeup artist quality cosmetics. Offering more than 100 shades for eyes, lips and face…everything a makeup addict can\'t live without.', 'cosmetic', 0, '2012-11-01 22:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recommendation_cache`
--
ALTER TABLE `recommendation_cache`
  ADD KEY `reference_id` (`reference_id`);

--
-- Indexes for table `user_uploads`
--
ALTER TABLE `user_uploads`
  ADD PRIMARY KEY (`upload_id`);
ALTER TABLE `user_uploads` ADD FULLTEXT KEY `def_title` (`def_title`);
ALTER TABLE `user_uploads` ADD FULLTEXT KEY `def_description` (`def_description`);
ALTER TABLE `user_uploads` ADD FULLTEXT KEY `def_tags` (`def_tags`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_uploads`
--
ALTER TABLE `user_uploads`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `userprofile`
--
CREATE DATABASE IF NOT EXISTS `userprofile` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `userprofile`;
--
-- Database: `user_signatures`
--
CREATE DATABASE IF NOT EXISTS `user_signatures` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `user_signatures`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
