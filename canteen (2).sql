-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2024 at 10:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `canteen`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `userpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `username`, `userpassword`) VALUES
(1, 'canteen', 'canteen123');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL,
  `customization_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(2, 'Hot Drinks'),
(3, 'Chinese Corner'),
(4, 'Dosa Corner'),
(5, 'Chat Item'),
(6, 'Cold Drinks'),
(9, 'ice creams'),
(10, 'snacks');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `subject`, `message`, `timestamp`) VALUES
(1, 'Arpita', 'a@gmail.com', 'asadd', 'sdf', '2024-02-24 08:30:16');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `feedback` text NOT NULL,
  `ratings` tinytext NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `name`, `email`, `feedback`, `ratings`, `timestamp`) VALUES
(5, 'Arpita', 'a@gmail.com', 'sdsf', '3', '2024-02-24 08:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_pending`
--

INSERT INTO `orders_pending` (`order_id`, `user_id`, `invoice_number`, `product_id`, `quantity`, `order_status`) VALUES
(1, 1, 408649370, 8, 2, 'pending'),
(2, 1, 1032208860, 5, 1, 'pending'),
(3, 1, 521477622, 8, 2, 'pending'),
(4, 1, 2086127723, 10, 1, 'pending'),
(5, 1, 1283725238, 8, 1, 'pending'),
(6, 1, 433603036, 6, 2, 'pending'),
(7, 1, 1610713860, 8, 1, 'pending'),
(8, 1, 2123156233, 3, 1, 'pending'),
(9, 1, 1896487239, 10, 2, 'pending'),
(10, 1, 1571302830, 8, 5, 'pending'),
(11, 1, 437504073, 8, 4, 'pending'),
(12, 1, 423180735, 3, 4, 'pending'),
(13, 1, 1878765678, 4, 1, 'pending'),
(14, 1, 470348554, 3, 1, 'pending'),
(15, 1, 2127203712, 10, 1, 'pending'),
(16, 1, 883104338, 10, 1, 'pending'),
(17, 1, 112075657, 10, 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `payment_status` varchar(100) NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `order_id`, `name`, `amount`, `payment_status`, `payment_id`, `added_on`) VALUES
(1, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:15:10'),
(2, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:15:12'),
(3, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:15:13'),
(4, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:15:14'),
(5, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:15:14'),
(6, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:15:14'),
(7, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:15:14'),
(8, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:15:14'),
(9, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:15:15'),
(10, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:15:16'),
(11, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:15:40'),
(12, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:18:43'),
(13, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:24:20'),
(14, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:24:22'),
(15, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:24:22'),
(16, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:24:23'),
(17, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:24:23'),
(18, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:24:23'),
(19, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:24:25'),
(20, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:24:25'),
(21, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:24:25'),
(22, 0, 'Arpita', 50, 'pending', '', '2024-02-24 09:37:46'),
(23, 0, 'Arpita', 30, 'pending', '', '2024-02-24 05:55:25'),
(24, 0, 'Arpita', 30, 'pending', '', '2024-02-24 05:55:27'),
(25, 0, 'Arpita', 30, 'pending', '', '2024-02-24 05:55:27'),
(26, 0, 'Arpita', 30, 'pending', '', '2024-02-24 05:55:27'),
(27, 0, 'Arpita', 30, 'pending', '', '2024-02-24 05:55:27'),
(28, 0, 'Arpita', 30, 'pending', '', '2024-02-24 05:55:27'),
(29, 0, 'Arpita', 30, 'pending', '', '2024-02-24 05:55:27'),
(30, 0, 'Arpita', 30, 'pending', '', '2024-02-24 05:55:30'),
(31, 0, 'Arpita', 30, 'pending', '', '2024-02-24 06:01:56'),
(32, 0, 'Arpita', 30, 'pending', '', '2024-02-24 06:01:56'),
(33, 0, 'Arpita', 30, 'pending', '', '2024-02-24 06:02:11'),
(34, 0, 'Arpita', 30, 'pending', '', '2024-02-24 06:02:14'),
(35, 0, 'Arpita', 30, 'pending', '', '2024-02-24 06:02:16'),
(36, 0, 'Arpita', 30, 'pending', '', '2024-02-24 06:02:16'),
(37, 0, 'Arpita', 30, 'pending', '', '2024-02-24 06:02:17'),
(38, 0, 'Arpita', 30, 'pending', '', '2024-02-24 06:02:18'),
(39, 0, 'Arpita', 30, 'pending', '', '2024-02-24 06:02:18'),
(40, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:12'),
(41, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:13'),
(42, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:14'),
(43, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:14'),
(44, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:14'),
(45, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:15'),
(46, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:15'),
(47, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:15'),
(48, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:15'),
(49, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:16'),
(50, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:16'),
(51, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:17'),
(52, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:17'),
(53, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:17'),
(54, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:17'),
(55, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:17'),
(56, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:18'),
(57, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:18'),
(58, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:18'),
(59, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:18'),
(60, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:18'),
(61, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:18'),
(62, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:19'),
(63, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:19'),
(64, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:19'),
(65, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:19'),
(66, 0, 'Arpita', 12, 'pending', '', '2024-02-24 06:03:19'),
(67, 0, 'Arpita', 30, 'pending', '', '2024-02-24 06:04:27'),
(68, 0, 'Arpita', 30, 'pending', '', '2024-02-24 06:04:28'),
(69, 0, 'Arpita', 30, 'pending', '', '2024-02-24 06:04:30'),
(70, 0, 'Arpita', 30, 'pending', '', '2024-02-24 06:04:30'),
(71, 0, 'Arpita', 30, 'pending', '', '2024-02-24 06:04:30'),
(72, 0, 'Arpita', 30, 'pending', '', '2024-02-24 06:04:30'),
(73, 0, 'Arpita', 12, 'complete', 'pay_NenFNHEwct6g5r', '2024-02-24 06:06:49'),
(74, 0, 'Arpita', 50, 'pending', '', '2024-02-28 09:01:01'),
(75, 0, 'Arpita', 50, 'pending', '', '2024-02-28 09:01:03'),
(76, 0, 'Arpita', 50, 'pending', '', '2024-02-28 09:01:04'),
(77, 0, 'Arpita', 50, 'pending', '', '2024-02-28 09:01:04'),
(78, 0, 'Arpita', 50, 'pending', '', '2024-02-28 09:01:06'),
(79, 0, 'Arpita', 50, 'pending', '', '2024-02-28 09:01:07'),
(80, 0, 'Arpita', 50, 'pending', '', '2024-02-28 09:01:18'),
(81, 0, 'Arpita', 50, 'pending', '', '2024-02-28 09:01:18'),
(82, 0, 'Arpita', 50, 'pending', '', '2024-02-28 09:01:19'),
(83, 0, 'Arpita', 50, 'pending', '', '2024-02-28 09:01:21'),
(84, 0, 'f', 23, 'pending', '', '2024-02-28 09:02:53'),
(85, 0, 'f', 23, 'pending', '', '2024-02-28 09:02:54'),
(86, 0, 'f', 23, 'pending', '', '2024-02-28 09:02:55'),
(87, 0, 'a', 30, 'complete', 'pay_NgNd3DD8PJrA6m', '2024-02-28 06:21:27'),
(88, 0, 'Arpita', 30, 'complete', 'pay_NgPEvPpXkbvU0W', '2024-02-28 07:53:32'),
(89, 0, 'Arpita', 30, 'pending', '', '2024-02-28 07:56:02'),
(90, 0, 'a', 12, 'pending', '', '2024-02-28 09:21:08'),
(91, 0, 'a', 30, 'pending', '', '2024-02-28 09:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `product_image`, `product_price`, `date`, `status`) VALUES
(2, 'vadapav', 'Delight, consisting of a spiced potato vada sandwiched between a soft pav.', 'vadapav,Snacks,Vadapav', 1, 'vadapav.jpg', '12', '2024-02-19 13:18:13', 'true'),
(3, 'Misal pav', 'Misal Pav is a flavorful and spicy curry made from sprouted moth beans or mixed legumes, simmered in a fiery gravy of spices.', 'misal pav,Misal pav,Snacks', 1, 'misalpav.jpg', '30', '2024-02-09 19:50:52', 'true'),
(4, 'Masala Dosa', 'South Indian delicacy consisting of a thin, crispy crepe made from fermented rice and lentil batter, generously filled with a flavorful spiced potato mixture', 'masala dosa,Masala Dosa,dosa corner', 4, 'Masala-Dosa.jpg', '30', '2024-02-08 09:04:45', 'true'),
(5, 'Veg Fried rice', 'Fragrant Basmati rice wok-tossed with a medley of colorful vegetables, aromatic spices, and a hint of tangy sauce', 'veg fried rice,Fried rice,chinese corner', 3, 'friedrice.jpg', '50', '2024-02-08 09:04:50', 'true'),
(6, 'Bhel puri', 'Refreshing and light, bhelpuri offers a delightful combination of sweet, sour, tangy, and spicy flavors', 'bhel puri,Bhel puri,chat items', 5, 'bhelpuri.jpg', '20', '2024-02-09 19:53:34', 'true'),
(7, 'Butter Milk', 'Refreshing and tangy buttermilk, a traditional Indian beverage made from yogurt. ', 'butter milk,Buttermilk,Butter milk,cold drink', 6, 'buttermilk.jpg', '10', '2024-02-09 19:53:55', 'true'),
(8, 'chinese bhel', 'A dish with dry noodles and schezwan chutney', 'snacks, chinese bhel, bhel', 1, 'chinese bhel.jpeg', '25', '2024-02-19 13:20:03', 'true'),
(9, 'sandwich', 'sandwicdchwdic', 'sandwich', 5, 'sandwich.jpg', '40', '2024-02-24 08:27:50', 'true'),
(10, 'manchurian', 'fcdsfdsrf', 'mand', 3, 'manchurian.jpg', '20', '2024-02-24 08:28:41', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `customization_description` text NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `user_id`, `amount_due`, `invoice_number`, `total_products`, `customization_description`, `quantity`, `order_date`, `order_status`) VALUES
(1, 1, 100, 1888005845, 1, '', 0, '2024-02-28 18:26:24', 'pending'),
(2, 1, 140, 1896487239, 2, ', sss', 0, '2024-02-28 18:40:16', 'pending'),
(3, 1, 125, 1571302830, 1, 'chinese bhel: spicy', 0, '2024-02-28 18:44:56', 'pending'),
(4, 1, 400, 437504073, 1, 'chinese bhel: medium', 4, '2024-02-28 18:49:26', 'pending'),
(5, 1, 480, 423180735, 1, 'Misal pav: fdf', 4, '2024-02-28 18:55:54', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `payment_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_payments`
--

INSERT INTO `user_payments` (`payment_id`, `name`, `order_id`, `invoice_number`, `amount`, `payment_status`, `payment_mode`, `date`) VALUES
(1, '', 1, 408649370, 50, '', 'UPI', '2024-02-24 08:16:16'),
(2, '', 5, 521477622, 50, '', 'Netbanking', '2024-02-24 17:07:34'),
(3, '', 10, 1610713860, 25, '', 'UPI', '2024-02-28 08:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `password`, `user_image`, `user_ip`) VALUES
(1, 'a', 'a@gmail.com', '$2y$10$Z26AflpiaTgLe5AEqx5mS.Q32a1eBNcW4bJrs1ySqwslEzn1fTi5a', 'arpita.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `orders_pending`
--
ALTER TABLE `orders_pending`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders_pending`
--
ALTER TABLE `orders_pending`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
