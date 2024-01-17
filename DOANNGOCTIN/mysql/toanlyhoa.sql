-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 30, 2021 lúc 04:27 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.34

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
  `products` varchar(100) NOT NULL,
  `amount_paid` int(100) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
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
(10, 'Món ăn thịt', '2021-08-20', '2021-08-24', NULL),
(11, 'Món ăn hải sản', '2021-08-20', '2021-08-20', NULL),
(12, 'Món ăn chay', '2021-08-26', '2021-08-26', NULL),
(13, 'Món ăn khác', '2021-08-24', '2021-08-24', NULL),
(14, 'Đồ uống', '2021-08-20', '2021-08-20', NULL);

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
(19, 'Đoàn Ngọc Tin', 'ngoctin.doan@gmail.com', 'Ngoctin.1999!', '1999-03-22', 'Nam', '873 Ngô Quyền, Sơn Trà, Đà Nẵng.', '0795620064', 0x68747470733a2f2f7069636b61666163652e6e65742f67616c6c6572792f6176617461722f32303133303331395f3038333331345f313137345f61646d696e2e706e67),
(20, 'Lê Văn Thức', 'thucle5000@gmail.com', 'Thucle.1999!', '2021-09-12', 'Nam', '77 Lê Lai', '0901732111', 0x68747470733a2f2f6672656570696b7073642e636f6d2f6d656469612f323032302f31312f61646d696e2d6176617461722d706e672d342e706e67),
(21, 'Đoàn Ngọc Tin', 'dntin.18it2@sict.udn.vn', 'Ngoctin.1999!', '1999-03-22', 'Nam', '873 Ngô Quyền', '0795620064', 0x68747470733a2f2f692e70696e696d672e636f6d2f353634782f37372f35622f39312f37373562393164346231626663616332616133323932623437373633633162312e6a7067),
(22, 'Võ Giang Linh', 'quangthong.y@gmail.com', 'Gianglinh.2000!', '2000-02-14', 'Nữ', 'k43/26 Lê Hữu Trác', '9091297199', 0x68747470733a2f2f73636f6e74656e742e6673676e322d322e666e612e666263646e2e6e65742f762f74312e363433352d392f37393531353133355f31303131313030373632333838303330315f353131313537363232363932313730393536385f6e2e6a70673f5f6e635f6361743d31266363623d312d35265f6e635f7369643d303963626665265f6e635f6f68633d6c6b35335355446b65593841582d787671334e265f6e635f68743d73636f6e74656e742e6673676e322d322e666e61266f683d6163396364633838303339613064353438636136646231366333613663653636266f653d3631364236314436),
(23, 'Đoàn Thanh Hải', 'thanhhai@gmail.com', 'Thanhhai.1987', '1987-03-18', 'Nam', '1170 Ngô Quyền', '0901732111', 0x68747470733a2f2f64322e76696f6c65742e766e2f75706c6f6164732f7468756d626e61696c732f6176617461722f312f3533352f3239342f70686f746f2e6a7067),
(24, 'Trần Đình Thắng', 'dinhthang@gmail.com', 'Dinhthang.1990!', '2021-09-01', 'Nam', '873 Ngô Quyền', '0901732111', 0x68747470733a2f2f63616e6768616973616e2e636f6d2f77702d636f6e74656e742f75706c6f6164732f323032312f30342f39332d312e6a7067);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `new`
--

CREATE TABLE `new` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `context` text NOT NULL,
  `image` longblob NOT NULL,
  `video` longblob NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `new`
--

