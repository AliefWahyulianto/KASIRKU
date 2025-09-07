-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2025 at 02:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mykasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `phone` varchar(20) NOT NULL DEFAULT '',
  `address` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `gender`, `phone`, `address`, `updated`) VALUES
(1, 'UMUM', 'L', '0', 'UMUM', '2025-08-12 14:36:54'),
(2, 'LILI', 'P', '0895337173965', 'BOJONGSARI 02/07', '2025-08-19 07:44:52'),
(8, 'HARI', 'L', '085645425206', 'BOJONGSARI 02/07', NULL),
(9, 'MARTIAH', 'L', '085780397402', 'BOJONGSARI 02/07\r\n', NULL),
(10, 'YULIASIH', 'P', '081575914658', 'BOJONGSARI 02/07', NULL),
(11, 'IZUL', 'L', '081393193264', 'BOJONGSARI 02/07', NULL),
(13, 'RESTU', 'L', '089670280892', 'BOJONGSARI 02/07', NULL),
(14, 'SUSAN', 'P', '0895410144000', 'BOJONGSARI 02/07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_category`
--

CREATE TABLE `p_category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_category`
--

INSERT INTO `p_category` (`category_id`, `name`, `updated`) VALUES
(1, 'Makanan', '2025-07-31 19:31:29'),
(3, 'ATK', NULL),
(4, 'Bumbu masak', NULL),
(6, 'Makanan ringan', '2025-08-16 05:00:07'),
(8, 'Minuman', '2025-08-16 04:59:15'),
(9, 'Sembako', NULL),
(10, 'Mainan', NULL),
(11, 'Obat', NULL),
(12, 'Pewangi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_item`
--

CREATE TABLE `p_item` (
  `item_id` int(11) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT 0,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_item`
--

INSERT INTO `p_item` (`item_id`, `barcode`, `name`, `category_id`, `unit_id`, `price`, `stock`, `updated`) VALUES
(1, 'A001', 'Pulpen A7', 3, 2, '3000.00', 42, '2025-08-12 11:44:17'),
(2, 'A002', 'Mi Goreng Sukses isi 2', 1, 2, '4000.00', 40, '2025-08-18 15:32:58'),
(4, 'A003', 'Es Krim paddlepop', 1, 2, '2500.00', 9, NULL),
(6, 'A004', 'Roti Skuy', 6, 2, '2000.00', 19, '2025-08-19 15:01:18'),
(7, 'A005', 'Yoritos', 6, 2, '2000.00', 27, NULL),
(8, 'A006', 'Qtela', 6, 2, '2000.00', 22, NULL),
(9, 'A007', 'Taro', 6, 2, '2000.00', 23, NULL),
(10, 'A008', 'Mi Gelas', 6, 2, '2000.00', 33, NULL),
(11, 'A009', 'Wow Spageti', 1, 2, '3000.00', 10, NULL),
(12, 'A010', 'Marrie Susu', 6, 2, '1000.00', 14, NULL),
(13, 'A011', 'Teh Gelas', 8, 11, '3000.00', 43, NULL),
(14, 'A012', 'Orange Water', 8, 11, '7000.00', 5, '2025-08-16 05:13:22'),
(15, 'A013', 'Kratingdaeng', 8, 11, '7000.00', 4, NULL),
(16, 'A014', 'You-C 1000', 8, 11, '7000.00', 12, NULL),
(17, 'A015', 'Kopi ABC Susu', 8, 11, '4000.00', 18, NULL),
(18, 'A016', 'Kopi Gooday Chocinno', 8, 2, '1500.00', 21, NULL),
(19, 'A017', 'Teh Tjap Solo', 8, 2, '2000.00', 23, NULL),
(20, 'A018', 'Kopi Gula Aren', 8, 2, '1500.00', 24, '2025-08-16 05:23:27'),
(21, 'A019', 'Kopi ABC Susu', 8, 2, '2000.00', 20, NULL),
(22, 'A020', 'Kopi Fresco', 8, 2, '2000.00', 23, NULL),
(23, 'A021', 'Coffemix', 8, 2, '2000.00', 24, NULL),
(24, 'A022', 'Gooday Latte', 8, 2, '2500.00', 10, NULL),
(25, 'A023', 'Gooday Cappucinno', 8, 2, '2500.00', 18, NULL),
(26, 'A024', 'Torabika Cappucinno', 8, 2, '2000.00', 12, NULL),
(27, 'A025', 'Energen Chocolate', 8, 2, '2000.00', 12, NULL),
(28, 'A026', 'Energen Vanilla', 8, 2, '2000.00', 8, NULL),
(29, 'A027', 'Kopi Top Plus', 8, 2, '1500.00', 29, NULL),
(30, 'A028', 'Kopi ABC Plus', 8, 2, '1000.00', 28, NULL),
(31, 'A029', 'Torpedo Jeruk', 8, 11, '2000.00', 80, NULL),
(32, 'A030', 'Aqua Gelas', 8, 13, '500.00', 48, NULL),
(33, 'A031', 'Naga Capuccinno', 8, 2, '1000.00', 20, NULL),
(34, 'A032', 'Okky Jellydrink Jeruk', 8, 13, '1000.00', 23, NULL),
(35, 'A033', 'Yakult', 8, 2, '2500.00', 18, NULL),
(36, 'A034', 'Kerupuk Kulit Sapi', 1, 2, '2000.00', 20, NULL),
(37, 'A035', 'Kerupuk Makaroni', 8, 2, '2000.00', 19, NULL),
(38, 'A036', 'Kerupuk Ikan', 1, 2, '1000.00', 20, NULL),
(39, 'A037', 'Basreng', 6, 2, '2000.00', 20, NULL),
(40, 'A038', 'Makaroni', 6, 2, '2000.00', 20, NULL),
(41, 'A039', 'White Choffe', 8, 2, '2000.00', 24, NULL),
(42, 'A040', 'Kerupuk Warteg', 1, 2, '500.00', 30, NULL),
(43, 'A041', 'Masako Sapi', 4, 2, '500.00', 24, NULL),
(44, 'A042', 'Royco Ayam', 4, 2, '500.00', 24, NULL),
(45, 'A043', 'Ladaku', 4, 2, '1000.00', 24, NULL),
(46, 'A044', 'Bumbu Racik Indofood Serbaguna', 4, 2, '2000.00', 12, NULL),
(47, 'A045', 'Kecap Sedaap', 4, 2, '500.00', 34, NULL),
(48, 'A046', 'Kecap Bango ', 4, 2, '1000.00', 36, NULL),
(49, 'A047', 'Sasa Tepung Racik', 4, 2, '3000.00', 12, NULL),
(50, 'A048', 'Autan', 11, 2, '500.00', 12, NULL),
(51, 'A049', 'Bodrex sakit kepala', 11, 2, '1000.00', 20, NULL),
(52, 'A050', 'Bodrex flu & batuk PE', 11, 2, '1000.00', 20, NULL),
(53, 'A051', 'Ultra Flu', 11, 2, '1000.00', 20, NULL),
(54, 'A052', 'Adem sari', 11, 2, '2000.00', 12, NULL),
(55, 'A053', 'Kispray Lavender', 12, 2, '1000.00', 20, NULL),
(56, 'A054', 'Kispray Jeruk', 12, 2, '1000.00', 20, NULL),
(57, 'A055', 'SoKlin Softergent', 12, 2, '500.00', 24, '2025-08-17 05:55:35'),
(58, 'A056', 'Daia Softener', 12, 2, '1000.00', 24, NULL),
(59, 'A057', 'Shampo Rejoice', 11, 2, '500.00', 24, NULL),
(60, 'A058', 'Shampo Head & Shoulders', 11, 2, '500.00', 20, NULL),
(61, 'A059', 'Shampo Zinc', 11, 2, '500.00', 24, NULL),
(62, 'A060', 'Shampo Lifebuoy', 11, 2, '500.00', 24, NULL),
(63, 'A061', 'Shampo Clear', 11, 2, '500.00', 24, NULL),
(64, 'A062', 'Shampo Peantene', 11, 2, '500.00', 46, NULL),
(65, 'A063', 'Mi Sedaap kari special', 1, 2, '3000.00', 40, NULL),
(66, 'A064', 'Mi Sedaap Ayam Bawang', 1, 2, '3000.00', 39, NULL),
(67, 'A065', 'Mi Sedaap Soto', 1, 2, '3000.00', 40, NULL),
(68, 'A066', 'Mi Goreng Korean', 1, 2, '3500.00', 40, NULL),
(69, 'A067', 'Mi Goreng Sedaap ', 1, 2, '3500.00', 40, NULL),
(70, 'A068', 'Minyak Goreng Rizki 1ltr', 9, 8, '17000.00', 9, NULL),
(71, 'A069', 'Minyak Goreng Hemart 500ml', 9, 8, '11000.00', 12, NULL),
(72, 'A070', 'Minyak Goreng Rosebrand', 9, 13, '5000.00', 8, NULL),
(74, 'A071', 'AR & AS ACCESORY & TOYS 2000an', 10, 2, '2000.00', 59, NULL),
(75, 'A072', 'ALFA ACCESORIES 2000an', 10, 2, '2000.00', 60, NULL),
(76, 'A073', 'DOMAS ACC 2000an', 10, 2, '2000.00', 60, NULL),
(77, 'A074', 'Gas Melon 3g', 9, 2, '21000.00', 7, NULL),
(78, 'A075', 'Susu Frisian Flag Putih', 8, 2, '1500.00', 24, NULL),
(81, 'A076', 'Kacang tanah', 9, 6, '5000.00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_unit`
--

CREATE TABLE `p_unit` (
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_unit`
--

INSERT INTO `p_unit` (`unit_id`, `name`, `updated`) VALUES
(2, 'Pcs', NULL),
(5, 'Roll', NULL),
(6, 'Kilogram', NULL),
(7, 'Gram', NULL),
(8, 'Liter', NULL),
(9, 'Butir', NULL),
(10, 'Pack', NULL),
(11, 'Botol', '2025-08-16 05:04:15'),
(12, 'Lembar', NULL),
(13, 'Gelas', NULL),
(14, 'bungkus', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `phone`, `address`, `description`, `updated`) VALUES
(2, 'Umum', '00000000000000', 'Umum', 'Untuk Umum\r\n', '2025-08-17 04:51:15'),
(3, 'AR & AS ACCESORY & TOYS 2000an', '082324791151', 'Pagutan, Purbalingga', '60 Aksesoris dan Mainan anak\r\n', '2025-08-19 08:53:55'),
(4, 'ALFA ACCESORIES 2000an', '085325909662', 'Mrebet,Purbalingga', '60 Aksesoris 2000 an', '2025-08-19 08:54:04'),
(5, 'DOMAS ACC 2000an', '082322820796', 'Mangunegara,Purbalingga', 'Aneka aksesoris 2000an', '2025-08-19 08:54:12'),
(6, 'Bapak Supri', '081393193264', 'Pagutan,Purbalingga', 'Aneka kerupuk', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_cart`
--

CREATE TABLE `t_cart` (
  `cart_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `discount_item` decimal(10,2) DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_cart`
--

INSERT INTO `t_cart` (`cart_id`, `item_id`, `price`, `qty`, `discount_item`, `total`, `user_id`) VALUES
(1, 17, '4000.00', 1, '0.00', '4000.00', 3),
(2, 1, '3000.00', 1, '0.00', '3000.00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `t_sale`
--

CREATE TABLE `t_sale` (
  `sale_id` int(11) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) DEFAULT 0.00,
  `final_price` decimal(10,2) NOT NULL,
  `cash` decimal(10,2) NOT NULL,
  `remaining` decimal(10,2) DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_sale`
--

INSERT INTO `t_sale` (`sale_id`, `invoice`, `customer_id`, `total_price`, `discount`, `final_price`, `cash`, `remaining`, `note`, `date`, `user_id`) VALUES
(2, 'MP2507200001', NULL, '9000.00', '0.00', '9000.00', '10000.00', '1000.00', '', '2025-07-20 20:33:20', 2),
(3, 'MP2507200001', NULL, '12000.00', '0.00', '12000.00', '20000.00', '8000.00', '', '2025-07-20 20:38:50', 2),
(6, 'MP2508010001', NULL, '5500.00', '500.00', '5500.00', '10000.00', '4500.00', '', '2025-08-01 04:27:23', 2),
(7, 'MP2508010002', NULL, '8000.00', '1000.00', '8000.00', '10000.00', '2000.00', '', '2025-08-01 04:36:22', 2),
(8, 'MP2508010003', NULL, '8000.00', '0.00', '8000.00', '10000.00', '2000.00', '', '2025-08-01 05:52:30', 2),
(9, 'MP2508110001', NULL, '11500.00', '0.00', '11500.00', '15000.00', '3500.00', '', '2025-08-11 08:13:44', 2),
(11, 'MP2508120002', NULL, '9000.00', '0.00', '9000.00', '10000.00', '1000.00', '', '2025-08-12 11:49:57', 2),
(12, 'MP2508120003', NULL, '6000.00', '0.00', '6000.00', '20000.00', '14000.00', '', '2025-08-12 12:06:36', 2),
(13, 'MP2508120004', NULL, '30000.00', '0.00', '30000.00', '50000.00', '20000.00', '', '2025-08-12 12:37:47', 2),
(15, 'MP2508120005', NULL, '60000.00', '0.00', '60000.00', '100000.00', '40000.00', '', '2025-08-12 12:39:46', 2),
(16, 'MP2508120006', NULL, '2500.00', '0.00', '2500.00', '5000.00', '2500.00', '', '2025-08-12 13:10:29', 2),
(17, 'MP2508120007', NULL, '2500.00', '0.00', '2500.00', '5000.00', '2500.00', '', '2025-08-12 13:20:19', 2),
(22, 'MP2508120008', NULL, '3000.00', '0.00', '3000.00', '10000.00', '7000.00', '', '2025-08-12 13:44:47', 2),
(24, 'MP2508120009', 1, '3000.00', '0.00', '3000.00', '100000.00', '97000.00', '', '2025-08-12 13:49:40', 2),
(27, 'MP2508120010', 2, '15000.00', '0.00', '15000.00', '20000.00', '5000.00', '', '2025-08-12 13:56:36', 2),
(39, 'MP2508120011', 1, '6000.00', '0.00', '6000.00', '10000.00', '4000.00', '', '2025-08-12 14:38:08', 2),
(40, 'MP2508170001', 1, '2000.00', '0.00', '2000.00', '5000.00', '3000.00', '', '2025-08-17 05:29:59', 2),
(41, 'MP2508170002', 1, '4000.00', '0.00', '4000.00', '10000.00', '6000.00', '', '2025-08-17 05:32:34', 2),
(42, 'MP2508170003', 1, '7000.00', '0.00', '7000.00', '10000.00', '3000.00', '', '2025-08-17 06:19:54', 2),
(44, 'MP2508170004', 1, '2000.00', '0.00', '2000.00', '2000.00', '0.00', '', '2025-08-17 06:31:14', 2),
(45, 'MP2508170005', 1, '3000.00', '0.00', '3000.00', '5000.00', '2000.00', '', '2025-08-17 06:46:32', 4),
(46, 'MP2508170006', 1, '3000.00', '0.00', '3000.00', '5000.00', '2000.00', '', '2025-08-17 15:00:56', 2),
(47, 'MP2508170007', 1, '3000.00', '0.00', '3000.00', '10000.00', '7000.00', '', '2025-08-17 15:11:57', 2),
(48, 'MP2508170008', 1, '3500.00', '0.00', '3500.00', '10000.00', '6500.00', '', '2025-08-17 15:17:01', 2),
(49, 'MP2508180001', 1, '5500.00', '0.00', '5500.00', '10000.00', '4500.00', '', '2025-08-18 14:39:42', 2),
(50, 'MP2508180002', 2, '2000.00', '0.00', '2000.00', '5000.00', '3000.00', '', '2025-08-18 14:49:32', 2),
(83, 'MP2508200001', 1, '2000.00', '0.00', '2000.00', '2000.00', '0.00', '', '2025-08-20 01:08:54', 2),
(84, 'MP2508200002', 1, '4000.00', '0.00', '4000.00', '5000.00', '1000.00', '', '2025-08-20 01:29:39', 2),
(85, 'MP2508200003', 1, '7000.00', '0.00', '7000.00', '10000.00', '3000.00', '', '2025-08-20 04:53:23', 3),
(86, 'MP2508210001', 1, '3000.00', '0.00', '3000.00', '5000.00', '2000.00', '', '2025-08-21 06:21:40', 2),
(87, 'MP2508210002', 1, '4000.00', '0.00', '4000.00', '5000.00', '1000.00', '', '2025-08-21 06:48:31', 2),
(88, 'MP2508210003', 1, '4000.00', '0.00', '4000.00', '5000.00', '1000.00', '', '2025-08-21 06:54:56', 2),
(89, 'MP2508220001', 1, '5000.00', '0.00', '5000.00', '10000.00', '5000.00', '', '2025-08-22 06:47:50', 2);

-- --------------------------------------------------------

--
-- Table structure for table `t_sale_detail`
--

CREATE TABLE `t_sale_detail` (
  `sale_detail_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `discount_item` decimal(10,2) DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_sale_detail`
--

INSERT INTO `t_sale_detail` (`sale_detail_id`, `sale_id`, `item_id`, `price`, `qty`, `discount_item`, `total`) VALUES
(2, 2, 1, '3000.00', 3, '0.00', '9000.00'),
(3, 3, 2, '3000.00', 4, '0.00', '12000.00'),
(7, 6, 2, '3000.00', 2, '0.00', '6000.00'),
(8, 7, 1, '3000.00', 1, '0.00', '3000.00'),
(9, 7, 2, '3000.00', 2, '0.00', '6000.00'),
(10, 8, 1, '3000.00', 1, '0.00', '3000.00'),
(11, 8, 4, '2500.00', 2, '0.00', '5000.00'),
(12, 9, 1, '3000.00', 1, '0.00', '3000.00'),
(13, 9, 1, '3000.00', 1, '0.00', '3000.00'),
(14, 9, 1, '3000.00', 1, '0.00', '3000.00'),
(15, 9, 4, '2500.00', 1, '0.00', '2500.00'),
(17, 11, 1, '3000.00', 1, '0.00', '3000.00'),
(18, 11, 2, '3000.00', 2, '0.00', '6000.00'),
(19, 12, 1, '3000.00', 2, '0.00', '6000.00'),
(20, 13, 1, '3000.00', 10, '0.00', '30000.00'),
(21, 15, 1, '3000.00', 20, '0.00', '60000.00'),
(22, 16, 4, '2500.00', 1, '0.00', '2500.00'),
(23, 17, 4, '2500.00', 1, '0.00', '2500.00'),
(24, 22, 2, '3000.00', 1, '0.00', '3000.00'),
(25, 24, 1, '3000.00', 1, '0.00', '3000.00'),
(26, 27, 1, '3000.00', 2, '0.00', '6000.00'),
(27, 27, 2, '3000.00', 3, '0.00', '9000.00'),
(32, 39, 2, '3000.00', 2, '0.00', '6000.00'),
(33, 40, 6, '2000.00', 1, '0.00', '2000.00'),
(34, 41, 7, '2000.00', 2, '0.00', '4000.00'),
(35, 42, 1, '3000.00', 1, '0.00', '3000.00'),
(36, 42, 7, '2000.00', 2, '0.00', '4000.00'),
(37, 44, 7, '2000.00', 1, '0.00', '2000.00'),
(38, 45, 1, '3000.00', 1, '0.00', '3000.00'),
(39, 46, 1, '3000.00', 1, '0.00', '3000.00'),
(40, 47, 1, '3000.00', 1, '0.00', '3000.00'),
(41, 48, 2, '3500.00', 1, '0.00', '3500.00'),
(42, 49, 2, '3500.00', 1, '0.00', '3500.00'),
(43, 49, 6, '2000.00', 1, '0.00', '2000.00'),
(44, 50, 7, '2000.00', 1, '0.00', '2000.00'),
(79, 83, 8, '2000.00', 1, '0.00', '2000.00'),
(80, 84, 12, '1000.00', 1, '0.00', '1000.00'),
(81, 84, 66, '3000.00', 1, '0.00', '3000.00'),
(82, 85, 11, '3000.00', 1, '0.00', '3000.00'),
(83, 85, 2, '4000.00', 1, '0.00', '4000.00'),
(84, 86, 1, '3000.00', 1, '0.00', '3000.00'),
(85, 87, 6, '2000.00', 1, '0.00', '2000.00'),
(86, 87, 9, '2000.00', 1, '0.00', '2000.00'),
(87, 88, 2, '4000.00', 1, '0.00', '4000.00'),
(88, 89, 1, '3000.00', 1, '0.00', '3000.00'),
(89, 89, 6, '2000.00', 1, '0.00', '2000.00');

-- --------------------------------------------------------

--
-- Table structure for table `t_stock`
--

CREATE TABLE `t_stock` (
  `stock_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `type` enum('in','out') NOT NULL,
  `detail` text DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_stock`
--

INSERT INTO `t_stock` (`stock_id`, `item_id`, `type`, `detail`, `supplier_id`, `qty`, `date`, `user_id`) VALUES
(8, 6, 'in', 'Kulakan', 2, 24, '2025-08-17 00:00:00', 2),
(9, 6, 'out', 'rusak', 2, 1, '2025-08-17 00:00:00', 2),
(10, 7, 'in', 'Kulakan', 2, 36, '2025-08-17 00:00:00', 2),
(11, 1, 'in', 'Kulakan', 2, 100, '2025-08-17 00:00:00', 2),
(12, 2, 'in', 'Kulakan', 2, 120, '2025-08-17 00:00:00', 2),
(13, 4, 'in', 'Kualakan', 2, 20, '2025-08-19 00:00:00', 2),
(14, 8, 'in', 'Kulakan', 2, 24, '2025-08-19 00:00:00', 2),
(15, 9, 'in', 'Kulakan', 2, 24, '2025-08-19 00:00:00', 2),
(16, 10, 'in', 'Kulakan', 2, 36, '2025-08-19 00:00:00', 2),
(17, 11, 'in', 'Kulakan', 2, 12, '2025-08-19 00:00:00', 2),
(18, 12, 'in', 'Kulakan', 2, 18, '2025-08-19 00:00:00', 2),
(19, 13, 'in', 'Kulakan', 2, 48, '2025-08-19 00:00:00', 2),
(20, 14, 'in', 'Kulakan', 2, 5, '2025-08-19 00:00:00', 2),
(21, 15, 'in', 'Kulakan', 2, 4, '2025-08-19 00:00:00', 2),
(22, 16, 'in', 'Kulakan', 2, 12, '2025-08-19 00:00:00', 2),
(23, 17, 'in', 'Kulakan', 2, 18, '2025-08-19 00:00:00', 2),
(24, 18, 'in', 'Kulakan', 2, 21, '2025-08-19 00:00:00', 2),
(25, 19, 'in', 'Kulakan', 2, 23, '2025-08-19 00:00:00', 2),
(26, 20, 'in', 'Kulakan', 2, 24, '2025-08-19 00:00:00', 2),
(27, 21, 'in', 'Kulakan', 2, 20, '2025-08-19 00:00:00', 2),
(28, 22, 'in', 'Kulakan', 2, 24, '2025-08-19 00:00:00', 2),
(29, 23, 'in', 'Kulakan', 2, 24, '2025-08-19 00:00:00', 2),
(30, 24, 'in', 'Kulakan', 2, 10, '2025-08-19 00:00:00', 2),
(31, 25, 'in', 'Kulakan', 2, 18, '2025-08-19 00:00:00', 2),
(32, 26, 'in', 'Kulakan', 2, 12, '2025-08-19 00:00:00', 2),
(33, 27, 'in', 'Kulakan', 2, 12, '2025-08-19 00:00:00', 2),
(34, 28, 'in', 'Kulakan', 2, 8, '2025-08-19 00:00:00', 2),
(35, 29, 'in', 'Kulakan', 2, 31, '2025-08-19 00:00:00', 2),
(36, 30, 'in', 'Kulakan', 2, 28, '2025-08-19 00:00:00', 2),
(37, 31, 'in', 'Kulakan', 2, 80, '2025-08-19 00:00:00', 2),
(38, 32, 'in', 'Kulakan', 2, 48, '2025-08-19 00:00:00', 2),
(39, 33, 'in', 'Kulakan', 2, 20, '2025-08-19 00:00:00', 2),
(40, 34, 'in', 'Kulakan', 2, 23, '2025-08-19 00:00:00', 2),
(41, 35, 'in', 'Kulakan', 2, 18, '2025-08-19 00:00:00', 2),
(42, 36, 'in', 'titipan', 6, 20, '2025-08-19 00:00:00', 2),
(43, 37, 'in', 'titipan', 6, 20, '2025-08-19 00:00:00', 2),
(44, 38, 'in', 'titipan', 6, 20, '2025-08-19 00:00:00', 2),
(45, 39, 'in', 'titipan', 6, 20, '2025-08-19 00:00:00', 2),
(46, 40, 'in', 'titipan', 6, 20, '2025-08-19 00:00:00', 2),
(47, 41, 'in', 'Kulakan', 2, 24, '2025-08-19 00:00:00', 2),
(48, 42, 'in', 'titipan', 6, 30, '2025-08-19 00:00:00', 2),
(49, 43, 'in', 'Kulakan', 2, 24, '2025-08-19 00:00:00', 2),
(50, 44, 'in', 'Kulakan', 2, 24, '2025-08-19 00:00:00', 2),
(51, 45, 'in', 'Kulakan', 2, 24, '2025-08-19 00:00:00', 2),
(52, 46, 'in', 'Kulakan', 2, 12, '2025-08-19 00:00:00', 2),
(53, 47, 'in', 'Kulakan', 2, 36, '2025-08-19 00:00:00', 2),
(54, 48, 'in', 'Kulakan', 2, 36, '2025-08-19 00:00:00', 2),
(55, 49, 'in', 'Kulakan', 2, 12, '2025-08-19 00:00:00', 2),
(56, 50, 'in', 'Kulakan', 2, 12, '2025-08-19 00:00:00', 2),
(57, 51, 'in', 'Kulakan', 2, 20, '2025-08-19 00:00:00', 2),
(58, 52, 'in', 'Kulakan', 2, 20, '2025-08-19 00:00:00', 2),
(59, 53, 'in', 'Kulakan', 2, 20, '2025-08-19 00:00:00', 2),
(60, 54, 'in', 'Kulakan', 2, 12, '2025-08-19 00:00:00', 2),
(61, 55, 'in', 'Kulakan', 2, 20, '2025-08-19 00:00:00', 2),
(62, 56, 'in', 'Kulakan', 2, 20, '2025-08-19 00:00:00', 2),
(63, 57, 'in', 'Kulakan', 2, 24, '2025-08-19 00:00:00', 2),
(64, 58, 'in', 'Kulakan', 2, 24, '2025-08-19 00:00:00', 2),
(65, 59, 'in', 'Kulakan', 2, 24, '2025-08-19 00:00:00', 2),
(66, 60, 'in', 'Kulakan', 2, 20, '2025-08-19 00:00:00', 2),
(67, 61, 'in', 'Kulakan', 2, 24, '2025-08-19 00:00:00', 2),
(68, 62, 'in', 'Kulakan', 2, 24, '2025-08-19 00:00:00', 2),
(69, 63, 'in', 'Kulakan', 2, 24, '2025-08-19 00:00:00', 2),
(70, 64, 'in', 'Kulakan', 2, 46, '2025-08-19 00:00:00', 2),
(71, 65, 'in', 'Kulakan', 2, 40, '2025-08-19 00:00:00', 2),
(72, 66, 'in', 'Kulakan', 2, 40, '2025-08-19 00:00:00', 2),
(73, 67, 'in', 'Kulakan', 2, 40, '2025-08-19 00:00:00', 2),
(74, 68, 'in', 'Kulakan', 2, 40, '2025-08-19 00:00:00', 2),
(75, 69, 'in', 'Kulakan', 2, 40, '2025-08-19 00:00:00', 2),
(76, 70, 'in', 'Kulakan', 2, 9, '2025-08-19 00:00:00', 2),
(77, 71, 'in', 'Kulakan', 2, 12, '2025-08-19 00:00:00', 2),
(78, 72, 'in', 'Kulakan', 2, 8, '2025-08-19 00:00:00', 2),
(79, 74, 'in', 'titipan', 3, 60, '2025-08-19 00:00:00', 2),
(80, 74, 'out', 'patah', 3, 1, '2025-08-19 00:00:00', 2),
(81, 75, 'in', 'titipan', 4, 60, '2025-08-19 00:00:00', 2),
(82, 76, 'in', 'titipan', 5, 60, '2025-08-19 00:00:00', 2),
(83, 77, 'in', 'Kulakan', 2, 7, '2025-08-19 00:00:00', 2),
(84, 6, 'in', 'tambahan', 2, 2, '2025-08-19 00:00:00', 2),
(85, 78, 'in', 'Kulakan', 2, 24, '2025-08-19 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `username`, `password`, `address`, `level`) VALUES
(2, 'Alief Wahyulianto', 'Alief Wahyulianto', '7a19dcb8aafe5df387f4c5a2e6a36a5e1be5289b', 'Purbalingga', 1),
(3, 'Shiina Mahiru', 'shiina', '874c0ac75f323057fe3b7fb3f5a8a41df2b94b1d', 'Jepang', 2),
(4, 'Narto', 'Narto', 'd7b2313b9fef19193e98c7dbcfe96d28a7fbcbad', 'Purbalingga', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `p_category`
--
ALTER TABLE `p_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `p_item`
--
ALTER TABLE `p_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `p_unit`
--
ALTER TABLE `p_unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `t_cart`
--
ALTER TABLE `t_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `t_sale`
--
ALTER TABLE `t_sale`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `t_sale_detail`
--
ALTER TABLE `t_sale_detail`
  ADD PRIMARY KEY (`sale_detail_id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `t_stock`
--
ALTER TABLE `t_stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `p_category`
--
ALTER TABLE `p_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `p_item`
--
ALTER TABLE `p_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `p_unit`
--
ALTER TABLE `p_unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `t_sale`
--
ALTER TABLE `t_sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `t_sale_detail`
--
ALTER TABLE `t_sale_detail`
  MODIFY `sale_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `t_stock`
--
ALTER TABLE `t_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `p_item`
--
ALTER TABLE `p_item`
  ADD CONSTRAINT `p_item_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `p_category` (`category_id`),
  ADD CONSTRAINT `p_item_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `p_unit` (`unit_id`);

--
-- Constraints for table `t_cart`
--
ALTER TABLE `t_cart`
  ADD CONSTRAINT `t_cart_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `p_item` (`item_id`),
  ADD CONSTRAINT `t_cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `t_sale`
--
ALTER TABLE `t_sale`
  ADD CONSTRAINT `t_sale_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `t_sale_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `t_sale_detail`
--
ALTER TABLE `t_sale_detail`
  ADD CONSTRAINT `t_sale_detail_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `t_sale` (`sale_id`),
  ADD CONSTRAINT `t_sale_detail_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `p_item` (`item_id`);

--
-- Constraints for table `t_stock`
--
ALTER TABLE `t_stock`
  ADD CONSTRAINT `t_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `p_item` (`item_id`),
  ADD CONSTRAINT `t_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  ADD CONSTRAINT `t_stock_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
