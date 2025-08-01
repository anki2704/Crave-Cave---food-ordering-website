-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2019 at 02:53 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Database: `foodorder`--

-- Table structure for table `contact`--

CREATE TABLE `contact` (
  `Name` varchar(50) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` int(10) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Dumping data for table `contact`--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('BIRJU KUMAR', 'ckj40856@gmail.com', '8903079750', 'asd', 'asdasdasd'),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'asd', 'hfgdsfsx');




-- Table structure for table `customer`--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Dumping data for table `customer`--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('birju', 'BIRJU KUMAR', 'bkm123r@gmail.com', '8903079750', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Birju123@'),
('ckumar', 'CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123@'),
('nidha', 'nidha', 'nidha@gmail.com', '998696572', 'Maharashtra', 'suhail'),
('pratheek083', 'Pratheek Shiri', 'pratheek@gmail.com', '8779546521', 'Hyderabad', 'pratheek'),
('ka','khushi agrawal','khushi@gmail.com','8630931878','aligarh','kusu'),
('rakshithk00', 'Rakshith Kotian', 'rakshith@gmail.com', '9547123658', 'Gujarath', 'rakshith');


-- Table structure for table `food`--
CREATE TABLE `food` (
  `F_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `price` INT(11) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `R_ID` INT(11) NOT NULL,
  `images_path` VARCHAR(255) NOT NULL,
  `options` VARCHAR(10) NOT NULL DEFAULT 'ENABLE',
  `category` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`F_ID`)
  -- FOREIGN KEY (`R_ID`) REFERENCES `restaurant`(`R_ID`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Dumping data for table `food`--


INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`, `category`) VALUES
-- Rolls & Snacks
(58, 'Juicy Masala Paneer Kathi Roll', 40, 'Juicy Masala Paneer Kathi Roll loaded with Masala Paneer chunks, onion & Mayo.', 1, 'images/Masala_Paneer_Kathi_Roll.jpg', 'ENABLE', 'Snacks'),
(59, 'Meurig Fish', 60, 'Try Meurig - A whole Pomfret fish grilled with tangy marination & served with grilled onions and tomatoes.', 2, 'images/Meurig.jpg', 'ENABLE', 'Starter - Non-Veg'),
(60, 'Chocolate Hazelnut Truffle', 99, 'Lose all senses over this very delicious chocolate hazelnut truffle.', 3, 'images/Chocolate_Hazelnut_Truffle.jpg', 'ENABLE', 'Desserts'),
(61, 'Happy Happy Choco Chip Shake', 80, 'Happy Happy Choco Chip Shake - a perfect party sweet treat.', 1, 'images/Happy_Happy_Choco_Chip_Shake.jpg', 'ENABLE', 'Beverages'),
(62, 'Spring Rolls', 65, 'Delicious Spring Rolls by Dragon Hut, Delhi. Order now!!!', 2, 'images/Spring_Rolls.jpg', 'ENABLE', 'Starter - Veg'),
(63, 'Baahubali Thali', 75, 'Baahubali Thali is accompanied by Kattapa Biriyani, Devasena Paratha, Bhalladeva Patiala Lassi', 3, 'images/Baahubali_Thali.jpg', 'ENABLE', 'Main Course - Veg'),
(69, 'Coffee', 25, 'concentrated coffee made by forcing pressurized water through finely ground coffee beans.', 2, 'images/coffee.jpg', 'ENABLE', 'Beverages'),
(70, 'Tea', 20, 'The simple elixir of tea is of our natural world.', 2, 'images/tea.jpg', 'ENABLE', 'Beverages'),
(71, 'Samosa', 40, 'Cocktail Crispy Samosa..', 2, 'images/samosa.jpg', 'ENABLE', 'Snacks'),
(73, 'Puff', 35, 'Vegetable Puff, a snack with crisp-n-flaky outer layer and mixed vegetables stuffing', 2, 'images/puff.jpg', 'ENABLE', 'Snacks'),
(76, 'Pakora', 35, 'Pure Vegetable and Tasty.', 2, 'images/Pakora.jpg', 'ENABLE', 'Snacks'),
(78, 'French Fries', 75, 'Pure Veg and Tasty.', 2, 'images/frenchfries.jpg', 'ENABLE', 'Snacks'),

-- Starters - Veg
(301, 'Paneer Tikka', 140, 'Soft paneer cubes marinated in spices & grilled in a tandoor.', 1, 'images/paneertikka.jpg', 'ENABLE', 'Starter - Veg'),
(302, 'Hara Bhara Kebab', 110, 'Spinach and green peas cutlets, shallow fried to perfection.', 1, 'images/hara_bhara_kaba.jpeg', 'ENABLE', 'Starter - Veg'),
(303, 'Crispy Corn', 130, 'Crispy deep-fried corn tossed with onions, capsicum, and masala.', 1, 'images/crispy_corn.jpeg', 'ENABLE', 'Starter - Veg'),
(304, 'Veg Spring Rolls', 120, 'Crispy rolls stuffed with stir-fried veggies and noodles.', 1, 'images/Spring_Rolls.jpg', 'ENABLE', 'Starter - Veg'),

-- Starters - Non-Veg
(305, 'Chicken Tikka', 160, 'Succulent pieces of marinated chicken grilled with Indian spices.', 1, 'images/chicken_tikka.jpeg', 'ENABLE', 'Starter - Non-Veg'),
(306, 'Chicken Lollipop', 150, 'Fried chicken wings tossed in a spicy Indo-Chinese sauce.', 1, 'images/chickenlollipop.jpeg', 'ENABLE', 'Starter - Non-Veg'),
(307, 'Fish Finger', 160, 'Crispy breaded fish fingers served with tartar sauce.', 1, 'images/fishfinger.jpg', 'ENABLE', 'Starter - Non-Veg'),
(308, 'Egg Devil', 90, 'Spicy egg-stuffed potato patties deep-fried until golden.', 1, 'images/eggdevil.jpeg', 'ENABLE', 'Starter - Non-Veg'),

-- Main Course - Veg
(309, 'Paneer Butter Masala', 160, 'Cottage cheese in rich, creamy tomato gravy with butter.', 1, 'images/paneerbuttermasala.jpeg', 'ENABLE', 'Main Course - Veg'),
(310, 'Dal Makhani', 130, 'Black lentils slow-cooked with butter, cream & Indian spices.', 1, 'images/Dal-Makhani-.jpg', 'ENABLE', 'Main Course - Veg'),
(311, 'Chole Masala', 120, 'Spicy chickpeas cooked in onion-tomato gravy.', 1, 'images/cholemasale.jpeg', 'ENABLE', 'Main Course - Veg'),
(312, 'Veg Kofta Curry', 140, 'Fried vegetable dumplings in a flavorful creamy curry.', 1, 'images/veg-kofta-curry.jpeg', 'ENABLE', 'Main Course - Veg'),

-- Main Course - Non-Veg
(313, 'Butter Chicken', 180, 'Juicy chicken in buttery tomato gravy, mildly spiced.', 1, 'images/butterchicken.jpg', 'ENABLE', 'Main Course - Non-Veg'),
(314, 'Chicken Curry', 160, 'Classic Indian-style chicken cooked with spices and onion-tomato base.', 1, 'images/chickencurry.jpg', 'ENABLE', 'Main Course - Non-Veg'),
(315, 'Egg Curry', 130, 'Boiled eggs simmered in a mildly spiced curry.', 1, 'images/eggcurry.jpg', 'ENABLE', 'Main Course - Non-Veg'),

-- Rice & Biryani
(316, 'Veg Pulao', 100, 'Aromatic rice cooked with mixed vegetables and mild spices.', 1, 'images/vegpulao.jpg', 'ENABLE', 'Rice & Biryani'),
(317, 'Jeera Rice', 80, 'Basmati rice tempered with cumin seeds.', 1, 'images/jeerarice.jpg', 'ENABLE', 'Rice & Biryani'),
(318, 'Chicken Biryani', 160, 'Layered rice with marinated chicken and traditional biryani spices.', 1, 'images/chicken-biryani.jpeg', 'ENABLE', 'Rice & Biryani'),
(319, 'Paneer Biryani', 150, 'Basmati rice and paneer cooked with biryani masala.', 1, 'images/paneerbiryani.jpeg', 'ENABLE', 'Rice & Biryani'),

-- Breads
(320, 'Butter Naan (2 pcs)', 40, '', 1, 'images/butternaan.jpeg', 'ENABLE', 'Breads'),
(321, 'Tandoori Roti (2 pcs)', 30, '', 1, 'images/tandooriroti.jpeg', 'ENABLE', 'Breads'),
(322, 'Lachha Paratha (2 pcs)', 50, '', 1, 'images/lachaparatha.jpeg', 'ENABLE', 'Breads'),
(323, 'Plain Roti (2 pcs)', 20, '', 1, 'images/Roti-Plain-.jpg', 'ENABLE', 'Breads'),

-- Snacks & Fast Food
(324, 'Pav Bhaji', 90, 'Spicy mashed vegetables served with buttered pav.', 1, 'images/pavbhaji.jpeg', 'ENABLE', 'Snacks'),
(325, 'Veg Burger', 70, 'Soft burger bun filled with patty, veggies & sauces.', 1, 'images/vegburger.jpeg', 'ENABLE', 'Snacks'),
(326, 'Chilli Potato', 100, 'Fried potato tossed in tangy chilli sauce.', 1, 'images/chillipaneer.jpg', 'ENABLE', 'Snacks'),
(327, 'French Fries', 60, 'Crispy golden fries with seasoning.', 1, 'images/frenchfries.jpg', 'ENABLE', 'Snacks'),
(347, 'theekhi panipuri', 20, ' small, hollow, fried wheat and/or semolina shell...', 1, 'images/golgappe.jpeg', 'ENABLE', 'Snacks'),


-- Indo-Chinese
(328, 'Veg Hakka Noodles', 100, 'Stir-fried noodles with veggies in Indo-Chinese sauce.', 1, 'images/hakkanoodles.jpeg', 'ENABLE', 'Indo-Chinese'),
(329, 'Fried Rice (Veg)', 110, 'Basmati rice tossed with vegetables and soy sauce.', 1, 'images/friedriceveg.jpeg', 'ENABLE', 'Indo-Chinese'),
(330, 'Chilli Paneer (Dry)', 130, 'Paneer cubes tossed in spicy chilli sauce.', 1, 'images/chillipaneer.jpg', 'ENABLE', 'Indo-Chinese'),
(331, 'Chicken Manchurian (Dry)', 140, 'Fried chicken balls in spicy garlic-soy sauce.', 1, 'images/chickenmanchuriandry.jpeg', 'ENABLE', 'Indo-Chinese'),

-- Beverages
(332, 'Masala Chai', 20, '', 1, 'images/masala-chai.jpeg', 'ENABLE', 'Beverages'),
(333, 'Cold Drink (300 ml)', 30, '', 1, 'images/cococola.jpeg', 'ENABLE', 'Beverages'),
(334, 'Cold Coffee', 60, '', 1, 'images/coldcoffee.jpeg', 'ENABLE', 'Beverages'),
(335, 'Sweet Lassi', 50, '', 1, 'images/lassi.jpeg', 'ENABLE', 'Beverages'),
(336, 'Buttermilk', 40, '', 1, 'images/buttermilk.jpeg', 'ENABLE', 'Beverages'),

-- Desserts
(337, 'Gulab Jamun (2 pcs)', 40, '', 1, 'images/gulabjamun.jpg', 'ENABLE', 'Desserts'),
(338, 'Rasgulla (2 pcs)', 40, '', 1, 'images/rasgulla.jpg', 'ENABLE', 'Desserts'),
(339, 'Kheer (Cup)', 50, '', 1, 'images/kheer.jpg', 'ENABLE', 'Desserts'),
(340, 'Ice Cream (Scoop)', 40, '', 1, 'images/icecream.jpg', 'ENABLE', 'Desserts'),

-- Pizzas
(341, 'Margherita Pizza', 150, 'Classic cheese pizza with tomato sauce and mozzarella.', 1, 'images/margheritapizza.jpeg', 'ENABLE', 'Pizza'),
(342, 'Veggie Delight Pizza', 180, 'Loaded with capsicum, onion, tomato, sweet corn and olives.', 1, 'images/veggidelightpizza.jpeg', 'ENABLE', 'Pizza'),
(343, 'Paneer Tikka Pizza', 200, 'Tandoori paneer chunks with spicy sauce and cheese.', 1, 'images/pnp.jpeg', 'ENABLE', 'Pizza'),
(344, 'Chicken BBQ Pizza', 220, 'Grilled chicken in smoky BBQ sauce with mozzarella.', 1, 'images/chickenpizza.jpeg', 'ENABLE', 'Pizza'),
(345, 'Pepperoni Pizza', 230, 'Traditional pepperoni and cheese pizza with crispy crust.', 1, 'images/peppi.jpeg', 'ENABLE', 'Pizza'),
(346, 'Farmhouse Pizza', 190, 'Fresh veggies like mushrooms, capsicum, onions & tomatoes.', 1, 'images/farmhouse.jpeg', 'ENABLE', 'Pizza');


-- Table structure for table `manager`

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Dumping data for table `manager`


INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('aditi068', 'Aditi Naik', 'aditi@gmail.com', '8654751259', 'Goa', 'aditi'),
('aminnikhil073', 'Nikhil Amin', 'aminnikhil073@gmail.com', '9632587412', 'Karnataka', 'nikhil'),
('ckumar', 'Chandan Kumar', 'ckj40856@gmail.com', '9487810674', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123'),
('dhiraj', 'DHIRAJ kUMAR', 'dk123@gmail.com', '8903079750', 'Pondicherry. Le cafe', 'Dhiraj'),
('roshanraj07', 'Roshan Raj', 'roshan@gmail.com', '9541258761', 'Bihar', 'roshan');



-- Table structure for table `orders`



CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `orders`


INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-03', 'ckumar', 1),
(2, 61, 'Happy Happy Choco Chip Shake', 80, 2, '2019-03-03', 'ckumar', 1),
(3, 61, 'Happy Happy Choco Chip Shake', 80, 2, '2019-03-03', 'ckumar', 1),
(4, 65, 'Coffee', 25, 4, '2019-03-03', 'ckumar', 4),
(5, 58, 'Juicy Masala Paneer Kathi Roll', 40, 7, '2019-03-03', 'ckumar', 1),
(6, 65, 'Coffee', 25, 2, '2019-03-03', 'ckumar', 4),
(7, 58, 'Juicy Masala Paneer Kathi Roll', 40, 7, '2019-03-03', 'ckumar', 1),
(8, 65, 'Coffee', 25, 2, '2019-03-03', 'ckumar', 4),
(9, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-03', 'ckumar', 3),
(10, 59, 'Meurig Fish', 60, 1, '2019-03-05', 'ckumar', 2),
(11, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-05', 'ckumar', 3),
(12, 65, 'Coffee', 25, 1, '2019-03-05', 'ckumar', 4),
(13, 59, 'Meurig Fish', 60, 4, '2019-03-05', 'ckumar', 2),
(14, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-05', 'ckumar', 1),
(15, 60, 'Chocolate Hazelnut Truffle', 99, 4, '2019-03-05', 'ckumar', 3),
(16, 65, 'Coffee', 25, 1, '2019-03-05', 'ckumar', 4),
(17, 66, 'Tea', 20, 7, '2019-03-05', 'ckumar', 4),
(18, 59, 'Meurig Fish', 60, 5, '2019-03-05', 'birju', 2),
(19, 63, 'Baahubali Thali', 75, 1, '2019-03-05', 'birju', 3),
(20, 68, 'Paneer Pakora', 75, 1, '2019-03-05', 'birju', 6),
(21, 62, 'Spring Rolls', 65, 1, '2019-03-05', 'birju', 2),
(22, 68, 'Paneer Pakora', 75, 1, '2019-03-05', 'birju', 6),
(23, 62, 'Spring Rolls', 65, 1, '2019-03-05', 'birju', 2),
(24, 65, 'Coffee', 25, 1, '2019-03-05', 'birju', 4),
(25, 68, 'Paneer Pakora', 75, 1, '2019-03-05', 'birju', 6),
(26, 59, 'Meurig Fish', 60, 6, '2019-03-05', 'birju', 2),
(27, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-05', 'birju', 1),
(28, 59, 'Meurig Fish', 60, 1, '2019-03-05', 'birju', 2),
(29, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-05', 'birju', 1),
(30, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-15', 'ckumar', 3),
(31, 59, 'Meurig Fish', 60, 1, '2019-03-15', 'ckumar', 2),
(32, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-03-15', 'ckumar', 1),
(33, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-15', 'ckumar', 3),
(34, 59, 'Meurig Fish', 60, 1, '2019-03-15', 'ckumar', 2),
(35, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-03-15', 'ckumar', 1),
(36, 62, 'Spring Rolls', 65, 1, '2019-03-15', 'ckumar', 2),
(37, 72, 'Paneer Pakora', 45, 6, '2019-03-15', 'ckumar', 2),
(38, 78, 'French Fries', 75, 7, '2019-03-15', 'ckumar', 2),
(39, 78, 'French Fries', 75, 1, '2019-03-15', 'ckumar', 2),
(40, 73, 'Puff', 35, 1, '2019-03-15', 'ckumar', 2),
(41, 77, 'Pizza', 200, 2, '2019-03-16', 'ckumar', 2),
(42, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(43, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(44, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(45, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(46, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(47, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(48, 60, 'Chocolate Hazelnut Truffle', 99, 4, '2019-03-25', 'ckumar', 3),
(49, 62, 'Spring Rolls', 65, 6, '2019-03-25', 'ckumar', 2),
(50, 70, 'Tea', 20, 5, '2019-03-25', 'ckumar', 2),
(51, 73, 'Puff', 35, 3, '2019-03-25', 'ckumar', 2),
(52, 70, 'Tea', 20, 1, '2019-03-30', 'ckumar', 2),
(53, 60, 'Chocolate Hazelnut Truffle', 99, 5, '2019-03-30', 'ckumar', 3),
(54, 69, 'Coffee', 25, 7, '2019-03-30', 'ckumar', 2),
(55, 62, 'Spring Rolls', 65, 1, '2019-04-01', 'ckumar', 2),
(56, 70, 'Tea', 20, 4, '2019-04-01', 'ckumar', 2),
(57, 70, 'Tea', 20, 1, '2019-04-01', 'ckumar', 2),
(58, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-04-01', 'ckumar', 3),
(59, 59, 'Meurig Fish', 60, 6, '2019-04-02', 'ckumar', 2),
(60, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-04-02', 'ckumar', 1),
(61, 71, 'Samosa', 40, 3, '2019-04-17', 'ckumar', 2),
(62, 70, 'Tea', 20, 4, '2019-04-17', 'ckumar', 2),
(63, 72, 'Paneer Pakora', 45, 2, '2019-04-17', 'ckumar', 2),
(64, 71, 'Samosa', 40, 3, '2019-04-17', 'ckumar', 2),
(65, 70, 'Tea', 20, 4, '2019-04-17', 'ckumar', 2),
(66, 72, 'Paneer Pakora', 45, 2, '2019-04-17', 'ckumar', 2),
(67, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-04-18', 'ckumar', 3),
(68, 71, 'Samosa', 40, 1, '2019-04-18', 'ckumar', 2);

-- --------------------------------------------------------


-- Table structure for table `restaurant`


CREATE TABLE `restaurant` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL,
  PRIMARY KEY (`R_ID`),
  FOREIGN KEY (`M_ID`) REFERENCES `manager`(`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- CREATE TABLE `restaurant` (
--   `R_ID` INT(11) NOT NULL AUTO_INCREMENT,
--   `name` VARCHAR(100) NOT NULL,
--   `address` VARCHAR(255) NOT NULL,
--   `contact` VARCHAR(15),
--   PRIMARY KEY (`R_ID`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Dumping data for table `restaurant`


INSERT INTO `restaurant` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Nikhil Restaurant', 'nikhil@restaurant.com', '7998562145', 'Karnataka', 'aminnikhil073'),
(2, 'Roshan Restaurant', 'roshan@restaurant.com', '9887546821', 'Bihar', 'roshanraj07'),
(3, 'Aditi Restaurant', 'aditi@restaurant.com', '7778564231', 'Goa', 'aditi068'),
(4, 'Food Exploria', 'ckj40856@gmail.com', '09487810674', 'C:\\xampp\\htdocs\\FoodExploria-master\\images/coffee.', 'ckumar'),
(6, 'Le Cafe', 'lecafepondi234@gmail.com', '9443369040', 'Pondicherry,rock beach Near,Le cafe', 'dhiraj');

CREATE TABLE `coupons` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `code` VARCHAR(50) NOT NULL UNIQUE,
  `discount_percent` INT NOT NULL,
  `valid_until` DATE NOT NULL,
  `status` ENUM('ACTIVE', 'EXPIRED') DEFAULT 'ACTIVE'
);

INSERT INTO coupons (code, discount_percent, valid_until, status)
VALUES ('SAVE20', 20, '2025-12-31', 'ACTIVE');
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

-- Indexes for table `food`

ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);


-- Indexes for table `manager`

ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);


