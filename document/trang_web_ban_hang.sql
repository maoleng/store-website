-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 10, 2022 at 11:37 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trang_web_ban_hang`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int NOT NULL,
  `activity` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `activity`, `time`) VALUES
(3, 'superadmin đã thêm sản phẩm Nhà sản xuất mới', '2022-01-29 15:57:05'),
(4, 'superadmin đã thêm nhà sản xuất Vinamilk', '2022-01-29 16:04:23'),
(6, 'superadmin đã cập nhật nhà sản xuất Fissler', '2022-01-30 09:36:59'),
(7, 'superadmin đã xóa nhà sản xuất csaacssacsaccsacsasca', '2022-01-30 09:38:46'),
(8, 'superadmin đã xóa sản phẩm cacsacsacascsacasOKE', '2022-01-30 09:40:35'),
(9, 'superadmin đã thêm sản phẩm ', '2022-01-30 09:43:43'),
(10, 'superadmin đã xóa sản phẩm cacsasaccsasacsaccsa', '2022-01-30 09:44:30'),
(11, 'superadmin đã thêm sản phẩm okOKEsca', '2022-01-30 09:44:45'),
(12, 'superadmin đã cập nhật sản phẩm Cây lau nhà DMX CL005555 ', '2022-01-30 09:45:38'),
(16, 'superadmin đã cập nhật sản phẩm Cây lau nhà DMX CL0055 ', '2022-01-31 05:03:06'),
(17, 'superadmin đã cập nhật trạng thái của đơn hàng số 8 thành trạng thái đã giao', '2022-01-31 05:04:38'),
(18, 'superadmin đã hủy đơn hàng số 9', '2022-01-31 05:04:43'),
(19, 'superadmin đã cập nhật sản phẩm Cây lau nhà DMX CL005 ', '2022-01-31 05:12:51'),
(20, 'superadmin đã cập nhật sản phẩm Cây lau nhà DMX CL0055 ', '2022-01-31 05:12:54'),
(21, 'superadmin đã cập nhật sản phẩm Cây lau nhà DMX CL00555 ', '2022-01-31 05:12:59'),
(22, 'superadmin đã cập nhật trạng thái của đơn hàng số 8 thành trạng thái đang giao', '2022-01-31 16:08:52'),
(23, 'superadmin đã cập nhật trạng thái của đơn hàng số 9 thành trạng thái đang giao', '2022-01-31 16:08:59'),
(24, 'superadmin đã cập nhật nhà sản xuất Fisslerrrr', '2022-02-07 14:03:26'),
(25, 'superadmin đã cập nhật sản phẩm Cây lau nhà DMXxx CL00555 ', '2022-02-07 14:59:12'),
(26, 'superadmin đã cập nhật trạng thái của đơn hàng số 8 thành trạng thái đã giao', '2022-02-07 15:07:50'),
(27, 'superadmin đã hủy đơn hàng số 12', '2022-02-07 15:12:28'),
(28, 'superadmin đã thêm sản phẩm san pham moi', '2022-02-08 05:49:39'),
(29, 'superadmin đã cập nhật trạng thái của đơn hàng số 11 thành trạng thái đã giao', '2022-02-08 19:51:00'),
(30, 'superadmin đã cập nhật trạng thái của đơn hàng số 12 thành trạng thái đang giao', '2022-02-08 19:55:28'),
(31, 'superadmin đã cập nhật trạng thái của đơn hàng số 11 thành trạng thái đang giao', '2022-02-08 19:56:29'),
(32, 'superadmin đã cập nhật trạng thái của đơn hàng số 11 thành trạng thái đang giao', '2022-02-08 19:57:02'),
(33, 'superadmin đã cập nhật trạng thái của đơn hàng số 12 thành trạng thái đang giao', '2022-02-08 19:57:18'),
(34, 'superadmin đã cập nhật trạng thái của đơn hàng số 11 thành trạng thái đang giao', '2022-02-08 19:57:49'),
(35, 'superadmin đã cập nhật trạng thái của đơn hàng số 12 thành trạng thái đang giao', '2022-02-08 19:58:04'),
(36, 'superadmin đã cập nhật trạng thái của đơn hàng số 11 thành trạng thái đang giao', '2022-02-08 20:00:26'),
(37, 'superadmin đã cập nhật trạng thái của đơn hàng số 12 thành trạng thái đang giao', '2022-02-08 20:03:09'),
(38, 'superadmin đã cập nhật trạng thái của đơn hàng số 11 thành trạng thái đang giao', '2022-02-08 20:04:27'),
(39, 'superadmin đã cập nhật trạng thái của đơn hàng số 12 thành trạng thái đang giao', '2022-02-08 20:05:11'),
(40, 'superadmin đã cập nhật trạng thái của đơn hàng số 11 thành trạng thái đang giao', '2022-02-08 20:09:17'),
(41, 'superadmin đã cập nhật trạng thái của đơn hàng số 12 thành trạng thái đang giao', '2022-02-08 20:09:40'),
(42, 'superadmin đã cập nhật trạng thái của đơn hàng số 11 thành trạng thái đang giao', '2022-02-08 20:10:03'),
(43, 'superadmin đã cập nhật trạng thái của đơn hàng số 12 thành trạng thái đang giao', '2022-02-08 20:10:29'),
(44, 'superadmin đã cập nhật trạng thái của đơn hàng số 12 thành trạng thái đang giao', '2022-02-08 20:10:45'),
(45, 'superadmin đã cập nhật trạng thái của đơn hàng số 11 thành trạng thái đang giao', '2022-02-08 20:10:58'),
(46, 'superadmin đã cập nhật trạng thái của đơn hàng số 12 thành trạng thái đang giao', '2022-02-08 20:11:07'),
(47, 'superadmin đã cập nhật trạng thái của đơn hàng số 12 thành trạng thái đang giao', '2022-02-08 20:11:15'),
(48, 'superadmin đã cập nhật trạng thái của đơn hàng số 11 thành trạng thái đang giao', '2022-02-08 20:11:37'),
(49, 'superadmin đã cập nhật trạng thái của đơn hàng số 11 thành trạng thái đang giao', '2022-02-08 20:11:41'),
(50, 'superadmin đã cập nhật trạng thái của đơn hàng số 12 thành trạng thái đang giao', '2022-02-08 20:12:45'),
(51, 'superadmin đã cập nhật trạng thái của đơn hàng số 8 thành trạng thái đang giao', '2022-02-08 20:13:36'),
(52, 'superadmin đã hủy đơn hàng số 8', '2022-02-08 20:13:58'),
(53, 'superadmin đã cập nhật trạng thái của đơn hàng số 13 thành trạng thái đang giao', '2022-02-09 14:52:07'),
(54, 'superadmin đã cập nhật trạng thái của đơn hàng số 13 thành trạng thái đang giao', '2022-02-09 14:52:43'),
(55, 'superadmin đã cập nhật trạng thái của đơn hàng số 13 thành trạng thái đã giao', '2022-02-09 14:52:58'),
(56, 'superadmin đã cập nhật trạng thái của đơn hàng số 13 thành trạng thái đang giao', '2022-02-09 14:53:32'),
(57, 'superadmin đã cập nhật trạng thái của đơn hàng số 13 thành trạng thái đã giao', '2022-02-09 14:53:57'),
(58, 'superadmin đã cập nhật trạng thái của đơn hàng số 13 thành trạng thái đang giao', '2022-02-09 14:54:39'),
(59, 'superadmin đã cập nhật trạng thái của đơn hàng số 13 thành trạng thái đã giao', '2022-02-09 14:54:52'),
(60, 'superadmin đã cập nhật trạng thái của đơn hàng số 10 thành trạng thái đã giao', '2022-02-09 14:55:42'),
(61, 'superadmin đã cập nhật trạng thái của đơn hàng số 8 thành trạng thái đang giao', '2022-02-09 14:57:24'),
(62, 'superadmin đã cập nhật trạng thái của đơn hàng số 9 thành trạng thái đang giao', '2022-02-09 14:57:41'),
(63, 'superadmin đã cập nhật trạng thái của đơn hàng số 10 thành trạng thái đang giao', '2022-02-09 14:57:59'),
(64, 'superadmin đã cập nhật trạng thái của đơn hàng số 9 thành trạng thái đã giao', '2022-02-09 14:58:20'),
(65, 'superadmin đã cập nhật trạng thái của đơn hàng số 10 thành trạng thái đang giao', '2022-02-09 14:58:32'),
(66, 'superadmin đã cập nhật trạng thái của đơn hàng số 9 thành trạng thái đang giao', '2022-02-09 14:58:44'),
(67, 'superadmin đã cập nhật trạng thái của đơn hàng số 8 thành trạng thái đang giao', '2022-02-09 15:01:29'),
(68, 'superadmin đã cập nhật trạng thái của đơn hàng số 8 thành trạng thái đang giao', '2022-02-09 15:02:36'),
(69, 'superadmin đã cập nhật trạng thái của đơn hàng số 10 thành trạng thái đang giao', '2022-02-09 15:06:00'),
(70, 'superadmin đã cập nhật trạng thái của đơn hàng số 9 thành trạng thái đang giao', '2022-02-09 15:06:02'),
(71, 'superadmin đã cập nhật trạng thái của đơn hàng số 10 thành trạng thái đã giao', '2022-02-09 15:06:03'),
(72, 'superadmin đã cập nhật trạng thái của đơn hàng số 8 thành trạng thái đã giao', '2022-02-09 15:07:24'),
(73, 'superadmin đã hủy đơn hàng số 12', '2022-02-09 15:07:26'),
(74, 'superadmin đã cập nhật trạng thái của đơn hàng số 13 thành trạng thái đang giao', '2022-02-09 15:08:45'),
(75, 'superadmin đã cập nhật trạng thái của đơn hàng số 13 thành trạng thái đã giao', '2022-02-09 15:08:47'),
(76, 'superadmin đã cập nhật trạng thái của đơn hàng số 13 thành trạng thái đang giao', '2022-02-09 15:35:10'),
(77, 'superadmin đã cập nhật trạng thái của đơn hàng số 13 thành trạng thái đã giao', '2022-02-09 15:35:12'),
(78, 'superadmin đã hủy đơn hàng số 13', '2022-02-09 15:39:35'),
(79, 'superadmin đã hủy đơn hàng số 8', '2022-02-09 15:40:35'),
(80, 'superadmin đã cập nhật sản phẩm Bơm Thông hút bồn cầuu', '2022-02-10 05:51:27'),
(81, 'superadmin đã cập nhật sản phẩm Bơm Thông hút bồn cầu', '2022-02-10 05:51:47'),
(82, 'superadmin đã cập nhật sản phẩm Bơm Thông hút bồn cầuu', '2022-02-10 05:52:16'),
(83, 'superadmin đã cập nhật sản phẩm Bơm Thông hút bồn cầu', '2022-02-10 05:52:33'),
(84, 'superadmin đã cập nhật sản phẩm Bơm Thông hút bồn cầuu', '2022-02-10 05:53:25'),
(85, 'superadmin đã cập nhật sản phẩm Bơm Thông hút bồn cầuuu', '2022-02-10 05:54:52'),
(86, 'superadmin đã cập nhật sản phẩm Bơm Thông hút bồn cầu', '2022-02-10 05:55:38'),
(87, 'superadmin đã cập nhật trạng thái của đơn hàng số 11 thành trạng thái đang giao', '2022-02-10 05:56:59'),
(88, 'superadmin đã cập nhật sản phẩm Bơm Thông hút bồn cầuuu', '2022-02-10 06:08:54'),
(89, 'superadmin đã cập nhật sản phẩm Bơm Thông hút bồn cầu', '2022-02-10 06:09:09'),
(90, 'superadmin đã cập nhật sản phẩm Bơm Thông hút bồn cầuuu', '2022-02-10 06:09:36'),
(91, 'superadmin đã cập nhật sản phẩm Bơm Thông hút bồn cầuuuu', '2022-02-10 06:10:13'),
(92, 'superadmin đã cập nhật sản phẩm Bơm Thông hút bồn cầu', '2022-02-10 06:10:42'),
(93, 'superadmin đã xóa sản phẩm Bơm Thông hút bồn cầu', '2022-02-10 06:11:14'),
(94, 'superadmin đã xóa sản phẩm Bơm Thông hút bồn cầu', '2022-02-10 06:13:56'),
(95, 'superadmin đã xóa sản phẩm Bơm Thông hút bồn cầu', '2022-02-10 06:14:08'),
(96, 'superadmin đã xóa sản phẩm Bơm Thông hút bồn cầu', '2022-02-10 06:14:28'),
(97, 'superadmin đã xóa sản phẩm csacsacsacsacsacasc', '2022-02-10 09:28:32'),
(98, 'superadmin đã xóa sản phẩm csacsacsacsacsacasc', '2022-02-10 09:28:34'),
(99, 'superadmin đã xóa sản phẩm Cây lau nhà DMXxx CL00555 ', '2022-02-10 10:03:36'),
(100, 'superadmin đã xóa sản phẩm Cây lau nhà DMXxx CL00555 ', '2022-02-10 10:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `password` text COLLATE utf8mb4_general_ci NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `level`) VALUES
(1, 'admin', 'admin@gmail.com', 'qwer1234', 0),
(2, 'superadmin', 'superadmin@gmail.com', 'qwer1234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `address` text COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `gender`, `dob`, `email`, `phone`, `address`, `password`, `token`) VALUES
(1, 'Hydra', 'male', '2021-12-15', 'longthanh@gmail.com', '', '', 'Long1234', ''),
(2, 'hydraaa', 'male', '2000-09-02', 'longthanh1@gmail.com', '', '', 'Long1234', 'user_61c02f2f3092f9.427462291639984943'),
(16, 'Bui huu Loc', 'Nam', '2022-01-01', 'feature451@gmail.com', '0123465798', 'Le lOi tuy Hoa', '123456', NULL),
(17, 'casca', 'Nam', '2021-12-28', 'cascas@csacsa', '4324234', 'cascsa', 'ca', NULL),
(18, 'casca', 'Nam', '2022-01-05', 'casca@cas', '32432', 'cascsa', 'cas', NULL),
(19, 'csaacasc', 'Nam', '2021-12-29', 'acavdfb@vsdvs', '2341421', 'cascsa', 'caca', NULL),
(20, 'cascsa', 'Nam', '2022-01-03', 'ccsac@rgdfh', '42342432', 'sacas', 'csaca', NULL),
(21, 'cascasc', 'Nam', '2021-12-29', 'sacascr32@facas', '43423', 'csa', 'csacas', NULL),
(22, 'cascsa', 'Nam', '2021-12-29', 'cascsacc@vsdvds', '23123', 'cascsa', 'saca', NULL),
(23, 'cascsacas', 'Nam', '2021-12-30', 'avdsvds@gf', '42342', 'csacsa', 'cas', NULL),
(24, 'caascasca', 'Nam', '2022-06-07', 'avdsvsd@vdvs', '025621651', 'sdvdsvds', 'vdsvdsvds', NULL),
(25, 'casa', 'Nam', '2021-12-28', 'scsa@csac', '4324234', 'cascsacsa', 'casca', NULL),
(26, 'cascasc', 'Nam', '2022-01-21', 'acacacsaa@hh65y6', '4234234', 'cv', 'sdcdscsd', NULL),
(27, 'cacsa', 'Nam', '2022-01-05', 'cascasca@vdvdsv', '32423432', 'ccascas', 'cacascascsa', NULL),
(28, 'casc', 'Nam', '2022-01-04', 'ascascaca@vsdvs.com', '156156', 'dcsd', 'cdscsd', NULL),
(29, 'casc', 'Nam', '2021-12-29', 'ascsaca@dvsvsd', '42423', 'casc', 'asas', NULL),
(30, 'casc', 'Nam', '2022-01-05', 'cascsac@vdsvsd', '41414', 'cacas', 'csa', NULL),
(31, 'câcscascascas', 'Nam', '2022-01-18', 'bfdbdf@bdfbdf.com', '5665615615', 'csacascascas', 'cdsavfsdv43', NULL),
(32, '123cascas', 'Nam', '2021-12-29', 'vdsvs@vsvsd', '8681156', 'cascas', 'csacsa', NULL),
(33, 'cascsac', 'Nam', '2021-12-29', 'ascas@cvdvsdvs', '23423423', 'sacas', 'casc', NULL),
(34, 'cascsa', 'Nam', '2021-12-29', 'csacascas@12321312', '565156', 'cassc', 'acsa', NULL),
(35, 'bdfbfdbdfb', 'Nam', '2021-12-29', 'fwvc@vsdvds', '265156', 'casc', 'ascsa', NULL),
(36, 'cascqwfq', 'Nam', '2022-01-05', 'cascasc@vsdvsdv', 'r23423', 'cascs', 'acsa', NULL),
(37, 'csaacssacsac', 'Nam', '2021-12-30', 'casccsa@cdcsa', '2134234213', 'csaca', 'ccsacsascacsacsa', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `forgot_password`
--

CREATE TABLE `forgot_password` (
  `customer_id` int NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `forgot_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`, `address`, `phone`, `image`) VALUES
(3, 'Fisslerrrr', 'Đức', '0984123456', 'https://lh3.googleusercontent.com/proxy/o7ojTkGBn2LbPieb7TRVw6wHlnpHYCpXuABugZgbZBxMTX6XCwc3VRPoQkdEJ9UkiIlc6w1R79gJCelYZGPjGoydR42T-Nx35lsYCwMlYLlGnrMQ'),
(4, 'Silit', 'Đức', '0987654321', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Silit-logo.svg/2560px-Silit-logo.svg.png'),
(7, 'Bodoca', 'Việt Nam', '0369258147', 'https://thietbimiennam.com/wp-content/uploads/2016/10/logo-bodoca.png'),
(8, 'Điện máy xanh', 'Việt Nam', '095184762', 'https://prices.vn/photos/7/store/ma-giam-gia-dienmayxanh.png'),
(9, 'SunHouse', 'Việt Nam', '0159236478', 'https://upload.wikimedia.org/wikipedia/vi/e/ed/Logo_cong_ty_sunhouse.png'),
(22, 'Nhà sản xuất mới', 'Phú Yênnnn', '0984123465', 'http://tapchimoitruong.vn/Lists/Articles/Attachments/49083/image001.jpg'),
(23, 'Vinamilk', 'Việt Nammmmm', '0984564987', 'https://blog.topcv.vn/wp-content/uploads/2018/01/lam-viec-tai-vinamilk-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `manufacturer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `manufacturer_id`) VALUES
(2, 'Cây lau nhà DMXxx CL00555 ', 'Cây lau nhà có thân bằng inoxx cứng cáp, chiều dài 128 cm dễ sử dụng.\r\nTay cầm bọc nhựa chống trơn trượt, thân cây có khóa chắc chắn, có móc treo cất giữ.\r\nBông lau nhà bằng sợi cotton bền chắc, thấm hút tốt, giặt rửa dễ dàng.\r\nThương hiệu DMX - độc quyền Điện máy XANH, sản xuất tại Việt Nam.', 40000, 'images/1639849341.jpg', 8),
(3, 'Cây lau nhà xoay 360 ĐỘ SUNHOUSE KS-MO350I', 'Chất liệu cao cấp, an toàn cho sức khỏe\r\nCán bằng inox 201 có tay cầm bọc nhựa PP chắc chắn\r\nBộ phận tạo chuyển động bằng thép và nhựa POM siêu bền\r\nBông lau bằng sợi Microfiber thấm hút nước tốt', 459000, 'images/1639849505.jpg', 9),
(4, 'Nồi từ FISSLER PRO COLLECTION HIGH STOCK POT 28CM 14L', 'Nhập khẩu nguyên chiếc CHLB Đức - Made in Germany\r\nNồi từ Fissler làm từ vật liệu thép không gỉ chất lượng cao 18/10 dày, đặc, truyền nhiệt hiệu quả\r\nĐáy nồi Cookstar Allstove, nấu được trên mọi loại bếp, kể cả bếp từ, hạn chế cháy cục bộ, không cong vênh, lồi lõm\r\nLõi nhôm dày hoa lỏng ở 600ºC trước khi dập các lớp với nhau bởi một lực 1500 tấn\r\nĐường kính nồi 28cm\r\nTổng dung tích 14L\r\nTrọng lượng nồi 4.97Kg\r\nChiều cao nồi 24cm\r\nThước đo mực nước đến 12.5L\r\nVung inox thiết kế lõm lòng chảo giúp đối lưu hơi nước, chịu được 220ºC\r\nTay cầm cách nhiệt, thiết kế thẩm mỹ dạng đũa, cầm nắm thoải mái, chịu lực 150Kg\r\nMiệng rót chống tràn hiệu quả, cực khít với vung\r\nHiệu quả đun nấu nhanh, bảo toàn dinh dưỡng\r\nNồi nấu được trong lò nướng và vệ sinh an toàn với máy rửa bát.', 11500000, 'images/1639849625.jpg', 3),
(5, 'Bộ nồi chảo Silit Pisa 10 Món', 'Nắp vung kính cường lực bền đẹp thuận tiện quan sát đồ ăn\r\nPhù hợp với mọi loại: bếp từ, bếp hồng ngoại…\r\nTỏa nhiệt đều, giữ nhiệt lâu\r\nAn toàn cho sức khỏe\r\nĐáy 3 lớp bắt từ nhanh giúp tiết kiệm điện\r\nXuất xứ: Nhập khẩu từ Đức', 6540000, 'images/1639849720.1000x1000', 4),
(6, 'Cây lau nhà COTONG 90CM SIÊU SẠCH BODOCA', 'Xuất xứ: hàng Việt Nam\r\n\r\nBao gồm: cán, khung và giẻ\r\n\r\n– Chất liệu:\r\n\r\n+ Cán bằng inox, đầu kẹp inox\r\n\r\n+ Khung giẻ nhựa tối\r\n\r\n+ Giẻ bằng sợi Sợi Microfiber mềm, sợi cattong\r\n\r\n– Kích thước:\r\n\r\n+Cán: dài 1,5m\r\n\r\n+ Giẻ : (L)900mm x (H) 150 mm', 250000, 'images/1639849881.jpg', 7),
(7, 'Nồi cơm điện Sunhouse 1.8L SHD8602', 'Thân nồi làm bằng tôn phủ nhũ in hoa chống gỉ bền bỉ \r\nLòng nồi đúc từ hợp kim nhôm phủ lớp chống dính Whitford\r\nMâm nhiệt lớn cùng công suất 700W giúp nhiệt tỏa đều\r\nDung tích 1.8L, phù hợp với gia đình 4 – 6 thành viên\r\n2 chế độ Nấu (cook) và Hâm nóng (warm) dễ dàng sử dụng\r\nThiết kế nhỏ gọn, không chiếm nhiều diện tích', 399000, 'images/1639922713.jpg', 9),
(8, 'Nồi cơm điện KALITE KL-618 đa chức năng', '2 chức năng nấu và giữ ẩm\r\nChất liệu nắp và đáy nhựa ABS\r\nThân vỏ chất liệu hợp kim cao cấp\r\nChất liệu mâm nhiệt cong bền bỉ\r\nLòng niêu truyền nhiệt nhanh, giữ nhiệt đều\r\nĐai ủ trong 8h\r\nQuai sách thường, nắp phụ\r\nNút bấm cơ kiểu dáng mới\r\nDung tích 1.8L', 800000, 'images/1639990119.jpg', 9),
(9, 'Nồi cơm điện 1.8L E2RC1-320W', 'Lòng nồi bằng hợp kim nhôm tráng men chống dính, dễ vệ sinh\r\nXửng hấp đi kèm tiện dụng', 569000, 'images/1639990163.jpg', 8),
(10, 'Bơm Thông hút bồn cầu', 'Sản phẩm là 1 cái bơm\r\nDùng để Thông tắc bồn cầu\r\nKhi bồn cầu bị tắc bạn cần đổ 1 gói Thông cống vào để khoảng 1-2 tiếng xả nước rồi cho bơm vào bơm\r\nĐảm bảo hết tắc\r\nNếu vẫn tắc bạn cần đổ 2 chai CoCa cô la vào để qua đêm, rồi dùng bơm hút sẽ hết tắc', 80000, 'images/1639990223.jpg', 8),
(11, 'Máy hút bụi không túi FC9351/01', 'Máy hút bụi không túi Philips Dòng 3000 với kích cỡ nhỏ gọn, sử dụng công nghệ PowerCyclone 5 và đầu hút MultiClean cho hiệu suất hút cao giúp bạn vệ sinh sạch sẽ mọi ngóc ngách bên trong nhà', 3499000, 'images/1639990283.jpg', 8),
(12, 'Tủ 2 Cửa 1 Ngăn Kéo Modulo Home KAI1334-2', 'Tủ 2 Cửa 1 Ngăn Kéo Modulo Home KAI1334-2 được làm hoàn toàn bằng chất liệu gỗ công nghiệp cao cấp phủ giấy PU vân gỗ, không cong vênh, không co ngót, có độ bền cao và rất thân thiện với môi trường. Qua quá trình xử lý, bề mặt tủ có độ bóng đẹp và nhẵn mịn, các góc cạnh được gia công kỹ lưỡng để không gây trầy xước cho người dùng trong suốt quá trình sử dụng.\r\nTủ được thiết kế với 3 ngăn (trong đó có 01 ngăn kéo phía trên, 2 ngăn dưới kèm cửa đóng) tiện lợi để bạn có thể phân loại và sắp xếp đồ đạc phù hợp với nhiều mục đích sử dụng khác nhau. Bạn có thể sử dụng các ngăn tủ để cất giữ những bộ quần áo, lưu trữ sách, các loại băng đĩa hay đồ lưu niệm một cách gọn gàng và trang nhã. Mỗi ngăn kéo, cửa tủ đều có một tay cầm nhỏ gọn và chắc chắn, đóng mở rất chắc chắn và dễ dàng.\r\nTủ Modulo Home Kai - 1334-2 có màu nâu tự nhiên của gỗ mang đến vẻ đẹp sang trọng. Bạn có thể kết hợp tủ với bàn, ghế hay kệ cùng tông màu để không gian nội thất trong nhà thêm sang trọng, hiện đại.\r\nSản phẩm được giao hàng tháo rời, đóng gói trong thùng carton. Khách hàng lắp ráp sản phẩm tại nhà theo hướng dẫn lắp ráp kèm theo bao bì. Dịch vụ lắp ráp tại nhà có thu phí khu vực Tp. HCM, điện thoại 028 2223 7788', 1250000, 'images/1639990377.jpg', 7),
(13, 'Đèn ngủ LED di động TaoTronics TT-DL23, pin 4000mAh, 110 giờ sử dụng, ánh sáng 360 độ', 'Đèn ngủ di động cao cấp ánh sáng 360 độ.\r\nThiết kế không dây an toàn và di động: Đèn sử dụng bộ điều khiển tích hợp sẵn để có thêm tính di động ở nhà, trong văn phòng và ngay cả khi không có ổ cắm điện xung quanh, như cắm trại và dã ngoại ngoài trời.\r\nPin 110 giờ: Được hưởng lợi từ pin sạc có thể sạc lại với dung lượng lên tới 4000mAh sẽ vượt xa nhu cầu và mong đợi của bạn - lên tới 110 giờ với ánh sáng luôn ở độ sáng tối thiểu.\r\nÁnh sáng 360 ° thân thiện với mắt: Đừng lo lắng về việc đánh thức người đang ngủ bên cạnh bạn (bao gồm cả em bé của bạn) Với bảng điều khiển 360 ° cung cấp tia sáng đồng đều và tinh tế hơn.\r\nĐiều chỉnh độ sáng: Đặt ngón tay của bạn trên bảng điều khiển cảm ứng và tùy chỉnh độ sáng. Tận hưởng nhiều lựa chọn hơn mà không cần phải cài đặt trước.\r\nĐiều khiển một chạm: Dễ dàng bật / tắt đèn bằng cách nhấn một lần bảng điều khiển cảm ứng được đặt ở phía trên cùng của đèn.\r\nSản phẩm chính hãng thương hiệu TaoTronics (Mỹ) bảo hành 12 tháng toàn quốc.', 390000, 'images/1639991046.jpg', 8),
(14, 'câcscascsacas', 'cấccascacsacsa', 16165, 'images/1642674086.png', 3),
(15, 'San pham cuc ki oke', 'okeokeokeokeoeko', 50, 'images/1643209293.png', 8),
(16, 'San pham keeee', '156161561651651', 155, 'images/1643209398.png', 3),
(17, 'csaaaaaaaaaaaaaaaa', 'acassssssssssssss', 23, 'images/1643209555.jpg', 3),
(18, 'bbhjbjhbchjasbcjh', 'sdbhcjbajsdbhcjbaj', 50, 'images/1643209706.png', 3),
(19, 'bbhjbjhbchjasbcjh', 'sdbhcjbajsdbhcjbaj', 50, 'images/1643209719.png', 3),
(20, 'bbhjbjhbchjasbcjh', 'sdbhcjbajsdbhcjbaj', 50, 'images/1643209735.png', 3),
(21, 'bbhjbjhbchjasbcjh', 'sdbhcjbajsdbhcjbaj', 50, 'images/1643209781.png', 3),
(22, 'bbhjbjhbchjasbcjh', 'sdbhcjbajsdbhcjbaj', 50, 'images/1643209952.png', 3),
(23, 'bbhjbjhbchjasbcjh', 'sdbhcjbajsdbhcjbaj', 50, 'images/1643209994.png', 3),
(24, 'bbhjbjhbchjasbcjh', 'sdbhcjbajsdbhcjbaj', 50, 'images/1643210040.png', 3),
(25, 'bbhjbjhbchjasbcjh', 'sdbhcjbajsdbhcjbaj', 50, 'images/1643210049.png', 3),
(26, 'bbhjbjhbchjasbcjh', 'sdbhcjbajsdbhcjbaj', 50, 'images/1643210061.png', 3),
(27, 'bbhjbjhbchjasbcjh', 'sdbhcjbajsdbhcjbaj', 50, 'images/1643210140.png', 3),
(28, 'bbhjbjhbchjasbcjh', 'sdbhcjbajsdbhcjbaj', 50, 'images/1643210154.png', 3),
(29, 'csacsacsacsacsacasc', 'cascsacsacsacsacsacsac', 34, 'images/1643374463.png', 4),
(32, 'okOKEsca', 'dvdscas4acsasc5', 50, 'images/1643535885.png', 3),
(33, 'san pham moi', '1cas56c1sa65c1as65', 50, 'images/1644299379.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `product_id` int NOT NULL,
  `type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`product_id`, `type_id`) VALUES
(4, 19),
(2, 20),
(13, 21),
(11, 22),
(2, 23),
(6, 23),
(10, 23);

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `receiver_name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `receiver_phone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `receiver_address` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL,
  `order_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `customer_id`, `receiver_name`, `receiver_phone`, `receiver_address`, `status`, `order_time`, `total_price`) VALUES
