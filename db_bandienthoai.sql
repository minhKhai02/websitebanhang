-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2024 at 01:26 PM
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
-- Database: `db_bandienthoai`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`) VALUES
(41, 1, 33, 1, '2024-03-21 17:31:57'),
(42, 1, 19, 1, '2024-03-23 07:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`) VALUES
(15, 'SAMSUNG', '', 'SamSung', 0, 1, 'samsung2.png', 'SamSung', 'SamSung', 'SamSung', '2024-03-17 02:08:45'),
(16, 'XIAOMI', '', 'XIAOMI', 0, 1, '1710842002.png', 'XIAOMI', 'XIAOMI', 'XIAOMI', '2024-03-19 09:53:22'),
(17, 'IPHONE', '', 'Iphone', 0, 1, 'bee_art_logo_apple_2 copy.png', 'Iphone', 'Iphone', 'Iphone', '2024-03-20 15:23:43'),
(19, 'OPPO', '', 'OPPO', 0, 1, 'Screenshot 2024-03-21 215103.png', 'SDGSG', 'SDGSD', 'SDGSDG', '2024-03-21 14:42:42');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `tracking_no` varchar(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pincode` int(255) NOT NULL,
  `total_price` int(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `comments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `tracking_no`, `user_id`, `name`, `email`, `phone`, `address`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `comments`, `created_at`) VALUES
