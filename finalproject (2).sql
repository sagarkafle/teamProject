-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2016 at 04:11 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(64) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(132) NOT NULL,
  `email` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com'),
(4, 'sagar', 'b0f50707fe13753210c7afd387bb5c12', 'nephopsagar@gmail.com'),
(6, 'hello', '300bedd5a8a0b2f1c4bf26d3cd69cc9b', 'nephopsagar@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
`id` int(64) NOT NULL,
  `brandName` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brandName`) VALUES
(7, 'Armani'),
(9, 'WoodLand'),
(10, 'Nike'),
(11, 'Levis'),
(12, 'Patela'),
(13, 'Gucci'),
(14, 'Miss');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(64) NOT NULL,
  `categoryName` varchar(128) NOT NULL,
  `gender` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `gender`) VALUES
(17, 'Pant', 'male'),
(18, 'Footwear', 'male'),
(19, 'Shirt', 'male'),
(20, 'One Piece', 'female'),
(21, 'T-Shirt', 'female'),
(22, 'Footwears', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`id` int(64) NOT NULL,
  `firstName` varchar(64) NOT NULL,
  `lastName` varchar(128) NOT NULL,
  `phone` int(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `quantity` int(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `firstName`, `lastName`, `phone`, `address`, `username`, `password`, `quantity`) VALUES
(1, 'sagar', 'kafle', 999, 'ashajk', 'sagar', '21232f297a57a5a743894a0e4a801fc3', 0),
(4, 'sagar', 'kafle', 9841, 'kalanki', 'kafle', 'b0f50707fe13753210c7afd387bb5c12', 0),
(5, 'anup', 'pandey', 98497777, 'pepsicola', 'anup', '0653a342bcbe488c7a0e74423425678b', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(64) NOT NULL,
  `customerId` int(64) NOT NULL,
  `productId` int(64) NOT NULL,
  `payDate` date NOT NULL,
  `status` varchar(128) NOT NULL,
  `price` int(32) NOT NULL,
  `quantity` int(32) NOT NULL,
  `size` int(32) NOT NULL,
  `totalPrice` int(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customerId`, `productId`, `payDate`, `status`, `price`, `quantity`, `size`, `totalPrice`) VALUES
