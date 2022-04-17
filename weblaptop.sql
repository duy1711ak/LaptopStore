-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 17, 2022 lúc 03:15 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `weblaptop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Asus'),
(2, 'Dell'),
(3, 'HP'),
(102, 'Lenovo'),
(104, 'Macbook');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `note`, `user_id`, `product_id`, `created_at`, `updated_at`, `status`) VALUES
(52, 'Sản phẩm tốt', 55, 2, '2022-04-08 11:58:41', '2022-04-08 11:58:41', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `fullname`, `email`, `phone`, `user_id`, `status`, `deleted`, `address`, `created_at`, `total_money`) VALUES
(44, 'a a', 'khoap97@gmail.com', '9999', 55, 0, 0, 'aa', '2021-05-08 11:55:42', 190180000),
(45, 'm duy', 'duy.pham1711a@hcmut.edu.vn', '123456', 56, 0, 0, 'â', '2021-06-08 12:51:15', 110000000),
(46, 'm duy', 'duy.pham1711a@hcmut.edu.vn', '123456', 56, 0, 0, 'â', '2021-07-08 12:51:35', 129580000),
(47, 'm duy', 'khoap97@gmail.com', '123456', 56, 0, 0, 'â', '2021-08-08 12:51:56', 136670000),
(48, 'm duy', 'a@hcn.ade', '123456', 56, 0, 0, 'â', '2021-09-08 12:52:21', 47180000),
(49, 'm duy', 'a@hcn.ade', '123456', 56, 0, 0, 'â', '2021-09-08 12:52:52', 425000000),
(50, 'm duy', 'khoakmp97@gmail.com', '123456', 56, 0, 0, 'â', '2021-10-08 12:56:06', 475000000),
(51, 'm duy', 'duy.pham1711a@hcmut.edu.vn', '123456', 56, 0, 0, 'â', '2021-11-08 12:56:20', 72570000),
(52, 'm duy', 'duy.pham1711a@hcmut.edu.vn', '123456', 56, 0, 0, 'â', '2021-12-08 12:56:38', 83950000),
(53, 'm duy', 'duy.pham1711a@hcmut.edu.vn', '123456', 56, 0, 0, 'â', '2022-01-08 12:56:56', 77450000),
(54, 'm duy', 'khoap97@gmail.com', '123456', 56, 0, 0, 'â', '2022-02-08 12:57:19', 59980000),
(55, 'm duy', 'duy.pham1711a@hcmut.edu.vn', '123456', 56, 0, 0, 'â', '2022-03-08 12:57:36', 263980000),
(56, 'm duy', 'duy.pham1711a@hcmut.edu.vn', '123456', 56, 1, 0, 'â', '2022-04-08 12:57:54', 55770000),
(57, 'aaaa aaa', 'a@hcn.ade', '9999', 56, 1, 0, 'aa', '2022-04-17 15:08:07', 220000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `num`, `total_money`) VALUES
(80, 44, 2, 110000000, 1, 110000000),
(81, 44, 23, 47790000, 1, 47790000),
(82, 44, 26, 32390000, 1, 32390000),
(83, 45, 2, 110000000, 1, 110000000),
(84, 46, 3, 95000000, 1, 95000000),
(85, 46, 10, 18590000, 1, 18590000),
(86, 46, 15, 15990000, 1, 15990000),
(87, 47, 22, 41090000, 1, 41090000),
(88, 47, 23, 47790000, 2, 95580000),
(89, 48, 17, 24690000, 1, 24690000),
(90, 48, 19, 22490000, 1, 22490000),
(91, 49, 2, 110000000, 3, 330000000),
(92, 49, 3, 95000000, 1, 95000000),
(93, 50, 3, 95000000, 5, 475000000),
(94, 51, 11, 24190000, 3, 72570000),
(95, 52, 12, 16990000, 4, 67960000),
(96, 52, 15, 15990000, 1, 15990000),
(97, 53, 16, 15490000, 5, 77450000),
(98, 54, 5, 29990000, 2, 59980000),
(99, 55, 2, 110000000, 1, 110000000),
(100, 55, 3, 95000000, 1, 95000000),
(101, 55, 5, 29990000, 1, 29990000),
(102, 55, 6, 28990000, 1, 28990000),
(103, 56, 10, 18590000, 3, 55770000),
(104, 57, 2, 110000000, 2, 220000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime NOT NULL COMMENT 'thời gian chuyển khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(15) DEFAULT NULL,
  `discount` int(15) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `price`, `discount`, `thumbnail`, `description`, `created_at`, `updated_at`, `deleted`) VALUES
(2, 1, 'Laptop Asus ROG Zephyrus Duo 15 GX550LXS-HC055R ', 110000000, 120000000, 'https://anphat.com.vn/media/product/34306_34018_gx550_c14_v8_light.jpg', '', '2022-04-08 05:20:43', '2022-04-08 05:20:43', 0),
(3, 1, 'Laptop Asus ROG Zephyrus M16 GU603ZX-K8025W ', 95000000, 99000000, 'https://anphat.com.vn/media/product/40903_laptop_asus_rog_zephyrus_m16_gu603zx_k8025w__1_.jpg', NULL, '2022-04-08 05:26:28', '2022-04-08 05:26:28', 0),
(4, 1, 'Laptop Asus VivoBook TP470EA-EC347W', 17690000, 18690000, 'https://anphat.com.vn/media/product/41205_laptop_asus_vivobook_tp470ea_ec347w___1_.jpg', NULL, '2022-04-08 05:31:50', '2022-04-08 05:31:50', 0),
(5, 1, 'Laptop Asus ZenBook Duo 14 UX482EA-KA397W ', 29990000, 32490000, 'https://anphat.com.vn/media/product/41229_laptop_asus_zenbook_duo_14_ux482ea_ka397w__1_.jpg', NULL, '2022-04-08 05:31:50', '2022-04-08 05:31:50', 0),
(6, 1, 'Laptop Asus TUF Gaming F15 FX507ZC-HN124W ', 28990000, 29990000, 'https://anphat.com.vn/media/product/41157_laptop_asus_tuf_gaming_f15_fx507zc_hn124w__1_.jpg', NULL, '2022-04-08 05:34:15', '2022-04-08 05:34:15', 0),
(7, 2, 'Laptop Dell Vostro 3405 V4R53500U001W ', 14190000, 14990000, 'https://anphat.com.vn/media/product/34994_dell_vostro_3405_v4r53500u001w.jpg', NULL, '2022-04-08 05:36:08', '2022-04-08 05:36:08', 0),
(8, 2, 'Laptop Dell Vostro 3405 V4R53500U003W', 15890000, 16590000, 'https://anphat.com.vn/media/product/34997_34994_vos_3405.png', NULL, '2022-04-08 05:37:27', '2022-04-08 05:37:27', 0),
(9, 2, 'Laptop Dell Latitude 3520 70251603 ', 13490000, 15990000, 'https://anphat.com.vn/media/product/38252_laptop_dell_latitude_3520_70251603.jpg', NULL, '2022-04-08 05:37:27', '2022-04-08 05:37:27', 0),
(10, 2, 'Laptop Dell Latitude 3420 L3420I5SSD', 18590000, 21990000, 'https://anphat.com.vn/media/product/38241_laptop_dell_latitude_3420_l3420i5ssd_11.png', NULL, '2022-04-08 05:40:23', '2022-04-08 05:40:23', 0),
(11, 2, 'Laptop Dell Latitude 5420 70251602', 24190000, 25990000, 'https://anphat.com.vn/media/product/38280_dell_latitude_5420.jpg', NULL, '2022-04-08 05:40:23', '2022-04-08 05:40:23', 0),
(12, 3, 'Laptop HP ProBook 455 G7-1A1A9PA 1A1A9PA ', 16990000, 17990000, 'https://lh3.googleusercontent.com/FtGRcy_oIeUAotm-TjucmxYdAWgwle17QQQ4Fedc-eeOQd7jX9Pc9pKePfzDWZ2iasrv11C9J9IQDatZe4SA=w500-rw', NULL, '2022-04-08 05:42:34', '2022-04-08 05:42:34', 0),
(13, 3, 'Laptop HP 340s G7 224L1PA ', 13490000, 15190000, 'https://lh3.googleusercontent.com/-ciqGRCqLJNeniVmoWv17iORlH_TwEKouKyP4b7QS-hAxtufI93b_UyOoF51uLvf6doIHsijLAQ54AdVjGgR=w500-rw', NULL, '2022-04-08 05:42:34', '2022-04-08 05:42:34', 0),
(14, 3, 'Laptop HP 14s-fq1080AU 4K0Z7PA ', 11490000, 12490000, 'https://lh3.googleusercontent.com/_HFuKjRt5qovjNkA880a6i8bL0ytOY8PGq7sCKiPVw-les6kLK9KV918EnBsTD7P4t0qpMm455lI6puu1HLsZi521YCL1bicEg=w500-rw', NULL, '2022-04-08 05:47:58', '2022-04-08 05:47:58', 0),
(15, 3, 'Laptop HP 240 G8 3D0E1PA ', 15990000, 17190000, 'https://lh3.googleusercontent.com/GjM6yUlY_BcZkDeJk7Mij-tTxsVgHbWDlHDFVspBIr0nJ8WM0qOcdtvjaRlJz2JgOjuqzerdZEdeX5aVr3ufAi-rJd4Q37ZV=w500-rw', NULL, '2022-04-08 05:47:58', '2022-04-08 05:47:58', 0),
(16, 3, 'Laptop HP 15s-fq2602TU 4B6D3PA ', 15490000, 16990000, 'https://lh3.googleusercontent.com/eZeICYT1g6cdJCqzt5ZElIRtTbdoylYktDhNE5Us4KwJ3DKH6jI8WeNxB7r41bajN8CZ9rDgpkmxAMx4Nrn6JVQA5TVOfoK9=w500-rw', '15.6\" HD/Intel Core i5-1135G7/8GB/256GB SSD/Windows 11 Home/1.7kg', '2022-04-08 05:50:26', '2022-04-08 05:50:26', 0),
(17, 102, 'Laptop Lenovo Yoga Slim 7 14ITL05 82A300A6VN ', 24690000, 25990000, 'https://lh3.googleusercontent.com/K59vg7xBBX6DNH1BLS6ygSNcmliJVcijy3RZt5nfqo-T7p0539bi8hScoexjl1QJBlfgYq230Kd0Rpoq7goWSltTVMnZp18=w500-rw', '14\" Full HD/Intel Core i7-1165G7/8GB/512GB SSD/Windows 10 Home 64-bit/1.35kg', '2022-04-08 05:50:26', '2022-04-08 05:50:26', 0),
(18, 102, 'Laptop Lenovo Ideapad 330-15IKBR (15IKBR 81DE010CVN) ', 11090000, 12990000, 'https://lh3.googleusercontent.com/8cktyolf1YhyJiENXhc-Vs_uAMZCnUhCqopduvFAIQlT0XyjUPaokCjVVseJy56Mt2BvFPuyS0BBzglC5zXL=w500-rw', '15.6\" HD/i3-7020U/4GB/2TB HDD/Radeon 530/Win10/2.2 kg', '2022-04-08 11:08:04', '2022-04-08 11:08:04', 0),
(19, 102, 'Laptop Lenovo Yoga Slim 7 14ITL05- 82A3002QVN ', 22490000, 23990000, 'https://lh3.googleusercontent.com/mDpwK582ojVT752QaoiN3fjqWzujQEPx9GMFLfcGz_KyIvg6izyCFnOLtnAb7MPtYV38hLUPs1tBACJ2bxaZkCmpqOuVbfZ3=w500-rw', '14 inch Full HD/Intel Evo Core i5-1135G7/8GB/512GB SSD/Windows 10 Home 64-bit/1.4kg', '2022-04-08 11:08:04', '2022-04-08 11:08:04', 0),
(20, 102, 'Laptop Lenovo IdeaPad 3 15ITL6 82H800M3VN ', 15090000, 16490000, 'https://lh3.googleusercontent.com/7EK0a5iZreAjbhdtBac5Oq1cRo5VlGQwtpOx6925bE8LdCmCgaVIlnWO-E1DGe5Rd2LaeGRzVFXloi_HjdLLITqkiSu0OdI=w500-rw', '15.6\" Full HD/Intel Core i5-1135G7/8GB/256GB SSD/Windows 10 Home 64-bit/1.6kg', '2022-04-08 11:15:25', '2022-04-08 11:15:25', 0),
(21, 102, 'Laptop Lenovo Ideapad Gaming 3 15IMH05 81Y400X0VN ', 17990000, 19490000, 'https://lh3.googleusercontent.com/-RFRxktQLI7wbcSrGG4s9caLaaCZV5_bl6TcsZ7SlcVpB47XYtkSRUdBp3PAo7mcMSLqH9IerUjK4TVyUI3vL2GgtLSQfMC7=w500-rw', '15.6\" Full HD/ 120Hz/Intel Core i5-10300H/8GB/512GB SSD/NVIDIA GeForce GTX 1650/Windows 10 Home 64-bit/2.2kg', '2022-04-08 11:15:25', '2022-04-08 11:15:25', 0),
(22, 104, 'Laptop Apple Macbook Pro 2018 13.3\" MR9U2 ', 41090000, 42990000, 'https://lh3.googleusercontent.com/qgVwPKOgCXFJjAO-HB7Su5OPg7sBv4pJj9hTJxdvuz7GlWzA4gVaIC19oasGWcjIUgbqwZBpH1_OkTjyj_M=w500-rw', '13.3\"/Core i5/8GB/HD/macOS/1.4 kg', '2022-04-08 11:23:13', '2022-04-08 11:23:13', 0),
(23, 104, 'Laptop Apple MacBook Pro 2018 13.3inch MR9R2 ', 47790000, 48990000, 'https://lh3.googleusercontent.com/9eLN7Yv5USoT6IKyJ6iMIFpJwYfEDj2qqBPU9AQWcEIitp1Hy5vUskvqNBsfFNg1ShLopOeOjOSSXQuuEtQv=w500-rw', '13.3inch/Core i5/8GB/Iris Plus 650/macOS', '2022-04-08 11:23:13', '2022-04-08 11:23:13', 0),
(24, 104, 'Laptop Apple MacBook Air 13\" 2019 MVFL2SA/A', 32190000, 33990000, 'https://lh3.googleusercontent.com/EdLLoLMtdb-eIbE6Egm2FxMfFIhM8fS1bqofnmQyvCzMxw10rl6IcdschPlNn-dQEdKN5WJuTq1Gjetzdg=w500-rw', 'Core i5/8GB/256GB SSD/UHD 617/macOS/1.3 kg', '2022-04-08 11:34:50', '2022-04-08 11:34:50', 0),
(25, 104, 'Laptop APPLE MacBook Air 2020 MGND3SA/A ', 25490000, 26990000, 'https://lh3.googleusercontent.com/H8aR8mTRbr_6glN838f0Hfp9VSzIwtafB6ZiV2UcMYV2OqcFKRCb9sc0d9v8N5NohXnNyZlQQEwcYVQvmr9VK0jStt4Kc4f2jQ=w500-rw', '13.3\" Apple M1/8GB/256GB SSD/macOS/1.3kg', '2022-04-08 11:34:50', '2022-04-08 11:34:50', 0),
(26, 104, 'Laptop APPLE MacBook Pro 2020 MYDA2SA/A', 32390000, 33990000, 'https://lh3.googleusercontent.com/TpaYuw4yUvUwc5Pgc7rUdPYkoJMcFnI-7uRLTlGaRWU8Ereqi42--p2U-Ufjs5cjFcOa_FBNq2aG7W0VZlvljREsXYUuapMN=w500-rw', '13.3\" Apple M1/8GB/256GB SSD/macOS/1.4kg', '2022-04-08 11:45:29', '2022-04-08 11:45:29', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `user_id` int(11) NOT NULL,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tokens`
--

