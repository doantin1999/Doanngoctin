-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 01, 2023 lúc 07:28 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlybanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(10) NOT NULL,
  `quantity` float NOT NULL,
  `unitprice` float NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `quantity`, `unitprice`, `amount`) VALUES
(3, 1233, 17500000, 1244),
(4, 1233, 17500000, 1244),
(5, 1233, 17500000, 122),
(6, 1233, 17500000, 21577500000),
(7, 1233, 17500000, 21577500000),
(8, 1, 50000, 0),
(9, 1, 50000, 0),
(10, 1, 50000, 0),
(11, 1, 50000, 50000),
(12, 1, 50000, 50000),
(13, 1, 50000, 50000),
(14, 1, 50000, 50000),
(15, 1, 50000, 50000),
(16, 1, 50000, 50000),
(17, 1, 50000, 50000),
(18, 1, 50000, 50000),
(19, 1, 50000, 50000),
(20, 1, 50000, 50000),
(21, 1, 50000, 50000),
(22, 1, 50000, 50000),
(23, 1, 50000, 50000),
(24, 1, 50000, 50000),
(25, 1, 50000, 50000),
(26, 1, 50000, 50000),
(27, 1, 50000, 50000),
(28, 1, 50000, 50000),
(29, 1, 50000, 50000),
(30, 1, 50000, 50000),
(31, 1, 50000, 50000),
(32, 1, 50000, 50000),
(33, 1, 50000, 50000),
(34, 1, 50000, 50000),
(35, 1, 50000, 50000),
(36, 2, 50000, 10000),
(37, 1, 50000, 50000),
(38, 1, 50000, 50000),
(39, 1, 50000, 50000),
(40, 1, 50000, 50000),
(41, 1, 50000, 50000),
(42, 1, 50000, 50000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cancel`
--

CREATE TABLE `cancel` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `pmode` varchar(100) NOT NULL,
  `products` varchar(10000) NOT NULL,
  `amount_paid` int(100) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cancel`
--

INSERT INTO `cancel` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`, `created_at`) VALUES
(73, 'Lê Văn Thức', 'doanngocphap1965@gmail.com', '0903571591', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Toán bồi dưỡng và nâng cao 10(1), CẤU TRÚC CỦA SÁCH MEGA 2020 – SIÊU TỐC LUYỆN ĐỀ THPT QUỐC GIA MÔN TOÁN(1), Ôn luyện thi vào lớp 10 môn toán(1), Sách Các Chuyên Đề Bồi Dưỡng Học Sinh Giỏi Hóa Học 12 Ebook PDF(1)', 334000, '2021-11-13'),
(75, 'Võ Giang Linh', 'dntin.18it2@gmail.com', '0795620064', '873 Ngô Quyền', 'Ngân hàng trực tuyến', 'Toán bồi dưỡng và nâng cao 10(1), Sách Kĩ Thuật Giải Nhanh Bài Toán Hay Và Khó Giải Tích 12(1)', 145000, '2021-11-16'),
(76, 'Trần Đình Thắng', 'dntin.18it2@gmail.com', '9091297199', '873 Ngô Quyền', 'Thẻ tín dụng ghi nợ', 'Cấp tốc 789+ tổng hợp ôn thi THPT Quốc Gia môn Lý(1)', 150000, '2021-11-16'),
(77, 'Trần Đình Thắng', 'doanngocphap1965@gmail.com', '0901732111', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Toán bồi dưỡng và nâng cao 10(1), CẤU TRÚC CỦA SÁCH MEGA 2020 – SIÊU TỐC LUYỆN ĐỀ THPT QUỐC GIA MÔN TOÁN(1), Chuyên Đề Bồi Dưỡng Học Sinh Giỏi THCS Môn Vật Lí(1)', 254000, '2021-11-17'),
(78, 'Đoàn Thanh Hải', 'gianglinh@gmail.com', '0903571591', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Toán bồi dưỡng và nâng cao 10(1)', 25000, '2021-11-19'),
(80, 'Lê Văn Thức', 'thucle5000@gmail.com', '0901732111', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Sách Các Chuyên Đề Bồi Dưỡng Học Sinh Giỏi Hóa Học 12 Ebook PDF(1), Sách Chuyên Đề Trọng Tâm Bồi Dưỡng Học Sinh Giỏi - Luyện Thi THPT Quốc Gia Hóa Học(1)', 192000, '2021-11-19'),
(81, 'Đoàn Ngọc Tin', 'ngoctin.doan@gmail.com', '0905489199', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Toán bồi dưỡng và nâng cao 10(1), Sách Kĩ Thuật Giải Nhanh Bài Toán Hay Và Khó Giải Tích 12(1)', 145000, '2021-11-20'),
(82, 'Đoàn Ngọc Tin', 'ngoctin.doan@gmail.com', '0905489199', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Toán bồi dưỡng và nâng cao 10(1), Sách Kĩ Thuật Giải Nhanh Bài Toán Hay Và Khó Giải Tích 12(1)', 145000, '2021-11-20'),
(83, 'Đoàn Ngọc Tin', 'ngoctin.doan@gmail.com', '0905489199', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Toán bồi dưỡng và nâng cao 10(3)', 75000, '2022-01-08'),
(88, 'Đoàn Ngọc Tin', 'ngoctin.doan@gmail.com', '0795620064', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Thép hộp 20×40(1)', 69000, '2022-07-23'),
(89, 'Đoàn Ngọc Tin', 'ngoctin.doan@gmail.com', '0795620064', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Thép hộp 20×40(1), Thép hộp 20×20(1)', 99000, '2022-07-23'),
(91, 'Võ Giang Linh', 'gianglinh@gmail.com', '0903571591', 'K43/26 Lê Hữu Trác', 'Thanh toán khi giao hàng', 'Thép hộp 20×40(2), Thép ống kẽm Ø 21(1), Thép ống D60(1), Tôn kẽm cuộn(3)', 808000, '2022-08-06'),
(92, 'Võ Giang Linh', 'gianglinh@gmail.com', '0903571591', 'K43/26 Lê Hữu Trác', 'Thanh toán khi giao hàng', 'Thép hộp 20×40(1), Thép hộp 20×20(1), Thép hộp 40×40(1)', 189000, '2022-08-06'),
(94, 'Võ Giang Linh', 'gianglinh@gmail.com', '0903571591', 'K43/26 Lê Hữu Trác', 'Thanh toán khi giao hàng', 'Thép hộp 20×40(1), Thép hộp 40×40(1), Thép ống kẽm Ø 21(1)', 279000, '2022-08-06'),
(98, 'Đoàn Ngọc Tin', 'ngoctin.doan@gmail.com', '0795620064', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Thép hộp 20×40(1), Thép hộp 20×20(1)', 99000, '2022-08-15'),
(99, 'Đoàn Ngọc Tin', 'ngoctin.doan@gmail.com', '0795620064', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Thép hộp 20×40(1), Thép hộp 40×40(1)', 159000, '2022-08-15'),
(100, 'Đoàn Ngọc Tin', 'ngoctin.doan@gmail.com', '0795620064', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Thép hộp 25×50(1), Thép hộp 40×40(1), Thép ống kẽm Ø 21(1)', 289000, '2022-08-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` longblob NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` int(100) NOT NULL,
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `href_param` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`, `href_param`) VALUES
(20, 'Loại hình vuông', '2021-11-01', '2022-07-29', NULL),
(21, 'Loại hình chữ nhật', '2021-11-01', '2022-07-29', NULL),
(22, 'Loại hình tròn', '2021-11-01', '2022-07-29', NULL),
(23, 'Loại tôn', '2021-11-01', '2022-07-29', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class`
--

CREATE TABLE `class` (
  `id` int(10) NOT NULL,
  `class` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `date1`, `gender`, `address`, `phone`, `image`) VALUES
(19, 'Đoàn Ngọc Tin', 'ngoctin.doan@gmail.com', 'Ngoctin.1999!', '1999-03-22', 'Nam', '873 Ngô Quyền, Sơn Trà, Đà Nẵng.', '0795620064', 0x68747470733a2f2f73756e656467652e636f2e696e2f6173736574732f75706c6f6164732f70726f66696c655f706963732f61646d696e2e706e67),
(20, 'Lê Văn Thức', 'thucle5000@gmail.com', 'Thucle.1999!', '2021-09-12', 'Nam', '77 Lê Lai', '0901732111', 0x68747470733a2f2f6672656570696b7073642e636f6d2f6d656469612f323032302f31312f61646d696e2d6176617461722d706e672d342e706e67),
(21, 'Đoàn Ngọc Tin', 'dntin.18it2@sict.udn.vn', 'Ngoctin.1999!', '1999-03-22', 'Nam', '873 Ngô Quyền', '0795620064', 0x68747470733a2f2f692e70696e696d672e636f6d2f353634782f37372f35622f39312f37373562393164346231626663616332616133323932623437373633633162312e6a7067),
(22, 'Võ Giang Linh', 'quangthong.y@gmail.com', 'Gianglinh.2000!', '2000-02-14', 'Nữ', 'k43/26 Lê Hữu Trác', '9091297199', 0x68747470733a2f2f63646e302e69636f6e66696e6465722e636f6d2f646174612f69636f6e732f776f6d616e2d757365722d68756d616e2d6176617461722d706572736f6e2d70726f66696c652d627573696e6573732f3130302f30322d31557365725f31342d3531322e706e67),
(23, 'Đoàn Thanh Hải', 'thanhhai@gmail.com', 'Thanhhai.1987', '1987-03-18', 'Nam', '1170 Ngô Quyền', '0901732111', 0x68747470733a2f2f64322e76696f6c65742e766e2f75706c6f6164732f7468756d626e61696c732f6176617461722f312f3533352f3239342f70686f746f2e6a7067),
(24, 'Trần Đình Thắng', 'dinhthang@gmail.com', 'Dinhthang.1990!', '2021-09-01', 'Nam', '873 Ngô Quyền', '0901732111', 0x68747470733a2f2f63616e6768616973616e2e636f6d2f77702d636f6e74656e742f75706c6f6164732f323032312f30342f39332d312e6a7067),
(25, 'Võ Giang Linh', 'gianglinh@gmail.com', 'Gianglinh.2000!', '2000-06-14', 'Nữ', 'k43/26 Lê Hữu Trác', '0901732111', 0x68747470733a2f2f75706c6f61642e77696b696d656469612e6f72672f77696b6970656469612f636f6d6d6f6e732f7468756d622f652f65632f4d6f6e615f4c6973612532435f62795f4c656f6e6172646f5f64615f56696e63692532435f66726f6d5f4332524d465f7265746f75636865642e6a70672f38303070782d4d6f6e615f4c6973612532435f62795f4c656f6e6172646f5f64615f56696e63692532435f66726f6d5f4332524d465f7265746f75636865642e6a7067);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginstudent`
--

CREATE TABLE `loginstudent` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date1` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `image` longblob NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loginstudent`
--

INSERT INTO `loginstudent` (`id`, `name`, `email`, `password`, `date1`, `gender`, `address`, `phone`, `image`, `created_at`, `updated_at`) VALUES
(27, 'Đoàn Ngọc Tin', 'ngoctin.doan@gmail.com', 'Ngoctin.1999!', '1999-03-22', 'Nam', '873 Ngô Quyền', '0795620064', 0x68747470733a2f2f6570686f746f3336302e636f6d2f75706c6f6164732f6566666563742d646174612f6570686f746f3336302e636f6d2f3133363262323265622f6c7632356537383738333633633434342e6a7067, '2022-06-21', '2023-01-05'),
(28, 'Võ Giang Linh', 'gianglinh@gmail.com', 'Gianglinh.2000!', '2000-06-14', 'Nữ', 'K43/26 Lê Hữu Trác', '0903571591', 0x68747470733a2f2f692e70696e696d672e636f6d2f373336782f31332f32652f61372f31333265613732643262633362383564393034303963396538663264306634612e6a7067, '2022-07-19', '2022-07-19'),
(29, 'Lê Văn Thức', 'thucle5000@gmail.com', 'Thucle.1990!', '2000-02-10', 'Nam', '1170 Ngô Quyền', '0905489199', 0x68747470733a2f2f312e62702e626c6f6773706f742e636f6d2f2d4c4b5245454a46614770772f586e3758356234574345492f41414141414141416153732f4259376247454b4b384273695836527370427a77634f7053473847446b6a4d4551434c63424741735948512f73313630302f416e682d4461692d4469656e2d476961752d4d617425324225323532383125323532392e6a7067, '2022-07-19', '2022-07-19'),
(32, 'Ronaldo', 'ronaldo@gmail.com', 'Ronaldo.1999!', '1998-12-28', 'Nam', '873 Ngô Quyền', '0795620064', 0x68747470733a2f2f6361666566312e6d6564696163646e2e766e2f43454f2f43454f5f35353535372e322e6a7067, '2022-08-22', '2022-08-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginstudent_1`
--

CREATE TABLE `loginstudent_1` (
  `id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login_1`
--

CREATE TABLE `login_1` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `new`
--

CREATE TABLE `new` (
  `id` int(10) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `summary` text NOT NULL,
  `content` varchar(10000) NOT NULL,
  `image` longblob NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `new`
--

INSERT INTO `new` (`id`, `title`, `summary`, `content`, `image`, `updated_at`) VALUES
(28, 'Giá thép cây châu Á giảm do ít hoạt động mua bán, nhu cầu chậm chạp ở các thành phố bị đóng cửa ở Trung Quốc', 'Giá thép cây tại châu Á giảm do nhu cầu chậm chạp xuất phát từ việc đóng cửa tại các thành phố của Trung Quốc, trong khi hoạt động mua bán yên ắng tại thị trường Singapore do người mua giữ tâm lý chờ đợi xu hướng.', 'Tại Bắc Kinh, Trung Quốc, hoạt động mua bán diễn ra sôi động, được kích thích bởi thị trường kỳ hạn có xu hướng tăng. Tuy nhiên, nhu cầu và hoạt động giao dịch ở một số thành phố như Thượng Hải và Trương Gia Cảng yếu do bị đóng cửa.\r\n\r\nGiá giao ngay tại Bắc Kinh đối với thép cây HRB400 đường kính 18-25 mm tăng 72 NDT/tấn (11 USD / tấn) so với phiên trước và được đánh giá ở mức 5.196 NDT/tấn (815 USD / tấn) xuất xưởng trọng lượng thực tế, bao gồm 13% VAT.\r\n\r\nHợp đồng thép cây giao dịch tháng 10 năm 2022 tích cực nhất trên Sàn giao dịch kỳ hạn Thượng Hải ngày 18 tháng 4 đóng cửa ở mức 5,063 NDT/tấn, tăng 59 NDT/tấn so với ngày 14 tháng 4.\r\n\r\nMột số nhà máy ở miền Đông Trung Quốc cho biết họ tạm dừng báo giá thép cây xuất khẩu do biên lợi nhuận của nhà máy thép cây hiện đang ở mức thấp hoặc dưới điểm hòa vốn.\r\n\r\nTại Singapore, giá chào vẫn không thay đổi ở mức $850/tấn FOB Việt Nam trọng lượng thực tế hoặc $850-860/tấn CFR Singapore trọng lượng lý thuyết cho lô hàng tháng 6, các nguồn tin thị trường cho biết.\r\n\r\nLoại thép cây BS500 đường kính 16-20 mm được đánh giá không thay đổi so với phiên trước ở mức 832 USD/tấn FOB Trung Quốc trọng lượng thực tế ngày 18 tháng 4, trong khi thép cây loại 500 BS4449 đường kính 16-32 mm giảm 3 USD/tấn ở mức 849 USD/tấn CFR Đông Nam Á.', 0x687474703a2f2f7673612e636f6d2e766e2f77702d636f6e74656e742f75706c6f6164732f323032312f31322f646f6e672d6c75632d64652d6e67616e682d746865702d6e616e672d63616f2d6e616e672d6c75632d63616e682d7472616e682d363339783433322e6a7067, '2022-06-20'),
(29, 'Giá thép Châu Âu tăng vọt do nguồn cung bị đứt gãy', 'Thị trường thép châu Âu chao đảo kể từ khi bắt đầu xảy ra xung đột giữa Nga và Ukraine. Đã hơn một tháng trôi qua, giá thép Châu Âu vẫn tiếp tục tăng mạnh bởi hoạt động giao hàng bị gián đoạn, các lệnh trừng phạt từ Mỹ và các nước phương Tây, và giá năng lương tăng vọt.', 'Nga là nhà sản xuất thép lớn thứ 5 thế giới, trong khi Ukraine đứng ở vị trí thứ 14, cả hai kết hợp lại chiếm tổng cộng 1/5 tổng lương thép nhập khẩu vào Liên minh Châu Âu.\r\n\r\nGiá thép cuộn cán nóng (HRC) trên thị trường Châu Âu đã tăng gần 40% trong 3 tuần qua. Cùng xu hướng đó, giá thép ở Bắc Mỹ và Trung Quốc cũng tăng, nhưng với tốc độ chậm hơn, khoảng 7-8%.\r\n\r\nGiá thép Châu Âu tăng vọt do nguồn cung bị đứt gãy - Ảnh 1.\r\nGiá thép tại Châu Âu tăng mạnh, vượt xa các thị trường Mỹ và Châu Âu.\r\n\r\nNhà phân tích Kaye Ayub thuộc công ty tư vấn MEPS International cho biết: “Có vẻ như chắc chắn giá sẽ tiếp tục tăng trong ngắn hạn. Chúng tôi dự báo xu hướng này sẽ kéo dài hết tháng 3 và sang tháng 4”. Theo ông: “Nguồn cung đã bị gián đoạn hàng loạt ở châu Âu, và sẽ mất khá nhiều thời gian để giải quyết điều đó.”\r\n\r\nNga và Ukraine là những nhà xuất khẩu thép hàng đầu thế giới, có thị phần vượt trội, nhất ở ở các thị trường Châu.\r\n\r\nNhà phân tích Andrew Jones của UBS cho biết: “Ở châu Âu, Nga và Ukraine có quyền định giá đối với các nhà máy thép … và việc mất đi khoảng 20% lương thép thành phẩm nhập khẩu từ Nga/Ukraine đã khiến thị trường bị thắt chặt nguồn cung”.\r\n\r\nMặc dù các lệnh trừng phạt của các quốc gia phương Tây không nhắm mục tiêu cụ thể vào các công ty thép của Nga, nhưng các vấn đề hậu cần và tác động liên đới từ các lệnh trừng phạt đã làm gián đoạn hoạt động kinh doanh cũng như vận chuyển thép.\r\n\r\nGiá thép Châu Âu tăng vọt do nguồn cung bị đứt gãy - Ảnh 2.\r\nNga và Ukraine chiếm 1/5 lượng thép nhập khẩu vào EU.\r\n\r\nNgoài lo ngại mất nguồn cung từ Nga và Ukraine, châu Âu cũng đang phải đối mặt với việc giá năng lượng tăng vọt do cuộc xung đột.\r\n\r\nNgành thép của nước khu vực này đã phải vật lộn với chi phí năng lượng cao do việc Nga thực hiện “chiến dịch đặc biệt” ở Ukraine đẩy giá dầu và khí đốt tăng đột biến, kéo giá điện tăng theo.\r\n\r\nSản lượng thép từ các lò điện chiếm hơn 40% tổng sản lượng thép Châu Âu, là tỷ lệ cao hơn so với tất cả các khu vực khác.\r\n\r\nSau khi xung đột nổ ra, các nhà sản xuất thép ở Tây Ban Nha như ArcelorMittal và nhà sản xuất thép không gỉ Acerinox đã cắt giảm sản lượng, trong khi hãng Lech-Stahlwerke của Đức ngừng sản xuất ở Bavaria.\r\n\r\nTheo nhà phân tích Michael Widmer của Bank of America, tác động đầy đủ của cuộc xung đột vẫn chưa được thể hiện trong dữ liệu sản xuất, nhưng sản lượng thép của châu Âu trong tháng 1 đã giảm xuống mức thấp nhất tính theo mùa kể từ năm 2009.\r\n\r\nTrong tháng 2, sản lượng thép thô ở Liên minh châu Âu giảm 2,2% so với tháng liền trước, trong khi ở các nơi khác của Châu Âu giảm giảm 4,8%, dữ liệu từ Hiệp hội Thép Thế giới cho thấy.\r\n\r\nGiá thép Châu Âu tăng vọt do nguồn cung bị đứt gãy - Ảnh 3.\r\nSản lượng thép thế giới, Châu Âu và Trung Quốc.\r\n\r\nCác biện pháp mới cấm các sản phẩm thép thành phẩm của Nga vào Liên minh châu Âu dự kiến ​​sẽ sớm có hiệu lực và các thương nhân đã buộc phải tăng giá do nhận định nguồn cung sẽ còn tiếp tục sụt giảm.\r\n\r\nHôm 12/3, EU thông báo sẽ cấm nhập khẩu sắt, thép từ Nga và cấm xuất khẩu hàng xa xỉ tới Matxcơva. Hôm 16/3, EU thông báo sẽ tăng thuế đối với các sản phẩm thép không gỉ từ Ấn Độ và Indonesia, sau khi xác định chúng được hưởng lợi từ các khoản trợ cấp không công bằng, trong đó có một số từ Trung Quốc. Những động thái này sẽ càng khiến cho thị trường thép Châu Âu thêm thắt chặt.\r\n\r\n(Nguồn: Reuters)', 0x687474703a2f2f7673612e636f6d2e766e2f77702d636f6e74656e742f75706c6f6164732f323032312f30362f746865702d6d612d363437783433322e6a7067, '2022-06-20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `pmode` varchar(100) NOT NULL,
  `products` varchar(10000) NOT NULL,
  `amount_paid` int(100) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders1`
--

CREATE TABLE `orders1` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pmode` varchar(100) NOT NULL,
  `products` varchar(10000) NOT NULL,
  `amount_paid` int(100) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders1`
--

INSERT INTO `orders1` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`, `created_at`) VALUES
(84, 'Đoàn Ngọc Tin', 'ngoctin.doan@gmail.com', '0795620064', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Thép hộp 20×40(1), Thép hộp 40×40(1)', 159000, '2022-07-19'),
(85, 'Lê Văn Thức', 'thucle5000@gmail.com', '0903571591', '1170 Ngô Quyền', 'Thanh toán khi giao hàng', 'Tấm tôn lạnh thiếc phẳng(1), Tấm tôn mạ kẽm(1)', 220000, '2022-07-19'),
(86, 'Đoàn Thanh Hải', 'thanhhai@gmail.com', '0901732111', '77 Lê Hữu Trác', 'Thanh toán khi giao hàng', 'Thép ống kẽm Ø 21(1), Thép ống D60(1)', 370000, '2022-07-19'),
(87, 'Lê Văn Thức', 'thucle5000@gmail.com', '0903571591', '1170 Ngô Quyền', 'Thanh toán khi giao hàng', 'Thép hộp 20×40(1), Thép hộp 20×20(1), Thép hộp 40×80(1)', 289000, '2022-07-20'),
(90, 'Lê Văn Thức', 'thucle5000@gmail.com', '0905489199', '1170 Ngô Quyền', 'Thanh toán khi giao hàng', 'Thép ống D60(4), Thép hộp 50×100(3), Thép hộp 40×40(2)', 1930000, '2022-08-01'),
(93, 'Lê Văn Thức', 'thucle5000@gmail.com', '0905489199', '1170 Ngô Quyền', 'Thanh toán khi giao hàng', 'Thép hộp 20×40(1), Thép hộp 40×40(1), Thép ống kẽm Ø 21(1)', 279000, '2022-08-06'),
(95, 'Võ Giang Linh', 'gianglinh@gmail.com', '0903571591', 'K43/26 Lê Hữu Trác', 'Thanh toán khi giao hàng', 'Thép hộp 20×40(1)', 69000, '2022-08-06'),
(96, 'Lê Văn Thức', 'thucle5000@gmail.com', '0905489199', '1170 Ngô Quyền', 'Thanh toán khi giao hàng', 'Thép hộp 20×40(1), Thép hộp 20×20(1)', 99000, '2022-08-06'),
(97, 'Võ Giang Linh', 'gianglinh@gmail.com', '0903571591', 'K43/26 Lê Hữu Trác', 'Thanh toán khi giao hàng', 'Thép hộp 25×50(1)', 79000, '2022-08-06'),
(101, 'Đoàn Ngọc Tin', 'ngoctin.doan@gmail.com', '0795620064', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Thép hộp 20×40(1), Thép hộp 20×20(1)', 99000, '2022-08-20'),
(102, 'Đoàn Ngọc Tin', 'ngoctin.doan@gmail.com', '0795620064', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Thép hộp 40×40(1), Thép hộp 40×80(1)', 280000, '2022-08-20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `position`
--

CREATE TABLE `position` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `position`
--

INSERT INTO `position` (`id`, `name`) VALUES
(1, 'Tổ Toán-Tin'),
(2, 'Tổ Vật Lý – Công Nghệ'),
(3, 'Tổ Hóa-Sinh'),
(4, 'Tổ Ngữ Văn '),
(5, 'Tổ Sử-Địa-GDCD'),
(6, 'Tổ Ngoại Ngữ'),
(7, 'Tổ Thể dục-QPAN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `id_category` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL,
  `image` longblob NOT NULL,
  `title` varchar(10000) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `id_category`, `name`, `code`, `image`, `title`, `created_at`, `updated_at`, `price`) VALUES
(85, 21, 'Thép hộp 20×40', 'hcn001', 0x68747470733a2f2f736174746865707364742e636f6d2f77702d636f6e74656e742f75706c6f6164732f323031382f31312f746865702d686f702d32307834302e6a7067, 'Tên: Thép hộp 20×40, Sắt hộp 20×40\r\n\r\nChiều dài : 6, 9, 12 mét/cây\r\n\r\nĐộ dày : từ 1.0 đến 3.5 mm\r\n\r\nTiêu chuẩn : ATSM A36, ATSM A53, ATSM A500, JIS – 3302, TCVN 3783 – 83\r\n\r\nXuất xứ : Việt Nam, Nga, Nhật Bản, Trung Quốc, Hàn Quốc, Đài Loan,…', '2022-07-19', '2022-07-19', 69000),
(86, 20, 'Thép hộp 20×20', 'hv001', 0x68747470733a2f2f736174746865707364742e636f6d2f77702d636f6e74656e742f75706c6f6164732f323031382f31312f746865702d76756f6e672d32307832302e6a7067, 'Chiều dài : 6, 9, 12 mét/cây\r\n\r\nĐộ dày : từ 0.6 đến 2.0 mm\r\n\r\nMác thép : ASTM A36, S235, S275, S355, CT3, JISG3466 – STKR400', '2022-07-19', '2022-07-19', 30000),
(87, 21, 'Thép hộp 40×80', 'hcn002', 0x68747470733a2f2f736174746865707364742e636f6d2f77702d636f6e74656e742f75706c6f6164732f323031382f31312f746865702d686f702d6d612d6b656d2d34307838302e6a7067, 'Tên sản phẩm : Thép hộp 40×80, Sắt hộp 40×80\r\n\r\nChiều dài : 6, 9, 12 mét/cây\r\n\r\nĐộ dày : từ 0.8 đến 10 mm\r\n\r\nTiêu chuẩn : ATSM A36, ATSM A53, ATSM A500, JIS – 3302, TCVN 3783 – 83\r\n\r\nXuất xứ : Việt Nam, Nga, Nhật Bản, Trung Quốc, Hàn Quốc, Đài Loan,…', '2022-07-19', '2022-07-19', 190000),
(88, 21, 'Thép hộp 25×50', 'hcn003', 0x68747470733a2f2f736174746865707364742e636f6d2f77702d636f6e74656e742f75706c6f6164732f323031392f30312f746865702d686f702d32357835302d323437783239362e6a7067, 'Tên : Thép hộp 25×50, Sắt hộp 25×50\r\n\r\nChiều dài : 6, 9, 12 mét/cây\r\n\r\nĐộ dày : từ 1.0 đến 3.5 mm\r\n\r\nTiêu chuẩn : ATSM A36, ATSM A53, ATSM A500, JIS – 3302, TCVN 3783 – 83\r\n\r\nXuất xứ : Việt Nam, Nga, Nhật Bản, Trung Quốc, Hàn Quốc, Đài Loan,…', '2022-07-19', '2022-07-19', 79000),
(89, 20, 'Thép hộp 40×40', 'hv002', 0x68747470733a2f2f736174746865707364742e636f6d2f77702d636f6e74656e742f75706c6f6164732f323031382f31312f746865702d34307834302e6a7067, 'Chiều dài : 6, 9, 12 mét/cây\r\n\r\nĐộ dày : từ 0.8 đến 3.1 mm\r\n\r\nMác thép : ASTM A36, S235, S275, S355, CT3, JISG3466 – STKR400', '2022-07-19', '2022-07-19', 90000),
(90, 22, 'Thép ống kẽm Ø 21', 'ht001', 0x68747470733a2f2f766c78646869657068612e636f6d2f77702d636f6e74656e742f75706c6f6164732f323032312f30392f746865702d6f6e672d6b656d2d323130323030332d322e6a7067, 'Sản phẩm được làm từ thép và mạ một lớp kẽm lên trên bề mặt.\r\nƯu điểm:\r\n- Độ cứng cao, chịu lực tốt.\r\n- Ít bị ăn mòn, chống được oxy hóa.\r\n- Có tính thẩm mỹ cao nhờ lớp mạ kẽm sáng bóng trên bề mặt.\r\nNhược điểm:\r\n- Giá thành cao hơn so với các sản phẩm thép khác.\r\n- Có ít chủng loại hơn cho khách hàng lựa chọn.', '2022-07-19', '2022-07-19', 120000),
(92, 22, 'Thép ống D60', 'ht002', 0x68747470733a2f2f74686169686f61706861742e6e65742f75706c6f61642f696d616765732f746865702d6f6e672d6436302e6a7067, '+ Cung cấp sắt thép chất lượng cao.\r\n\r\n+ Nguồn hàng đa dạng.\r\n\r\n+ Nguồn gốc, xuất xứ rõ ràng.\r\n\r\n+ Vận chuyển nhanh chóng.\r\n\r\n+ Giá tốt nhất thị trường.', '2022-07-19', '2022-07-19', 250000),
(93, 23, 'Tấm tôn mạ kẽm', 'T001', 0x68747470733a2f2f74686567696f69636f6e676e67686965702e636f6d2f696d6167652f766e2f323031385f30362f74616d2d746f6e2d6d612d6b656d2d313230302d782d323430302d6461792d326d6d2d7467636e2d33373532352d766965746e616d737465656c735f313532383531373134365f766e2e706e67, 'Tấm tôn mạ kẽm 1200 x 2400 dày 2mm\r\nThép lá 0.5 x 1250 x 2500. Thép tấm cán nguội loại I, chất liệu thép dẻo có thể uốn, dập vuông góc mà không bị nứt gãy, bề mặt bóng mịn, phẳng', '2022-07-19', '2022-07-19', 75000),
(94, 23, 'Tôn kẽm cuộn', 'T002', 0x68747470733a2f2f746f6e746869656e74616e2e636f6d2e766e2f77702d636f6e74656e742f75706c6f6164732f323032302f30322f746f6e2d6b656d2d63756f6e2d312d333030783330302e6a7067, 'Tôn cuộn mềm: có độ dày từ 0.25 đến 3.2mm, dạng phẳng có khổ 1m và 1m2 thường được cắt theo tấm phẳng hoặc cuộn 1000 đến 1200m.\r\nTôn cuộn cứng: có độ dày 0.15 đến 0.55 mm được chia tiếp làm 2 loại:\r\nTôn kẽm cứng dạng phẳng: (theo tấm hoặc cuộn) có khổ 1m và 1m2.\r\nTôn kẽm cứng cán sóng: có bề mặt lượn sóng thường theo dạng tấm. Tấm 5 sóng vuông có chiều rộng 1.10m; tấm 7 sóng vuông rộng 0.82m; tấm 9 sóng vuông có chiều rộng 1.07m; tấm 12 sóng tròn rộng 1.10m.', '2022-07-19', '2022-07-19', 100000),
(95, 23, 'Tấm tôn lạnh thiếc phẳng', 'T003', 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f73686f7070696e673f713d74626e3a414e6439476351544641533635374f6e45576b5a384e467564745163675773354652383663443230366f396d6b3979794545536558456834624b36364e6b367a7a46616b51465754365170434a6b54706c6e2d5a79595942632d42795447596d4648566d44552d584a344c354174476a26757371703d434145, 'Thông tin chi tiết sản phẩm: 01 tấm tôn thiếc phẳng dùng để lợp mái nhà, làm cửa,v.v. chất liệu: thiếc kích thước: 1Mx2M cao x rộng. màu sắc: xanh', '2022-07-19', '2022-07-19', 145000),
(96, 20, 'Thép hộp 50×50', 'hv003', 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f73686f7070696e673f713d74626e3a414e64394763515877777277614e5a3339644c584a717a776737614476564c37576d414f394c4d50305449474a4c427450624c7737595a2d324852666a4d4e4174346978554f7148577149526569357246644f6e33564b7562616e353263634170526d6b4d4126757371703d434145, 'Chiều dài : 6, 9, 12 mét/cây\r\n\r\nĐộ dày : từ 1.0 đến 6.0 mm\r\n\r\nTiêu chuẩn : ATSM, GOST, BS, GB, JIS, EN, DIN,….', '2022-07-19', '2022-07-19', 140000),
(97, 21, 'Thép hộp 50×100', 'hcn004', 0x68747470733a2f2f696e6f786b696d706861742e766e2f77702d636f6e74656e742f75706c6f6164732f323032312f30322f6d75612d62616e2d686f702d696e6f782d3530783130302d6769612d686f702d696e6f782d35303130302d6f2d62696e682d64756f6e672d62696e682d7068756f632e6a7067, 'Tên sản phẩm : Thép hộp 50×100, Sắt hộp 50×100\r\n\r\nChiều dài : 6, 9, 12 mét/cây\r\n\r\nĐộ dày : từ 0.9 đến 10 mm\r\n\r\nTiêu chuẩn : ATSM A36, ATSM A53, ATSM A500, JIS – 3302, TCVN 3783 – 83\r\n\r\nXuất xứ : Việt Nam, Nga, Nhật Bản, Trung Quốc, Hàn Quốc, Đài Loan,…', '2022-07-19', '2022-07-19', 250000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `replies` text CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review_table`
--

CREATE TABLE `review_table` (
  `review_id` int(11) NOT NULL,
  `user_avatar` longblob NOT NULL,
  `user_name` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `user_rating` int(1) NOT NULL,
  `user_review` text CHARACTER SET utf8mb4 NOT NULL,
  `image` longblob NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `datetime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review_table1`
--

CREATE TABLE `review_table1` (
  `review_id` int(11) NOT NULL,
  `user_avatar` longblob NOT NULL,
  `user_name` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `user_rating` int(1) NOT NULL,
  `user_review` text CHARACTER SET utf8mb4 NOT NULL,
  `image` longblob NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `datetime` date NOT NULL,
  `replies` text CHARACTER SET utf8mb4 NOT NULL,
  `date1` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `review_table1`
--

INSERT INTO `review_table1` (`review_id`, `user_avatar`, `user_name`, `user_rating`, `user_review`, `image`, `email`, `datetime`, `replies`, `date1`) VALUES
(118, 0x68747470733a2f2f64322e76696f6c65742e766e2f75706c6f6164732f7468756d626e61696c732f6176617461722f312f3533352f3239342f70686f746f2e6a7067, 'Đoàn Ngọc Tin', 5, 'Very good!', 0x68747470733a2f2f63646e2e766965746e616d62697a2e766e2f313838313931323230323032323535352f696d616765732f637261776c2d323032323035323631353438343433312d6176617461722d66622d32303232303532363135353235373234372e6a70673f77696474683d333336266865696768743d323233, 'ngoctin.doan@gmail.com', '2022-07-29', 'Admin: Thank you very much.', '2022-07-29'),
(119, 0x68747470733a2f2f64322e76696f6c65742e766e2f75706c6f6164732f7468756d626e61696c732f6176617461722f312f3533352f3239342f70686f746f2e6a7067, 'Đoàn Ngọc Tin', 5, 'Ok, tốt, rất pro', 0x68747470733a2f2f63646e696d672e766965746e616d706c75732e766e2f743632302f75706c6f616465642f697670796369766f2f323032325f30315f31392f746865705f63686f6e675f616e5f6d6f6e2e6a7067, 'ngoctin.doan@gmail.com', '2022-07-29', 'Admin: ', '2022-07-29'),
(120, 0x68747470733a2f2f692e70696e696d672e636f6d2f373336782f31332f32652f61372f31333265613732643262633362383564393034303963396538663264306634612e6a7067, 'Võ Giang Linh', 5, 'Nó rất tốt, thank you.', '', 'gianglinh@gmail.com', '2022-07-29', 'Admin: Cảm ơn bạn đánh giá về trang web này', '2022-07-29'),
(121, 0x68747470733a2f2f64322e76696f6c65742e766e2f75706c6f6164732f7468756d626e61696c732f6176617461722f312f3533352f3239342f70686f746f2e6a7067, 'Đoàn Ngọc Tin', 5, 'OK, tốt.', 0x68747470733a2f2f74686570636f6e676e67686965702e636f6d2e766e2f75706c6f6164732f696d616765732f746865702d68696e682d6361632d6c6f61692e6a7067, 'ngoctin.doan@gmail.com', '2022-07-29', 'ngoctin.doan@gmail.com', '2022-07-29'),
(122, 0x68747470733a2f2f312e62702e626c6f6773706f742e636f6d2f2d4c4b5245454a46614770772f586e3758356234574345492f41414141414141416153732f4259376247454b4b384273695836527370427a77634f7053473847446b6a4d4551434c63424741735948512f73313630302f416e682d4461692d4469656e2d476961752d4d617425324225323532383125323532392e6a7067, 'Lê Văn Thức', 5, 'Được', 0x68747470733a2f2f6b686f746865706d69656e6e616d2e766e2f77702d636f6e74656e742f75706c6f6164732f323032312f30342f746865702d686f702d34307838302d312e6a7067, 'thucle5000@gmail.com', '2022-08-01', 'Admin: ', '2022-08-01'),
(125, 0x68747470733a2f2f64322e76696f6c65742e766e2f75706c6f6164732f7468756d626e61696c732f6176617461722f312f3533352f3239342f70686f746f2e6a7067, 'Đoàn Ngọc Tin', 5, 'ok tốt', 0x68747470733a2f2f6d656469612e766e65636f6e6f6d792e766e2f773830302f696d616765732f75706c6f61642f323032322f30382f30372f746865702d63756f6e2d76612d746865702d6f6e67312e706e67, 'ngoctin.doan@gmail.com', '2022-08-15', 'ngoctin.doan@gmail.com', '2022-08-15'),
(127, 0x68747470733a2f2f6570686f746f3336302e636f6d2f75706c6f6164732f6566666563742d646174612f6570686f746f3336302e636f6d2f3133363262323265622f6c7632356537383738333633633434342e6a7067, 'Đoàn Ngọc Tin', 1, 'Hi', '', 'ngoctin.doan@gmail.com', '2023-09-01', 'ngoctin.doan@gmail.com', '2023-09-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`id`, `name`) VALUES
(1, 'Giám Đốc'),
(2, 'Phó Giám Đốc'),
(3, 'Kế toán'),
(4, 'Nhân viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher`
--

CREATE TABLE `teacher` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `service` varchar(100) NOT NULL,
  `image` longblob NOT NULL,
  `date` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cancel`
--
ALTER TABLE `cancel`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `href_param` (`href_param`);

--
-- Chỉ mục cho bảng `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loginstudent`
--
ALTER TABLE `loginstudent`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loginstudent_1`
--
ALTER TABLE `loginstudent_1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `login_1`
--
ALTER TABLE `login_1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `new`
--
ALTER TABLE `new`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders1`
--
ALTER TABLE `orders1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category_2` (`id_category`),
  ADD KEY `code` (`code`),
  ADD KEY `product_code` (`code`),
  ADD KEY `product_code_2` (`code`),
  ADD KEY `product_code_3` (`code`);

--
-- Chỉ mục cho bảng `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `review_table`
--
ALTER TABLE `review_table`
  ADD PRIMARY KEY (`review_id`);

--
-- Chỉ mục cho bảng `review_table1`
--
ALTER TABLE `review_table1`
  ADD PRIMARY KEY (`review_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `cancel`
--
ALTER TABLE `cancel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=494;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `class`
--
ALTER TABLE `class`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `loginstudent`
--
ALTER TABLE `loginstudent`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `loginstudent_1`
--
ALTER TABLE `loginstudent_1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `login_1`
--
ALTER TABLE `login_1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `new`
--
ALTER TABLE `new`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `orders1`
--
ALTER TABLE `orders1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `position`
--
ALTER TABLE `position`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT cho bảng `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `review_table`
--
ALTER TABLE `review_table`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT cho bảng `review_table1`
--
ALTER TABLE `review_table1`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
