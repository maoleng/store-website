-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th2 17, 2022 lúc 08:48 AM
-- Phiên bản máy phục vụ: 8.0.27
-- Phiên bản PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `trang_web_ban_hang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activities`
--

CREATE TABLE `activities` (
  `id` int NOT NULL,
  `admin_id` int NOT NULL,
  `activity` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `object` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `object_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `activities`
--

INSERT INTO `activities` (`id`, `admin_id`, `activity`, `object`, `object_name`, `time`) VALUES
(1, 1, 'thêm', 'sản phẩm', 'Cây lau nhà', '2022-02-17 03:15:13'),
(2, 1, 'cập nhật', 'đơn hàng', 'số 3', '2022-02-17 03:15:13'),
(3, 2, 'thêm', 'nhà cung cấp', 'sản sản', '2022-02-17 03:27:51'),
(4, 2, 'xóa', 'nhà cung cấp', '', '2022-02-17 03:37:44'),
(5, 2, 'thêm', 'nhà cung cấp', 'cascsacacasccacascas', '2022-02-17 03:40:32'),
(6, 2, 'xóa', 'nhà cung cấp', 'cascsacacasccacascas', '2022-02-17 03:40:39'),
(7, 2, 'cập nhật', 'nhà cung cấp', 'số 3', '2022-02-17 03:43:45'),
(8, 2, 'thêm', 'sản phẩm', 'Sản phẩm mới nhất', '2022-02-17 03:47:39'),
(9, 2, 'thêm', 'sản phẩm', 'Cây chổi new', '2022-02-17 03:49:57'),
(10, 2, 'thêm', 'thẻ', 'thẻ mới', '2022-02-17 03:49:57'),
(11, 2, 'thêm', 'thẻ', 'thẻ oke', '2022-02-17 03:49:57'),
(12, 2, 'cập nhật', 'nhà cung cấp', 'Fisslerrrr', '2022-02-17 04:04:01'),
(13, 2, 'cập nhật', 'sản phẩm', 'Cây lau nh5555555 ', '2022-02-17 04:04:34'),
(14, 2, 'xóa', 'sản phẩm', 'Cây chổi new', '2022-02-17 04:05:44'),
(15, 2, 'duyệt', 'đơn hàng', 'số 10', '2022-02-17 04:08:46'),
(16, 2, 'hoàn thành', 'đơn hàng', 'số 10', '2022-02-17 04:08:52'),
(17, 2, 'hủy', 'đơn hàng', 'số 12', '2022-02-17 04:08:58'),
(18, 2, 'xóa', 'thẻ', 'khỏi sản phẩm Cây lau nh5555555 ', '2022-02-17 04:16:30'),
(19, 2, 'xóa', 'thẻ', '', '2022-02-17 04:19:07'),
(20, 2, 'xóa', 'thẻ', 'thẻ mới', '2022-02-17 04:19:19'),
(21, 2, 'xóa', 'sản phẩm', 'Cây chổi new', '2022-02-17 04:19:22'),
(22, 2, 'xóa', 'thẻ', 'khỏi sản phẩm Cây chổi new', '2022-02-17 04:19:25'),
(23, 2, 'xóa', 'sản phẩm', 'Cây chổi new', '2022-02-17 04:20:33'),
(24, 2, 'xóa', 'sản phẩm', 'san pham moi', '2022-02-17 04:21:17'),
(25, 2, 'xóa', 'sản phẩm', 'san pham moi', '2022-02-17 04:21:23'),
(26, 2, 'xóa', 'sản phẩm', 'san pham moi', '2022-02-17 04:21:23'),
(27, 2, 'xóa', 'sản phẩm', 'san pham moi', '2022-02-17 04:21:23'),
(28, 2, 'xóa', 'sản phẩm', 'san pham moi', '2022-02-17 04:21:23'),
(29, 2, 'xóa', 'sản phẩm', 'san pham moi', '2022-02-17 04:30:25'),
(30, 2, 'xóa', 'thẻ', 'khỏi sản phẩm san pham moi', '2022-02-17 04:34:01'),
(31, 2, 'xóa', 'thẻ', '', '2022-02-17 04:40:15'),
(32, 2, 'xóa', 'thẻ', 'cacsac', '2022-02-17 04:42:01'),
(33, 2, 'xóa', 'thẻ', 'cacsac khỏi sản phẩm Cây lau nh5555555 ', '2022-02-17 04:42:06'),
(34, 2, 'xóa', 'thẻ', '', '2022-02-17 04:42:15'),
(35, 2, 'xóa', 'thẻ', 'cs khỏi sản phẩm Cây lau nh5555555 ', '2022-02-17 04:43:46'),
(36, 2, 'xóa', 'thẻ', '', '2022-02-17 04:43:50'),
(37, 2, 'xóa', 'thẻ', '', '2022-02-17 04:47:30'),
(38, 2, 'xóa', 'thẻ', 'sc khỏi sản phẩm Cây lau nh5555555 ', '2022-02-17 04:48:11'),
(39, 2, 'xóa', 'thẻ', 'sc', '2022-02-17 04:48:19'),
(40, 2, 'đổi tên', 'thẻ', ' thành Vật dụng WCC', '2022-02-17 04:58:28'),
(41, 2, 'đổi tên', 'thẻ', ' thành Vật dụng WC', '2022-02-17 04:58:48'),
(42, 2, 'đổi tên', 'thẻ', 'Vật dụng WC thành Vật dụng WCCCCC', '2022-02-17 04:59:36'),
(43, 2, 'đổi tên', 'thẻ', 'Vật dụng WCCCCC thành Vật dụng WC', '2022-02-17 04:59:41'),
(44, 2, 'xóa', 'thẻ', 'ác', '2022-02-17 05:05:36'),
(45, 2, 'xóa', 'thẻ', 'ác khỏi sản phẩm Cây lau nh5555555 ', '2022-02-17 05:05:39'),
(46, 2, 'xóa', 'thẻ', 'ác', '2022-02-17 05:05:45'),
(47, 2, 'xóa', 'thẻ', 'sacasc khỏi sản phẩm Cây lau nh5555555 ', '2022-02-17 05:12:02'),
(48, 2, 'xóa', 'thẻ', 'sacasc', '2022-02-17 05:12:05'),
(49, 2, 'xóa', 'thẻ', 'sac khỏi sản phẩm Cây lau nh5555555 ', '2022-02-17 05:12:08'),
(50, 2, 'xóa', 'thẻ', 'sac', '2022-02-17 05:12:10'),
(51, 2, 'xóa', 'thẻ', 'csa', '2022-02-17 05:12:51'),
(52, 2, 'xóa', 'thẻ', 'sa', '2022-02-17 05:12:51'),
(53, 2, 'xóa', 'thẻ', 'asc', '2022-02-17 05:12:52'),
(54, 2, 'xóa', 'thẻ', 'cnasjkcnajcc', '2022-02-17 05:12:53'),
(55, 2, 'xóa', 'thẻ', 'csa', '2022-02-17 05:14:14'),
(56, 2, 'xóa', 'thẻ', 'as', '2022-02-17 05:14:14'),
(57, 2, 'thêm', 'thẻ', 'sac', '2022-02-17 05:16:16'),
(58, 2, 'thêm', 'thẻ', 'sac vào Cây lau nh5555555 ', '2022-02-17 05:16:16'),
(59, 2, 'thêm', 'thẻ', 'sa vào Cây lau nh5555555 ', '2022-02-17 05:16:16'),
(60, 2, 'thêm', 'thẻ', 'ca vào Cây lau nh5555555 ', '2022-02-17 05:16:16'),
(61, 2, 'thêm', 'thẻ', 'Nhà bếp vào Nồi cơm điện Sunhouse 1.8L SHD8602', '2022-02-17 05:25:01'),
(62, 2, 'xóa', 'thẻ', 'Nhà bếp khỏi sản phẩm Cây lau nh5555555 ', '2022-02-17 05:28:41'),
(63, 2, 'thêm', 'thẻ', 'Nhà bếp vào Cây lau nh5555555 ', '2022-02-17 05:30:28'),
(64, 2, 'xóa', 'thẻ', 'Nhà bếp khỏi sản phẩm Cây lau nhà COTONG 90CM SIÊU SẠCH BODOCA', '2022-02-17 05:30:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `password` text COLLATE utf8mb4_general_ci NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `level`) VALUES
(1, 'admin', 'admin@gmail.com', 'qwer1234', 0),
(2, 'superadmin', 'superadmin@gmail.com', 'qwer1234', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
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
-- Đang đổ dữ liệu cho bảng `customers`
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
-- Cấu trúc bảng cho bảng `forgot_password`
--

CREATE TABLE `forgot_password` (
  `customer_id` int NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `forgot_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `manufacturers`
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
-- Cấu trúc bảng cho bảng `products`
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
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `manufacturer_id`) VALUES
(2, 'Cây lau nh5555555 ', 'Cây lau nhà có thân bằng inoxx cứng cáp, chiều dài 128 cm dễ sử dụng.\r\nTay cầm bọc nhựa chống trơn trượt, thân cây có khóa chắc chắn, có móc treo cất giữ.\r\nBông lau nhà bằng sợi cotton bền chắc, thấm hút tốt, giặt rửa dễ dàng.\r\nThương hiệu DMX - độc quyền Điện máy XANH, sản xuất tại Việt Nam.', 40000, 'images/1639849341.jpg', 8),
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
(33, 'san pham moi', '1cas56c1sa65c1as65', 50, 'images/1644299379.jpg', 3),
(34, 'Sản phẩm mới nhất', 'c1as56c1sa65c1sa6c1as65c1as65', 50, 'images/1645069659.jpg', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_type`
--

CREATE TABLE `product_type` (
  `product_id` int NOT NULL,
  `type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_type`
--

INSERT INTO `product_type` (`product_id`, `type_id`) VALUES
(2, 19),
(7, 19),
(2, 20),
(13, 21),
(11, 22),
(34, 22),
(3, 23),
(6, 23),
(2, 43),
(2, 44);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `receipts`
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
-- Đang đổ dữ liệu cho bảng `receipts`
--

INSERT INTO `receipts` (`id`, `customer_id`, `receiver_name`, `receiver_phone`, `receiver_address`, `status`, `order_time`, `total_price`) VALUES
(8, 2, 'hydra ', '0123456789', 'Le Loi', 3, '2022-01-24 11:53:52', 43954000),
(9, 2, 'Huu Loc', '0159478236', 'Nguyen Hue', 5, '2022-02-02 08:18:35', 5568000),
(10, 2, 'Kim Hue', '0369852147', 'Gia Lai', 5, '2022-01-20 12:03:00', 23280000),
(11, 1, 'Huu Loc', '012346798', 'Le Loi', 4, '2022-01-21 09:53:36', 499000),
(12, 1, 'Nguyen Ti', '015947826', 'Nguyen Thai Hoc', 3, '2021-12-26 09:53:58', 11899000),
(13, 16, 'Ho Ngoc Han', '0065165165', 'Nguyen Thai Hoc', 3, '2021-12-05 09:56:34', 649000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `receipt_detail`
--

CREATE TABLE `receipt_detail` (
  `receipt_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `receipt_detail`
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
-- Cấu trúc bảng cho bảng `types`
--

CREATE TABLE `types` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(43, 'cascsa'),
(20, 'Cây lau nhà'),
(18, 'Chảo'),
(17, 'Chổi'),
(22, 'Máy hút bụi'),
(19, 'Nhà bếp'),
(16, 'Nồi cơm'),
(44, 'sac'),
(23, 'Vật dụng WC'),
(21, 'Đèn');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Chỉ mục cho bảng `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`);

--
-- Chỉ mục cho bảng `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`product_id`,`type_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Chỉ mục cho bảng `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `receipt_detail`
--
ALTER TABLE `receipt_detail`
  ADD PRIMARY KEY (`receipt_id`,`product_id`),
  ADD KEY `receipt_id` (`receipt_id`,`product_id`),
  ADD KEY `receipt_detail_ibfk_1` (`product_id`);

--
-- Chỉ mục cho bảng `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `types`
--
ALTER TABLE `types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD CONSTRAINT `forgot_password_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`);

--
-- Các ràng buộc cho bảng `product_type`
--
ALTER TABLE `product_type`
  ADD CONSTRAINT `product_type_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `product_type_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `receipt_detail`
--
ALTER TABLE `receipt_detail`
  ADD CONSTRAINT `receipt_detail_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `receipt_detail_ibfk_2` FOREIGN KEY (`receipt_id`) REFERENCES `receipts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
