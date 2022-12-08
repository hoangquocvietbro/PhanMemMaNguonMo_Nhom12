-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2022 at 06:28 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laptopstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `image` text COLLATE utf8_vietnamese_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `created_by`, `created_at`, `updated_at`) VALUES
(8, 'SONY', '1670341998banner-sony-t7-slide (1).jpg', 21, '2022-05-30 09:55:54', '2022-12-06 04:53:18'),
(9, 'SAMSUNG', '1653968513acer.webp', 21, '2022-05-31 10:41:53', '2022-12-06 04:59:39'),
(10, 'ASANZO', '1670342138slider_2.webp', 21, '2022-05-31 10:42:08', '2022-12-06 04:55:38'),
(11, 'LG', '1670342682TV-OLED-XBOX-Banner-Desktop-Cat.webp', 21, '2022-05-31 10:42:30', '2022-12-06 05:04:42'),
(12, 'CASPER', '1670342796Banner-TV-casper-1.jpg', 21, '2022-05-31 10:42:47', '2022-12-06 05:06:36'),
(13, 'AQUA', '1670342922maxresdefault.jpg', 21, '2022-05-31 10:42:57', '2022-12-06 05:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status_id`, `created_at`, `updated_at`) VALUES
(42, 21, 10, '2022-06-19 11:12:11', '2022-06-19 11:12:11'),
(43, 21, 10, '2022-06-22 04:01:18', '2022-06-22 04:01:18'),
(44, 34, 10, '2022-06-23 04:59:23', '2022-06-23 04:59:23'),
(45, 34, 10, '2022-06-23 05:17:44', '2022-06-23 05:17:44');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `capacity_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `capacity_id`, `quantity`, `price`) VALUES
(42, 42, 15, 10, 1, 11950800),
(44, 44, 14, 9, 1, 35000000),
(45, 44, 14, 8, 1, 22790000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `model` text COLLATE utf8_vietnamese_ci NOT NULL,
  `screen` text COLLATE utf8_vietnamese_ci NOT NULL,
  `RAM` text COLLATE utf8_vietnamese_ci NOT NULL,
  `hardware` text COLLATE utf8_vietnamese_ci NOT NULL,
  `OS` text COLLATE utf8_vietnamese_ci NOT NULL,
  `CPU` text COLLATE utf8_vietnamese_ci NOT NULL,
  `VGA` text COLLATE utf8_vietnamese_ci NOT NULL,
  `background` text COLLATE utf8_vietnamese_ci NOT NULL,
  `warranty` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `discount` float NOT NULL DEFAULT 0,
  `color` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `model`, `screen`, `RAM`, `hardware`, `OS`, `CPU`, `VGA`, `background`, `warranty`, `discount`, `color`, `created_by`, `created_at`, `updated_at`) VALUES
(14, 8, 'Smart Tivi Sony KD-43X80K', 'Màn Hình 4k, 43 inches\r\n                \r\n                \r\n                \r\n        \r\n        \r\n        \r\n        \r\n        \r\n        \r\n        \r\n        \r\n        ', '2GB', ' ', 'Android TV 11, Google TV', 'Rockchip', '20w       \r\n                \r\n        \r\n        \r\n        \r\n        \r\n        \r\n        \r\n        \r\n        \r\n        ', '1670344113smart-tivi-4k-sony-kd-43x80k-43-inch-google-tv_7da45de9.webp', 'Bảo hành chính hãng 12 tháng.', 0, 'Dark Shadow Grey', 21, '2022-06-06 06:29:10', '2022-12-06 05:36:03'),
(15, 11, 'Smart Tivi LG 4K 55UP7550PTC', 'Màn Hình 4K 55 inch', '3GB', 'k', 'WebOS', 'AMlogic', '20W\r\n        ', '1670344477-MtZA7n.webp', 'Bảo hành: 12 Tháng', 8, 'black', 21, '2022-06-06 06:40:13', '2022-12-06 05:34:37'),
(16, 9, 'Tivi Samsung 65Q70A', 'Màn hình 4k, 65 inches', '2GB', 'k', 'Tizen OS', 'HiSilicon', '20w', '1670344813-vQ22jR.webp', 'Bảo hành chính hãng 12 tháng', 5, 'Phantom Grey', 21, '2022-06-08 03:38:20', '2022-12-06 05:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_capacities`
--

CREATE TABLE `product_capacities` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `capacity_name` text COLLATE utf8_vietnamese_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `product_capacities`
--

INSERT INTO `product_capacities` (`id`, `product_id`, `capacity_name`, `price`, `quantity`) VALUES
(8, 14, '43 inch', 22790000, 18009991),
(9, 14, '55 inch', 35000000, 190050502),
(10, 15, '43 inch', 12990000, 100046),
(11, 15, '55 inch', 15000000, 5000),
(12, 16, '43 inch', 30990000, 4997),
(13, 16, '55 inch', 35000000, 4998),
(84, 14, '65 inch', 40000000, 6),
(85, 15, '65 inch', 38000000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'user'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Chờ shop xác nhận'),
(2, 'Shop đã xác nhận'),
(3, 'Shop đang chuẩn bị hàng'),
(4, 'Đơn vị đang vận chuyển'),
(5, 'Shiper đang giao hàng'),
(6, 'Giao hàng thành công'),
(7, 'Yêu cầu trả hàng'),
(8, 'Shop xác nhận trả hàng'),
(9, 'Trả hàng thành công'),
(10, 'Đơn hàng bị hủy.'),
(11, 'Trả hàng thất bại'),
(12, 'Khách không nhận.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `account` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `address` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `avatar` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `account`, `password`, `name`, `phone_number`, `address`, `avatar`, `email`, `created_at`, `updated_at`) VALUES
(21, 2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Hoàng Quốc Việt', '973867269', 'Xóm 4, thôn Gia Lễ, xã Đông Mỹ, thành phố Thái Bình, tỉnh Thái Bình', 'pexels-pixabay-220453.jpg', 'tovantaidz2001@gmail.com', '2022-05-29 10:06:46', '2022-06-04 02:58:01'),
(33, 1, 'account1', '827ccb0eea8a706c4c34a16891f84e7b', 'Nguyễn Văn Tính', '0973867269', 'Xóm 3, thôn Gia Lễ, xã Đông Mỹ, thành phố Thái Bình', '1655597592cuteness.jpg', 'tovantaidz2002@gmail.com', '2022-06-18 11:24:30', '2022-06-19 07:13:12'),
(34, 1, 'account2', '25d55ad283aa400af464c76d713c07ad', 'Nguyễn Văn Tính', '0973867269', 'Xom 4, thon gia le, xa dong my, thanh pho thai binh', NULL, 'tovantaidz2001@gmail.com', '2022-06-19 07:18:52', '2022-06-23 04:24:21'),
(35, 1, 'account5', '827ccb0eea8a706c4c34a16891f84e7b', 'Đậu Ngọc Hùng', '015423454', 'THAI BINH', NULL, 'tovantaidz2001@gmail.com', '2022-07-24 04:34:33', '2022-07-24 04:35:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `capacity_id` (`capacity_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `product_capacities`
--
ALTER TABLE `product_capacities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `product_capacities`
--
ALTER TABLE `product_capacities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`capacity_id`) REFERENCES `product_capacities` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_capacities`
--
ALTER TABLE `product_capacities`
  ADD CONSTRAINT `product_capacities_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