(6, 'sharmacoder369838017852', 2, 'Khải', 'minhkhai11225@gmail.com', 338017852, 'Ahuihiii', 56165016, 62999999, 'COD', '', 1, NULL, '2024-03-20 04:07:55'),
(7, 'sharmacoder378538017852', 2, 'Khải', 'minhkhai11225@gmail.com', 338017852, 'Ahuihiii', 56165016, 62999999, 'COD', '', 2, NULL, '2024-03-20 04:08:32'),
(8, 'sharmacoder712538017852', 2, 'Khải1', 'bapohsusu@gmail.com', 338017852, 'ddrdherd', 56165016, 62999999, 'COD', '', 1, NULL, '2024-03-20 04:12:27'),
(9, 'sharmacoder975838017852', 2, 'dfbdfb', 'bapohsusu@gmail.com', 338017852, 'sgvsegse', 45, 62999999, 'COD', '', 0, NULL, '2024-03-20 04:14:58'),
(10, 'sharmacoder657938017852', 1, 'Khải', 'minhkhai11225@gmail.com', 338017852, 'iubiubiibiu', 56165016, 217999999, 'COD', '', 2, NULL, '2024-03-20 04:15:55'),
(11, 'sharmacoder554938017852', 6, 'Khải3', 'sdbsb@gmail.com', 338017852, 'dgvegrge', 56165016, 42999999, 'COD', '', 0, NULL, '2024-03-20 04:16:33'),
(12, 'sharmacoder805438017852', 6, 'Khải1', 'bapohsusu@gmail.com', 338017852, 'sdvsr', 0, 489999, 'COD', '', 0, NULL, '2024-03-20 04:31:24'),
(13, 'sharmacoder504538017852', 2, 'Khải', 'minhkhai11225@gmail.com', 338017852, 'REBERBERB', 56165016, 489999, 'COD', '', 0, NULL, '2024-03-20 10:37:11'),
(15, 'madon190754', 2, 'dfbdfb', 'dfdf@gmail.com', 5454, 'drdbherger', 56165016, 42999999, 'COD', '', 0, NULL, '2024-03-20 11:05:58'),
(16, 'madon878638017852', 2, 'Khải', 'minhkhai11225@gmail.com', 338017852, 'huhuhu', 25555, 94489998, 'COD', '', 0, NULL, '2024-03-20 14:21:14'),
(17, 'madon189538017852', 1, 'Khải', 'minhkhai11225@gmail.com', 338017852, 'dbrdhbrenhe', 1654651651, 489999, 'Thanh Toán Khi Nhận Hàng', '', 0, NULL, '2024-03-20 15:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(255) NOT NULL,
  `prod_id` int(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `price` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`) VALUES
(1, 7, 19, 1, 20000000, '2024-03-20 04:08:32'),
(2, 7, 17, 1, 42999999, '2024-03-20 04:08:32'),
(3, 8, 19, 1, 20000000, '2024-03-20 04:12:27'),
(4, 8, 17, 1, 42999999, '2024-03-20 04:12:27'),
(5, 9, 19, 1, 20000000, '2024-03-20 04:14:58'),
(6, 9, 17, 1, 42999999, '2024-03-20 04:14:58'),
(7, 10, 17, 1, 42999999, '2024-03-20 04:15:55'),
(8, 10, 19, 1, 20000000, '2024-03-20 04:15:55'),
(9, 10, 18, 5, 31000000, '2024-03-20 04:15:55'),
(10, 11, 17, 1, 42999999, '2024-03-20 04:16:33'),
(11, 12, 14, 1, 489999, '2024-03-20 04:31:24'),
(12, 13, 14, 1, 489999, '2024-03-20 10:37:11'),
(13, 14, 14, 1, 489999, '2024-03-20 10:37:42'),
(14, 15, 17, 1, 42999999, '2024-03-20 11:05:58'),
(15, 16, 19, 1, 20000000, '2024-03-20 14:21:14'),
(16, 16, 18, 1, 31000000, '2024-03-20 14:21:14'),
(17, 16, 17, 1, 42999999, '2024-03-20 14:21:14'),
(18, 16, 14, 1, 489999, '2024-03-20 14:21:14'),
(19, 17, 14, 1, 489999, '2024-03-20 15:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `small_description` varchar(5000) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `status`, `trending`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`) VALUES
(18, 15, ' Samsung Galaxy S24 Ultra 5G', ' Samsung Galaxy S24 Ultra 5G', 'Màn hình:\r\nCông nghệ màn hình:\r\nDynamic AMOLED 2X\r\nĐộ phân giải:\r\n2K+ (1440 x 3120 Pixels)\r\nMàn hình rộng:\r\n6.8\" - Tần số quét 120 Hz\r\nĐộ sáng tối đa:\r\n2600 nits\r\nMặt kính cảm ứng:\r\nKính cường lực Corning Gorilla Armor\r\nCamera sau\r\nĐộ phân giải:\r\nChính 200 MP & Phụ 50 MP, 12 MP, 10 MP\r\nQuay phim:\r\nHD 720p@30fps\r\nFullHD 1080p@60fps\r\nFullHD 1080p@30fps\r\nFullHD 1080p@240fps\r\nFullHD 1080p@120fps\r\n8K 4320p@30fps\r\n4K 2160p@60fps\r\n4K 2160p@30fps\r\n4K 2160p@120fps\r\nĐèn Flash:\r\nCó\r\nTính năng:\r\nẢnh Raw\r\nZoom quang học\r\nZoom kỹ thuật số\r\nXóa phông\r\nVideo chân dung\r\nVideo chuyên nghiệp\r\nTự động lấy nét (AF)\r\nTrôi nhanh thời gian (Time Lapse)\r\nToàn cảnh (Panorama)\r\nSuper HDR\r\nSiêu độ phân giải\r\n\r\nQuét mã QR\r\n\r\nQuay video hiển thị kép\r\n\r\nQuay Siêu chậm (Super Slow Motion)\r\n\r\nQuay chậm (Slow Motion)\r\n\r\nLàm đẹp\r\n\r\nGóc siêu rộng (Ultrawide)\r\n\r\nChụp ảnh chuyển động\r\n\r\nChụp một chạm\r\n\r\nChụp hẹn giờ\r\n\r\nChống rung quang học (OIS)\r\n\r\nChống rung kỹ thuật số (VDIS)\r\n\r\nChuyên nghiệp (Pro)\r\n\r\nBộ lọc màu\r\n\r\nBan đêm (Night Mode)\r\n\r\nCamera trước\r\n\r\nĐộ phân giải:\r\n12 MP\r\nTính năng:\r\n\r\nXóa phông\r\n\r\nVideo chân dung\r\n\r\nVideo chuyên nghiệp\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nQuay video HD\r\n\r\nQuay video Full HD\r\n\r\nQuay video 4K\r\n\r\nQuay chậm (Slow Motion)\r\n\r\nNhãn dán (AR Stickers)\r\n\r\nLàm đẹp\r\n\r\nGóc rộng (Wide)\r\n\r\nFlash màn hình\r\n\r\nChụp ảnh chuyển động\r\n\r\nChụp đêm\r\n\r\nChụp một chạm\r\n\r\nChụp hẹn giờ\r\n\r\nChụp bằng cử chỉ\r\n\r\nChân dung đêm\r\n\r\nBộ lọc màu\r\n\r\nHệ điều hành & CPU\r\n\r\nHệ điều hành:\r\nAndroid 14\r\nChip xử lý (CPU):\r\n\r\nSnapdragon 8 Gen 3 for Galaxy\r\nTốc độ CPU:\r\n3.39 GHz\r\nChip đồ họa (GPU):\r\n\r\nAdreno 750\r\nBộ nhớ & Lưu trữ\r\n\r\nRAM:\r\n12 GB\r\nDung lượng lưu trữ:\r\n\r\n256 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n\r\n229 GB\r\nDanh bạ:\r\n\r\nKhông giới hạn\r\nKết nối\r\n\r\nMạng di động:\r\n\r\nHỗ trợ 5G\r\nSIM:\r\n\r\n2 Nano SIM hoặc 2 eSIM hoặc 1 Nano SIM + 1 eSIM\r\nWifi:\r\nWi-Fi MIMO\r\n\r\nWi-Fi hotspot\r\n\r\nWi-Fi Direct\r\n\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\n\r\nDual-band (2.4 GHz/5 GHz)\r\n\r\nGPS:\r\nQZSS\r\n\r\nGPS\r\n\r\nGLONASS\r\n\r\nGALILEO\r\n\r\nBEIDOU\r\n\r\nBluetooth:\r\nv5.3\r\nCổng kết nối/sạc:\r\n\r\nType-C\r\nKết nối khác:\r\n\r\nNFC\r\nPin & Sạc\r\n\r\nDung lượng pin:\r\n\r\n5000 mAh\r\nLoại pin:\r\n\r\nLi-Ion\r\nHỗ trợ sạc tối đa:\r\n\r\n45 W\r\nCông nghệ pin:\r\n\r\nTiết kiệm pin\r\n\r\nSạc pin nhanh\r\n\r\nSạc ngược không dây\r\n\r\nSạc không dây\r\n\r\nTiện ích\r\n\r\nBảo mật nâng cao:\r\n\r\nMở khoá vân tay dưới màn hìnhMở khoá khuôn mặt\r\nTính năng đặc biệt:\r\n\r\nỨng dụng kép (Dual Messenger)\r\n\r\nĐa cửa sổ (chia đôi màn hình)\r\n\r\nÂm thanh Dolby Atmos\r\n\r\nÂm thanh AKG\r\n\r\nVision Booster\r\n\r\nTối ưu game (Game Booster)\r\n\r\nTrợ lý ảo Samsung Bixby\r\n\r\nTrợ lý ảo Google Assistant\r\n\r\nTrợ lý Note thông mình\r\n\r\nTrợ lý note quyền năng\r\n\r\nTrợ lý chỉnh ảnh\r\n\r\nTrợ lý chat thông minh\r\n\r\nThu nhỏ màn hình sử dụng một tay\r\n\r\nSamsung Pay\r\n\r\nSamsung DeX (Kết nối màn hình sử dụng giao diện tương tự PC)\r\n\r\nRay Tracing\r\n\r\nPhiên dịch trực tiếp\r\n\r\nMở rộng bộ nhớ RAM\r\n\r\nMàn hình luôn hiển thị AOD\r\n\r\nLoa kép\r\n\r\nKhông gian thứ hai (Thư mục bảo mật)\r\n\r\nKhoanh vùng search đa năng\r\n\r\nHệ thống tản nhiệt Vapor Chamber\r\n\r\nCử chỉ thông minh\r\n\r\nChặn tin nhắn\r\n\r\nChặn cuộc gọi\r\n\r\nChạm 2 lần tắt/sáng màn hình\r\n\r\nKháng nước, bụi:\r\n\r\nIP68\r\nGhi âm:\r\n\r\nGhi âm mặc địnhGhi âm cuộc gọi\r\nXem phim:\r\n\r\nWEBM\r\n\r\nMP4\r\n\r\nMKV\r\n\r\nM4V\r\n\r\nFLV\r\n\r\nAVI\r\n\r\n3GP\r\n\r\n3G2\r\n\r\nNghe nhạc:\r\n\r\nXMF\r\n\r\nWAV\r\n\r\nRTX\r\n\r\nRTTTL\r\n\r\nOTA\r\n\r\nOGG\r\n\r\nOGA\r\n\r\nMXMF\r\n\r\nMP3\r\n\r\nMidi\r\n\r\nM4A\r\n\r\nIMY\r\n\r\nFLAC\r\n\r\nAWB\r\n\r\nAPE\r\n\r\nAMR\r\n\r\nAAC\r\n\r\n3GA\r\n\r\nThông tin chung\r\n\r\nThiết kế:\r\n\r\nNguyên khối\r\nChất liệu:\r\n\r\nKhung Titan & Mặt lưng kính cường lực\r\nKích thước, khối lượng:\r\n\r\nDài 162.3 mm - Ngang 79 mm - Dày 8.6 mm - Nặng 232 g\r\nThời điểm ra mắt:\r\n\r\n01/2024\r\nHãng:\r\n\r\nSamsung. Xem thông tin hãng', 34000000, 31000000, '1711033365.jpg', 99, 0, 1, 'SamSung', 'samdung', 'sámung', '2024-03-18 05:01:50'),
(19, 16, 'Xiaomi 14 5G', 'Xiaomi 14 5G', 'Màn hình:\r\nCông nghệ màn hình	AMOLED\r\nĐộ phân giải	1.5K (1200 x 2670 Pixels)\r\nMàn hình rộng	6.36\" - Tần số quét 120 Hz\r\nĐộ sáng tối đa	3000 nits\r\nMặt kính cảm ứng	Kính cường lực Corning Gorilla Glass Victus\r\nCamera sau\r\nĐộ phân giải	Chính 50 MP & Phụ 50 MP, 50 MP\r\nQuay phim	\r\nHD 720p@960fps\r\n\r\nHD 720p@480fps\r\n\r\nHD 720p@30fps\r\n\r\nHD 720p@240fps\r\n\r\nHD 720p@120fps\r\n\r\nFullHD 1080p@960fps\r\n\r\nFullHD 1080p@60fps\r\n\r\nFullHD 1080p@30fps\r\n\r\nFullHD 1080p@240fps\r\n\r\nFullHD 1080p@120fps\r\n\r\n8K 4320p@24fps\r\n\r\n4K 2160p@60fps\r\n\r\n4K 2160p@30fps\r\n\r\n4K 2160p@24fps\r\n\r\nĐèn Flash	Có\r\nTính năng	\r\nẢnh Raw\r\n\r\nZoom quang học\r\n\r\nZoom kỹ thuật số\r\n\r\nXóa phông\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nToàn cảnh (Panorama)\r\n\r\nTilt-shift\r\n\r\nSiêu độ phân giải\r\n\r\nSiêu trăng\r\n\r\nSiêu cận (Macro)\r\n\r\nQuét tài liệu\r\n\r\nQuay chậm (Slow Motion)\r\n\r\nPhơi sáng\r\n\r\nLàm đẹp\r\n\r\nHDR\r\n\r\nGóc siêu rộng (Ultrawide)\r\n\r\nGoogle Lens\r\n\r\nChụp hẹn giờ\r\n\r\nChống rung quang học (OIS)\r\n\r\nChế độ đạo diễn\r\n\r\nChân dung đêm\r\n\r\nChuyên nghiệp (Pro)\r\n\r\nBộ lọc màu\r\n\r\nBan đêm (Night Mode)\r\n\r\nAI Camera\r\n\r\nXiaomi ProFocus\r\n\r\nCamera trước\r\nĐộ phân giải	32 MP\r\nTính năng	\r\nXóa phông\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nToàn cảnh (Panorama)\r\n\r\nQuay video HD\r\n\r\nQuay video Full HD\r\n\r\nQuay video 4K\r\n\r\nQuay chậm (Slow Motion)\r\n\r\nLàm đẹp\r\n\r\nHiệu ứng Bokeh\r\n\r\nHDR\r\n\r\nFlash màn hình\r\n\r\nChụp đêm\r\n\r\nChụp hẹn giờ\r\n\r\nBộ lọc màu\r\n\r\nHệ điều hành & CPU\r\nHệ điều hành	Android 14\r\nChip xử lý (CPU)	Snapdragon 8 Gen 3\r\nTốc độ CPU	1 nhân 3.3 GHz, 3 nhân 3.2 GHz, 3 nhân 3 GHz & 2 nhân 2.3 GHz\r\nChip đồ họa (GPU)	Đang cập nhật\r\nBộ nhớ & Lưu trữ\r\nRAM	12 GB\r\nDung lượng lưu trữ	256 GB\r\nDung lượng còn lại (khả dụng) khoảng	233 GB\r\nDanh bạ	Không giới hạn\r\nKết nối\r\nMạng di động	Hỗ trợ 5G\r\nSIM	2 Nano SIM\r\nWifi	\r\nWi-Fi MIMO\r\n\r\nWi-Fi hotspot\r\n\r\nWi-Fi Direct\r\n\r\nWi-Fi 7\r\n\r\nWi-Fi 6\r\n\r\nGPS	\r\nNavIC\r\n\r\nGLONASS\r\n\r\nGALILEO\r\n\r\nBEIDOU\r\n\r\nBluetooth	v5.4\r\nCổng kết nối/sạc	Type-C\r\nJack tai nghe	Type-C\r\nKết nối khác	\r\nOTG\r\n\r\nNFC\r\n\r\nHồng ngoại\r\n\r\nPin & Sạc\r\nDung lượng pin	4610 mAh\r\nLoại pin	Li-Po\r\nHỗ trợ sạc tối đa	90 W\r\nSạc kèm theo máy	90 W\r\nCông nghệ pin	\r\nTiết kiệm pin\r\n\r\nSạc pin nhanh\r\n\r\nSạc ngược không dây\r\n\r\nSạc không dây\r\n\r\nTiện ích\r\nBảo mật nâng cao	Mở khoá vân tay dưới màn hìnhMở khoá khuôn mặt\r\nTính năng đặc biệt	\r\nCông nghệ TrueColor\r\n\r\nỨng dụng kép (Nhân bản ứng dụng)\r\n\r\nĐo nhịp tim\r\n\r\nÂm thanh Hi-Res Audio\r\n\r\nÂm thanh Dolby Atmos\r\n\r\nTrợ lý ảo Google Assistant\r\n\r\nThu nhỏ màn hình sử dụng một tay\r\n\r\nMở rộng bộ nhớ RAM\r\n\r\nMàn hình luôn hiển thị AOD\r\n\r\nKhông gian thứ hai\r\n\r\nKhoá ứng dụng\r\n\r\nHệ thống làm mát Xiaomi IceLoop\r\n\r\nHDR10+\r\n\r\nHDR10\r\n\r\nDCI-P3\r\n\r\nCông nghệ hình ảnh Dolby Vision\r\n\r\nChạm 2 lần tắt/sáng màn hình\r\n\r\nKháng nước, bụi	IP68\r\nGhi âm	Ghi âm mặc địnhGhi âm cuộc gọi\r\nXem phim	\r\nWEBM\r\n\r\nMP4\r\n\r\nMKV\r\n\r\n3GP\r\n\r\nNghe nhạc	\r\nWAV\r\n\r\nOGG\r\n\r\nMP3\r\n\r\nFLAC\r\n\r\nAWB\r\n\r\nAPE\r\n\r\nAMR\r\n\r\nAAC\r\n\r\nThông tin chung\r\nThiết kế	Nguyên khối\r\nChất liệu	Đang cập nhật\r\nKích thước, khối lượng	Dài 152.8 mm - Ngang 71.5 mm - Dày 8.2 mm - Nặng 193 g\r\nThời điểm ra mắt	03/2024\r\nHãng	Xiaomi.', 22999999, 20000000, '1710842194.jpg', 99, 0, 1, '', 'Xiaomi 14 5G', 'Xiaomi 14 5G', '2024-03-19 09:56:34'),
(20, 17, 'iPhone 15 Pro Max', 'iPhone 15 Pro Max', 'Màn hình\r\n\r\nCông nghệ màn hình:\r\n\r\nOLED\r\nĐộ phân giải:\r\nSuper Retina XDR (1290 x 2796 Pixels)\r\nMàn hình rộng:\r\n\r\n6.7\" - Tần số quét 120 Hz\r\nĐộ sáng tối đa:\r\n2000 nits\r\nMặt kính cảm ứng:\r\n\r\nKính cường lực Ceramic Shield\r\nCamera sau\r\n\r\nĐộ phân giải:\r\nChính 48 MP & Phụ 12 MP, 12 MP\r\nQuay phim:\r\n\r\nHD 720p@30fps\r\n\r\nFullHD 1080p@60fps\r\n\r\nFullHD 1080p@30fps\r\n\r\n4K 2160p@60fps\r\n\r\n4K 2160p@30fps\r\n\r\nĐèn Flash:\r\n\r\nCó\r\nTính năng:\r\n\r\nẢnh Raw\r\n\r\nZoom quang học\r\n\r\nZoom kỹ thuật số\r\n\r\nXóa phông\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nToàn cảnh (Panorama)\r\n\r\nSmart HDR 5\r\n\r\nSiêu độ phân giải\r\n\r\nQuay chậm (Slow Motion)\r\n\r\nLive Photo\r\n\r\nGóc siêu rộng (Ultrawide)\r\n\r\nGóc rộng (Wide)\r\n\r\nDolby Vision HDR\r\n\r\nDeep Fusion\r\n\r\nCinematic\r\n\r\nChống rung quang học (OIS)\r\n\r\nBộ lọc màu\r\n\r\nBan đêm (Night Mode)\r\n\r\nCamera trước\r\n\r\nĐộ phân giải:\r\n12 MP\r\nTính năng:\r\n\r\nSmart HDR 5\r\n\r\nXóa phông\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nQuay video HD\r\n\r\nQuay video Full HD\r\n\r\nQuay video 4K\r\n\r\nNhãn dán (AR Stickers)\r\n\r\nLive Photo\r\n\r\nChụp đêm\r\n\r\nBộ lọc màu\r\n\r\nHệ điều hành & CPU\r\n\r\nHệ điều hành:\r\niOS 17\r\nChip xử lý (CPU):\r\n\r\nApple A17 Pro 6 nhân\r\nTốc độ CPU:\r\n3.78 GHz\r\nChip đồ họa (GPU):\r\n\r\nApple GPU 6 nhân\r\nBộ nhớ & Lưu trữ\r\n\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n\r\n256 GB\r\nDanh bạ:\r\n\r\nKhông giới hạn\r\nKết nối\r\n\r\nMạng di động:\r\n\r\nHỗ trợ 5G\r\nSIM:\r\n\r\n1 Nano SIM & 1 eSIM\r\nWifi:\r\nWi-Fi MIMO\r\n\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\n\r\n6 GHz\r\n\r\nGPS:\r\nQZSS\r\n\r\nNavIC\r\n\r\nGPS\r\n\r\nGLONASS\r\n\r\nGALILEO\r\n\r\nBEIDOU\r\n\r\nBluetooth:\r\nv5.3\r\nCổng kết nối/sạc:\r\n\r\nType-C\r\nJack tai nghe:\r\n\r\nType-C\r\nPin & Sạc\r\n\r\nDung lượng pin:\r\n\r\n4422 mAh\r\nLoại pin:\r\n\r\nLi-Ion\r\nHỗ trợ sạc tối đa:\r\n\r\n20 W\r\nCông nghệ pin:\r\n\r\nTiết kiệm pin\r\n\r\nSạc ngược không dây\r\n\r\nSạc không dây MagSafe\r\n\r\nTiện ích\r\n\r\nBảo mật nâng cao:\r\n\r\nMở khoá khuôn mặt Face ID\r\nTính năng đặc biệt:\r\n\r\nPhát hiện va chạm (Crash Detection)Màn hình luôn hiển thị AOD\r\nKháng nước, bụi:\r\n\r\nIP68\r\nGhi âm:\r\n\r\nGhi âm mặc định\r\nXem phim:\r\n\r\nH.264(MPEG4-AVC)\r\nNghe nhạc:\r\n\r\nMP3\r\n\r\nFLAC\r\n\r\nAAC\r\n\r\nThông tin chung\r\n\r\nThiết kế:\r\n\r\nNguyên khối\r\nChất liệu:\r\n\r\nKhung Titan & Mặt lưng kính cường lực\r\nKích thước, khối lượng:\r\n\r\nDài 159.9 mm - Ngang 76.7 mm - Dày 8.25 mm - Nặng 221 g\r\nThời điểm ra mắt:\r\n\r\n09/2023\r\nHãng:\r\n\r\niPhone (Apple). Xem thông tin hãng', 50000000, 42999999, '1711024504.jpg', 100, 0, 1, 'Iphone', 'Iphone', 'Iphone', '2024-03-21 12:35:04'),
(21, 17, 'iPhone 15 Pro', 'iPhone 15 Pro', 'Màn hình\r\n\r\nCông nghệ màn hình:\r\n\r\nOLED\r\nĐộ phân giải:\r\nSuper Retina XDR (1179 x 2556 Pixels)\r\nMàn hình rộng:\r\n\r\n6.1\" - Tần số quét 120 Hz\r\nĐộ sáng tối đa:\r\n2000 nits\r\nMặt kính cảm ứng:\r\n\r\nKính cường lực Ceramic Shield\r\nCamera sau\r\n\r\nĐộ phân giải:\r\nChính 48 MP & Phụ 12 MP, 12 MP\r\nQuay phim:\r\n\r\nHD 720p@30fps\r\n\r\nFullHD 1080p@60fps\r\n\r\nFullHD 1080p@24fps\r\n\r\n4K 2160p@60fps\r\n\r\n4K 2160p@30fps\r\n\r\n4K 2160p@24fps\r\n\r\nĐèn Flash:\r\n\r\nCó\r\nTính năng:\r\n\r\nẢnh Raw\r\n\r\nZoom quang học\r\n\r\nZoom kỹ thuật số\r\n\r\nXóa phông\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nToàn cảnh (Panorama)\r\n\r\nSmart HDR 5\r\n\r\nQuay Siêu chậm (Super Slow Motion)\r\n\r\nQuay chậm (Slow Motion)\r\n\r\nLive Photo\r\n\r\nGóc siêu rộng (Ultrawide)\r\n\r\nDolby Vision HDR\r\n\r\nDeep Fusion\r\n\r\nCinematic\r\n\r\nChống rung quang học (OIS)\r\n\r\nChế độ hành động (Action Mode)\r\n\r\nBộ lọc màu\r\n\r\nBan đêm (Night Mode)\r\n\r\nCamera trước\r\n\r\nĐộ phân giải:\r\n12 MP\r\nTính năng:\r\n\r\nSmart HDR 5\r\n\r\nXóa phông\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nQuay video Full HD\r\n\r\nQuay video 4K\r\n\r\nNhãn dán (AR Stickers)\r\n\r\nLive Photo\r\n\r\nChụp đêm\r\n\r\nBộ lọc màu\r\n\r\nHệ điều hành & CPU\r\n\r\nHệ điều hành:\r\niOS 17\r\nChip xử lý (CPU):\r\n\r\nApple A17 Pro 6 nhân\r\nTốc độ CPU:\r\n3.78 GHz\r\nChip đồ họa (GPU):\r\n\r\nApple GPU 6 nhân\r\nBộ nhớ & Lưu trữ\r\n\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n\r\n128 GB\r\nDanh bạ:\r\n\r\nKhông giới hạn\r\nKết nối\r\n\r\nMạng di động:\r\n\r\nHỗ trợ 5G\r\nSIM:\r\n\r\n1 Nano SIM & 1 eSIM\r\nWifi:\r\nWi-Fi MIMO\r\n\r\nCó\r\n\r\n6 GHz\r\n\r\nGPS:\r\nQZSS\r\n\r\nNavIC\r\n\r\nGLONASS\r\n\r\nGALILEO\r\n\r\nCó\r\n\r\nBluetooth:\r\nv5.3\r\nCổng kết nối/sạc:\r\n\r\nType-C\r\nJack tai nghe:\r\n\r\nType-C\r\nKết nối khác:\r\n\r\nNFC\r\nPin & Sạc\r\n\r\nDung lượng pin:\r\n\r\n3274 mAh\r\nLoại pin:\r\n\r\nLi-Ion\r\nHỗ trợ sạc tối đa:\r\n\r\n20 W\r\nCông nghệ pin:\r\n\r\nTiết kiệm pin\r\n\r\nSạc không dây MagSafe\r\n\r\nSạc không dây\r\n\r\nTiện ích\r\n\r\nBảo mật nâng cao:\r\n\r\nMở khoá khuôn mặt Face ID\r\nTính năng đặc biệt:\r\n\r\nPhát hiện va chạm (Crash Detection)Màn hình luôn hiển thị AOD\r\nKháng nước, bụi:\r\n\r\nIP68\r\nGhi âm:\r\n\r\nGhi âm mặc định\r\nXem phim:\r\n\r\nCó\r\nNghe nhạc:\r\n\r\nCó\r\nThông tin chung\r\n\r\nThiết kế:\r\n\r\nNguyên khối\r\nChất liệu:\r\n\r\nKhung Titan & Mặt lưng kính cường lực\r\nKích thước, khối lượng:\r\n\r\nDài 146.6 mm - Ngang 70.6 mm - Dày 8.25 mm - Nặng 187 g\r\nThời điểm ra mắt:\r\n\r\n09/2023\r\nHãng:\r\n\r\niPhone (Apple). Xem thông tin hãng', 45000000, 42999999, '1711024731.jpg', 0, 0, 1, 'iPhone 15 Pro', 'iPhone 15 Pro', 'iPhone 15 Pro', '2024-03-21 12:38:51'),
(23, 16, 'Xiaomi Redmi Note 13 Pro', 'Xiaomi Redmi Note 13 Pro', 'Màn hình\r\n\r\nCông nghệ màn hình:\r\n\r\nAMOLED\r\nĐộ phân giải:\r\nFull HD+ (1080 x 2400 Pixels)\r\nMàn hình rộng:\r\n\r\n6.67\" - Tần số quét 120 Hz\r\nĐộ sáng tối đa:\r\n1300 nits\r\nMặt kính cảm ứng:\r\n\r\nKính cường lực Corning Gorilla Glass 5\r\nCamera sau\r\n\r\nĐộ phân giải:\r\nChính 200 MP & Phụ 8 MP, 2 MP\r\nQuay phim:\r\n\r\nHD 720p@30fps\r\n\r\nHD 720p@120fps\r\n\r\nFullHD 1080p@60fps\r\n\r\nFullHD 1080p@30fps\r\n\r\nĐèn Flash:\r\n\r\nCó\r\nTính năng:\r\n\r\nZoom kỹ thuật số\r\n\r\nXóa phông\r\n\r\nXiaomi ProCut\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nToàn cảnh (Panorama)\r\n\r\nSiêu độ phân giải\r\n\r\nSiêu cận (Macro)\r\n\r\nQuét tài liệu\r\n\r\nQuay chậm (Slow Motion)\r\n\r\nPhơi sáng\r\n\r\nLàm đẹp\r\n\r\nHDR\r\n\r\nGóc siêu rộng (Ultrawide)\r\n\r\nGoogle Lens\r\n\r\nChụp hẹn giờ\r\n\r\nChống rung quang học (OIS)\r\n\r\nChuyên nghiệp (Pro)\r\n\r\nBộ lọc màu\r\n\r\nBan đêm (Night Mode)\r\n\r\nCamera trước\r\n\r\nĐộ phân giải:\r\n16 MP\r\nTính năng:\r\n\r\nXóa phông\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nToàn cảnh (Panorama)\r\n\r\nQuay video HD\r\n\r\nQuay video Full HD\r\n\r\nLàm đẹp\r\n\r\nHDR\r\n\r\nFlash màn hình\r\n\r\nChụp đêm\r\n\r\nChụp hẹn giờ\r\n\r\nBộ lọc màu\r\n\r\nHệ điều hành & CPU\r\n\r\nHệ điều hành:\r\nAndroid 13\r\nChip xử lý (CPU):\r\n\r\nMediaTek Helio G99-Ultra 8 nhân\r\nTốc độ CPU:\r\n2.2 GHz\r\nChip đồ họa (GPU):\r\n\r\nMali-G57 MC2\r\nBộ nhớ & Lưu trữ\r\n\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n\r\n128 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n\r\n100 GB\r\nThẻ nhớ:\r\n\r\nMicroSD, hỗ trợ tối đa 1 TB\r\nDanh bạ:\r\n\r\nKhông giới hạn\r\nKết nối\r\n\r\nMạng di động:\r\n\r\nHỗ trợ 4G\r\nSIM:\r\n\r\n2 Nano SIM (SIM 2 chung khe thẻ nhớ)\r\nWifi:\r\nWi-Fi hotspot\r\n\r\nWi-Fi 802.11 a/b/g/n/ac\r\n\r\nDual-band (2.4 GHz/5 GHz)\r\n\r\nGPS:\r\nGPS\r\n\r\nGLONASS\r\n\r\nGALILEO\r\n\r\nBEIDOU\r\n\r\nBluetooth:\r\nv5.2\r\nCổng kết nối/sạc:\r\n\r\nType-C\r\nJack tai nghe:\r\n\r\n3.5 mm\r\nKết nối khác:\r\n\r\nNFCHồng ngoại\r\nPin & Sạc\r\n\r\nDung lượng pin:\r\n\r\n5000 mAh\r\nLoại pin:\r\n\r\nLi-Po\r\nHỗ trợ sạc tối đa:\r\n\r\n67 W\r\nSạc kèm theo máy:\r\n\r\n67 W\r\nCông nghệ pin:\r\n\r\nTiết kiệm pin\r\n\r\nSạc pin nhanh\r\n\r\nSiêu tiết kiệm pin\r\n\r\nTiện ích\r\n\r\nBảo mật nâng cao:\r\n\r\nMở khoá vân tay dưới màn hìnhMở khoá khuôn mặt\r\nTính năng đặc biệt:\r\n\r\nỨng dụng kép (Nhân bản ứng dụng)\r\n\r\nĐo nhịp tim\r\n\r\nÂm thanh Dolby Atmos\r\n\r\nTrợ lý ảo Google Assistant\r\n\r\nThu nhỏ màn hình sử dụng một tay\r\n\r\nMở rộng bộ nhớ RAM\r\n\r\nMàn hình luôn hiển thị AOD\r\n\r\nLoa kép\r\n\r\nKhông gian thứ hai\r\n\r\nKhoá ứng dụng\r\n\r\nDCI-P3\r\n\r\nCửa sổ nổi\r\n\r\nCử chỉ thông minh\r\n\r\nKháng nước, bụi:\r\n\r\nIP54\r\nGhi âm:\r\n\r\nGhi âm mặc địnhGhi âm cuộc gọi\r\nRadio:\r\n\r\nCó\r\nXem phim:\r\n\r\nMP4\r\nNghe nhạc:\r\n\r\nWAV\r\n\r\nOGG\r\n\r\nMP3\r\n\r\nFLAC\r\n\r\nAWB\r\n\r\nAPE\r\n\r\nAMR\r\n\r\nAAC\r\n\r\nThông tin chung\r\n\r\nThiết kế:\r\n\r\nNguyên khối\r\nChất liệu:\r\n\r\nKhung & Mặt lưng nhựa\r\nKích thước, khối lượng:\r\n\r\nDài 161.1 mm - Ngang 74.95 mm - Dày 7.98 mm - Nặng 188 g\r\nThời điểm ra mắt:\r\n\r\n02/2024\r\nHãng:\r\n\r\nXiaomi. Xem thông tin hãng', 10000000, 6999999, '1711025067.jpg', 100, 0, 1, 'SamSung', 'SamSung', 'SamSung', '2024-03-21 12:44:27'),
(26, 15, 'Samsung Galaxy S24 5G', 'Samsung Galaxy S24 5G', 'Màn hình\r\n\r\nCông nghệ màn hình:\r\n\r\nDynamic AMOLED 2X\r\nĐộ phân giải:\r\nFull HD+ (1080 x 2340 Pixels)\r\nMàn hình rộng:\r\n\r\n6.2\" - Tần số quét 120 Hz\r\nĐộ sáng tối đa:\r\n2600 nits\r\nMặt kính cảm ứng:\r\n\r\nKính cường lực Corning Gorilla Glass Victus 2\r\nCamera sau\r\n\r\nĐộ phân giải:\r\nChính 50 MP & Phụ 12 MP, 10 MP\r\nQuay phim:\r\n\r\nHD 720p@30fps\r\n\r\nFullHD 1080p@60fps\r\n\r\nFullHD 1080p@30fps\r\n\r\nFullHD 1080p@240fps\r\n\r\nFullHD 1080p@120fps\r\n\r\n8K 4320p@30fps\r\n\r\n4K 2160p@60fps\r\n\r\n4K 2160p@30fps\r\n\r\n4K 2160p@120fps\r\n\r\nĐèn Flash:\r\n\r\nCó\r\nTính năng:\r\n\r\nẢnh Raw\r\n\r\nZoom quang học\r\n\r\nZoom kỹ thuật số\r\n\r\nXóa phông\r\n\r\nVideo chân dung\r\n\r\nVideo chuyên nghiệp\r\n\r\nTự động lấy nét (AF)\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nToàn cảnh (Panorama)\r\n\r\nSiêu độ phân giải\r\n\r\nQuét mã QR\r\n\r\nQuay video hiển thị kép\r\n\r\nQuay Siêu chậm (Super Slow Motion)\r\n\r\nQuay chậm (Slow Motion)\r\n\r\nLàm đẹp\r\n\r\nHDR\r\n\r\nGóc siêu rộng (Ultrawide)\r\n\r\nChụp ảnh chuyển động\r\n\r\nChụp một chạm\r\n\r\nChụp hẹn giờ\r\n\r\nChống rung quang học (OIS)\r\n\r\nChống rung kỹ thuật số (VDIS)\r\n\r\nChuyên nghiệp (Pro)\r\n\r\nBộ lọc màu\r\n\r\nBan đêm (Night Mode)\r\n\r\nCamera trước\r\n\r\nĐộ phân giải:\r\n12 MP\r\nTính năng:\r\n\r\nXóa phông\r\n\r\nVideo chân dung\r\n\r\nVideo chuyên nghiệp\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nQuay video HD\r\n\r\nQuay video Full HD\r\n\r\nQuay video 4K\r\n\r\nQuay chậm (Slow Motion)\r\n\r\nNhãn dán (AR Stickers)\r\n\r\nLàm đẹp\r\n\r\nGóc rộng (Wide)\r\n\r\nFlash màn hình\r\n\r\nChụp ảnh chuyển động\r\n\r\nChụp đêm\r\n\r\nChụp hẹn giờ\r\n\r\nChụp bằng cử chỉ\r\n\r\nChân dung đêm\r\n\r\nChuyên nghiệp (Pro)\r\n\r\nBộ lọc màu\r\n\r\nHệ điều hành & CPU\r\n\r\nHệ điều hành:\r\nAndroid 14\r\nChip xử lý (CPU):\r\n\r\nExynos 2400\r\nTốc độ CPU:\r\n3.2 GHz\r\nChip đồ họa (GPU):\r\n\r\nXclipse 940\r\nBộ nhớ & Lưu trữ\r\n\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n\r\n256 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n\r\n231.2 GB\r\nDanh bạ:\r\n\r\nKhông giới hạn\r\nKết nối\r\n\r\nMạng di động:\r\n\r\nHỗ trợ 5G\r\nSIM:\r\n\r\n2 Nano SIM hoặc 2 eSIM hoặc 1 Nano SIM + 1 eSIM\r\nWifi:\r\nWi-Fi MIMO\r\n\r\nWi-Fi hotspot\r\n\r\nWi-Fi Direct\r\n\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\n\r\nDual-band (2.4 GHz/5 GHz)\r\n\r\nGPS:\r\nQZSS\r\n\r\nGPS\r\n\r\nGLONASS\r\n\r\nGALILEO\r\n\r\nBEIDOU\r\n\r\nBluetooth:\r\nv5.3\r\nCổng kết nối/sạc:\r\n\r\nType-C\r\nKết nối khác:\r\n\r\nNFC\r\nPin & Sạc\r\n\r\nDung lượng pin:\r\n\r\n4000 mAh\r\nLoại pin:\r\n\r\nLi-Ion\r\nHỗ trợ sạc tối đa:\r\n\r\n25 W\r\nCông nghệ pin:\r\n\r\nSạc pin nhanh\r\n\r\nSạc ngược không dây\r\n\r\nSạc không dây\r\n\r\nTiện ích\r\n\r\nBảo mật nâng cao:\r\n\r\nMở khoá vân tay dưới màn hìnhMở khoá khuôn mặt\r\nTính năng đặc biệt:\r\n\r\nỨng dụng kép (Dual Messenger)\r\n\r\nĐa cửa sổ (chia đôi màn hình)\r\n\r\nÂm thanh Dolby Atmos\r\n\r\nÂm thanh AKG\r\n\r\nVision Booster\r\n\r\nTối ưu game (Game Booster)\r\n\r\nTrợ lý ảo Samsung Bixby\r\n\r\nTrợ lý ảo Google Assistant\r\n\r\nTrợ lý Note thông mình\r\n\r\nTrợ lý chỉnh ảnh\r\n\r\nTrợ lý chat thông minh\r\n\r\nThu nhỏ màn hình sử dụng một tay\r\n\r\nSamsung Pay\r\n\r\nSamsung DeX (Kết nối màn hình sử dụng giao diện tương tự PC)\r\n\r\nRay Tracing\r\n\r\nPhiên dịch trực tiếp\r\n\r\nMở rộng bộ nhớ RAM\r\n\r\nMàn hình luôn hiển thị AOD\r\n\r\nLoa kép\r\n\r\nKhoanh vùng search đa năng\r\n\r\nHệ thống tản nhiệt Vapor Chamber\r\n\r\nDCI-P3\r\n\r\nCử chỉ thông minh\r\n\r\nChế độ đơn giản (Giao diện đơn giản)\r\n\r\nChặn tin nhắn\r\n\r\nChặn cuộc gọi\r\n\r\nChạm 2 lần tắt/sáng màn hình\r\n\r\nKháng nước, bụi:\r\n\r\nIP68\r\nGhi âm:\r\n\r\nGhi âm mặc địnhGhi âm cuộc gọi\r\nXem phim:\r\n\r\nWEBM\r\n\r\nMP4\r\n\r\nMKV\r\n\r\nM4V\r\n\r\nFLV\r\n\r\nAVI\r\n\r\n3GP\r\n\r\n3G2\r\n\r\nNghe nhạc:\r\n\r\nXMF\r\n\r\nWAV\r\n\r\nRTX\r\n\r\nRTTTL\r\n\r\nOTA\r\n\r\nOGG\r\n\r\nOGA\r\n\r\nMXMF\r\n\r\nMP3\r\n\r\nMidi\r\n\r\nM4A\r\n\r\nIMY\r\n\r\nFLAC\r\n\r\nAWB\r\n\r\nAPE\r\n\r\nAMR\r\n\r\nAAC\r\n\r\n3GA\r\n\r\nThông tin chung\r\n\r\nThiết kế:\r\n\r\nNguyên khối\r\nChất liệu:\r\n\r\nKhung nhôm & Mặt lưng kính cường lực\r\nKích thước, khối lượng:\r\n\r\nDài 147 mm - Ngang 70.6 mm - Dày 7.6 mm - Nặng 167 g\r\nThời điểm ra mắt:\r\n\r\n01/2024\r\nHãng:\r\n\r\nSamsung. Xem thông tin hãng', 25000000, 23999999, '1711029069.png', 100, 0, 1, 'SamSung', 'sevfe', 'ưegweg', '2024-03-21 13:51:09'),
(31, 19, 'OPPO A57 128GB', 'OPPO A57 128GB', 'Màn hình\r\n\r\nCông nghệ màn hình:\r\n\r\nIPS LCD\r\nĐộ phân giải:\r\nHD+ (720 x 1612 Pixels)\r\nMàn hình rộng:\r\n\r\n6.56\" - Tần số quét 60 Hz\r\nĐộ sáng tối đa:\r\n600 nits\r\nMặt kính cảm ứng:\r\n\r\nKính cường lực Panda\r\nCamera sau\r\n\r\nĐộ phân giải:\r\nChính 13 MP & Phụ 2 MP\r\nQuay phim:\r\n\r\nHD 720p@30fpsFullHD 1080p@30fps\r\nĐèn Flash:\r\n\r\nCó\r\nTính năng:\r\n\r\nZoom kỹ thuật số\r\n\r\nXóa phông\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nToàn cảnh (Panorama)\r\n\r\nNhãn dán (AR Stickers)\r\n\r\nLàm đẹp\r\n\r\nHiệu ứng Bokeh\r\n\r\nHDR\r\n\r\nGoogle Lens\r\n\r\nChuyên nghiệp (Pro)\r\n\r\nBộ lọc màu\r\n\r\nBan đêm (Night Mode)\r\n\r\nCamera trước\r\n\r\nĐộ phân giải:\r\n8 MP\r\nTính năng:\r\n\r\nXóa phông\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nToàn cảnh (Panorama)\r\n\r\nQuay video HD\r\n\r\nQuay video Full HD\r\n\r\nNhãn dán (AR Stickers)\r\n\r\nLàm đẹp A.I\r\n\r\nHDR\r\n\r\nBộ lọc màu\r\n\r\nHệ điều hành & CPU\r\n\r\nHệ điều hành:\r\nAndroid 12\r\nChip xử lý (CPU):\r\n\r\nMediaTek Helio G35 8 nhân\r\nTốc độ CPU:\r\n2.3 GHz\r\nChip đồ họa (GPU):\r\n\r\nIMG PowerVR GE8320\r\nBộ nhớ & Lưu trữ\r\n\r\nRAM:\r\n4 GB\r\nDung lượng lưu trữ:\r\n\r\n128 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n\r\n114 GB\r\nThẻ nhớ:\r\n\r\nMicroSD, hỗ trợ tối đa 1 TB\r\nDanh bạ:\r\n\r\nKhông giới hạn\r\nKết nối\r\n\r\nMạng di động:\r\n\r\nHỗ trợ 4G\r\nSIM:\r\n\r\n2 Nano SIM\r\nWifi:\r\nWi-Fi hotspot\r\n\r\nWi-Fi Direct\r\n\r\nWi-Fi 802.11 a/b/g/n/ac\r\n\r\nDual-band (2.4 GHz/5 GHz)\r\n\r\nGPS:\r\nQZSS\r\n\r\nGPS\r\n\r\nGLONASS\r\n\r\nGALILEO\r\n\r\nBEIDOU\r\n\r\nBluetooth:\r\nv5.3\r\nCổng kết nối/sạc:\r\n\r\nType-C\r\nJack tai nghe:\r\n\r\n3.5 mm\r\nKết nối khác:\r\n\r\nOTG\r\nPin & Sạc\r\n\r\nDung lượng pin:\r\n\r\n5000 mAh\r\nLoại pin:\r\n\r\nLi-Po\r\nHỗ trợ sạc tối đa:\r\n\r\n33 W\r\nSạc kèm theo máy:\r\n\r\n33 W\r\nCông nghệ pin:\r\n\r\nSạc siêu nhanh SuperVOOC\r\nTiện ích\r\n\r\nBảo mật nâng cao:\r\n\r\nMở khoá vân tay cạnh viềnMở khoá khuôn mặt\r\nTính năng đặc biệt:\r\n\r\nỨng dụng kép (Nhân bản ứng dụng)\r\n\r\nĐa cửa sổ (chia đôi màn hình)\r\n\r\nTrợ lý ảo Google Assistant\r\n\r\nMở rộng bộ nhớ RAM\r\n\r\nLoa kép\r\n\r\nCử chỉ màn hình tắt\r\n\r\nCông nghệ tản nhiệt LiquidCool\r\n\r\nChế độ đơn giản (Giao diện đơn giản)\r\n\r\nChế độ trẻ em (Không gian trẻ em)\r\n\r\nKháng nước, bụi:\r\n\r\nIPX4\r\nGhi âm:\r\n\r\nGhi âm mặc địnhGhi âm cuộc gọi\r\nRadio:\r\n\r\nCó\r\nXem phim:\r\n\r\nMP4AVI\r\nNghe nhạc:\r\n\r\nOGG\r\n\r\nMP3\r\n\r\nMidi\r\n\r\nFLAC\r\n\r\nThông tin chung\r\n\r\nThiết kế:\r\n\r\nNguyên khối\r\nChất liệu:\r\n\r\nKhung nhựa & Mặt lưng thuỷ tinh hữu cơ\r\nKích thước, khối lượng:\r\n\r\nDài 163.74 mm - Ngang 75.03 mm - Dày 7.99 mm - Nặng 187 g\r\nThời điểm ra mắt:\r\n\r\n07/2022\r\nHãng:\r\n\r\nOPPO. Xem thông tin hãng', 5000000, 3999999, '1711041323.jpg', 100, 0, 1, 'SamSung', 'savf', 'fa', '2024-03-21 17:15:23'),
(32, 19, 'OPPO Reno10 5G', 'OPPO Reno10 5G', 'Màn hình\r\n\r\nCông nghệ màn hình:\r\n\r\nAMOLED\r\nĐộ phân giải:\r\nFull HD+ (1080 x 2412 Pixels)\r\nMàn hình rộng:\r\n\r\n6.7\" - Tần số quét 120 Hz\r\nĐộ sáng tối đa:\r\n800 nits\r\nMặt kính cảm ứng:\r\n\r\nKính cường lực AGC DT-Star2\r\nCamera sau\r\n\r\nĐộ phân giải:\r\nChính 64 MP & Phụ 32 MP, 8 MP\r\nQuay phim:\r\n\r\nHD 720p@960fps\r\n\r\nHD 720p@60fps\r\n\r\nHD 720p@30fps\r\n\r\nHD 720p@240fps\r\n\r\nFullHD 1080p@60fps\r\n\r\nFullHD 1080p@480fps\r\n\r\nFullHD 1080p@30fps\r\n\r\nFullHD 1080p@120fps\r\n\r\n4K 2160p@30fps\r\n\r\nĐèn Flash:\r\n\r\nCó\r\nTính năng:\r\n\r\nZoom quang học\r\n\r\nZoom kỹ thuật số\r\n\r\nXóa phông\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nToàn cảnh (Panorama)\r\n\r\nSiêu độ phân giải\r\n\r\nQuét tài liệu\r\n\r\nQuay video hiển thị kép\r\n\r\nQuay chậm (Slow Motion)\r\n\r\nNhãn dán (AR Stickers)\r\n\r\nLấy nét theo pha (PDAF)\r\n\r\nLàm đẹp\r\n\r\nHDR\r\n\r\nGóc siêu rộng (Ultrawide)\r\n\r\nGoogle Lens\r\n\r\nChống rung quang học (OIS)\r\n\r\nChuyên nghiệp (Pro)\r\n\r\nBộ lọc màu\r\n\r\nBan đêm (Night Mode)\r\n\r\nCamera trước\r\n\r\nĐộ phân giải:\r\n32 MP\r\nTính năng:\r\n\r\nXóa phông\r\n\r\nTự động lấy nét (AF)\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nToàn cảnh (Panorama)\r\n\r\nQuay video HD\r\n\r\nQuay video Full HD\r\n\r\nNhãn dán (AR Stickers)\r\n\r\nLàm đẹp A.I\r\n\r\nHDR\r\n\r\nChụp đêm\r\n\r\nChống rung\r\n\r\nHệ điều hành & CPU\r\n\r\nHệ điều hành:\r\nAndroid 13\r\nChip xử lý (CPU):\r\n\r\nMediaTek Dimensity 7050 5G 8 nhân\r\nTốc độ CPU:\r\n2.6 GHz\r\nChip đồ họa (GPU):\r\n\r\nMali-G68 MC4\r\nBộ nhớ & Lưu trữ\r\n\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n\r\n128 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n\r\n113 GB\r\nThẻ nhớ:\r\n\r\nMicroSD, hỗ trợ tối đa 2 TB\r\nDanh bạ:\r\n\r\nKhông giới hạn\r\nKết nối\r\n\r\nMạng di động:\r\n\r\nHỗ trợ 5G\r\nSIM:\r\n\r\n2 Nano SIM (SIM 2 chung khe thẻ nhớ)\r\nWifi:\r\nWi-Fi MIMO\r\n\r\nWi-Fi hotspot\r\n\r\nWi-Fi Direct\r\n\r\nWi-Fi 6\r\n\r\nDual-band (2.4 GHz/5 GHz)\r\n\r\nGPS:\r\nQZSS\r\n\r\nGPS\r\n\r\nGLONASS\r\n\r\nGALILEO\r\n\r\nBEIDOU\r\n\r\nBluetooth:\r\nv5.3\r\nCổng kết nối/sạc:\r\n\r\nType-C\r\nJack tai nghe:\r\n\r\nType-C\r\nKết nối khác:\r\n\r\nOTG\r\n\r\nNFC\r\n\r\nHồng ngoại\r\n\r\nPin & Sạc\r\n\r\nDung lượng pin:\r\n\r\n5000 mAh\r\nLoại pin:\r\n\r\nLi-Po\r\nHỗ trợ sạc tối đa:\r\n\r\n67 W\r\nSạc kèm theo máy:\r\n\r\n67 W\r\nCông nghệ pin:\r\n\r\nTiết kiệm pin\r\n\r\nSạc siêu nhanh SuperVOOC\r\n\r\nSiêu tiết kiệm pin\r\n\r\nTiện ích\r\n\r\nBảo mật nâng cao:\r\n\r\nMở khoá vân tay dưới màn hìnhMở khoá khuôn mặt\r\nTính năng đặc biệt:\r\n\r\nỨng dụng kép (Nhân bản ứng dụng)\r\n\r\nĐa cửa sổ (chia đôi màn hình)\r\n\r\nTrợ lý ảo Google Assistant\r\n\r\nMở rộng bộ nhớ RAM\r\n\r\nMàn hình luôn hiển thị AOD\r\n\r\nLoa kép\r\n\r\nKhoá ứng dụng\r\n\r\nHDR10+\r\n\r\nCử chỉ thông minh\r\n\r\nCử chỉ màn hình tắt\r\n\r\nChế độ đơn giản (Giao diện đơn giản)\r\n\r\nChế độ trẻ em (Không gian trẻ em)\r\n\r\nKháng nước, bụi:\r\n\r\nIPX4\r\nGhi âm:\r\n\r\nGhi âm mặc địnhGhi âm cuộc gọi\r\nRadio:\r\n\r\nFM không cần tai nghe\r\nXem phim:\r\n\r\nMP4AVI\r\nNghe nhạc:\r\n\r\nOGG\r\n\r\nMP3\r\n\r\nMidi\r\n\r\nFLAC\r\n\r\nThông tin chung\r\n\r\nThiết kế:\r\n\r\nNguyên khối\r\nChất liệu:\r\n\r\nKhung hợp kim & Mặt lưng thuỷ tinh hữu cơ\r\nKích thước, khối lượng:\r\n\r\nDài 162.43 mm - Ngang 74.19 mm - Dày 7.99 mm - Nặng 185 g\r\nThời điểm ra mắt:\r\n\r\n08/2023\r\nHãng:\r\n\r\nOPPO. Xem thông tin hãng', 10000000, 8999999, '1711041404.jpg', 100, 0, 1, 'sdv', 'egw', 'ưegw', '2024-03-21 17:16:44'),
(33, 19, 'OPPO Reno8 T', 'OPPO Reno8 T', 'Màn hình\r\n\r\nCông nghệ màn hình:\r\n\r\nAMOLED\r\nĐộ phân giải:\r\nFull HD+ (1080 x 2400 Pixels)\r\nMàn hình rộng:\r\n\r\n6.4\" - Tần số quét 90 Hz\r\nĐộ sáng tối đa:\r\n600 nits\r\nMặt kính cảm ứng:\r\n\r\nKính cường lực Corning Gorilla Glass 5\r\nCamera sau\r\n\r\nĐộ phân giải:\r\nChính 100 MP & Phụ 2 MP, 2 MP\r\nQuay phim:\r\n\r\nHD 720p@30fpsFullHD 1080p@30fps\r\nĐèn Flash:\r\n\r\nCó\r\nTính năng:\r\n\r\nZoom kỹ thuật số\r\n\r\nXóa phông\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nToàn cảnh (Panorama)\r\n\r\nSiêu độ phân giải\r\n\r\nSiêu cận (Macro)\r\n\r\nQuay video hiển thị kép\r\n\r\nQuay chậm (Slow Motion)\r\n\r\nNhãn dán (AR Stickers)\r\n\r\nLàm đẹp\r\n\r\nHiển vi\r\n\r\nChuyên nghiệp (Pro)\r\n\r\nBộ lọc màu\r\n\r\nBan đêm (Night Mode)\r\n\r\nAI Camera\r\n\r\nCamera trước\r\n\r\nĐộ phân giải:\r\n32 MP\r\nTính năng:\r\n\r\nXóa phông\r\n\r\nTrôi nhanh thời gian (Time Lapse)\r\n\r\nToàn cảnh (Panorama)\r\n\r\nQuay video HD\r\n\r\nQuay video Full HD\r\n\r\nNhãn dán (AR Stickers)\r\n\r\nLàm đẹp\r\n\r\nHDR\r\n\r\nFlash màn hình\r\n\r\nChụp đêm\r\n\r\nBộ lọc màu\r\n\r\nHệ điều hành & CPU\r\n\r\nHệ điều hành:\r\nAndroid 13\r\nChip xử lý (CPU):\r\n\r\nMediaTek Helio G99 8 nhân\r\nTốc độ CPU:\r\n2.2 GHz\r\nChip đồ họa (GPU):\r\n\r\nMali-G57\r\nBộ nhớ & Lưu trữ\r\n\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n\r\n256 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n\r\n241 GB\r\nThẻ nhớ:\r\n\r\nMicroSD, hỗ trợ tối đa 2 TB\r\nDanh bạ:\r\n\r\nKhông giới hạn\r\nKết nối\r\n\r\nMạng di động:\r\n\r\nHỗ trợ 4G\r\nSIM:\r\n\r\n2 Nano SIM\r\nWifi:\r\nWi-Fi hotspot\r\n\r\nWi-Fi 802.11 a/b/g/n/ac\r\n\r\nDual-band (2.4 GHz/5 GHz)\r\n\r\nGPS:\r\nQZSS\r\n\r\nGPS\r\n\r\nGLONASS\r\n\r\nGALILEO\r\n\r\nBEIDOU\r\n\r\nBluetooth:\r\nv5.3\r\nCổng kết nối/sạc:\r\n\r\nType-C\r\nJack tai nghe:\r\n\r\n3.5 mm\r\nKết nối khác:\r\n\r\nOTGNFC\r\nPin & Sạc\r\n\r\nDung lượng pin:\r\n\r\n5000 mAh\r\nLoại pin:\r\n\r\nLi-Po\r\nHỗ trợ sạc tối đa:\r\n\r\n33 W\r\nSạc kèm theo máy:\r\n\r\n33 W\r\nCông nghệ pin:\r\n\r\nSạc siêu nhanh SuperVOOC\r\nTiện ích\r\n\r\nBảo mật nâng cao:\r\n\r\nMở khoá vân tay dưới màn hìnhMở khoá khuôn mặt\r\nTính năng đặc biệt:\r\n\r\nỨng dụng kép (Nhân bản ứng dụng)\r\n\r\nĐa cửa sổ (chia đôi màn hình)\r\n\r\nMở rộng bộ nhớ RAM\r\n\r\nCử chỉ thông minh\r\n\r\nCử chỉ màn hình tắt\r\n\r\nChế độ đơn giản (Giao diện đơn giản)\r\n\r\nChế độ trẻ em (Không gian trẻ em)\r\n\r\nKháng nước, bụi:\r\n\r\nIP54\r\nGhi âm:\r\n\r\nGhi âm mặc địnhGhi âm cuộc gọi\r\nRadio:\r\n\r\nCó\r\nXem phim:\r\n\r\nMP4AVI\r\nNghe nhạc:\r\n\r\nOGG\r\n\r\nMP3\r\n\r\nMidi\r\n\r\nFLAC\r\n\r\nThông tin chung\r\n\r\nThiết kế:\r\n\r\nNguyên khối\r\nChất liệu:\r\n\r\nKhung hợp kim & Mặt lưng thuỷ tinh hữu cơ\r\nKích thước, khối lượng:\r\n\r\nDài 160.8 mm - Ngang 73.8 mm - Dày 7.85 mm - Nặng 183 g\r\nThời điểm ra mắt:\r\n\r\n01/2023\r\nHãng:\r\n\r\nOPPO. Xem thông tin hãng', 8000000, 7000000, '1711041503.jpg', 100, 0, 1, 'sdvg', 'sdg', 'seg', '2024-03-21 17:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role_as` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `created_at`, `role_as`) VALUES
(1, 'Khải', 'minhkhai11225@gmail.com', 0, '123456', '2024-03-10 04:05:59', 0),
(2, 'Khải1', 'bapohsusu@gmail.com', 0, '123456', '2024-03-10 11:29:00', 1),
(5, 'duyheo', 'duy@gmail.com', 0, '123456', '2024-03-11 09:40:00', 0),
(6, 'dfbdfb', 'sdbsb@gmail.com', 0, '123456', '2024-03-18 04:24:49', 0),
(7, ';nvdkfbnd', 'dfvdfbdf@gmail.com', 0, '123456', '2024-03-18 04:26:44', 0),
(8, 'dnkdfjbnkdf', 'dfdf@gmail.com', 0, '123456', '2024-03-18 04:32:10', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