-- Indexes for table `orders`

ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);


-- Indexes for table `restaurant`

ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);


-- AUTO_INCREMENT for dumped tables



-- AUTO_INCREMENT for table `food`

ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;


-- AUTO_INCREMENT for table `orders`

ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;


-- AUTO_INCREMENT for table `restaurant`

ALTER TABLE `restaurant`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


-- Constraints for dumped tables



-- Constraints for table `food`

ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurant` (`R_ID`);


-- Constraints for table `orders`

ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurant` (`R_ID`);


ALTER TABLE ORDERS ADD payment_mode VARCHAR(50);

-- Constraints for table `restaurant`

ALTER TABLE `restaurant`
  ADD CONSTRAINT `restaurant_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;
-- Indexes for dumped tables



-- Indexes for table `customer`

-- ALTER TABLE `customer`
--   ADD PRIMARY KEY (`username`);

-- --
-- -- Indexes for table `food`
-- --
-- ALTER TABLE `food`
--   ADD PRIMARY KEY (`F_ID`,`R_ID`),
--   ADD KEY `R_ID` (`R_ID`);

-- --
-- -- Indexes for table `manager`
-- --
-- ALTER TABLE `manager`
--   ADD PRIMARY KEY (`username`);

-- --
-- -- Indexes for table `orders`
-- --
-- ALTER TABLE `orders`
--   ADD PRIMARY KEY (`order_ID`),
--   ADD KEY `F_ID` (`F_ID`),
--   ADD KEY `username` (`username`),
--   ADD KEY `R_ID` (`R_ID`);

-- --
-- -- Indexes for table `restaurant`
-- --
-- ALTER TABLE `restaurant`
--   ADD PRIMARY KEY (`R_ID`),
--   ADD UNIQUE KEY `M_ID_2` (`M_ID`),
--   ADD KEY `M_ID` (`M_ID`);

-- --
-- -- AUTO_INCREMENT for dumped tables
-- --

-- --
-- -- AUTO_INCREMENT for table `food`
-- --
-- ALTER TABLE `food`
--   MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

-- --
-- -- AUTO_INCREMENT for table `orders`
-- --
-- ALTER TABLE `orders`
--   MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

-- --
-- -- AUTO_INCREMENT for table `restaurant`
-- --
-- ALTER TABLE `restaurant`
--   MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

-- --
-- -- Constraints for dumped tables
-- --

-- --
-- -- Constraints for table `food`
-- --
-- ALTER TABLE `food`
--   ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurant` (`R_ID`);