(8, 2, 'hydra ', '0123456789', 'Le Loi', 3, '2022-01-24 11:53:52', 43954000),
(9, 2, 'Huu Loc', '0159478236', 'Nguyen Hue', 2, '2022-02-02 08:18:35', 5568000),
(10, 2, 'Kim Hue', '0369852147', 'Gia Lai', 2, '2022-01-20 12:03:00', 23280000),
(11, 1, 'Huu Loc', '012346798', 'Le Loi', 4, '2022-12-21 09:53:36', 499000),
(12, 1, 'Nguyen Ti', '015947826', 'Nguyen Thai Hoc', 2, '2022-12-26 09:53:58', 11899000),
(13, 16, 'Ho Ngoc Han', '0065165165', 'Nguyen Thai Hoc', 3, '2022-12-05 09:56:34', 649000);

-- --------------------------------------------------------

--
-- Table structure for table `receipt_detail`
--

CREATE TABLE `receipt_detail` (
  `receipt_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipt_detail`
--

INSERT INTO `receipt_detail` (`receipt_id`, `product_id`, `quantity`) VALUES
(8, 2, 4),
(8, 3, 6),
(8, 4, 3),
(8, 5, 1),
(9, 6, 1),
(9, 9, 1),
(9, 11, 1),
(9, 12, 1),
(10, 2, 7),
(10, 4, 2),
(11, 2, 10),
(11, 3, 1),
(12, 4, 1),
(12, 7, 1),
(13, 9, 1),
(13, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(20, 'Cây lau nhà'),
(18, 'Chảo'),
(17, 'Chổi'),
(22, 'Máy hút bụi'),
(19, 'Nhà bếp'),
(16, 'Nồi cơm'),
(23, 'Vật dụng WC'),
(21, 'Đèn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Indexes for table `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`product_id`,`type_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `receipt_detail`
--
ALTER TABLE `receipt_detail`
  ADD PRIMARY KEY (`receipt_id`,`product_id`),
  ADD KEY `receipt_id` (`receipt_id`,`product_id`),
  ADD KEY `receipt_detail_ibfk_1` (`product_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD CONSTRAINT `forgot_password_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`);

--
-- Constraints for table `product_type`
--
ALTER TABLE `product_type`
  ADD CONSTRAINT `product_type_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `product_type_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `receipt_detail`
--
ALTER TABLE `receipt_detail`
  ADD CONSTRAINT `receipt_detail_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `receipt_detail_ibfk_2` FOREIGN KEY (`receipt_id`) REFERENCES `receipts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