INSERT INTO `new` (`id`, `title`, `context`, `image`, `video`, `created_at`, `updated_at`) VALUES
(8, 'Cách nấu nghiêu hấp xả', 'Sả đập dập, cắt thành từng khúc khoảng 8cm, lót vào đáy nồi. - Cho nghêu vào nồi cùng với 1 muỗng ớt băm nhỏ, 1 muỗng đường, 2 muỗng nước mắm và 150ml nước, trộn đều. - Bắc nồi lên bếp, đậy vung kín, đun lửa vừa cho đến khi nước sôi, nghêu đã mở miệng, xóc đều và tắt bếp.\r\nNguyên liệu:\r\n1kg nghêu, \r\n\r\nỚt, sả, \r\n\r\n1 muỗng đường, \r\n\r\n2 muỗng nước mắm, \r\n\r\n150ml nước.', 0x68747470733a2f2f63646e2e64616f74616f6265707472756f6e672e766e2f77702d636f6e74656e742f75706c6f6164732f323032302f30352f6e676865752d6861702d73612e6a7067, 0x68747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f3235716536393971776f63, '2021-09-26', '2021-09-27'),
(9, 'Cách làm cánh gà chiên giòn và chiên xù cực ngon hấp dẫn đơn giản', 'Nguyên liệu làm Cánh gà chiên xù:\r\n Cánh gà 1 kg, \r\n Trứng gà 2 quả, \r\n Bột chiên giòn 50 gr, \r\n Bột chiên xù 100 gr, \r\n Sả 1 nhánh, \r\n Gừng 1/2 củ, \r\n Hành tím 1 củ, \r\n Nước mắm 3 muỗng cà phê, \r\n Nước tương 3 muỗng cà phê, \r\n Dầu hào 1 muỗng cà phê, \r\n Dầu ăn 100 ml, \r\n Gia vị thông dụng 1 ít.', 0x68747470733a2f2f63646e2e746764642e766e2f323032312f30332f636f6e74656e742f436163686c616d676172616e4b46436e676f6e74757965742d43616e686761636869656e78755475616e4e677579656e466f6f64302d313973637265656e73686f742d383030783435302d322e6a7067, 0x68747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f4148443839394d496e756f, '2021-09-26', '2021-09-27'),
(10, 'Cách làm ốc xào sả ớt ngon giòn, không nhớt không tanh', 'Nguyên liệu:\r\n1,5kg ốc nhồi, \r\n5 nhánh sả, \r\n1 củ gừng to, \r\n1 đốt nghệ tươi, \r\n2-3 củ hành khô, \r\n1 củ tỏi, \r\n2 quả ớt sừng, \r\n1 quả ớt hiểm, \r\n5-6 lá chanh, \r\nMuối hạt, \r\nDấm (hoặc 1 quả chanh tươi), \r\nGia vị: Dầu hào, đường, bột ngọt, tiêu xay.', 0x68747470733a2f2f636f6f6b62656f2e636f6d2f6d656469612f323032312f30372f6f632d78616f2d73612d6f742f7468756d626e61696c732f6e677579656e2d6c6965752d6c616d2d6f632d78616f2d73612d6f742d3736382e77656270, 0x68747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f4a6434524a715177354f4d, '2021-09-26', '2021-09-27'),
(11, 'Các món ăn truyền thống nổi tiếng của Hàn Quốc', '\r\nHàn Quốc là một trong những đất nước được thiên nhiên ưu ái ban tặng cho một “tấm áo” lộng lẫy và cả những văn hóa đặc sắc bên trong mà không phải nơi đâu cũng có. Nếu có cơ hội đến thăm đất nước xinh đẹp này thì ngoài việc vui chơi thăm thú cảnh đẹp, thì nhất định bạn cũng phải thử qua các món ăn truyền thống Hàn Quốc mang đậm hương vị của xứ sở Kim Chi này nhé.', 0x68747470733a2f2f6a756e656e6f6f646c65686f7573652e636f6d2f77702d636f6e74656e742f75706c6f6164732f323031382f31302f6e68756e672d6d6f6e2d616e2d74727579656e2d74686f6e672d6375612d68616e2d71756f632d312d312e6a7067, 0x68747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f41614e4e697839394c7463, '2021-09-26', '2021-09-26'),
(12, 'Top 10 Món Ăn SIÊU KỲ LẠ Trên Thế Giới', 'Với những người đam mê đồ ăn, họ đều mong muốn mình sẽ được thưởng thức những món ngon mới lạ hàng ngày. Mỗi quốc gia đều có những món ăn mà các bạn sẽ chẳng bao giờ nghĩ được chúng thực sự tồn tại. ', 0x68747470733a2f2f7a6e6577732d70686f746f2e7a61646e2e766e2f773636302f55706c6f616465642f6e65675f6573666a6165782f323031395f30395f33302f615f7468756d622e6a7067, 0x68747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f39494651694e5668653751, '2021-09-26', '2021-09-26'),
(13, 'Gordon Ramsay, nhà đầu bếp nổi tiếng nhất thế giới', 'Gordon James Ramsay, (sinh ngày 8 tháng 11 năm 1966) là một đầu bếp nổi tiếng, chủ sở hữu nhiều nhà hàng và ngôi sao truyền hình người Scotland. Trên tổng số 15 ngôi sao Michelin, nhà hàng của Ramsay đã được trao tặng đến 14 ngôi sao và ông còn được Hoàng gia Anh phong tước OBE (tước Tiểu Hiệp Sĩ) vào năm 2006 nhằm tôn vinh những cống hiến của Ramsay đem đến cho ngành ẩm thực nước nhà. Cùng với việc làm chủ một chuỗi nhà hàng, Gordon Ramsay được tôn vinh là nhân vật có tầm ảnh hưởng nhất trong ngành công nghiệp lưu trú và ẩm thực của Vương quốc Anh năm 2009, trở thành ông chủ nhà hàng và khách sạn quyền lực nhất do Tạp chí Caterer and Hotelkeeper bầu chọn.\r\nRamsay còn được biết đến qua việc tham gia các chương trình truyền hình về thi tài nấu ăn và thực phẩm như Hell\'s Kitchen, The F Word, Ramsay\'s Best Restaurant, Ramsay\'s Kitchen Nightmares, Hell\'s Kitchen (Mỹ), Kitchen Nightmares, và MasterChef. Ramsay sở hữu giá trị tài sản cá nhân lên đến 40 triệu bảng Anh.', 0x68747470733a2f2f7777772e686f696461756265706161752e636f6d2f77702d636f6e74656e742f75706c6f6164732f323031372f31302f6461752d6265702d7468652d67696f692d676f72646f6e2d6a616d65732d72616d7361792e6a7067, 0x68747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f396934534b48626862716b, '2021-09-27', '2021-09-27'),
(14, 'Hội An gắn liền với ẩm thực cực ngon', 'Phố Cổ Hội An không chỉ hấp dẫn với những du khách bởi những ngôi nhà cổ có kiến trúc độc đáo; những con đường sạch bong, những con phố yên bình, trầm mặc; dòng sông Hoài lặng lẽ, những chiếc đèn lồng đủ màu sắc mà Hội An còn khiến du khách mê mẩn bởi những món ngon độc đáo, chỉ có ở Hội An.\r\nẨm thực Hội An vô cùng đa dạng và phong phú, hội tụ của nhiều nền văn hóa khác nhau. Nếu quý khách yêu thích ẩm thực phố hội. Hội An từng là một thương cảng quốc tế sầm uất, nơi gặp gỡ của những thuyền buôn người Nhật, Trung Quốc và phương Tây. Chính vì thế, Hội An chịu ảnh hưởng nhiều từ các nước này, đặc biệt là về ẩm thực, các món ăn đặc sắc.\r\nẨm thực Hội An vô cùng phong phú và đa dạng với nhiều món ăn ngon, độc đáo. Bên cạnh những món ăn truyền thống của người dân phố Hội thì Hội An còn có nhiều món ăn ảnh hưởng từ Trung Hoa hấp dẫn du khách.', 0x68747470733a2f2f766965746a65742e617369612f6173736574732f75706c6f6164732f323031372f30322f76616e2d686f612d616d2d746875632d686f2d616e2d312e6a7067, 0x68747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f4751375a7752434b754b6b, '2021-09-27', '2021-09-27');

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
  `products` varchar(100) NOT NULL,
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
  `products` varchar(100) NOT NULL,
  `amount_paid` int(100) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders1`
--

INSERT INTO `orders1` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`, `created_at`) VALUES
(61, 'Đoàn Ngọc Tin', 'ngoctin.doan@gmail.com', '0795620064', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Sushi(1), Ốc hương(7), Trà sữa caramel(5), Cua alaska(6), Gà chiên giòn(4), Ốc bươi nhồi(5), Pepsi(1', 7375000, '2021-09-27'),
(62, 'Võ Giang Linh', 'quangthong.y@gmail.com', '9091297199', 'K43/26 Lê Hữu Trác', 'Thẻ tín dụng ghi nợ', 'Bánh xèo miền nam(6), Xúc xích chiên(6), Bún ốc(6), Kim chi Hàn Quốc(3)', 1050000, '2021-09-27'),
(63, 'Pháp', 'doanngocphap1965@gmail.com', '0903571591', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Bánh xèo chay(5), Cơm chay(3), Mì quảng chay(3), Canh rau nấm chay(2)', 260000, '2021-09-28'),
(64, 'Lê Văn Thức', 'thucle5000@gmail.com', '0903571591', '1173 Ngô Quyền', 'Thẻ tín dụng ghi nợ', 'Pepsi(12), Canh cà ri(3), Thịt xông khói(5), Thịt heo xay(4), Bánh xèo miền nam(6), Tôm tích(4), Cua', 3154000, '2021-09-28'),
(65, 'Pháp', 'doanngocphap1965@gmail.com', '0901732111', '873 Ngô Quyền', 'Ngân hàng trực tuyến', 'Ốc bươi nhồi(5), Bún ốc(5), Xúc xích chiên(2), Tôm chiên trứng(3), Coca cola(8)', 1217000, '2021-09-28'),
(66, 'Trần Đình Thắng', 'doanngocphap1965@gmail.com', '0905489199', '55 Nguyễn Trãi', 'Thanh toán khi giao hàng', 'Bạch tuộc xào sa tế(3), Lẩu hải sản(1), Tôm hùm Alaska(2), Chai rượu nho(1)', 2626000, '2021-09-28'),
(67, 'Pháp', 'doanngocphap1965@gmail.com', '0901732111', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Bánh xèo chay(6), Cơm chay(3), Mì quảng chay(3), Canh rau nấm chay(2)', 280000, '2021-09-29'),
(68, 'Lê Văn Thức', 'thucle5000@gmail.com', '0901732111', '11 Lê Duẩn', 'Thẻ tín dụng ghi nợ', 'Ốc hương(4), Bạch tuộc xào sa tế(4), Lẩu nghêu(2), Tôm tích(5), Cua alaska(1)', 2728000, '2021-09-29'),
(69, 'Đoàn Ngọc Tin', 'ngoctin.doan@gmail.com', '9091297199', '873 Ngô Quyền', 'Thanh toán khi giao hàng', 'Gà chiên giòn(5), Sứa biển(6), Pepsi(10)', 755000, '2021-09-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `id_category` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `title` varchar(10000) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `id_category`, `name`, `code`, `image`, `title`, `created_at`, `updated_at`, `price`) VALUES
(3, 10, 'Gà chiên giòn', 'gcd', 'https://cdn.tgdd.vn/2021/03/CookRecipe/Avatar/canh-ga-chien-xu-thumbnail-1.jpg', 'Gà là loài động vật rất thân quen trong cuộc sống của nhiều người dân Việt Nam. Nên thịt gà là thực phẩm quen thuộc, dễ tìm, món ăn từ gà cũng đều rất ngon, hương vị thịt gà rất riêng.\r\nNhững tính từ dùng để mô tả món gà rán là \"giòn rụm\", \"mọng\", \"giòn tan\"; hoặc cũng có thể là \"cay\" hoặc \"mặn\". Tùy cách chế biến mà cũng có thể cho một số loại ớt như bột paprika, hoặc tương ớt lên gà rán để tạo vị cay, kiểu này đặc biệt phổ biến ở các chuỗi nhà hàng thức ăn nhanh như KFC. Theo truyền thống, gà rán sẽ được ăn kèm với khoai tây nghiền, nước thịt, mì ống macaroni và pho mát, xà lách coleslaw, ngô cũng như bánh mì biscuits.\r\nMón ăn này nổi tiếng vì sự béo ngậy và nhiều dầu mỡ, đặc biệt là khi được làm bởi các cửa hàng thức ăn nhanh. Một số bản báo cáo cho biết rằng có những tín đồ của món ăn này phải giới hạn số lần ăn gà rán trong một năm, nhằm giữ cho lượng chất béo trong cơ thể nằm ở mức hợp lý. Trong số các bộ phận khác nhau của gà dùng để rán, cánh thường chứa nhiều chất béo nhất, với gần 40 gam (1,4 oz) chất béo trong 100 gam (3,5 oz) cánh. Tuy nhiên, gà rán nguyên con trung bình chỉ chứa khoảng 12% chất béo, tương đương 12 gam (0,42 oz) trong mỗi 100 gam (3,5 oz) thịt. Đồng thời, 100 gam (3,5 oz) gà rán thường chứa khoảng 240 calo.', '2021-08-24', '2021-09-10', 95000),
(4, 11, 'Sứa biển', 'sbn', 'https://thucthan.com/media/2019/07/nom-sua/nom-sua.jpg', 'Vào những ngày hè nóng bức, du khách có dịp về miền Trung sẽ được thưởng thức món nộm sứa. Đây là món ăn lạ miệng rất thích hợp trong mùa nắng nóng, vừa ngon, vừa mát, lại rẻ tiền.\r\nCon sứa trông giống như thực vật nhưng lại là động vật thuộc loại xoang trường cùng họ với san hô. Thân sứa trong suốt như thủy tinh, mềm mại như chiếc lá, mang đủ mầu sắc, từ xanh dương, hồng cho đến tim tím… Sứa chứa 95% nước biển, nếu đem phơi nắng suốt 12 giờ liền trên bãi cát thì toàn thân sứa sẽ mỏng ra như tờ giấy.\r\nMùa hè là mùa sứa nổi. Từng thảm sứa di động trên mặt biển trông như vườn hoa sặc sỡ. Sứa không có mắt, không có vây, không có tai, không có đuôi và cũng không có xương… thế mà sứa chịu đựng được mọi sóng to gió lớn. Người đi biển gặp thảm sứa, lấy dây buộc lại và dùng thuyền máy kéo lôi vào bờ. Sứa được đưa lên bãi cát và ngư dân dùng dao sắc cắt thân sứa ra làm nhiều mảnh. Sau đó còn cắt ra từng miếng nhỏ bằng ngón chân cái, trông giống như cái tai gọi là sứa tai. Còn chân sứa cũng đem cắt nhỏ gọi là sứa chân. Sứa tai trong suốt mọng nước, ngả mầu xanh dương trong khi sứa chân trắng đục, giòn như gân, sụn. Chính vì sứa chân ngon hơn sứa tai nên giá bán cũng đắt hơn.\r\nSứa đem “rộng” vào những chiếc thúng chai (thúng đan bằng nan tre có trét dầu chai) có chứa nước biển. Người bán sứa thường gánh đôi thúng, bày bán ở các chợ quê, chợ tỉnh. Khi nào có người mua, người bán mới vớt sứa ra và đong bằng chiếc chén đất. Giá mỗi chén sứa tai từ 1.500 đồng đến 2.000 đồng, sứa chân từ 2.000 đồng đến 4.000 đồng.\r\nSứa đem về rửa thật sạch bằng nước lã cho trôi hết cát và rong rêu, sau đó mới vớt ra đựng vào chiếc rổ nan tre cho ráo nước.Muốn làm món nộm bằng sứa tai, người nội trợ phải khéo tay, xếp sứa lên một chiếc bát úp lọt lòng chiếc thau nhựa có kích cỡ vài tấc tây là có thể đủ ăn cả nhà. Nước sứa tiết sa, sẽ rút xuống đáy thau. Bấy giờ người đầu bếp mới rải lên mặt sứa một lớp gia vị đủ như loại lạc rang giã nhỏ, chuối chát non thái mỏng, xoài xanh băm nhỏ, ớt chín, rau răm, rau húng… thế là có món nộm sứa ngon lành.\r\nVới sứa chân, người sành ăn có thể làm thành món nộm công phu và tốn kém hơn. Đem sứa chân thái nhỏ, rửa bằng nước đun sôi để nguội, sau đó trộn chung với thịt gà luộc hay thịt heo thái mỏng, thêm vào ớt chín, xoài xanh băm nhỏ, trứng luộc, lạ rang giã nhỏ, rau thơm các loại… khiến cho hương vị càng thêm đậm đà, khoái khẩu.\r\nNộm sứa ăn với cơm hay bánh tráng gạo (bánh đa) nướng chín chấm với nước mắm gừng nhâm nhi với ly rượu hay bia thì tuyệt. Hiện nay, món nộm sứa đang bước vào thực đơn các nhà hàng như một món ăn đặc sản miền biển.', '2021-08-24', '2021-09-10', 30000),
(5, 10, 'Gà quay', 'gcn', 'https://cdn.tgdd.vn/2021/03/CookRecipe/GalleryStep/thanh-pham-287.jpg', 'Gà quay là thịt gà được chế biến làm thức ăn bằng phương pháp quay dù là trong nhà bếp gia đình, trên bếp lửa, hoặc bằng một lò quay. Nói chung, gà được quay, nướng với chất béo và nước mỡ màng của chính nó bằng cách lưu thông lượng nhiệt toả vào thịt trong quá trình quay nướng, và do đó, thường được nấu tiếp xúc với lửa hoặc nhiệt với một số loại vỉ nướng để việc lưu thông các chất béo mỡ và nước nhờn này hiệu quả nhất có thể. Gà quay là một món ăn từ thịt gà xuất hiện trong nhiều món ăn phổ biến trên toàn thế giới.', '2021-08-24', '2021-09-10', 125000),
(6, 13, 'Mì xào thập cẩm', 'mxt', 'https://anh.eva.vn/upload/2-2015/images/2015-06-23/1435025080-mixao.jpg', 'Mì xào thập cẩm không chỉ là món ăn dễ làm mà còn đầy đủ chất dinh dưỡng từ tinh bột, đạm và chất xơ cho bữa sáng hoặc những ngày bận rộn.', '2021-08-24', '2021-09-10', 25000),
(7, 13, 'Súp cua', 'suc', 'https://toinayangi.vn/wp-content/uploads/2015/03/sup-thap-cam-thom-ngon-bo-duong-01.jpg', 'Xúp cua là một món xúp dễ chế biến với nguyên liệu chính là, thịt cua, trứng gà hoặc trứng cút ngoài ra còn có xương gà để làm nồi xúp thêm vị ngọt và bổ dưỡng hoặc hạt bắp.', '2021-08-24', '2021-09-10', 25000),
(8, 13, 'Tôm chiên trứng', 'tct', 'https://29foods.com/media/news/1403_tom-chien-trung-muoi2.jpg', 'Tôm là một trong những loại hải sản phổ biến nhất trên thế giới. Ăn tôm sẽ cung cấp lượng protein dồi dào, khoáng chất và sở hữu hàm lượng chất béo thấp. Ăn tôm thường xuyên rất tốt cho sức khỏe tim mạch do Tôm chứa nhiều protein, ít chất béo và giàu cholesterol. 100 g tôm tươi có khả năng bổ sung 152 mg cholesterol, tương đương 51% lượng cholesterol các chuyên gia khuyến cáo tiêu thụ trong ngày.Hôm nay, Chuyên gia dinh dưỡng và nấu ăn Nguyễn Mạnh Cường sẽ giới thiệu với độc giả của Bảo Vệ Gia Đình Việt một món ăn rất ngon miệng từ loại thực phẩm này, đó chính là “Tôm chiên trứng muối”. Món ăn rất thích hợp cho bữa cơm cuối tuần cùng gia đình và người thân.', '2021-08-24', '2021-09-10', 75000),
(9, 13, 'Dưa hấu', 'duh', 'https://hongngochospital.vn/wp-content/uploads/2020/02/loi-ich-cua-dua-hau-2.jpg', 'Dưa hấu rất tốt cho cơ thể của bạn.', '2021-08-24', '2021-09-10', 8000),
(11, 11, 'Cua alaska', 'cak', 'https://www.cungcaphaisan.com/contents_cungcaphaisan/uploads/images/cua-hoang-de-rang-me.jpg', 'Cua Alaska ngon nhất là ăn lạnh, càng cua được hấp sơ, thịt trắng nằm trong lớp càng màu đỏ tươi, được bày trên những chiếc đĩa phủ đá bào trắng muốt, lạnh ngắt. Cầu kỳ hơn thì rưới vài giọt dầu ô liu hay chanh tươi, xốt Tabasco để cân bằng vị ngọt hoặc phết một lớp thật mỏng bơ tan chảy cho món ngon thêm mịn màng. Thực khách khoét lấy phần thịt, chấm muối tiêu chanh, hoặc không cần chấm thì thịt cua cũng đã rất tuyệt. Miếng càng cua Alaska phết phô mai nướng trên lửa than hồng.', '2021-08-25', '2021-09-10', 900000),
(13, 14, 'Pepsi', 'pep', 'https://minhcaumart.vn/media/com_eshop/products/8934588012228%201.jpg', 'Pepsi là một đồ uống giải khát có gas.', '2021-08-25', '2021-09-10', 10000),
(14, 14, 'Coca cola', 'ccl', 'https://cf.shopee.vn/file/c683c897f2e547f987bed05733d3f0a3', 'Coca cola là một đồ uống giải khát có gas.', '2021-08-25', '2021-09-10', 10000),
(15, 14, 'Trà đào', 'trd', 'https://cdn.huongnghiepaau.com/wp-content/uploads/2017/07/tra-dao.jpg', 'Nó có một hương vị rất lạ và gây nghiện, uống hoài không chán: vị đắng nhẹ của trà đen, hòa quyện với vị ngọt ngọt chua chua của đào, kèm thêm miếng đào tươi giòn giòn thơm thơm. Trà đào ngon nhất khi uống lạnh, vì lắc với thật nhiều đá sẽ làm cho vị đậm đà hơn, mát lạnh hơn và sảng khoái hơn.\r\nNhững miếng đào căng mọng nước và sáng bóng vẫn giữ nguyên được độ giòn vừa phải, chắc chắn sẽ làm nguyên liệu hoàn hảo cho thức uống trà đào mát ngọt thần thánh, giúp giải nóng và thanh nhiệt cơ thể, mang đến cho bạn những ngày hè tươi mát.\r\nNếu như chúng ta đã quen thuộc với hình ảnh bên cạnh ly cà phê thơm mùi đậm vị thì giới trẻ giờ đây lại gắn liền với hình ảnh ly trà đào thanh mát. Còn gì bằng khi giữa trưa hè oi bức mà order ngay món trà đào mát lạnh giải nhiệt ngay tức khắc này. Cảm giác khi đó sẽ là hương thơm xen lẫn mùi vị tuyệt vời.', '2021-08-25', '2021-09-10', 20000),
(16, 14, 'Nước lọc', 'nlo', 'https://nuockhoangducphat.com/wp-content/uploads/2017/10/300mAquafinal.jpg', 'Nước lọc tốt cho cơ thể của bạn.', '0000-00-00', '2021-09-10', 5000),
(17, 14, 'Nước khoáng Aquarius', 'nka', 'https://image.pharmacity.vn/live/uploads/2019/05/P03762_1.jpg', 'Nước uống vận động Aquarius bổ sung khoáng và chất điện giải giúp duy trì ổn định lượng nước cần thiết cho cơ thể. Với thành phần gồm muối, đường mía, lân Kali và chất Quarana có chức năng trì hoãn cả', '2021-08-25', '2021-09-10', 10000),
(18, 13, 'Bánh xèo Nhật Bản', 'bxn', 'https://cdn.daynauan.info.vn/wp-content/uploads/2016/02/banh-xeo-nhat-ban-okonomiyak.jpg', 'Okonomiyaki お好み焼き là một loại bánh tương tự như bánh xèo của Việt Nam được làm từ bột, trứng, và bắp cải và được nướng trên một tấm sắt lớn. Bạn có thể thêm nhiều loại topping khác nhau để tăng thêm vị ngon cho món ăn, từ wasabi, phô mai, thịt heo đến các loại hải sản đa dạng. Cũng chính vì vậy, món ăn này có tên gọi là Okonomiyaki (Okonomi お好み có nghĩa là “tùy ý thích” còn yaki 焼き có nghĩa là nướng). Đây là một món ăn rất phổ biến, nhưng đặc biệt Okonomiyaki của Hiroshima và Osaka được ưa chuộng hơn cả.\r\nTuy rằng Okonomiyaki có hình thức chế biến tương tự bánh xèo, rất hiếm ai ăn Okonomiyaki ngọt hoặc ăn kèm các loại rau sống. Thay vào đó, topping phổ biến nhất của Okonomiyaki chính là thịt heo, katsuo-bushi 鰹節 (vụn cá ngừ khô), và hành lá. Khi ăn, người Nhật sẽ xịt sốt Okonomiyaki và sốt Mayonnaise để tăng thêm vị đậm đà cho món ăn. Có thể nói, Okonomiyaki là một loại món ăn mà bạn có thể ăn ở bất cứ thời điểm nào trong năm, dù nóng hay lạnh.\r\nỞ Nhật Bản, bạn có thể ăn Okonomiyaki tại các nhà hàng chuyên chế biến món ăn này. Ở một số nơi, người ta sẽ chuẩn bị sẵn những bộ bàn được lắp một tấm sắt phẳng. Sau khi gọi món, nhân viên phục vụ sẽ điều chỉnh nhiệt độ của tấm sắt đó, đặt nguyên liệu (bao gồm bột Okonomiyaki, bắp cải, trứng, và các loại topping kèm theo) lên, và hướng dẫn bạn cách nướng Okonomiyaki. Nếu bạn cảm thấy phiền phức, bạn cũng có thể yêu cầu nhân viên phục vụ chế biến thay bạn.', '2021-08-25', '2021-09-10', 150000),
(21, 10, 'Thịt Dê', 'thd', 'https://cdn.daotaobeptruong.vn/wp-content/uploads/2019/09/thit-de-hap.jpg', 'Thịt dê là loại thịt thực phẩm từ loài dê nhà, đây là nguồn cung cấp thực phẩm quan trọng và phổ biến ở một số đất nước như Bangladesh, Nepal, Sri Lanka, Pakistan, Ấn Độ và một số vùng ở Việt Nam (với món đặc sản là Dê núi Ninh Bình[1]), thịt dê được cho là một loại thực phẩm bổ dưỡng và có công dụng trong việc tăng cường khả năng sinh lý.', '2021-08-24', '2021-09-10', 120000),
(23, 10, 'Gà chiên nướng', 'gcn', 'https://cdn.tgdd.vn/2020/09/CookProduct/1-1200x676-24.jpg', 'Nướng gà bằng nồi chiên không dầu là lựa chọn hoàn hảo khi bạn muốn thưởng món gà siêu giòn như ở ngoài hàng. Nồi chiên không dầu giúp giữ được độ đai ngọt của gà, vừa giảm được lượng mỡ có trong gà. ', '2021-08-20', '2021-09-10', 95000),
(24, 11, 'Tôm hùm Alaska', 'tha', 'https://haisanhuubo.com/wp-content/uploads/2020/03/tom-hum-alaska-hap-bia.jpg', 'Tôm hùm Alaska còn gọi là tôm hùm Canada, tôm hùm Mỹ, được đánh bắt tự nhiên tại vùng biển Alaska phía tây bắc nước Mỹ, là loài tôm càng có thân hình lực lưỡng. Loài tôm này sống ở các bãi đá ngầm nước trong xanh cực lạnh nên thịt có màu trắng, dai, vị ngọt đậm đà và thơm hơn tôm nuôi.\r\nTôm hùm Alaska cũng là một trong những loại hải sản có giá thành cao nhất nhì thị trường hải sản hiện nay.\r\nThịt tôm hùm Alaska chứa nhiều khoáng chất, vitamin có lợi cho sự duy trì và phát triển các tế bào thần kinh, giúp xương chắc khỏe. Ngư dân Mỹ và Canada đánh bắt tôm hùm Alaska theo cách thủ công. Ngay khi kéo lên bờ, tôm được giữ trong các thùng nước biển và chuyển đi khắp thế giới để giữ trọn vẹn sự tươi ngon, tinh khiết. Đây được xem là món ăn bổ dưỡng bởi tôm được đánh bắt tự nhiên, chất lượng thịt cao\r\nGạch son ở đầu tôm có vị béo ngậy bùi hơn nhiều so với gạch cua và râu tôm. Hàm lượng protein, vitamin, canxi dồi dào trong tôm hùm bổ sung cho cơ thể hỗ trợ phòng ngừa các bệnh cao huyết áp, tim mạch và tăng cường sinh lực ở nam giới.\r\nAxit béo Omega3 có trong tôm hùm tác dụng kìm hãm và giảm nguy cơ mắc các bệnh tim mạch.\r\nTôm hùm cũng là nguồn bổ sung vitamin B12 (Cobalamin) hiệu quả cho cơ thể. Đây là loại vitamin phức tạp nhất tham gia vào quá trình sinh hóa và chuyển hóa năng lượng trong cơ thể con người, giữ vai trò quan trọng trong tổng hợp nucleotic, protein. Cơ thể thiếu hụt vitamin B12 có thể dẫn đến mệt mỏi, chóng mặt, cơ bắp yếu ớt, trường hợp nặng hơn sẽ bị tổn hại thần kinh, dễ mắc các bệnh thiếu máu và mất trí.\r\nCứ 100 g tôm cung cấp hơn 1/3 lượng selen cơ thể cần thiết hàng ngày. Selen có tác dụng ngăn chặn sự phát triển của tế bào ung thư và thải các kim loại nặng ra khỏi cơ thể. Chất béo trong tôm là chất béo không bão hòa, hàm lượng carbohydrate, cholesterol cũng thấp hơn nhiều so với các loại thịt khác nên rất thích hợp cho những người không muốn tăng cân.', '2021-08-20', '2021-09-10', 1000000),
(25, 11, 'Ốc Bươi', 'ocb', 'https://cdn.beptruong.edu.vn/wp-content/uploads/2018/06/mon-oc-buou-xao-sa-ot.jpg', ' Ốc bươu, ốc vặn, ốc đá, ốc hút sống khắp đồng ruộng, ao hồ. Trong các loài ốc ở nước ngọt chỉ loài ốc bươu là lớn con nhất. Theo Đông y, ốc bươu mang tính hàn, có công năng thanh nhiệt, lợi thủy. Ốc bươu được dùng để chữa trị chứng vàng da, cước khí, thủy thủng, mắt sưng, tiền liệt tuyến, tiểu không thông, xơ gan cổ trướng, đái tháo đường. Trên hết, ốc bươu là một đặc sản miền quê.\r\nTừ con ốc bươu dân dã chốn bùn lầy nước đọng, người ta có thể chế biến lắm món khoái khẩu, thậm chí rất cầu kỳ. Có người lựa những con ốc bươu to, đẹp cho vào giỏ tre treo giàn bếp đến mấy tháng, sau đó mang xuống rửa sạch bụi khói, ngâm nước vo gạo nửa ngày, loại bỏ những con ốc chết rồi thả vào một chiếc mâm có đập sẵn mấy quả trứng gà.\r\nĐang đói, ốc ta ăn hết phần trứng trong mâm. Chừng ba bốn giờ sau, ta đập vỏ lấy hết phần thịt ốc cho vào tô chưng cách thủy cùng táo Tàu, nhãn nhục, thục địa, câu kỷ tử. Cũng có người băm nhỏ thịt ốc với thịt heo cùng vài vị thuốc bắc rồi gói lá gừng, lá nghệ nhồi vào vỏ ốc mà hấp.\r\nCòn các món ốc um, ốc nướng nước mắm, ốc nấu với chuối xanh thì thường thấy trong thực đơn ở các nhà hàng sang trọng. Song phải nói ốc luộc mới chính là món “chân truyền” khoái khẩu đệ nhất. Nhưng đâu phải ai cũng biết luộc ốc!\r\nTrước khi luộc, ốc phải được rửa sạch. Sau đó ngâm ốc vào nước vo gạo qua đêm rồi xả lại bằng nước lã thật sạch. Muốn ốc sạch nhớt thì nhớ cho vào thau nước ngâm mấy quả ớt cay.\r\nỐc bươu luộc ngon hay không là ở bí quyết luộc. Ốc luộc phải đi kèm với các phụ liệu như sả cây, lá chanh (hoặc lá bưởi), tía tô, gừng củ, muối. Thiếu một món là chất lượng giảm ngay.\r\nCách luộc: Xếp sả cây (nguyên cả thân lẫn lá) và gừng củ đập dập xuống đáy nồi, xúc ốc trộn với lá tía tô (đã xắt nhỏ) đổ lên một lớp chừng mười đến mười lăm phân, sắp tiếp một ít lá chanh hay lá bưởi, rồi đổ hỗn hợp ốc và tía tô lên trên và cứ thế cho đến gần miệng nồi.\r\nNước luộc ốc chỉ một phần ba nồi. Trong nước dùng để luộc nhớ nêm muối vừa miệng. Khi luộc phải vừa lửa vì nếu để nước sôi già, thịt ốc dai mất ngon. Khi nước bùng sôi, thỉnh thoảng phải dùng vá cán dài đảo ốc để nước luộc thấm đều từng con. Tùy khẩu vị có thể cho thêm chút đường hoặc bột ngọt vào nồi nước luộc.\r\nCách ăn: Xúc ốc ra đĩa. Nước chấm kèm theo phải được làm bằng nước mắm ngon pha với gừng vàng, ớt đỏ giã nhỏ, thêm tí bột ngọt và vắt thêm quả quất xanh. Sau khi kết thúc bữa ốc luộc, các bạn nên húp một chén nước luộc ốc để phòng đau bụng (vì ốc mang tính hàn, nước luộc có sả-gừng-lá chanh sẽ giải trừ nguyên nhân làm lạnh bụng).\r\nMón ốc bươu luộc này dường như ai cũng thích. Đàn ông thêm chút cay cay, đàn bà  kèm chút rượu nếp đục, trẻ nhỏ thì ăn no mới thôi. Ngon, bổ, rẻ, đã thế ốc bươu còn chữa được bệnh.\r\nỐc bươu là món ăn dân dã, quen thuộc và rất ngon miệng ở Việt Nam. Ở khu vực phía Bắc có món bún riêu ốc, ốc chuối đậu, ốc luộc lá chanh.... ở vùng Nam Bộ có món ốc hấp tiêu, ốc bươu hấp chấm với nước mắm gừng, ốc bươu nhồi... Ốc bưu nhồi thịt là món ngon mang hương vị đặc trưng của miền Bắc và được cải tiến tại Miền Nam.', '2021-08-20', '2021-09-10', 50000),
(26, 14, 'Trà sữa matcha', 'tsm', 'https://cdn.dayphache.edu.vn/wp-content/uploads/2018/02/tra-sua-matcha.jpg', 'Matcha trà xanh là thức uống không còn xa lại với giới trẻ hiện nay.\r\nKhông những là thức uống thơm ngon mà còn vô cùng tốt cho sức khỏe.\r\nSản phẩm có tính đa dạng , có thể sử dụng trong pha chế thức uống, làm bánh và không thể thiếu đây là bí quyết làm đẹp vô cùng hiệu quả', '2021-08-20', '2021-09-10', 25000),
(27, 11, 'Lẩu hải sản', 'lhs', 'https://www.nhahangquangon.com/wp-content/uploads/2015/01/nguyen-lieu-can-co-cho-mon-lau-hai-san.jpg', 'Hải sản hay còn có tên gọi khác là đồ biển. Những món ăn từ hải sản rất ngon và giá trị dinh dưỡng rất cao. Chính vì thế những món ăn này rất được mọi người yêu thích.\r\nHải sản bao gồm: cá biển, bạch tuộc, hàu, sò huyết, tôm sú, ốc,….Những loại hải sản này có thể chế biến thành nhiều món ăn khác nhau rất hấp dẫn như lẩu hải sản, hấp,…', '2021-08-24', '2021-09-10', 300000),
(28, 10, 'Lẩu đuôi bò', 'ldb', 'https://cdn.tgdd.vn/2020/06/CookProduct/thum1200-1200x676-20.jpg', 'Lẩu đuôi bò – món ngon khó cưỡng khi trời lạnh\r\nTrời bắt đầu chuyển lạnh cũng là lúc những món lẩu lên ngôi, bạn bè, người thân quây quần bên nhau thưởng thức món lẩu này trong tiết trời mưa gió không ngớt xuýt xoa, tấm tắc.', '2021-08-24', '2021-09-10', 92000),
(29, 10, 'Lẩu bò viên', 'lbv', 'https://ganesh.vn/wp-content/uploads/2020/11/lau-bo-vien-3.jpg', 'Để tăng chiều cao hiệu trái và có bữa cơm cuối tuần thêm thú vị bạn có thể bắt tay vào làm món lẩu bò viên chua cay cho menu cuối tuần này. Còn gì thú vị hơn khi cả gia đình cùng sum vầy bên xoong lẩu nghi ngút khói, với mùi thơm của sả cộng thêm vị cay nồng của ớt và vị ngọt hấp dẫn từ xương hầm được dùng kèm với những loại rau và thịt bò viên. Khác với các món lẩu vô cùng quen thuộc như là: Lẩu gà lá giang, lẩu hải sản hoặc là lẩu nấm.... lẩu bò viên chua cay có vị cay nồng đặc trưng của nước sử dụng, vừa lạ vừa ngon miệng. Thành phần chính đơn giản là bò viên và nước dùng ngon nhưng với những ai đã thươngr thức lần đầu sẽ không quên được cái vị cay nồng, đậm đà vừa ăn vừa phải xuýt xoa. Lẩu bò viên chua cay là món ngon hợp với khẩu vị của nhiều người, cách đun lẩu ngon không phải ai cũng có thể chế biến được đồ ăn này đòi hỏi một sự khéo léo nhất định khi đun thì ăn mới không bị hôi. Thịt bò viên sẽ trở nên mềm và ngọt hơn sau khi làm và đồ ăn này tương đối thích hợp cho những bữa nhậu tụ tập bạn bè hoặc quây quần với gia đình. đảm bảo mọi người trong gia đình đảm bảo sẽ cảm thấy thích thú với hương thị thơm ngon khó chê thế này. Thật hấp dẫn phải không những bạn? Còn đợi chờ gì mà không phải cuối tuần này không làm món ngon này, hãy tham khảo và thực hiện theo cách nấu lẩu bò viên chua cay nóng hổi thơm ngon khó cưỡng cho cả nhà thưởng thức nào. nguyên liệu và cách chế biến cực kì đơn giản và không hề phức tạp như bạn đọc nghĩ đâu nhé, chỉ cần thêm chút thời gian ra là bạn đã có một món lẩu thơm ngon hấp dẫn để chiêu đãi cả gia đình thưởng thức rồi. Giữa cái thời tiết hơi hơi se lạnh này mà được ngồi ấm áp bến gia đình, nhúng những viên thịt bò tươi ngon vào nổi lẩu đang bốc hơi nghi ngút, rồi cuộn với những loại rau ăn kèm cảm giác thật là tuyệt vời, đảm bảo bạn sẽ ghiền cho mà xem. Lẩu bò viên chua cay có lẽ không xa lạ đối với những bạn nhưng để đun sao cho ngon mà không phải rườm ra thì sẽ hướng dẫn các bạn đọc cách nấu lẩu bò viên chua cay sau đây không những đơn giản mà còn ngon hơn ngoài nhà hàng nữa.', '2021-08-24', '2021-09-10', 75000),
(30, 11, 'Cá Basa', 'cbs', 'https://cdn.cet.edu.vn/wp-content/uploads/2018/12/ca-basa-kho-to.jpg', 'Cá basa kho là món ăn quen thuộc trong bữa cơm gia đình Việt. Vị beo béo của cá hòa quyện cùng các loại gia vị tạo nên món ăn đậm đà, đưa cơm. Bạn cách làm các món cá basa kho tộ thơm ngon, ngoài ra còn có nhiều cách chế biến cá ba sa khác, mời các bạn tìm hiểu ở những công thức khác.', '2021-08-24', '2021-09-10', 65000),
(31, 11, 'Ốc hương', 'och', 'https://cdn.beptruong.edu.vn/wp-content/uploads/2018/11/oc-huong-chay-toi.jpg', 'Ốc hương thường có nhiều ở các vùng biển nhiệt đới. Hiện nay, loại ốc này có thể chế biến thành nhiều món ăn khác nhau tùy theo khẩu vị của từng vùng miền. Đặc biệt, ốc hương cung cấp nguồn dinh dưỡng cao cho cơ thể con người.', '2021-08-24', '2021-09-10', 75000),
(32, 14, 'Trà sữa caramel', 'tsc', 'http://file.hstatic.net/1000135323/article/tra_sua_caramel_3_0ade28d637c14861b93ed667bfdafddf.png', 'Caramel là hỗn hợp làm từ các nguyên liệu nấu ăn hết sức cơ bản là đường và nước, trải qua quá trình chế biến nhiệt, hỗn hợp này có màu nâu trong, đặc sánh rất đẹp mắt. Caramel có thể có vị hơi mặn, cân bằng lại vị ngọt đậm một cách hoàn hảo nếu như trong lúc chế biến bạn cho thêm một chút muối. Người ta cũng thêm kem tươi và bơ vào để tạo nên sốt caramel có vị béo ngậy.\r\nTừ lâu caramel đã là một thành phần không thể thiếu trong nhiều món tráng miệng và đồ uống. Những món như bánh flan, kẹo bơ caramel, caramel macchiato, caramel frappe được ưa chuộng trên toàn thế giới bởi hương vị ngọt ngào đắm say. Và giờ đây trà sữa caramel cũng được các tín đồ trà sữa hết sức ưa chuộng.  \r\nNếu như caramel macchiato thường kết hợp caramel với cà phê và lớp bọt sữa béo ngậy, thì trà sữa caramel lại có sự hài hòa giữa ba nguyên liệu chủ đạo là trà - sữa tươi và caramel. Cách làm trà sữa caramel tương tự với các loại trà sữa phổ biến khác, chỉ cần bạn chọn được một mẻ caramel ngon, hoặc lựa được loại sốt caramel phù hợp để nâng tầm hương vị.', '2021-08-24', '2021-09-10', 25000),
(33, 11, 'Sushi', 'sus', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Sushi_platter.jpg/1200px-Sushi_platter.jpg', 'Sushi là món ăn truyền thống và cũng là một nét văn hóa đặc trưng của đất nước mặt trời mọc. Hơn thế, sushi còn vượt qua biên giới nước Nhật để trở thành món ăn được nhiều người trên nhiều quốc gia ưa thích.\r\nSushi là một món ăn Nhật Bản bao gồm cơm trộn giấm kết hợp với các nguyên liệu khác. Từ xưa, người nhật đã biết cách ủ cá, tôm, hải sản vào nắm cơm để giữ được mùi vị thơm ngon. Khi ủ, cơm thường được trộn với một chút giấm cho chua chua ngọt ngọt. Mà cũng chính vì thế mà cá ủ trong cơm được chuyển hóa thành sushi.\r\nThứ cơm trộn giấm đẻ làm sushi được gọi là sumeshi hay sushimeshi, loại giấm để nấu thứ cơm này mà không phải là giấm thông thường mà là giấm có pha chút muối, đường, rượi ngọt Mirin, vì thế gọi là giấm hỗn hợp awasesu.\r\nCơm nấu xong (nấu không chín hoàn toàn như cơm bình thường) được đổ ra một cái chậu gỗ rồi trộn giấm vào. Vừa trộn vừa dùng quạt tay quạt cho hơi nóng thoát bớt ra để giữ hương vị của giấm.\r\nCác loại hải sản dùng để làm sushi có thể là cá, tôm, mực, bạch tuộc, bào ngư, … Có nhiều loại sushi, tùy theo cách chế biến của đầu bếp. Sushi thường được chấm với mù tạt (wasabi) hoặc nước tương Nhật Bản rồi thưởng thức.', '2021-08-24', '2021-09-10', 200000),
(34, 11, 'Sò huyết xào me', 'shx', 'https://yummyday.vn/uploads/images/cach-lam-so-huyet-xao-me.jpg', 'Trong sò huyết có chứa rất nhiều dưỡng chất cung cấp năng lượng, chất đạm, khoáng chất như kẽm và magie tốt cho sức khỏe. Bên cạnh đó sò huyết còn chứa moisture; các loại vitamin A, B1, B2, C; protein; và lipid. Không những thế các món ăn được chế biến từ sò huyết còn được cho là bài thuốc hữu hiệu trong nhiều trường hợp.\r\nVới các dưỡng chất như vậy, việc bổ sung các món ăn từ sò huyết giúp tăng cường sức khỏe cho tim mạch, bảo vệ chống lại các tác hại gây nguy cơ mắc bệnh tim. Với Vitamin B12 và omega 3 có trong sò huyết còn giúp tăng cường sức khỏe cho não, hỗ trợ hoạt động của não tốt hơn. Đồng thời các dinh dưỡng có trong sò giúp cơ thể sản sinh các tế bào bảo vệ hệ miễn dịch, chống oxy hóa, viêm và ung thư. ', '2021-08-24', '2021-09-10', 90000),
(35, 10, 'Bò bít tết', 'bbt', 'https://i.ytimg.com/vi/pjpmCc1P6ig/hqdefault.jpg', 'Bò bít tết hay còn được gọi với cái tên tiếng anh là Beefsteak, món ăn này xuất phát từ Phương Tây và được du nhập về Việt Nam. Bò bít tết là món ăn dược làm từ miếng thịt xắt lát dày tầm 1.5 – 2.5 cm, cắt vuông góc với các thớ thịt. Bò bít tết đọc chế biến bằng cách nướng trên vỉ hoặc áp chảo, kết hợp cùng với một sô nguyên liệu đơn giản như muối, tiêu, dầu và bơ. Bò bít tết thường được ăn kèm cùng với khoai tây chiên, trừng ốp là hay salad rau.', '2021-08-24', '2021-09-10', 150000),
(36, 14, 'Chai rượu nho', 'crn', 'http://ruoungoaiald.com/image/data/Vang%20new/Vang%20ngot%20Mondovino.jpg', 'Rượu nho nguyên chất với hương vị ngọt thanh, dịu nhẹ, nồng nàn. Được lên men tự nhiên từ phương pháp truyền thống với thành phần nho lên men tự nhiên được ủ trong một thời gian ngắn nên rượu nho Ninh Thuận còn được xem là một loại thức uống trái cây lên men chứ không phải là rượu mạnh.', '2021-08-24', '2021-09-10', 110000),
(37, 14, 'Bia tiger bạc', 'btb', 'https://bizweb.dktcdn.net/thumb/large/100/036/299/products/bia-tiger-bac-chai.jpg', 'Bia Tiger Crystal hay còn gọi là Tiger bạc là một trong những dòng sản phẩm của Tiger beer, không chỉ có kiểu dáng sang trọng, hương vị êm dịu mang lại cảm giác sảng khoái cho người dùng.\r\nTiger Crystal được sản xuất từ công nghệ lên men lạnh cực kỳ độc đáo có tên gọi là Cold Suspension. Từng dòng bia được tinh lọc với kỹ thuật làm lạnh sâu Crystal Cold do đó bia sẽ không bị pha lẫn với bất kỳ men tạp nào trong quá trình ủ đồng thời giữ được mùi thơm đặc trưng và hương vị tuyệt hảo của nó.\r\nHoa bia được tinh chế đặc biệt từ nguồn nguyên liệu thiên nhiên, được nhập khẩu từ các cơ sở sản xuất uy tín chất lượng hàng đầu quốc tế để lưu giữ nguyên vẹn hương vị của bia.\r\nNhờ vào quá trình đặc biệt này, Tiger Crystal mang đến cho người dùng cảm giác sảng khoái, mát lạnh và dễ uống với hương vị cực ngon.', '2021-08-24', '2021-09-10', 18000),
(38, 10, 'Canh cà ri', 'ccr', 'https://i-vnexpress.vnecdn.net/2020/02/04/image002-6929-1580810848.jpg', 'Cà ri là món ăn quen thuộc từ lâu, mang hương vị đậm đà, thơm ngon vô cùng đặc trưng của ẩm thực Việt.', '2021-08-24', '2021-09-10', 40000),
(39, 11, 'Mực xào cà ri', 'mcr', 'https://cachlamhaisan.com/wp-content/uploads/2016/11/muc-xao-ca-ri.jpg', 'Mực là loại hải sản thơm ngon với rất nhiều kiểu biến tấu để món ăn bắt miệng hơn.', '2021-08-24', '2021-09-10', 60000),
(40, 11, 'Bạch tuộc xào sa tế', 'btx', 'https://yummyday.vn/uploads/images/bach-tuoc-xao-sate-3.jpg', 'Bạch tuộc xào sa tế một món ăn nghe cái tên thôi đã thấy được vị cay cay thơm nồng nơi đầu mũi rồi phải không nào? nó đem đến cho các bạn một bí kíp để tạo nên một món ăn hoàn hảo, vừa có thể ăn để bổ sung dưỡng chất vừa có thể làm mồi nhâm nhi vài ly trong những ngày se lạnh cuối tuần. Trước khi đến với cách làm bạch tuộc xào sa tế thì hãy cùng tìm hiểu lợi ích của bạch tuộc trước để hiểu được vì sao nó được ưa thích như vậy.\r\nBạch tuộc là một loại hải sản rất sạch và rất tốt cho sức khỏe của chúng ta. Hầu như bạch tuộc không có hại đối với người ăn và các món làm từ bạch tuộc đều được ưa chuộng ở rất nhiều quốc gia trên thế giới trong đó có món bạch tuộc xào sa tế. Thịt bạch tuộc cung cấp nhiều dưỡng chất như các loại vitamin và một số khoáng chất thiết yếu cho cơ thể người. Ngoài ra nó còn có nhiều chất dinh dưỡng tốt cho sự phát triển của cơ thể. Đọc tới đây nếu bạn cảm nhận được giá trị dinh dưỡng tốt của bạch tuộc thì chế biến món bạch tuộc xào sa tế cho gia đình bạn.', '2021-08-24', '2021-09-10', 72000),
(41, 11, 'Cua rang me', 'crm', 'http://media.cooky.vn/images/blog-2016/cach-lam-cua-rang-me-cuc-ngon-tai-nha-ai-an-cung-ghien-1.jpg', 'Cua rang me là một trong những món ăn ngon của nền Ẩm thực Việt Nam. Cua rang me là món ăn với đầy đủ 4 hương vị chua, cay, mặn, ngọt. Phù hợp cho những bữa tiệc hoặc bữa ăn gia đình vào cuối tuần hay dịp lễ.', '2021-08-24', '2021-09-10', 260000),
(42, 11, 'Lẩu nghêu', 'lng', 'https://image.cooky.vn/recipe/g5/48855/s640/cooky-recipe-637001721507733701.jpg', 'Vào những ngày hè nóng nực nghêu là thực phẩm được ưa chuộng như một “liều thuốc” giải nhiệt ngon miệng, hiệu quả. Có nhiều công thức món ăn ngon có dùng nghêu làm nguyên liệu, tuy nhiên, với món lẩu nghêu, hẳn đây sẽ là biến tấu thú vị, hấp dẫn dành cho bạn và cả gia đình.\r\nĐể có món lẩu nghêu ngon quan trọng nhất là khâu chế biến nước dùng. Nước dùng ngon nhất là được hầm từ xương gà trong khoảng 3 tiếng với lửa nhỏ, hớt bọt để có nồi nước trong và ngọt vị. Một thành phần đặc biệt không thể thiếu của món ăn này chính là: Nghêu. Nghêu dùng nấu lẩu trước tiên được ngâm với ớt khoảng 30 phút cho nhả hết đất bẩn sau đó rửa sạch, cho vào xoog luộc cho hơi hé vỏ, nhắc xuống, tách lấy nạc. Nước nghêu được lọc ra tô. Ngoài ra, lẩu nghêu còn có thêm tôm sú lớn bóc vỏ, bỏ đầu, bỏ chỉ đen; rau tần ô… Để nước dùng có hương vị độc đáo riêng nhất thì sự tài hoa của người đầu bếp còn thể hiện ở khâu chế biến sa tế bằng cách phi thơm chút hành tỏi, cho ngò gai vào xào nhanh 1 phút trên lửa lớn, bắc ra để riêng. Nước dùng gà, nước nghêu được đổ chung cho thơm hầm 20 phút trên lửa nhỏ. Nước dùng gà khiến nước lẩu được ngọt đậm đà, quyện cùng nước luộc nghêu ngọt đặc trưng, hấp dẫn tạo nên sức hấp dẫn riêng biệt cho món ăn này. Khi nước dùng gần được thì các nguyên liệu như cà chua bổ cau, đầu hành lá, muối, đường, sa tế ngò gai xào dầu tỏi, ớt cắt nhỏ lần lượt được cho vào. Thưởng thức món lẩu nghêu nghi ngút khói thực khách sẽ thực sự thích thú với vị ngọt thanh mát rất riêng của nghêu, vị ngọt đậm đà của tôm, vị ngọt tươi ngon của rau tần… hài hòa với đó là nước dùng đủ vị chua, cay, mặn, ngọt hài hòa tạo nên món ngon thật tròn vị ăn cùng chút bún tươi và mắm ớt nữa thì thật tuyệt.\r\nTrong tiết trời mùa hè nóng bức thì lẩu nghêu sẽ là một món ăn ngon hấp dẫn dành cho mọi thực khách bởi sự thanh khiết, tươi mát của thực phẩm bổ dưỡng, giải nhiệt này.', '2021-08-24', '2021-09-10', 120000),
(43, 13, 'Cơm chiên dương châu', 'cdc', 'https://ameovat.com/wp-content/uploads/2016/05/cach-lam-com-chien-duong-chau-600x481.jpg', 'Cơm chiên dương châu là một món ăn có nguồn gốc từ Trung Quốc nhưng được du nhập về nước ta và rất rất được ưa chuộng, hợp khẩu vị của người dân Việt Nam. Cơm chiên dương châu được làm từ những nguyên liệu vô cùng đơn giản và rất dễ dàng tìm, vì vậy mà cách làm cơm chiên dương châu ngon cũng vô cùng đơn giản và có thể thực hiện ngay tận chỗ. Trong nội dung bài viết trong tương lai chúng tôi sẽ gửi tới các bạn đọc một số kinh nghiệm chiên cơm dương châu ngon và hấp dẫn nhất.', '2021-08-26', '2021-09-10', 30000),
(44, 12, 'Bánh xèo chay', 'bxc', 'https://cdn.daylambanh.edu.vn/wp-content/uploads/2017/07/cach-lam-banh-xeo-chay.jpg', 'Bánh xèo chay dành cho người ăn chay, phật giáo, hoặc tôn giáo khác.', '2021-08-26', '2021-09-10', 20000),
(45, 12, 'Cơm chay', 'coc', 'https://inhat.vn/hcm/wp-content/uploads/2019/08/Screen-Shot-2019-08-04-at-17.13.02-min.png', 'Cơm chay dành cho người ăn chay, phật giáo, hoặc tôn giáo khác.', '2021-08-26', '2021-09-10', 20000),
(46, 12, 'Mì quảng chay', 'mqc', 'https://cdn.daotaobeptruong.vn/wp-content/uploads/2015/11/mi-quang-chay.jpg', 'Mì quảng chay dành cho người ăn chay, phật giáo, hoặc tôn giáo khác.', '2021-08-26', '2021-09-10', 20000),
(47, 13, 'Kim chi Hàn Quốc', 'khq', 'https://cdn.huongnghiepaau.com/wp-content/uploads/2018/01/dc52d5c5f54b7db2dfd2aae465dc6ccd.jpg', 'Xuất hiện từ cách đây hơn 4.000 năm, kim chi được người dân sáng tạo thành một món ăn đa năng, trở thành linh hồn ẩm thực của Hàn Quốc.\r\nNói đến ẩm thực Hàn Quốc, không thể không nhắc đến kim chi, một trong những món ăn đặc trưng trong văn hóa ẩm thực của người dân nước này. Kim chi là hỗn hợp của các loại rau củ quả (chủ yếu là cải thảo, củ cải, dưa chuột…) và các loại gia vị (ớt, tỏi, hành, gừng, muối, đường…) lên men. Tất cả được phối trộn một cách hài hòa tạo, nên một món ăn với đầy đủ hương vị như chua, cay, mặn, ngọt.\r\nTheo các nghiên cứu, kim chi được con người làm ra từ hơn 4.000 năm trước. Khoảng năm 2030 TCN, người dân đã biết cách ngâm bắp cải vào nước muối, để bảo quản loại rau này sau mỗi vụ thu hoạch. Cách làm này dần trở nên phổ biến khắp Trung Quốc, Mông Cổ, và Triều Tiên. Tuy nhiên, việc xử lý bắp cải được người dân Triều Tiên nâng lên tầng cao mới, qua nhiều cải tiến và sáng tạo để cho ra đời món kim chi ngày nay.\r\nVào thời Choson, người dân đã sáng tạo ra khoảng 80 loại kim chi. Giai đoạn từ thời kỳ Tân La Thống Nhất (668-935) đầu triều đại Cao Ly (918-1392) là thời kỳ “hưng thịnh” của món ăn này. Kim chi xuất hiện ở khắp mọi nơi, từ mâm cơm của kẻ nghèo đến bàn tiệc của vua chúa.\r\nTrong thời kỳ này, kim chi được làm từ các loại rau xanh ngâm với muối hoặc hỗn hợp muối và rượu. Đến những năm 1500, sự xuất hiện của ớt bột và chotkal (hải sản ướp muối lên men) trong kim chi tạo nên hương vị mới ngon miệng hơn. Sự khác nhau về khí hậu của mỗi vùng miền cũng ảnh hưởng đến hương vị của kimchi. Những vùng lạnh hơn sẽ có vị nhạt và cay hơn.\r\nTheo truyền thống, kim chi được làm vào mùa đông (việc làm kim chi vào mùa đông được gọi là kimjang), tức là khoảng tháng 11 hàng năm, với số lượng lớn đủ để cả gia đình sử dụng trong suốt nhiều tháng. Sau khi tẩm ướp gia vị hoàn chỉnh, kimchi sẽ được lưu giữ dưới lòng đất trong những chiếc vại bằng đất nung để hỗ trợ quá trình lên men.\r\nNgày nay, kim chi được đựng trong các thùng chứa chuyên dụng, thậm chí còn có cả những thiết bị để phụ nữ hiện đại có thể làm kim chi quanh năm.\r\nTrong quá khứ, tất cả phụ nữ Hàn Quốc sau khi kết hôn đều phải học cách làm kim chi dưới sự hướng dẫn của mẹ chồng. Gia vị và công thức làm kim chi đặc biệt của gia đình sẽ được truyền lại qua các thế hệ nàng dâu. Thậm chí, người ta tin rằng kỹ năng làm và bảo quản kim chi được coi là thước đo để đánh giá phụ nữ. Tuy nhiên ngày nay, do cuộc sống bộn bề, phụ nữ hiện đại ít có thời gian để làm kim chi theo cách truyền thống.\r\nNgày nay, kim chi là loại thực phẩm “đa năng” nhất, có thể dùng làm nguyên liệu chế biến thành nhiều món ăn, hay đơn giản là ăn trực tiếp trong các bữa ăn của người Hàn Quốc. Có tới hơn 100 loại kim chi, không chỉ phổ biến ở Hàn mà còn được ưa thích tại rất nhiều nước trên thế giới. Mặc dù không ai có thể xác định được kim chi là một loại dưa chua hay salad, nhưng hương vị của nó đủ để chinh phục những người sành ăn nhất.\r\nHình ảnh món kimchi cay cay ngon miệng xuất hiện trong phim truyền hình, chương trình truyền hình thực tế, các game show góp phần quảng bá món ăn này ra thế giới. Thậm chí, Hàn Quốc còn xây dựng cả Bảo tàng Kim chi, Quỹ Kim chi, Viện Nghiên cứu Kim chi và đưa hẳn bộ môn khoa học về kim chi vào chương trình học tại các trường đại học và cao đẳng.\r\nKim chi xứng đáng có được vị thế như vậy không chỉ vì hương vị tuyệt vời mà còn có giá trị dinh dưỡng rất cao, rất có lợi cho sức khoẻ và ngăn ngừa một số bệnh tật. Trong 10 gram kim chi có chứa 42 mg vitamin C, bằng 1/2 liều dùng hàng ngày cho một người trưởng thành. Kim chi có nhiều chất xơ, giàu khoáng chất (canxi, sắt…) và các vitamin (B1, B2,…). Tất cả đều là thành phần thiết yếu cho sức khoẻ con người. Kim chi cũng chứa ít calo nên tốt cho người ăn kiêng.\r\nKim chi là biểu tượng ẩm thực và nét văn hóa của Hàn Quốc. Năm 2013, văn hóa muối kim chi của Hàn Quốc đã được UNESCO công nhận là di sản văn hóa phi vật thể của nhân loại. Tại Nhật Bản, Hàn Quốc và các nước trong khu vực Đông Nam Á, mỗi người dân tiêu thụ trung bình từ 10-15 kg kim chi mỗi năm. Chỉ tính riêng tại Hàn Quốc, mỗi năm nước này tiêu thụ khoảng 400 tấn kim chi, nhiều hơn bất kỳ một loại rau nào khác.', '2021-08-26', '2021-09-10', 50000),
(48, 13, 'Ốc bươi nhồi', 'obn', 'https://product.hstatic.net/1000103608/product/oc-ha_5b_master.jpg', 'Đĩa ốc bốc khói nghi ngút, hương thơm của sả quyện trong vị ngọt của thịt, vị cay của tiêu cùng vị đậm đà của chén mắm gừng đem lại cho bạn cảm giác ngon miệng và ấm áp trong tiết trời se lạnh.\r\nỐc bươu nhồi thịt mang hương vị đất Bắc, mặc dù đã được biến tấu để phù hợp với khẩu vị của người Nam nhưng hương vị thơm ngon đặc trưng của món ăn thì không hề thay đổi.\r\nCái khác biệt lớn nhất mà người ăn có thể nhận ra là hương thơm của những lá gừng đã được thay thế bằng sả. Không còn cái vị cay nồng của gừng mà thay vào đó là hương thơm nhẹ nhàng thoang thoảng của sả cứ vương vấn trong món ăn.\r\nỞ Sài Gòn, quán ốc bươu nhồi thịt trên đường Nguyễn Văn Giai (quận 1) là địa chỉ nổi tiếng nhất đối với những người trót mê hương vị thơm ngon của món ăn dân dã này.\r\nCũng có cùng công thức chế biến như các quán ăn khác ở Sài Gòn, nhưng những con ốc bươu ở đây luôn được thực khách đánh giá cao về hương vị và chất lượng. Để có được điều đó, suốt mười mấy năm qua, người chủ quán luôn chăm chút cho món ăn của mình, từ chọn lựa ốc cho đến chế biến.... Theo chia sẻ của chị thì món ăn này rất dễ chế biến, tuy nhiên cần phải tỉ mỉ và cẩn thận. Nguyên liệu đòi hỏi phải tươi sống, nếu ốc không tươi thịt ốc không giòn, món ăn nặng mùi rất khó ăn, ngoài ra, cần phải ngâm ốc thật kĩ để tránh mùi bùn tanh cho thực khách khi thưởng thức.\r\nThành phần của món ăn gồm có thịt ốc thái lát mỏng, giò sống, thịt nạc xay, nấm mèo thái sợi... trộn đều hỗn hợp đó với các loại gia vị, trong đó tiêu sọ là gia vị không thể thiếu. Cái vị cay nồng của tiêu sọ làm cho món ăn thêm hấp dẫn. Sau khi chuẩn bị xong, cuộn phần nhân vào cọng sả, nhét vào thân ốc và đem hấp chín. Món ăn tăng thêm hương vị cay nồng khi được điểm xuyết thêm một vài lát ớt mỏng.\r\nĐĩa ốc bươu nhồi thịt nóng hổi được dọn kèm với chén nước mắm gừng cùng các loại rau như tía tô, rau răm. Thịt ốc giòn ngọt thấm đẫm trong nước chấm mắm gừng cùng hương vị nồng nàn của tía tô, rau răm làm tăng thêm gia vị cho món ăn đồng thời giúp giải tính hàn do thịt ốc mang lại.', '2021-08-26', '2021-09-10', 125000),
(49, 13, 'Bánh pizza', 'bpz', 'https://vcdn-vnexpress.vnecdn.net/2020/02/21/HN-PizzaThanhlong-10-2047-1582260592.jpg', 'Pizza là một trong những niềm tự hào về tinh hoa ẩm thực độc đáo của người Italy, nhưng một số tư liệu lại cho rằng món bánh này có nguồn gốc sâu xa từ đất nước Hy Lạp.', '2021-08-26', '2021-09-10', 116000),
(50, 14, 'Sprite', 'spt', 'https://minhcaumart.vn/media/com_eshop/products/sprite-lon-cao-330ml-MCM.jpg', 'Sprite là một đồ uống giải khát có gas.', '2021-08-26', '2021-09-10', 10000),
(51, 14, 'Sting', 'sti', 'https://m.media-amazon.com/images/I/71MT-39U3vL._SL1500_.jpg', 'Sting hội tụ những gì \"chất\" nhất của một loại thức uống tăng lực nổi tiếng thế giới cho bạn luôn ở trạng thái tỉnh táo và vị ngon sảng khoái. Với taurine, inositol, vitamin B, kết hợp cùng nhân sâm, Sting là nguồn năng lương để bạn luôn ở phong độ \"đỉnh\" nhất.\r\nChúng tối mang nguồn năng lượng Sting đến bạn, để bạn thôi phải lựa chọn việc gì không nên làm và sẵn sàng hành động, chấp nhận thách thức để nắm lấy cơ hội. Để Sting là động lực cho những ai biết rằng chơi hết sức làm việc hết mình là cách hay nhất để trải nghiệm cuộc sống. Sống bứt phá để mỗi ngày là một sự khám phá mới đầy thú vị..\r\nSting được đóng gói trong bao bì tiện dụng: Pet 330ml, Can 330ml, Can 250ml, RGB 240ml.', '2021-08-26', '2021-09-10', 10000),
(52, 14, 'Cà phê trứng', 'cpt', 'https://image-us.eva.vn/upload/4-2020/images/2020-12-23/image2-1608705516-603-width600height343.png', 'Cà phê trứng là một loại thức uống có nguồn gốc từ Việt Nam được làm từ cà phê với trứng gà và sữa đặc có đường. \"Cà phê Giảng\" là quán cà phê lâu đời và nổi tiếng nhất Hà thành phục vụ thức uống này.', '2021-08-26', '2021-09-10', 30000),
(57, 12, 'Canh rau nấm chay', 'cnn', 'https://cdn.cet.edu.vn/wp-content/uploads/2019/01/canh-nam-chay.jpg', 'Dành cho phật giáo và tôn giáo khác', '2021-09-17', '2021-09-17', 20000),
(58, 13, 'Bún ốc', 'bno', 'https://cdn.daynauan.info.vn/wp-content/uploads/2018/07/bun-oc-ha-noi.jpg', 'Bún ốc là một đặc sản ẩm thực của người Hà Nội. Bún ốc có thể ăn nóng, chấm hoặc chan. Bún ốc nguội ăn chấm phù hợp vào mùa hè.\r\nNguyên tắc đầu tiên khi chọn các loại ốc nói chung là phải chọn ốc sống. Ốc mua về thường chưa thể ăn ngay, nên ngâm ốc qua đêm để nhả hết nhớt và chất bẩn ra nước ngâm dưới dạng vụn nhầy.\r\nỐc được luộc lên sau đó khều lấy thịt, bỏ vào xào săn cùng mỡ và gia vị, mắm, mì chính. Nước ốc làm nước dùng chan bún sau khi đã được ninh sôi, bỏ cà chua và các gia vị đặc trưng của món nước dùng bún ốc. Trong nước dùng chan bún ốc có bỏ xương ống lợn ninh cùng để nước thêm ngọt.', '2021-09-23', '2021-09-23', 25000),
(59, 13, 'Bún riêu cua', 'brc', 'https://cdn.tgdd.vn/2020/11/CookRecipe/Avatar/bun-rieu-cua-dong-thumbnail.jpg', 'Được dịch từ tiếng Anh-Bún riêu là món canh truyền thống của Việt Nam gồm nước kho và bún. Có một số loại bún riêu, bao gồm bún riêu cua, bún riêu cá và bún riêu ốc. Bún riêu cua được dùng với nước luộc cà chua và cua nước ngọt băm nhuyễn.', '2021-09-23', '2021-09-23', 20000),
(60, 11, 'Tôm tích', 'tot', 'https://haisankieuhung.com/wp-content/uploads/2019/09/tom-tit-tieu-ot.jpg', 'Trong ẩm thực Nhật Bản, tôm tít được luộc và dùng trong các món sushi và đôi khi được ăn sống như sashimi. Chúng được người Nhật gọi là \"tôm dế\" (蝦蛄), cách gọi này có lẽ là do hình dạng của nó cũng có những điểm gần giống con dế trũi.\r\nTôm tít có mặt với số lượng phong phú ở vùng duyên hải Việt Nam. Trong ẩm thực Việt Nam, tôm tít có thể được hấp (cùng với sả, hấp cách thủy pha với bia), luộc, nướng hay phơi khô và thường được dùng với muối tiêu, nước mắm me hay thì là.\r\nTrong ẩm thực Trung Quốc, tôm tít được chế biến trong một món gọi là (攋尿蝦, tiếng Quan Thoại pinyin: lài niào xiā, tiếng Quảng Đông: laaih liu hā) vì tôm tít thường hay bắn một tia nước ra ngoài khi bốc lên khỏi nước. Sau khi nấu, thịt tôm tít ăn có vị như tôm hùm hơn là tôm bình thường. Giống như tôm hùm, vỏ tôm tít rất cứng và cần dùng nhiều lực để bẻ gãy. Thông thường chúng được rán ngập trong chảo với tỏi và tiêu cay.\r\nTrong vùng Địa Trung Hải, loài tôm tít Squilla mantis là một món hải sản thông dụng, nhất là ở vùng duyên hải Adriatic (canocchia) và vịnh Cádiz (galera).\r\nỞ Philippines, người dân gọi tôm tít là tatampal, hipong-dapa, alupihang-dagat và chế biến nó như tôm bình thường.\r\nNhững quan ngại thông thường về việc tiêu thụ hải sản là vấn đề đối với tôm tít vì chúng có thể sinh sống trong các vùng nước ô nhiễm. Điều này đặc biệt đúng ở Hawaii, nhất là Đại Kênh đào Ala Wai ở Waikiki khi một số cá thể tôm tít có kích thước lớn bất thường.', '2021-09-23', '2021-09-23', 200000),
(61, 13, 'Xúc xích chiên', 'xxc', 'https://cdn.tgdd.vn/2020/07/CookProduct/zxcc-1200x676.jpg', 'Xúc xích lốc xoáy chiên xù là món ăn vặt đơn giản nhưng lại vô cùng hấp dẫn và ngon miệng.', '2021-09-23', '2021-09-23', 81000),
(62, 10, 'Thịt heo xay', 'thx', 'https://trangvangnongnghiep.net/wp-content/uploads/2021/04/thit-rang-rieng-min.jpg', 'Chẳng phải sợ thịt băm gây ngán, có thể kết hợp thịt với lá quế đậm đà, thơm lừng. Vị chua nhẹ của chanh, vị cay của ớt tạo nên hương vị đậm đà của món ăn đậm chất Thái Lan.', '2021-09-23', '2021-09-23', 80000),
(63, 10, 'Thịt xông khói', 'txk', 'https://cdn.huongnghiepaau.com/wp-content/uploads/2018/03/thit-xong-khoi.jpg', 'Thịt hun khói (Smoked meat) hay thịt xông khói hay thịt muối xông khói là một món thịt được chê biến sẵn với nguyên liệu từ thịt động vật và được chế biến bằng phương pháp xông khói hay hun khói, đây cũng là một phương pháp bảo quản thực phẩm bằng cách làm khô miếng thịt để giữ được lâu hơn. Đây là loại thực phẩm có nguồn gốc từ châu Âu và là một món ăn phổ biến ở châu Âu và Mỹ.\r\nThịt hun khói là loại thực phẩm giàu chất dinh dưỡng. Thịt hun khói có màu đỏ tươi và có thể có nhiều kích cỡ, thịt phải bao gồm cả da heo dính kèm, khi chế biến có thể ướp thêm muối. Ở Việt Nam, thịt hun khói thường được dùng làm thức ăn kẹp vào bánh mì hoặc bánh Sandwich và dùng cho bữa ăn sáng.\r\nThịt xông khói là một trong những loại thịt giàu chất dinh dưỡng nhất, với hàm lượng vitamin, khoáng chất bao gồm: B6, B12, niacin, thiamine, riboflavin, sắt, magnesi, kali và kẽm đều ở mức khá cao. Việc thêm thịt xông khói vào thực đơn trong một đến hai bữa ăn mỗi tuần có lợi cho sức khỏe. Đặc biệt, với những người không ăn cá, thịt xông khói chính là nguồn thực phẩm thay thế lý tưởng nhất để cung cấp axit béo omega 3', '2021-09-23', '2021-09-23', 150000),
(64, 13, 'Bánh xèo miền nam', 'bmn', 'https://mikkohuongxua.vn/wp-content/uploads/2020/03/b%C3%A1nh-x%C3%A8o-vi%E1%BB%87t-nam.jpg', 'Vỏ bánh xèo ở miền Nam thì được làm cho giòn hơn, hơi dai dai ở phần giữa. Điều đặc biệt hơn nữa là bánh xèo miền Nam thường thơm hơn. Vì nó có hương vị của nước cốt dừa. Nhân bánh xèo thường được làm từ thịt ba chỉ, tôm, đậu xanh….Cũng chính đặc điểm của bánh khác nhau nên cách thưởng thức bánh xèo của miền Nam cũng khác so với miền Trung. Ở miền Nam cách ăn bánh xèo có phần công phu hơn. Họ ăn bánh xèo kèm với rau rừng và nước chấm chua ngọt. Khi ăn, thực khách sẽ cuốn bánh xèo và rau lại cùng với nhau rồi chấm với nước mắm pha sẵn. Ngày nay nhiều người thích cuốn bánh xèo với bánh tráng ăn hơn. Đấy cũng là một trong những cách thưởng thức độc lạ của từng người.\r\nKhông chỉ đối với người dân Việt Nam chúng ta mà ngay cả những thực khách nước ngoài. Khi đến ghé thăm Việt Nam, họ đều phải trầm trồ trước nền ẩm thực của đất nước Việt nói chung và món bánh xèo Việt Nam nói riêng. ', '2021-09-27', '2021-09-27', 44000);

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
-- Chỉ mục cho bảng `login`
--
ALTER TABLE `login`
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `new`
--
ALTER TABLE `new`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `orders1`
--
ALTER TABLE `orders1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