-- --
-- -- Constraints for table `orders`
-- --
-- ALTER TABLE `orders`
--   ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
--   ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
--   ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurant` (`R_ID`);

-- --
-- ALTER TABLE ORDERS ADD payment_mode VARCHAR(50);

-- -- Constraints for table `restaurant`
-- --
-- ALTER TABLE `restaurant`
--   ADD CONSTRAINT `restaurant_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
-- -- COMMIT;

-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- Add category column and update categories
ALTER TABLE `food` ADD COLUMN `category` VARCHAR(50) DEFAULT NULL;
UPDATE `food` SET `category` = 'Starter - Veg' WHERE `F_ID` = 301;
UPDATE `food` SET `category` = 'Starter - Veg' WHERE `F_ID` = 302;
UPDATE `food` SET `category` = 'Starter - Veg' WHERE `F_ID` = 303;
UPDATE `food` SET `category` = 'Starter - Veg' WHERE `F_ID` = 304;
UPDATE `food` SET `category` = 'Starter - Non-Veg' WHERE `F_ID` = 305;
UPDATE `food` SET `category` = 'Starter - Non-Veg' WHERE `F_ID` = 306;
UPDATE `food` SET `category` = 'Starter - Non-Veg' WHERE `F_ID` = 307;
UPDATE `food` SET `category` = 'Starter - Non-Veg' WHERE `F_ID` = 308;
UPDATE `food` SET `category` = 'Main Course - Veg' WHERE `F_ID` = 309;
UPDATE `food` SET `category` = 'Main Course - Veg' WHERE `F_ID` = 310;
UPDATE `food` SET `category` = 'Main Course - Veg' WHERE `F_ID` = 311;
UPDATE `food` SET `category` = 'Main Course - Veg' WHERE `F_ID` = 312;
UPDATE `food` SET `category` = 'Main Course - Non-Veg' WHERE `F_ID` = 313;
UPDATE `food` SET `category` = 'Main Course - Non-Veg' WHERE `F_ID` = 314;
UPDATE `food` SET `category` = 'Main Course - Non-Veg' WHERE `F_ID` = 315;
UPDATE `food` SET `category` = 'Rice & Biryani' WHERE `F_ID` = 316;
UPDATE `food` SET `category` = 'Rice & Biryani' WHERE `F_ID` = 317;
UPDATE `food` SET `category` = 'Rice & Biryani' WHERE `F_ID` = 318;
UPDATE `food` SET `category` = 'Rice & Biryani' WHERE `F_ID` = 319;
UPDATE `food` SET `category` = 'Breads' WHERE `F_ID` = 320;
UPDATE `food` SET `category` = 'Breads' WHERE `F_ID` = 321;
UPDATE `food` SET `category` = 'Breads' WHERE `F_ID` = 322;
UPDATE `food` SET `category` = 'Breads' WHERE `F_ID` = 323;
UPDATE `food` SET `category` = 'Snacks' WHERE `F_ID` = 324;
UPDATE `food` SET `category` = 'Snacks' WHERE `F_ID` = 325;
UPDATE `food` SET `category` = 'Snacks' WHERE `F_ID` = 326;
UPDATE `food` SET `category` = 'Snacks' WHERE `F_ID` = 327;
UPDATE `food` SET `category` = 'Snacks' WHERE `F_ID` = 347;
UPDATE `food` SET `category` = 'Indo-Chinese' WHERE `F_ID` = 328;
UPDATE `food` SET `category` = 'Indo-Chinese' WHERE `F_ID` = 329;
UPDATE `food` SET `category` = 'Indo-Chinese' WHERE `F_ID` = 330;
UPDATE `food` SET `category` = 'Indo-Chinese' WHERE `F_ID` = 331;
UPDATE `food` SET `category` = 'Beverages' WHERE `F_ID` = 332;
UPDATE `food` SET `category` = 'Beverages' WHERE `F_ID` = 333;
UPDATE `food` SET `category` = 'Beverages' WHERE `F_ID` = 334;
UPDATE `food` SET `category` = 'Beverages' WHERE `F_ID` = 335;
UPDATE `food` SET `category` = 'Beverages' WHERE `F_ID` = 336;
UPDATE `food` SET `category` = 'Desserts' WHERE `F_ID` = 337;
UPDATE `food` SET `category` = 'Desserts' WHERE `F_ID` = 338;
UPDATE `food` SET `category` = 'Desserts' WHERE `F_ID` = 339;
UPDATE `food` SET `category` = 'Desserts' WHERE `F_ID` = 340;
UPDATE `food` SET `category` = 'Snacks' WHERE `F_ID` = 58;
UPDATE `food` SET `category` = 'Starter - Non-Veg' WHERE `F_ID` = 59;
UPDATE `food` SET `category` = 'Desserts' WHERE `F_ID` = 60;
UPDATE `food` SET `category` = 'Beverages' WHERE `F_ID` = 61;
UPDATE `food` SET `category` = 'Starter - Veg' WHERE `F_ID` = 62;
UPDATE `food` SET `category` = 'Main Course - Veg' WHERE `F_ID` = 63;
UPDATE `food` SET `category` = 'Beverages' WHERE `F_ID` = 69;
UPDATE `food` SET `category` = 'Beverages' WHERE `F_ID` = 70;
UPDATE `food` SET `category` = 'Snacks' WHERE `F_ID` = 71;
UPDATE `food` SET `category` = 'Snacks' WHERE `F_ID` = 73;
UPDATE `food` SET `category` = 'Snacks' WHERE `F_ID` = 76;
UPDATE `food` SET `category` = 'Snacks' WHERE `F_ID` = 77;
UPDATE `food` SET `category` = 'Snacks' WHERE `F_ID` = 78;
UPDATE `food` SET `category` = 'Pizza' WHERE `F_ID` = 341;
UPDATE `food` SET `category` = 'Pizza' WHERE `F_ID` = 342;
UPDATE `food` SET `category` = 'Pizza' WHERE `F_ID` = 343;
UPDATE `food` SET `category` = 'Pizza' WHERE `F_ID` = 344;
UPDATE `food` SET `category` = 'Pizza' WHERE `F_ID` = 345;
UPDATE `food` SET `category` = 'Pizza' WHERE `F_ID` = 346;