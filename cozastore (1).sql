-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 31, 2023 lúc 05:16 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cozastore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_title` varchar(50) NOT NULL,
  `blog_content` varchar(550) NOT NULL,
  `blog_img` varchar(50) NOT NULL,
  `blog_post_date` date NOT NULL,
  `user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`blog_id`, `blog_title`, `blog_content`, `blog_img`, `blog_post_date`, `user_id`) VALUES
(4, '8 Inspiring Ways to Wear Dresses in the Winter', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus accumsan in. Duis viverra dui eu pharetra pellentesque. Donec a eros leo. Quisque sed ligula vitae lorem efficitur faucibus. Praesent sit amet imperdiet ante. Nulla id tellus auctor, dictum libero a, malesuada nisi. Nulla in porta nibh, id vestibulum ipsum. Praesent dapibus tempus erat quis ali', 'blog-01.jpg', '2023-07-08', 'admin'),
(5, 'The Great Big List of Men’s Gifts for the Holidays', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus accumsan in. Duis viverra dui eu pharetra pellentesque. Donec a eros leo. Quisque sed ligula vitae lorem efficitur faucibus. Praesent sit amet imperdiet ante. Nulla id tellus auctor, dictum libero a, malesuada nisi. Nulla in porta nibh, id vestibulum ipsum. Praesent dapibus tempus erat quis ali', 'blog-02.jpg', '2023-07-08', 'admin'),
(6, '5 Winter-to-Spring Fashion Trends to Try Now', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus accumsan in. Duis viverra dui eu pharetra pellentesque. Donec a eros leo. Quisque sed ligula vitae lorem efficitur faucibus. Praesent sit amet imperdiet ante. Nulla id tellus auctor, dictum libero a, malesuada nisi. Nulla in porta nibh, id vestibulum ipsum. Praesent dapibus tempus erat quis ali', 'blog-03.jpg', '2023-07-07', 'admin'),
(7, '12312', '12321321', 'blog-02.jpg', '2023-07-13', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cate_id` int(11) NOT NULL COMMENT 'id categoriy',
  `cate_name` varchar(50) NOT NULL COMMENT 'name category',
  `cate_img` varchar(50) NOT NULL COMMENT 'image category'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cate_id`, `cate_name`, `cate_img`) VALUES
(1, 'Nam', 'banner-02.jpg'),
(2, 'Nữ', 'banner-01.jpg'),
(3, 'Watches', 'banner-07.jpg'),
(4, 'Bags', 'banner-08.jpg'),
(5, 'ingofero', 'banner-03.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` int(11) NOT NULL COMMENT 'color id',
  `color_name` varchar(50) NOT NULL COMMENT 'color name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `color`
--

INSERT INTO `color` (`color_id`, `color_name`) VALUES
(1, 'Black'),
(2, 'Blue'),
(3, 'Grey');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_content` varchar(550) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `blog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `user_id`, `blog_id`) VALUES
(11, '2131231', 'truong', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL COMMENT 'id contact',
  `contact_email` varchar(50) NOT NULL COMMENT 'email contact',
  `contact_content` varchar(255) NOT NULL COMMENT 'content contact'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_email`, `contact_content`) VALUES
(1, 'thasdas@nádasd', '123213'),
(2, 'asdasjj@msadas', 'ádsadsxx');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` varchar(30) NOT NULL,
  `order_address` varchar(50) NOT NULL,
  `order_email` varchar(50) NOT NULL,
  `order_phone` varchar(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_date`, `order_status`, `order_address`, `order_email`, `order_phone`, `payment_id`, `order_total`) VALUES
(8935330, 'truong1', '2023-07-29', '3', 'ha noi', 'truong@msadas.com', '097-6806-98', 2, 108.24),
(13595132, 'truong', '2023-07-29', '3', 'ha noi', 'thetruong2k2@gmail.com', '097-6806-98', 1, 324.72),
(16114031, 'truong', '2023-07-29', '3', 'ha noi', 'thetruong2k2@gmail.com', '097-6806-98', 2, 108.24),
(27273547, '0', '2023-07-29', '2', 'ha noi', 'thetruong2k2@gmail.com', '097-6806-98', 1, 324.72),
(43409624, '0', '2023-07-29', '2', 'ha noi', 'thetruong2k2@gmail.com', '097-6806-98', 2, 108.24),
(47696592, 'truong', '2023-07-30', '2', 'ha noi', 'thetruong2k2@gmail.com', '097-6806-98', 2, 324.72),
(50828653, '0', '2023-07-29', '2', 'ha noi', 'thetruong2k2@gmail.com', '097-6806-98', 2, 108.24),
(71607291, '0', '2023-07-31', '3', 'ha noi', 'truong@msadas.com', '097-6806-98', 2, 108.24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_detail_name` varchar(255) NOT NULL,
  `order_detail_price` double(10,2) NOT NULL,
  `order_detail_img` varchar(255) NOT NULL,
  `product_detail_id` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `order_id`, `order_detail_name`, `order_detail_price`, `order_detail_img`, `product_detail_id`, `so_luong`) VALUES
(49, 8935330, 'ao phong', 108.24, 'product-02.jpg', 2251, 1),
(50, 50828653, 'ao phong', 108.24, 'product-02.jpg', 2255, 1),
(51, 43409624, 'truong', 108.24, 'product-03.jpg', 2239, 1),
(52, 27273547, 'ao phong', 108.24, 'product-02.jpg', 2256, 3),
(53, 16114031, 'ao phong', 108.24, 'product-02.jpg', 2256, 1),
(54, 13595132, 'ao phong', 108.24, 'product-02.jpg', 2255, 3),
(55, 47696592, 'ao phong', 108.24, 'product-02.jpg', 2251, 1),
(56, 47696592, 'truong', 108.24, 'product-03.jpg', 2248, 1),
(57, 47696592, 'ao phong', 108.24, 'product-02.jpg', 2259, 1),
(58, 71607291, 'ao phong', 108.24, 'product-02.jpg', 2255, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `payment_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`payment_id`, `payment_name`) VALUES
(1, 'Thanh toán trực tiếp khi nhận hàng'),
(2, 'Thanh toán online');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `product_sale` int(3) NOT NULL,
  `product_posting_date` date NOT NULL,
  `tag_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `product_desciption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_img`, `product_sale`, `product_posting_date`, `tag_id`, `cate_id`, `product_desciption`) VALUES
(40, 'truong', 123.00, 'product-03.jpg', 12, '2023-07-14', 1, 1, '12'),
(41, 'ao phong', 123.00, 'product-02.jpg', 12, '2023-06-30', 1, 2, '12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_detail`
--

CREATE TABLE `product_detail` (
  `product_detail_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_detail`
--

INSERT INTO `product_detail` (`product_detail_id`, `product_id`, `color_id`, `size_id`) VALUES
(2239, 40, 1, 1),
(2240, 40, 1, 2),
(2241, 40, 1, 3),
(2242, 40, 1, 4),
(2243, 40, 2, 1),
(2244, 40, 2, 2),
(2245, 40, 2, 3),
(2246, 40, 2, 4),
(2247, 40, 3, 1),
(2248, 40, 3, 2),
(2249, 40, 3, 3),
(2250, 40, 3, 4),
(2251, 41, 1, 1),
(2252, 41, 1, 2),
(2253, 41, 1, 3),
(2254, 41, 1, 4),
(2255, 41, 2, 1),
(2256, 41, 2, 2),
(2257, 41, 2, 3),
(2258, 41, 2, 4),
(2259, 41, 3, 1),
(2260, 41, 3, 2),
(2261, 41, 3, 3),
(2262, 41, 3, 4),
(2263, 40, 1, 1),
(2264, 40, 1, 2),
(2265, 40, 1, 3),
(2266, 40, 1, 4),
(2267, 40, 2, 1),
(2268, 40, 2, 2),
(2269, 40, 2, 3),
(2270, 40, 2, 4),
(2271, 40, 3, 1),
(2272, 40, 3, 2),
(2273, 40, 3, 3),
(2274, 40, 3, 4),
(2275, 41, 1, 1),
(2276, 41, 1, 2),
(2277, 41, 1, 3),
(2278, 41, 1, 4),
(2279, 41, 2, 1),
(2280, 41, 2, 2),
(2281, 41, 2, 3),
(2282, 41, 2, 4),
(2283, 41, 3, 1),
(2284, 41, 3, 2),
(2285, 41, 3, 3),
(2286, 41, 3, 4),
(2287, 40, 1, 1),
(2288, 40, 1, 2),
(2289, 40, 1, 3),
(2290, 40, 1, 4),
(2291, 40, 2, 1),
(2292, 40, 2, 2),
(2293, 40, 2, 3),
(2294, 40, 2, 4),
(2295, 40, 3, 1),
(2296, 40, 3, 2),
(2297, 40, 3, 3),
(2298, 40, 3, 4),
(2299, 41, 1, 1),
(2300, 41, 1, 2),
(2301, 41, 1, 3),
(2302, 41, 1, 4),
(2303, 41, 2, 1),
(2304, 41, 2, 2),
(2305, 41, 2, 3),
(2306, 41, 2, 4),
(2307, 41, 3, 1),
(2308, 41, 3, 2),
(2309, 41, 3, 3),
(2310, 41, 3, 4),
(2311, 40, 1, 1),
(2312, 40, 1, 2),
(2313, 40, 1, 3),
(2314, 40, 1, 4),
(2315, 40, 2, 1),
(2316, 40, 2, 2),
(2317, 40, 2, 3),
(2318, 40, 2, 4),
(2319, 40, 3, 1),
(2320, 40, 3, 2),
(2321, 40, 3, 3),
(2322, 40, 3, 4),
(2323, 41, 1, 1),
(2324, 41, 1, 2),
(2325, 41, 1, 3),
(2326, 41, 1, 4),
(2327, 41, 2, 1),
(2328, 41, 2, 2),
(2329, 41, 2, 3),
(2330, 41, 2, 4),
(2331, 41, 3, 1),
(2332, 41, 3, 2),
(2333, 41, 3, 3),
(2334, 41, 3, 4),
(2335, 40, 1, 1),
(2336, 40, 1, 2),
(2337, 40, 1, 3),
(2338, 40, 1, 4),
(2339, 40, 2, 1),
(2340, 40, 2, 2),
(2341, 40, 2, 3),
(2342, 40, 2, 4),
(2343, 40, 3, 1),
(2344, 40, 3, 2),
(2345, 40, 3, 3),
(2346, 40, 3, 4),
(2347, 41, 1, 1),
(2348, 41, 1, 2),
(2349, 41, 1, 3),
(2350, 41, 1, 4),
(2351, 41, 2, 1),
(2352, 41, 2, 2),
(2353, 41, 2, 3),
(2354, 41, 2, 4),
(2355, 41, 3, 1),
(2356, 41, 3, 2),
(2357, 41, 3, 3),
(2358, 41, 3, 4),
(2359, 40, 1, 1),
(2360, 40, 1, 2),
(2361, 40, 1, 3),
(2362, 40, 1, 4),
(2363, 40, 2, 1),
(2364, 40, 2, 2),
(2365, 40, 2, 3),
(2366, 40, 2, 4),
(2367, 40, 3, 1),
(2368, 40, 3, 2),
(2369, 40, 3, 3),
(2370, 40, 3, 4),
(2371, 41, 1, 1),
(2372, 41, 1, 2),
(2373, 41, 1, 3),
(2374, 41, 1, 4),
(2375, 41, 2, 1),
(2376, 41, 2, 2),
(2377, 41, 2, 3),
(2378, 41, 2, 4),
(2379, 41, 3, 1),
(2380, 41, 3, 2),
(2381, 41, 3, 3),
(2382, 41, 3, 4),
(2383, 40, 1, 1),
(2384, 40, 1, 2),
(2385, 40, 1, 3),
(2386, 40, 1, 4),
(2387, 40, 2, 1),
(2388, 40, 2, 2),
(2389, 40, 2, 3),
(2390, 40, 2, 4),
(2391, 40, 3, 1),
(2392, 40, 3, 2),
(2393, 40, 3, 3),
(2394, 40, 3, 4),
(2395, 41, 1, 1),
(2396, 41, 1, 2),
(2397, 41, 1, 3),
(2398, 41, 1, 4),
(2399, 41, 2, 1),
(2400, 41, 2, 2),
(2401, 41, 2, 3),
(2402, 41, 2, 4),
(2403, 41, 3, 1),
(2404, 41, 3, 2),
(2405, 41, 3, 3),
(2406, 41, 3, 4),
(2407, 40, 1, 1),
(2408, 40, 1, 2),
(2409, 40, 1, 3),
(2410, 40, 1, 4),
(2411, 40, 2, 1),
(2412, 40, 2, 2),
(2413, 40, 2, 3),
(2414, 40, 2, 4),
(2415, 40, 3, 1),
(2416, 40, 3, 2),
(2417, 40, 3, 3),
(2418, 40, 3, 4),
(2419, 41, 1, 1),
(2420, 41, 1, 2),
(2421, 41, 1, 3),
(2422, 41, 1, 4),
(2423, 41, 2, 1),
(2424, 41, 2, 2),
(2425, 41, 2, 3),
(2426, 41, 2, 4),
(2427, 41, 3, 1),
(2428, 41, 3, 2),
(2429, 41, 3, 3),
(2430, 41, 3, 4),
(2431, 40, 1, 1),
(2432, 40, 1, 2),
(2433, 40, 1, 3),
(2434, 40, 1, 4),
(2435, 40, 2, 1),
(2436, 40, 2, 2),
(2437, 40, 2, 3),
(2438, 40, 2, 4),
(2439, 40, 3, 1),
(2440, 40, 3, 2),
(2441, 40, 3, 3),
(2442, 40, 3, 4),
(2443, 41, 1, 1),
(2444, 41, 1, 2),
(2445, 41, 1, 3),
(2446, 41, 1, 4),
(2447, 41, 2, 1),
(2448, 41, 2, 2),
(2449, 41, 2, 3),
(2450, 41, 2, 4),
(2451, 41, 3, 1),
(2452, 41, 3, 2),
(2453, 41, 3, 3),
(2454, 41, 3, 4),
(2455, 40, 1, 1),
(2456, 40, 1, 2),
(2457, 40, 1, 3),
(2458, 40, 1, 4),
(2459, 40, 2, 1),
(2460, 40, 2, 2),
(2461, 40, 2, 3),
(2462, 40, 2, 4),
(2463, 40, 3, 1),
(2464, 40, 3, 2),
(2465, 40, 3, 3),
(2466, 40, 3, 4),
(2467, 41, 1, 1),
(2468, 41, 1, 2),
(2469, 41, 1, 3),
(2470, 41, 1, 4),
(2471, 41, 2, 1),
(2472, 41, 2, 2),
(2473, 41, 2, 3),
(2474, 41, 2, 4),
(2475, 41, 3, 1),
(2476, 41, 3, 2),
(2477, 41, 3, 3),
(2478, 41, 3, 4),
(2479, 40, 1, 1),
(2480, 40, 1, 2),
(2481, 40, 1, 3),
(2482, 40, 1, 4),
(2483, 40, 2, 1),
(2484, 40, 2, 2),
(2485, 40, 2, 3),
(2486, 40, 2, 4),
(2487, 40, 3, 1),
(2488, 40, 3, 2),
(2489, 40, 3, 3),
(2490, 40, 3, 4),
(2491, 41, 1, 1),
(2492, 41, 1, 2),
(2493, 41, 1, 3),
(2494, 41, 1, 4),
(2495, 41, 2, 1),
(2496, 41, 2, 2),
(2497, 41, 2, 3),
(2498, 41, 2, 4),
(2499, 41, 3, 1),
(2500, 41, 3, 2),
(2501, 41, 3, 3),
(2502, 41, 3, 4),
(2503, 40, 1, 1),
(2504, 40, 1, 2),
(2505, 40, 1, 3),
(2506, 40, 1, 4),
(2507, 40, 2, 1),
(2508, 40, 2, 2),
(2509, 40, 2, 3),
(2510, 40, 2, 4),
(2511, 40, 3, 1),
(2512, 40, 3, 2),
(2513, 40, 3, 3),
(2514, 40, 3, 4),
(2515, 41, 1, 1),
(2516, 41, 1, 2),
(2517, 41, 1, 3),
(2518, 41, 1, 4),
(2519, 41, 2, 1),
(2520, 41, 2, 2),
(2521, 41, 2, 3),
(2522, 41, 2, 4),
(2523, 41, 3, 1),
(2524, 41, 3, 2),
(2525, 41, 3, 3),
(2526, 41, 3, 4),
(2527, 40, 1, 1),
(2528, 40, 1, 2),
(2529, 40, 1, 3),
(2530, 40, 1, 4),
(2531, 40, 2, 1),
(2532, 40, 2, 2),
(2533, 40, 2, 3),
(2534, 40, 2, 4),
(2535, 40, 3, 1),
(2536, 40, 3, 2),
(2537, 40, 3, 3),
(2538, 40, 3, 4),
(2539, 41, 1, 1),
(2540, 41, 1, 2),
(2541, 41, 1, 3),
(2542, 41, 1, 4),
(2543, 41, 2, 1),
(2544, 41, 2, 2),
(2545, 41, 2, 3),
(2546, 41, 2, 4),
(2547, 41, 3, 1),
(2548, 41, 3, 2),
(2549, 41, 3, 3),
(2550, 41, 3, 4),
(2551, 40, 1, 1),
(2552, 40, 1, 2),
(2553, 40, 1, 3),
(2554, 40, 1, 4),
(2555, 40, 2, 1),
(2556, 40, 2, 2),
(2557, 40, 2, 3),
(2558, 40, 2, 4),
(2559, 40, 3, 1),
(2560, 40, 3, 2),
(2561, 40, 3, 3),
(2562, 40, 3, 4),
(2563, 41, 1, 1),
(2564, 41, 1, 2),
(2565, 41, 1, 3),
(2566, 41, 1, 4),
(2567, 41, 2, 1),
(2568, 41, 2, 2),
(2569, 41, 2, 3),
(2570, 41, 2, 4),
(2571, 41, 3, 1),
(2572, 41, 3, 2),
(2573, 41, 3, 3),
(2574, 41, 3, 4),
(2575, 40, 1, 1),
(2576, 40, 1, 2),
(2577, 40, 1, 3),
(2578, 40, 1, 4),
(2579, 40, 2, 1),
(2580, 40, 2, 2),
(2581, 40, 2, 3),
(2582, 40, 2, 4),
(2583, 40, 3, 1),
(2584, 40, 3, 2),
(2585, 40, 3, 3),
(2586, 40, 3, 4),
(2587, 41, 1, 1),
(2588, 41, 1, 2),
(2589, 41, 1, 3),
(2590, 41, 1, 4),
(2591, 41, 2, 1),
(2592, 41, 2, 2),
(2593, 41, 2, 3),
(2594, 41, 2, 4),
(2595, 41, 3, 1),
(2596, 41, 3, 2),
(2597, 41, 3, 3),
(2598, 41, 3, 4),
(2599, 40, 1, 1),
(2600, 40, 1, 2),
(2601, 40, 1, 3),
(2602, 40, 1, 4),
(2603, 40, 2, 1),
(2604, 40, 2, 2),
(2605, 40, 2, 3),
(2606, 40, 2, 4),
(2607, 40, 3, 1),
(2608, 40, 3, 2),
(2609, 40, 3, 3),
(2610, 40, 3, 4),
(2611, 41, 1, 1),
(2612, 41, 1, 2),
(2613, 41, 1, 3),
(2614, 41, 1, 4),
(2615, 41, 2, 1),
(2616, 41, 2, 2),
(2617, 41, 2, 3),
(2618, 41, 2, 4),
(2619, 41, 3, 1),
(2620, 41, 3, 2),
(2621, 41, 3, 3),
(2622, 41, 3, 4),
(2623, 40, 1, 1),
(2624, 40, 1, 2),
(2625, 40, 1, 3),
(2626, 40, 1, 4),
(2627, 40, 2, 1),
(2628, 40, 2, 2),
(2629, 40, 2, 3),
(2630, 40, 2, 4),
(2631, 40, 3, 1),
(2632, 40, 3, 2),
(2633, 40, 3, 3),
(2634, 40, 3, 4),
(2635, 41, 1, 1),
(2636, 41, 1, 2),
(2637, 41, 1, 3),
(2638, 41, 1, 4),
(2639, 41, 2, 1),
(2640, 41, 2, 2),
(2641, 41, 2, 3),
(2642, 41, 2, 4),
(2643, 41, 3, 1),
(2644, 41, 3, 2),
(2645, 41, 3, 3),
(2646, 41, 3, 4),
(2647, 40, 1, 1),
(2648, 40, 1, 2),
(2649, 40, 1, 3),
(2650, 40, 1, 4),
(2651, 40, 2, 1),
(2652, 40, 2, 2),
(2653, 40, 2, 3),
(2654, 40, 2, 4),
(2655, 40, 3, 1),
(2656, 40, 3, 2),
(2657, 40, 3, 3),
(2658, 40, 3, 4),
(2659, 41, 1, 1),
(2660, 41, 1, 2),
(2661, 41, 1, 3),
(2662, 41, 1, 4),
(2663, 41, 2, 1),
(2664, 41, 2, 2),
(2665, 41, 2, 3),
(2666, 41, 2, 4),
(2667, 41, 3, 1),
(2668, 41, 3, 2),
(2669, 41, 3, 3),
(2670, 41, 3, 4),
(2671, 40, 1, 1),
(2672, 40, 1, 2),
(2673, 40, 1, 3),
(2674, 40, 1, 4),
(2675, 40, 2, 1),
(2676, 40, 2, 2),
(2677, 40, 2, 3),
(2678, 40, 2, 4),
(2679, 40, 3, 1),
(2680, 40, 3, 2),
(2681, 40, 3, 3),
(2682, 40, 3, 4),
(2683, 41, 1, 1),
(2684, 41, 1, 2),
(2685, 41, 1, 3),
(2686, 41, 1, 4),
(2687, 41, 2, 1),
(2688, 41, 2, 2),
(2689, 41, 2, 3),
(2690, 41, 2, 4),
(2691, 41, 3, 1),
(2692, 41, 3, 2),
(2693, 41, 3, 3),
(2694, 41, 3, 4),
(2695, 40, 1, 1),
(2696, 40, 1, 2),
(2697, 40, 1, 3),
(2698, 40, 1, 4),
(2699, 40, 2, 1),
(2700, 40, 2, 2),
(2701, 40, 2, 3),
(2702, 40, 2, 4),
(2703, 40, 3, 1),
(2704, 40, 3, 2),
(2705, 40, 3, 3),
(2706, 40, 3, 4),
(2707, 41, 1, 1),
(2708, 41, 1, 2),
(2709, 41, 1, 3),
(2710, 41, 1, 4),
(2711, 41, 2, 1),
(2712, 41, 2, 2),
(2713, 41, 2, 3),
(2714, 41, 2, 4),
(2715, 41, 3, 1),
(2716, 41, 3, 2),
(2717, 41, 3, 3),
(2718, 41, 3, 4),
(2719, 40, 1, 1),
(2720, 40, 1, 2),
(2721, 40, 1, 3),
(2722, 40, 1, 4),
(2723, 40, 2, 1),
(2724, 40, 2, 2),
(2725, 40, 2, 3),
(2726, 40, 2, 4),
(2727, 40, 3, 1),
(2728, 40, 3, 2),
(2729, 40, 3, 3),
(2730, 40, 3, 4),
(2731, 41, 1, 1),
(2732, 41, 1, 2),
(2733, 41, 1, 3),
(2734, 41, 1, 4),
(2735, 41, 2, 1),
(2736, 41, 2, 2),
(2737, 41, 2, 3),
(2738, 41, 2, 4),
(2739, 41, 3, 1),
(2740, 41, 3, 2),
(2741, 41, 3, 3),
(2742, 41, 3, 4),
(2743, 40, 1, 1),
(2744, 40, 1, 2),
(2745, 40, 1, 3),
(2746, 40, 1, 4),
(2747, 40, 2, 1),
(2748, 40, 2, 2),
(2749, 40, 2, 3),
(2750, 40, 2, 4),
(2751, 40, 3, 1),
(2752, 40, 3, 2),
(2753, 40, 3, 3),
(2754, 40, 3, 4),
(2755, 41, 1, 1),
(2756, 41, 1, 2),
(2757, 41, 1, 3),
(2758, 41, 1, 4),
(2759, 41, 2, 1),
(2760, 41, 2, 2),
(2761, 41, 2, 3),
(2762, 41, 2, 4),
(2763, 41, 3, 1),
(2764, 41, 3, 2),
(2765, 41, 3, 3),
(2766, 41, 3, 4),
(2767, 40, 1, 1),
(2768, 40, 1, 2),
(2769, 40, 1, 3),
(2770, 40, 1, 4),
(2771, 40, 2, 1),
(2772, 40, 2, 2),
(2773, 40, 2, 3),
(2774, 40, 2, 4),
(2775, 40, 3, 1),
(2776, 40, 3, 2),
(2777, 40, 3, 3),
(2778, 40, 3, 4),
(2779, 41, 1, 1),
(2780, 41, 1, 2),
(2781, 41, 1, 3),
(2782, 41, 1, 4),
(2783, 41, 2, 1),
(2784, 41, 2, 2),
(2785, 41, 2, 3),
(2786, 41, 2, 4),
(2787, 41, 3, 1),
(2788, 41, 3, 2),
(2789, 41, 3, 3),
(2790, 41, 3, 4),
(2791, 40, 1, 1),
(2792, 40, 1, 2),
(2793, 40, 1, 3),
(2794, 40, 1, 4),
(2795, 40, 2, 1),
(2796, 40, 2, 2),
(2797, 40, 2, 3),
(2798, 40, 2, 4),
(2799, 40, 3, 1),
(2800, 40, 3, 2),
(2801, 40, 3, 3),
(2802, 40, 3, 4),
(2803, 41, 1, 1),
(2804, 41, 1, 2),
(2805, 41, 1, 3),
(2806, 41, 1, 4),
(2807, 41, 2, 1),
(2808, 41, 2, 2),
(2809, 41, 2, 3),
(2810, 41, 2, 4),
(2811, 41, 3, 1),
(2812, 41, 3, 2),
(2813, 41, 3, 3),
(2814, 41, 3, 4),
(2815, 40, 1, 1),
(2816, 40, 1, 2),
(2817, 40, 1, 3),
(2818, 40, 1, 4),
(2819, 40, 2, 1),
(2820, 40, 2, 2),
(2821, 40, 2, 3),
(2822, 40, 2, 4),
(2823, 40, 3, 1),
(2824, 40, 3, 2),
(2825, 40, 3, 3),
(2826, 40, 3, 4),
(2827, 41, 1, 1),
(2828, 41, 1, 2),
(2829, 41, 1, 3),
(2830, 41, 1, 4),
(2831, 41, 2, 1),
(2832, 41, 2, 2),
(2833, 41, 2, 3),
(2834, 41, 2, 4),
(2835, 41, 3, 1),
(2836, 41, 3, 2),
(2837, 41, 3, 3),
(2838, 41, 3, 4),
(2839, 40, 1, 1),
(2840, 40, 1, 2),
(2841, 40, 1, 3),
(2842, 40, 1, 4),
(2843, 40, 2, 1),
(2844, 40, 2, 2),
(2845, 40, 2, 3),
(2846, 40, 2, 4),
(2847, 40, 3, 1),
(2848, 40, 3, 2),
(2849, 40, 3, 3),
(2850, 40, 3, 4),
(2851, 41, 1, 1),
(2852, 41, 1, 2),
(2853, 41, 1, 3),
(2854, 41, 1, 4),
(2855, 41, 2, 1),
(2856, 41, 2, 2),
(2857, 41, 2, 3),
(2858, 41, 2, 4),
(2859, 41, 3, 1),
(2860, 41, 3, 2),
(2861, 41, 3, 3),
(2862, 41, 3, 4),
(2863, 40, 1, 1),
(2864, 40, 1, 2),
(2865, 40, 1, 3),
(2866, 40, 1, 4),
(2867, 40, 2, 1),
(2868, 40, 2, 2),
(2869, 40, 2, 3),
(2870, 40, 2, 4),
(2871, 40, 3, 1),
(2872, 40, 3, 2),
(2873, 40, 3, 3),
(2874, 40, 3, 4),
(2875, 41, 1, 1),
(2876, 41, 1, 2),
(2877, 41, 1, 3),
(2878, 41, 1, 4),
(2879, 41, 2, 1),
(2880, 41, 2, 2),
(2881, 41, 2, 3),
(2882, 41, 2, 4),
(2883, 41, 3, 1),
(2884, 41, 3, 2),
(2885, 41, 3, 3),
(2886, 41, 3, 4),
(2887, 40, 1, 1),
(2888, 40, 1, 2),
(2889, 40, 1, 3),
(2890, 40, 1, 4),
(2891, 40, 2, 1),
(2892, 40, 2, 2),
(2893, 40, 2, 3),
(2894, 40, 2, 4),
(2895, 40, 3, 1),
(2896, 40, 3, 2),
(2897, 40, 3, 3),
(2898, 40, 3, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_img`
--

CREATE TABLE `product_img` (
  `product_img_id` int(11) NOT NULL,
  `product_img` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_img`
--

INSERT INTO `product_img` (`product_img_id`, `product_img`, `product_id`) VALUES
(11, 'product-detail-02.jpg', 40),
(12, 'product-detail-01.jpg', 40);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `review_content` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`review_id`, `review_content`, `product_id`, `user_id`) VALUES
(126, 'ádasd', 41, 'truong'),
(127, 'ádas2', 41, 'truong1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` int(11) NOT NULL COMMENT 'size id',
  `size_name` varchar(10) NOT NULL COMMENT 'size name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`size_id`, `size_name`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL COMMENT 'id tag',
  `tag_name` varchar(50) NOT NULL COMMENT 'name tag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`tag_id`, `tag_name`) VALUES
(1, 'Fashion'),
(2, 'Lifestyle'),
(3, 'Denim');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` varchar(20) NOT NULL COMMENT 'user id',
  `user_name` varchar(50) NOT NULL COMMENT 'user name',
  `user_email` varchar(50) NOT NULL COMMENT 'user email',
  `user_password` varchar(50) NOT NULL COMMENT 'user password',
  `user_img` varchar(50) NOT NULL,
  `user_roll` tinyint(4) NOT NULL,
  `user_address` varchar(50) NOT NULL,
  `user_phonenumber` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_img`, `user_roll`, `user_address`, `user_phonenumber`) VALUES
('0', 'khach-hang', '', '', '', 0, '', ''),
('admin', '', '', 'truong123', 'Screenshot 2023-07-09 211642.png', 1, '', ''),
('thangphsadas', 'thang', 'thasng@gmail.com', '123', '123.jh', 0, 'ha noi', '0912731273123'),
('truong', 'ntt', '', 'truong123', '', 0, '', ''),
('truong1', '', '', 'truong123', '', 1, '', ''),
('truong2', '', '', 'truong123', '', 1, '', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `product_detail_id` (`product_detail_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `cate_id` (`cate_id`);

--
-- Chỉ mục cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`product_detail_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `size_id` (`size_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`product_img_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id categoriy', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'color id', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id contact', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `product_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2899;

--
-- AUTO_INCREMENT cho bảng `product_img`
--
ALTER TABLE `product_img`
  MODIFY `product_img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'size id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id tag', AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`blog_id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`payment_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_detail_id`) REFERENCES `product_detail` (`product_detail_id`),
  ADD CONSTRAINT `order_detail_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `cate_id` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`cate_id`),
  ADD CONSTRAINT `tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`tag_id`);

--
-- Các ràng buộc cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `color_id` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`),
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `size_id` FOREIGN KEY (`size_id`) REFERENCES `size` (`size_id`);

--
-- Các ràng buộc cho bảng `product_img`
--
ALTER TABLE `product_img`
  ADD CONSTRAINT `product_img_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