INSERT INTO `tokens` (`user_id`, `token`, `created_at`) VALUES
(55, 'cd8347ca74f524312cc65ab0cf99c808', '2022-04-08 11:58:27'),
(56, '929af8a5894958c459158e589151fda0', '2022-04-17 15:00:26'),
(56, 'e4626d38622b561b76baa137e8569151', '2022-04-08 12:41:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `phone_number`, `address`, `password`, `role_id`, `deleted`) VALUES
(53, 'm duy', 'duy@gmail.com', '999', 'aa', '0b8772b96bb93b4080a4d2dc6c82506d', 1, 0),
(54, 'a a', 'duy.pham1711a@hcmut.edu.vn', '999', 'aa', '389b59e4683b361423ff7030e68fc978', 1, 0),
(55, 'Phạm Minh Duy', 'khoap97@gmail.com', '999', 'aa', 'b4cbd48886a5331c5eb2fedadabe311c', 1, 0),
(56, 'Minh Duy', 'a@hcn.ade', '123456789', 'aa', 'b4cbd48886a5331c5eb2fedadabe311c', 2, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userreview` (`user_id`),
  ADD KEY `productreview` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orderSuccess` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `a` (`order_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paymentUserid` (`user_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`user_id`,`token`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `productreview` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `userreview` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orderSuccess` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `a` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `paymentUserid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `fk_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