(1, 4, 53, '0000-00-00', 'Delivered', 99, 1, 0, 99),
(2, 4, 43, '0000-00-00', 'Dispatched from godown', 333, 1, 0, 333);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id` int(64) NOT NULL,
  `productName` varchar(64) NOT NULL,
  `productDescription` longtext NOT NULL,
  `image` varchar(128) NOT NULL,
  `price` int(64) NOT NULL,
  `instock` varchar(64) NOT NULL,
  `brandid` int(64) NOT NULL,
  `categoryid` int(64) NOT NULL,
  `featured` varchar(128) NOT NULL,
  `sizeAvailable` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `productName`, `productDescription`, `image`, `price`, `instock`, `brandid`, `categoryid`, `featured`, `sizeAvailable`) VALUES
(25, 'Casual Pant', 'Very Nice Pant!!. Imported Directly from Hong Kong.', '$T2eC16FHJHYE9nzpcCu-BRY0lq5P8w--_35.JPG', 145, 'Y', 7, 17, 'Y', '28-34'),
(26, 'Grey Pant', 'Very Very Nice Garment Specially Designed For You .', '2cce12146499e0be39f48144eab0728d.jpg', 140, 'Y', 8, 17, 'N', '25-38'),
(27, 'Sleek Pant', 'Very Very Silky Designed Pant Only for You.', 'carhartt-twill-double-knee-work-pants-for-men-in-black-p-3707d_04-1500.5.jpg', 150, 'Y', 7, 17, 'N', '29-31'),
(28, 'Grey Pant', 'Sexy Grey Designed only for you!!', '2cce12146499e0be39f48144eab0728d.jpg', 189, 'Y', 11, 17, 'Y', '28-36'),
(29, 'Leather Pant', 'Made from very very fine leather.', 'leather-pants-are-look-best.jpg', 200, 'Y', 11, 17, 'N', '28-35'),
(30, 'Lazy Shoe', 'Very very fine and elegant look.', '2014-Free-Shipping-casual-shoes-men-Big-Size-Shoe-footwear-sneakers-men-shoes-oxfords-men-s.jpg', 210, 'Y', 9, 18, 'N', '34-44'),
(31, 'Crazy Shoe', 'It haves very very casual look and suits for every gentle man.', 'Best-selling-Men-s-winter-shoes-bussiness-shoes-leather-shoes-leisure-shoes-Black-Free-shipping.jpg', 210, 'Y', 10, 18, 'Y', '33-45'),
(32, 'Premium Boot', 'Premium boot designed only for master classers!!', 'boot2.jpg', 399, 'Y', 9, 18, 'N', '34-41'),
(33, 'Slipper ', 'Very very nice slipper designed for the naughty boys.', 'boot4.jpg', 45, 'Y', 9, 18, 'N', '31-44'),
(34, 'Dam Boot', 'Dam boot designed for the swag hunters..', 'boot1.jpg', 322, 'Y', 9, 18, 'Y', '30-45'),
(35, 'Lined Shirt', ' Made from very fine fabrics. It fits to everyone out there for a shirt.', '2015-Mens-Shirt-Designs-Men-Autumn-Korean-Fashion-Slim-Tops-Male-Formal-Casual-Long-Sleeve-Dress-Shirts-3.jpg', 145, 'Y', 12, 19, 'Y', 'Small medium Large'),
(39, 'Collored Shirt', 'Red is out ther in market to impress girl.', 'wpid-Formal-Shirt-Designs-For-Men-Slim-Fit-2015-2016-1.jpg', 99, 'Y', 12, 19, 'Y', 'Medium And Large only'),
(40, 'Hlav Shirt', 'Hlav shirrt is out there in the market to impress the girls.', '459941005_948.jpg', 88, 'Y', 12, 19, 'N', 'Small only'),
(42, 'White Shirt', 'Sexy White', 'mens-designer-formal-shirts-250x250.jpg', 177, 'Y', 12, 19, 'N', 'Large Only'),
(43, 'Red One Piece', 'Beautiful One Pice', '2014Newest-OL-Sexy-Ladies-Pencil-Dress-Women-Slim-one-piece-dress-V-neck-Knee-Length-Red.jpg_640x640.jpg', 333, 'Y', 14, 20, 'Y', 'Small-Medium-Large'),
(44, 'Blaackie', 'Blackie is out there to impress the boys', '1 (1).jpg', 290, 'Y', 14, 20, 'N', 'Small-Medium'),
(45, 'Two Colored', 'Two colored One piece only for limited edition girls', '2013-summer-women-s-chiffon-one-piece-dress.jpg', 333, 'Y', 12, 20, 'N', 'Small-Large'),
(46, 'Check', 'Check One piece only for you!!', '2012-fashion-V-neck-fashion-one-piece-dress-ladies-dress-3-color-stripe-one-piece-dress.jpg', 555, 'Y', 14, 20, 'N', 'Small-Medium-Large'),
(47, 'Rainbow', 'High heels to make you look Sexy!!', 'Ana-Locking-womens-footwear-f-w-2010.jpg', 177, 'Y', 10, 22, 'Y', '36-43'),
(48, 'Cloz Shoe', 'Only for limited Edition Girls .', 'Best-Styles-Womens-Shoes.jpg', 122, 'Y', 14, 22, 'N', '33-40'),
(49, 'Caz Sandal', 'Caz is there for your daily use.', '300x300_ddf2c452c2de834d063774134bea2f4f.jpg', 78, 'Y', 9, 22, 'N', '36-43'),
(50, 'Daam Heel', 'Daam Heel. Heel Lovers Only for You..', 'womendress2.jpg', 211, 'Y', 12, 22, 'N', '31-40'),
(51, 'Leaf T-Shirt', 'Made up of Fine Cotton makes you warm in winter and cool in summer.', 'New-2015-fashion-t-shirt-for-women-laser-backless-angel-wings-women-s-White-Black-shorts.jpg', 122, 'Y', 12, 21, 'N', 'Small-Large '),
(52, 'Black T-Shirt', 'Fine Black T-shirt made up of silk.', 'upload2272372715466523837.jpg', 220, 'Y', 14, 21, 'N', 'Small-Medium-Large'),
(53, 'White T-Shirt', 'White T-Shirt is already here for you. Hurry up grab it.', 'upload777084270390800191.jpg', 99, 'Y', 14, 21, 'N', 'Large only'),
(54, 'Cool T-Shirt', 'Pretty cool and beautiful t-shirt is there in the market for girls to attract the handsome boys', 'original_let-me-go-back-to-bed-women-s-loose-fit-t-shirt.jpg', 145, 'Y', 14, 21, 'Y', 'Small only');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
 ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(64) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
MODIFY `id` int(64) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` int(64) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `id` int(64) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(64) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(64) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
