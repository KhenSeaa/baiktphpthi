-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2024 lúc 08:54 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `payment_method` int(11) NOT NULL DEFAULT 1,
  `transfer_method` varchar(200) NOT NULL,
  `total` int(10) NOT NULL,
  `discount` int(11) NOT NULL,
  `id_voucher` int(10) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `date`, `end_date`, `status`, `payment_method`, `transfer_method`, `total`, `discount`, `id_voucher`, `id_user`) VALUES
(19, '2023-11-22 09:33:13', '2023-11-23 12:22:59', 0, 1, 'Giao hàng tiêu chuẩn', 25400000, 0, 0, 3),
(20, '2023-11-22 10:13:33', '2023-11-30 18:18:07', 5, 1, 'Giao hàng tiêu chuẩn', 127090000, 0, 0, 3),
(21, '2023-11-22 17:47:51', '2023-11-24 14:24:14', 5, 1, 'Giao hàng tiêu chuẩn', 57195000, 19065000, 3, 3),
(22, '2023-11-24 17:29:49', '2023-11-27 14:23:32', 0, 1, 'Giao hàng tiêu chuẩn', 50860000, 0, 0, 7),
(23, '2023-11-24 17:49:12', '2023-11-26 15:34:34', 0, 1, 'Giao hàng tiêu chuẩn', 87792000, 6608000, 5, 7),
(24, '2023-11-26 11:51:18', '2023-11-25 13:23:23', 0, 1, 'Giao hàng tiêu chuẩn', 25400000, 0, 0, 3),
(25, '2023-11-27 16:47:05', '2023-11-30 18:17:49', 5, 1, 'Giao hàng tiêu chuẩn', 25430000, 0, 0, 7),
(26, '2023-12-01 14:21:24', '2023-12-01 18:21:56', 5, 1, 'Giao hàng tiêu chuẩn', 9727020, 0, 0, 7),
(27, '2023-12-01 17:26:07', '2023-12-01 18:20:47', 5, 1, 'Giao hàng tiêu chuẩn', 24500000, 0, 0, 7),
(28, '2023-12-01 17:29:03', '2023-12-01 18:20:14', 5, 1, 'Giao hàng tiêu chuẩn', 76200000, 0, 0, 7),
(29, '2023-12-01 17:36:55', '2023-12-01 19:19:47', 5, 1, 'Giao hàng tiêu chuẩn', 70949700, 5340300, 5, 7),
(30, '2023-12-02 12:07:57', '2023-12-02 06:09:04', 5, 1, 'Giao hàng tiêu chuẩn', 101660000, 0, 0, 7),
(31, '2023-12-10 22:02:33', '2023-12-11 01:43:38', 5, 2, 'Giao hàng tiêu chuẩn', 2918106, 324234, 1, 7),
(32, '2023-12-11 00:45:17', '2023-12-11 01:51:03', 5, 1, 'Giao hàng tiêu chuẩn', 25400000, 0, 0, 7),
(33, '2023-12-11 01:10:59', '0000-00-00 00:00:00', 0, 1, 'Giao hàng tiêu chuẩn', 50860000, 0, 0, 7),
(34, '2023-12-11 01:25:08', '0000-00-00 00:00:00', 0, 2, 'Giao hàng tiêu chuẩn', 23423400, 0, 0, 7),
(35, '2023-12-11 01:26:44', '2023-12-11 02:10:59', 5, 2, 'Giao hàng tiêu chuẩn', 46846800, 0, 0, 7),
(36, '2023-12-11 01:55:14', '2023-12-11 01:56:14', 5, 1, 'Giao hàng tiêu chuẩn', 50800000, 0, 0, 7),
(37, '2023-12-11 02:05:30', '2023-12-11 02:10:19', 5, 1, 'Giao hàng tiêu chuẩn', 49000000, 0, 0, 7),
(38, '2024-10-29 01:22:00', '2024-10-29 01:30:12', 5, 1, 'Giao hàng tiêu chuẩn', 2100000, 0, 0, 1),
(39, '2024-10-29 01:32:13', '2024-10-29 01:32:35', 5, 1, 'Giao hàng tiêu chuẩn', 8790900, 0, 0, 1),
(40, '2024-10-29 19:56:46', '2024-10-29 19:57:53', 5, 1, 'Giao hàng tiêu chuẩn', 700000, 0, 0, 1),
(41, '2024-10-29 21:04:14', '2024-10-29 21:04:34', 5, 1, 'Giao hàng tiêu chuẩn', 700000, 0, 0, 1),
(42, '2024-11-14 10:35:24', '2024-11-14 21:36:00', 5, 1, 'Giao hàng tiêu chuẩn', 8790900, 0, 0, 18),
(43, '2024-11-15 00:08:01', '2024-11-15 00:08:32', 5, 1, 'Giao hàng tiêu chuẩn', 1, 0, 0, 1),
(44, '2024-11-18 15:40:23', '0000-00-00 00:00:00', 1, 1, 'Giao hàng tiêu chuẩn', 300000, 0, 0, 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` int(10) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `id_user`) VALUES
(1, 1),
(2, 3),
(3, 7),
(7, 10),
(4, 12),
(17, 16),
(18, 16),
(19, 17),
(20, 17),
(21, 18),
(22, 18),
(23, 19),
(24, 19),
(25, 20),
(26, 20),
(27, 22),
(28, 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name_category` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name_category`, `image`, `is_deleted`) VALUES
(1, 'Dụng Cụ Nhà Bếp', 'bannerbep.jpg', 0),
(2, 'Đồ WC', 'bannerwc.jpg', 0),
(4, 'Đồ Decor', 'bannnerdc.jpg', 0),
(5, 'Đồ Điện Tử', 'bannerdd.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) NOT NULL,
  `image` varchar(200) NOT NULL,
  `id_product_detail` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `image`, `id_product_detail`) VALUES
(17, 'bepga2.jpg', 16),
(65, 'sofa-ona-her-3-cho-da-xanh-s4-1-768x511.jpg', 16),
(84, 'dc6.jpg', 38);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name_product` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `origin_price` int(11) NOT NULL,
  `thumbnail` varchar(200) NOT NULL,
  `material` varchar(200) NOT NULL,
  `sold` int(11) NOT NULL DEFAULT 0,
  `created_at` varchar(200) NOT NULL,
  `id_category` int(10) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name_product`, `description`, `price`, `origin_price`, `thumbnail`, `material`, `sold`, `created_at`, `id_category`, `is_deleted`) VALUES
(1, 'MÁY ĐÁNH TRỨNG CẦM TAY MINI SCARLETT 7 TỐC ĐỘ', '🔐 THÔNG TIN SẢN PHẨM:\r\n🍀 Tên sản phẩm: Máy Đánh Trứng Cầm Tay mini SCARLETT\r\n🍀 Màu sắc: Trắng\r\n🍀 Tốc độ: 7 tốc độ\r\n🍀 Số lượng que: 4 que trộn bằng thép không gỉ\r\n🍀 Chất liệu vỏ máy: Nhựa ABS siêu bền\r\n🍀 Trọng lượng 700g\r\n🍀 Chiều dài dây 1.5m\r\n🍀 Công suất: 180 W\r\n🍀 Điện áp: 220 – 240V\r\n🍀 Bảo hành: 12 tháng\r\n🔐 TÍNH NĂNG NỔI BẬT của Máy Đánh Trứng Cầm Tay mini SCARLETT\r\n🍀 Mỗi máy đánh trứng cầm tay gồm có hai bộ que: 2 que đánh trứng và 2 que trộn.\r\n🍀 Công dụng: Trộn, nhào các loại bột, đánh kem, đánh trứng và loại thực phẩm khác\r\n🍀 Thiết kế gọn nhẹ, dễ sử dụng, hiệu quả, lâu bền.\r\n🍀 Có 2 bộ dụng cụ Inox dùng cho các chức năng đánh trứng và nhào bột.\r\n🍀 Motor khỏe, hiệu quả hơn khi nhào trộn.\r\n🍀 Máy đánh trứng cầm tay hoạt động ở 7 tốc độ phù hợp với các mục đích sử dụng khác nhau.\r\n🍀 Máy đánh trứng mini sản xuất với chất liệu inox cao cấp\r\nMáy trang bị 4 que , 2 que trộn và 2 que mốc nhào (bột lỏng) làm bằng inox không gỉ cao cấp, đảm bảo chất lượng, vệ sinh cho hỗn hợp trứng, kem, bột. Bộ dụng cụ hữu hiệu dùng cho các chức năng đánh trứng, và các loại thực phẩm khác \r\n🍀 Máy Đánh Trứng Cầm Tay mini SCARLETT trang bị 7 tốc độ đánh với công suất  180W:\r\n- Mức 1 & 2: Dùng cho thực phẩm dạng lỏng như cafe, sữa tươi\r\n- Mức 3 & 4: Dùng để trộn hỗn hợp lõng như salad…\r\n- Mức 5: Dùng để trộn hỗn hợp để làm bánh, đồ ăn nhanh như bánh mỳ, bánh Flan..\r\n- Mức 6: Dùng để trộn bơ với đường, thực phẩm còn sống, đường miến…\r\n- Mức 7: Dùng đánh trứng, thực phẩm ở dạng lạnh như khoai tây, kem…\r\n💰 Với mong muốn mang đến cho khách hàng những hình ảnh sinh động, chân thực nhất về sản phẩm, tất cả ẢNH SẢN PHẨM đều do shop tự chụp 100%, không dùng kĩ xảo chỉnh sửa ảnh để sản phẩm trông đẹp hơn. Nên bạn có thể hoàn toàn yên tâm mua hàng tại SHOP.', 300000, 200000, 'dobep1jpg.jpg', 'Kim loại, Nhựa', 9, '12/11/2023', 1, 0),
(2, 'Máy xay thịt, máy xay đa năng, công suất 250W, cối inox304, 4 lưỡi dao sắc bén', '- Máy xay thịt phần thân máy xay thịt bằng thép không gỉ bền bỉ\r\n- Máy xay thịt lưỡi xay sắc bén cho khả năng nhồi và đảo thịt tốt\r\n- Máy xay thịt hoạt động bằng điện, tích hợp nút nhấn dễ thao tác\r\n- Máy xay thịt xay thịt, cá và rau củ dễ dàng, đáp ứng tốt yêu cầu của một gia đình\r\n- Máy xay thịt được thiết kế nhỏ gọn, tiện lợi\r\n- Sản phẩm máy xay thịt với phần động cơ máy được sản xuất theo công nghệ Nhật.\r\n- Máy xay thịt với công suất lên đến 250W, đủ mạnh mẽ để xay nhuyễn thịt như giò và chả, xay cá, cua, tôm...\r\n- Máy xay thịt được thiết kế với bộ lưỡi dao kép (4 lưỡi) thông minh và độc đáo kết hợp chất liệu thép không gỉ tạo nên lực cắt mạnh và độ sắc bén nhanh chóng xay thực phẩm nhuyễn chỉ trong 10-30s.\r\n💔THÔNG SỐ:\r\n✅Chất liệu: Cối xay Inox 304 dày dặn đẹp không lo vỡ, lưỡi thép không gỉ\r\n✅Công suất: 250W\r\n✅ Kích thước (D x R x C): 225 x 185 x 245mm\r\n✅Tần số điện áp: 220V\r\n✅ Dung tích: 2L\r\n✅ Trọng lượng: 2,5kg', 700000, 500000, 'mayxaythit.jpg', 'Nhựa,thép', 9, '14/11/2023', 1, 0),
(3, 'Thanh vắt khăn nhà tắm OENON, Giá treo dép phòng tắm dán tường gạch men chất liệu nhựa ABS - OE48', 'Thanh vắt khăn nhà tắm OENON, Giá treo dép phòng tắm dán tường gạch men chất liệu nhựa ABS - OE48.', 254300, 264700, 'wc1.jpg', 'Nhựa', 3, '16-11-2023', 2, 0),
(9, 'Bộ chặn sách AZ kèm tượng người đánh golf và 2 sách giả', 'Bộ chặn sách AZ kèm tượng người đánh golf và 2 sách giả', 300000, 150000, 'dc1.jpg', 'Xứ', 0, '2023-11-24', 4, 0),
(10, 'Máy tạo bọt cà phê cầm tay mini pha chế tiện lợi - cây đánh trứng, đánh kem, cafe, trà sữa tự pha di động sử dụng pin 2A', 'Máy tạo bọt cà phê cầm tay mini pha chế tiện lợi - cây đánh trứng, đánh kem, cafe, trà sữa tự pha di động sử dụng pin 2A\r\nĐánh trứng, quấy cháo cho trẻ nhỏ, làm nước sốt, đánh kem tươi, pha cà phê…và còn nhiều nhiều những công việc nữa\r\nĐầu đánh trứng lò xo tròn bằng inox bền làm nguyên liệu chế biến tơi xốp, nhuyễn và mềm mại hơn.\r\nMáy hoạt động bằng pin AA nên có thể sử dụng ngay cả khi mất điện (sản phẩm không kèm pin)\r\nTay cầm bằng plastic cao cấp được thiết kế vừa vặn.\r\nSản phẩm được thiết kế nhỏ gọn, mẫu mã đẹp.\r\nMáy có chức năng đánh trứng, sữa, cafe', 120000, 80000, 'dobep3.jpg', 'Thép,nhựa', 0, '2023-11-24', 1, 0),
(11, 'san phẩm', 'asdsad', 20000000, 123123, 'ban-1.jpg', 'fgsdfgd', 0, '2023-11-24', 5, 1),
(12, 'Ấm siêu tốc Inox 1.8L Sunhouse Happy Time HTD1088', 'Ấm siêu tốc HAPPY TIME SUNHOUSE Inox 1.8L HTD1088\r\n\r\nMẪU MÃ ĐƠN GIẢN, TINH TẾ, TIỆN DỤNG\r\n\r\n📍 Thân ấm bằng inox sáng bóng, không gỉ\r\n\r\nẤm siêu tốc HAPPY TIME SUNHOUSE Inox 1.8L HTD1088 có phần thân được làm từ thép không gỉ, giúp ấm luôn sáng bóng, không xỉn màu và không bị dính cặn sau thời gian dài sử dụng.\r\n\r\n📍 Miệng ấm lớn\r\n\r\nMiệng ấm đun nước SUNHOUSE được thiết kế với diện tích lớn, giúp người dùng dễ lau chùi bên trong.\r\n\r\n📍 Tay cầm bằng nhựa chịu nhiệt siêu bền\r\n\r\nĐược thiết kế với dáng đứng thon gọn và tay cầm nhựa chịu nhiệt tốt, người dùng có thể dễ dàng cầm nắm và di chuyển ấm.\r\n\r\n📍 Thân ấm xoay 360 độ linh hoạt trên đế tiếp điện\r\n\r\nẤm đun nước SUNHOUSE có phần đế tiếp điện được thiết kế độc lập, không gắn liền với thân ấm. Do vậy, người dùng sẽ cảm thấy dễ dàng và linh hoạt trong quá trình đổ nước hoặc nhấc ấm lên.\r\n\r\nĐUN SÔI NHANH – AN TOÀN TUYỆT ĐỐI\r\n\r\n📍 Tiết kiệm điện năng\r\n\r\nẤm siêu tốc SUNHOUSE có công suất mạnh 1500W giúp quá trình đun nước nhanh chóng và tiết kiệm tối đa thời gian.\r\n\r\n📍 Chế độ tự động tắt khi nước sôi hoặc cạn nước\r\n\r\nNhờ chế độ tự động ngắt khi nước sôi hoặc cạn nước, sản phẩm sẽ đảm bảo an toàn tối đa cho người sử dụng, tránh gây ra cháy nổ.\r\n\r\n📍 Đèn LED tự động báo hiệu bật/tắt\r\n\r\nTrong suốt quá trình đun nước, đèn LED sẽ sáng để người dùng dễ theo dõi. Khi nước sôi, đèn LED sẽ tắt.\r\n\r\nTHÔNG SỐ KỸ THUẬT\r\n\r\n📍 Dung tích: 1.8L\r\n📍 Màu sắc: Trắng bạc\r\n📍 Thân ấm: Thép không gỉ\r\n📍 Điện áp: 220V - 50Hz\r\n📍 Công suất: 1500W\r\n📍 Nắp ấm: Nhựa chịu nhiệt siêu bền\r\n📍 Tay cầm: Nhựa chịu nhiệt siêu bền\r\n📍 Nút mở: Nút ấn tại nắp\r\n📍 Công tắc nguồn: Nút bấm\r\n📍 Rơ-le: Tự động ngắt khi nước sôi hoặc cạn nước\r\n📍 Đế tiếp điện: Đế tiếp điện không dây xoay 360 độ\r\n📍 Đèn báo: Đèn tự động báo hiệu bặt/tắt\r\n📍 Vạch báo mức nước: Không\r\n📍 Thương hiệu: HAPPY TIME\r\n📍 Xuất xứ: Trung Quốc\r\n📍 Trọng lượng: 0.95 kg\r\n📍 Bảo hành: 12 tháng\r\n\r\n\r\n\r\n', 390000, 289900, 'dobep4.jpg', 'Nhôm,nhựa', 0, '2023-11-24', 1, 0),
(13, 'Lò nướng đa năng 10 lít Comet CM6510', '- Lò nướng điện 10 lít Comet với thiết kế bắt mắt, phù hợp với tất cả những không gian bếp Việt. Thiết kế bảng điều khiển núm xoay tiện lợi, chức năng hiện giờ thông minh, nhiều tiện ích khác nhau như: không sinh ra khối, gọn nhẹ...sẽ là trợ thủ tuyệt với của gia đình bạn.\r\n- Vỏ ngoài Lò nướng điện 10 lít Comet làm bằng kim loại dễ vệ sinh. Cửa kính trong suốt chịu nhiệt an toàn khi sử dụng và giúp bạn tiện quan sát quá trình nấu nướng trong lò.\r\nChuyên dùng nướng bánh mì.\r\n- Lò nướng điện 10 lít Comet CM6510 chuyên dụng để nướng bánh. Đặc biệt là làm nóng hay làm giòn vỏ bánh mì hay bánh mì sandwich, hay dùng hâm nóng bánh pizza. Tuy kích thước nhỏ, công suất 1300 W, nhưng lò có thể dùng để hâm nóng, rã đông thức ăn, nướng lượng nhỏ thực phẩm, gà nguyên con chặt góc tư, thịt bít tết, đều có thể cho vào vừa vặn trong lò.\r\n- Lò có mức điều chỉnh nhiệt độ từ 100 độ C đến 250 độ C để người dùng điều chỉnh tùy theo mục đích sử dụng. Và Lò nướng điện 10 lít Comet CM6510 có chức năng hẹn giờ tối đa 30 phút, giúp bạn tiết kiệm thời gian, không cần phải canh lò thường xuyên.', 4405000, 7903493, 'dobep5.jpg', 'Thép,nhôm', 0, '2023-11-24', 1, 0),
(14, 'BẾP nướng điện không khói SUNHOUSE SHD4607 1500w Hàng chính hãng', 'BẾP nướng điện không khói SUNHOUSE SHD4607 1500w Hàng chính hãng', 2900000, 1900000, 'dobep6.jpg', 'Kính,Kim Loại', 0, '2023-11-24', 1, 0),
(15, 'Lò vi sóng Samsung MS23K3513AS 23L 800W', 'Lò vi sóng Samsung MS23K3513AS 23L 800W', 3943200, 2943200, 'dobep7.jpg', 'Gỗ', 0, '2023-11-24', 1, 0),
(16, 'Hộp cơm điện cầm tay mini đa năng Bear DFH-B10J2. Nồi cơm điện cá nhân thông minh chính hãng Bear cao cấp Hagu.', 'Hộp cơm điện cầm tay mini đa năng Bear DFH-B10J2. Nồi cơm điện cá nhân thông minh chính hãng Bear cao cấp Hagu.hẩu Italy.', 590000, 390000, 'dobep8.jpg', 'Nhựa', 0, '2023-11-24', 1, 0),
(17, 'Bếp gas âm ⚡FREE SHIP EXTRA ⚡Fujipan chính hãng FJ-8910V (Chén đồng, siêu tiết kiệm gas)', 'Bếp gas âm ⚡FREE SHIP EXTRA ⚡Fujipan chính hãng FJ-8910V (Chén đồng, siêu tiết kiệm gas)', 8900000, 7900000, 'bepga.jpg', 'Gỗ Oak, da bò', 0, '2023-11-24', 1, 0),
(18, 'Bếp Gas Đôi Hồng Ngoại Mặt Kính Cường Lực Tiết Kiệm Gas FUJISHI LIVORNO', 'Bếp Gas Đôi Hồng Ngoại Mặt Kính Cường Lực Tiết Kiệm Gas FUJISHI LIVORNO', 8790900, 13789000, 'bepga2.jpg', 'Kính,Sắt', 3, '2023-11-24', 1, 0),
(19, 'GƯƠNG TRƠN BO GÓC RANGOS RG-6080C', 'GƯƠNG TRƠN BO GÓC RANGOS RG-6080C', 799999, 599999, 'wc2.jpg', 'Kính', 0, '2023-11-24', 2, 0),
(20, 'sofa ~ ', ' ', 1000, 1000000, 'Ghe-69-cao-cap-tai-Noi-That-Xuyen-A.jpg', 'da and go', 0, '2023-11-27', 1, 1),
(21, 'Xô nước gấp gọn, xô đa năng vệ sinh nhà cửa, xô giặt lau nhà, chùi kính, xô ô tô Parroti Extra XT01', 'Xô nước gấp gọn, xô đa năng vệ sinh nhà cửa, xô giặt lau nhà, chùi kính, xô ô tô Parroti Extra XT01', 399999, 299999, 'wc3.jpg', 'Nhựa', 0, '2023-12-11', 2, 0),
(22, 'Bộ Dụng Cụ Nhả Kem Đánh Răng Tự Động 2/3/4 Cốc Và Giá Treo Bàn Chải Đa Năng - Chất Liệu ABS Cao Cấp - Hàng Chính Hãng MINIIN ', 'Bộ Dụng Cụ Nhả Kem Đánh Răng Tự Động 2/3/4 Cốc Và Giá Treo Bàn Chải Đa Năng - Chất Liệu ABS Cao Cấp - Hàng Chính Hãng MINIIN \r\n', 499999, 299999, 'wc4.jpg', 'Nhựa', 0, '2023-12-11', 2, 0),
(23, 'Bộ Nhả Kem Đánh Răng OENON kèm 3 cốc hút từ tính lắp đặt dán tường - OEKEM03', 'Bộ Nhả Kem Đánh Răng OENON kèm 3 cốc hút từ tính lắp đặt dán tường - OEKEM03', 699999, 499999, 'wc6.jpg', 'Nhựa', 0, '2023-12-11', 2, 0),
(24, 'Kệ để đồ toilet KG20 để dầu gội, sửa tắm..gắn bồn cầu tiện lợi không cần khoan, chất liệu sơn tĩnh điện dài 34cm - Hàng chính hãng', 'Kệ để đồ toilet KG20 để dầu gội, sửa tắm..gắn bồn cầu tiện lợi không cần khoan, chất liệu sơn tĩnh điện dài 34cm - Hàng chính hãng.', 199999, 67000, 'wc5.jpg', 'Kim loại', 0, '2023-12-11', 2, 0),
(25, 'Thảm chân hoa hồng home sweet home', 'Thảm chân hoa hồng home sweet home', 99000, 50000, 'dc6.jpg', 'vải', 0, '2023-12-11', 4, 0),
(26, 'Bảng gỗ chữ Love sắt sen đá', 'Bảng gỗ chữ Love sắt sen đá', 79000, 45000, 'dc2.jpg', 'Gỗ,Thép', 0, '2023-12-11', 4, 0),
(27, '\r\nTượng decor hoa trà sắt vàng đế gỗ đen trang trí', 'Tên sản phẩm: Tượng decor hoa trà sắt vàng đế gỗ đen trang trí.\r\nChất liệu: khung sắt + đế gỗ..\r\nKích thước: trên hình.\r\nMàu sắc : đế gỗ đen + hoa vàng.\r\nSử dụng để: tượng trang trí phòng khách, tượng decor tủ kệ phòng khách, trang trí nhà, trang trí decor quán café, trang trí phòng ngủ, quà tặng tân gia đẹp…', 10800000, 15900000, 'dc7.jpg', 'G', 0, '2023-12-11', 4, 0),
(28, 'Sách giả decor giao ngẫu nhiên phong cách cổ điển', 'Tên sản phẩm: Sách giả decor cổ điển.\r\nChất liệu: Bìa cartong ruột rỗng.\r\nKích thước: có 2 size\r\nSize nhỏ : Cao 23cm *rộng 16cm *dày 4.5cm\r\nSize lớn : Cao 27cm *rộng 17cm *dày 4.5cm\r\nMã sản phẩm: trên hình.\r\nMàu sắc :Sách giả có 2 size là Mô hình sách trang trí tone hiện đại.\r\nGiá là của 1 cuốn. Vì nhiều mẫu mã khác nhau nên Sách sẽ được lấy bất kỳ khi khách đặt hàng.', 5670000, 6570000, 'dc4.jpg', 'Gỗ', 0, '2023-12-11', 4, 0),
(29, 'Khay sắt lớn để đồ trang trí vàng kèm gương sang trọng decor trang trí', 'Tên sản phẩm: Khay sắt lớn để đồ trang trí vàng kèm gương sang trọng decor trang trí\r\nChất liệu: sắt + mặt kính.\r\nKích thước: 25 x 25 x 5cm.\r\nMã sản phẩm: SP027294.\r\nMàu sắc : như hình.', 670000, 960000, 'dc5.jpg', 'Sắt,Kính', 0, '2023-12-11', 4, 0),
(30, 'Tủ lạnh Toshiba Inverter 474 lít Multi Door GR-RF611WI-PGV(22)-XK', 'Tủ lạnh Toshiba Inverter 474 lít Multi Door GR-RF611WI-PGV(22)-XK', 8800000, 11870000, 'dt1.jpg', 'Điện tử', 0, '2023-12-11', 5, 0),
(31, 'Tủ lạnh Panasonic Inverter 170 lít NR-BA190PPVN', 'Tủ lạnh Panasonic Inverter 170 lít NR-BA190PPVN', 1560000, 1360000, 'dt2.jpg', 'Điện tử', 0, '2023-12-11', 5, 0),
(32, 'Máy lọc nước RO nóng nguội lạnh Hydrogen ion kiềm Kangaroo KGHC12A2 12 lõi', 'Đặc điểm nổi bật\r\n\r\nThiết kế tủ đứng hiện đại với mặt kính cao cấp, sang trọng, góp phần nâng cao tính thẩm mỹ cho không gian.\r\nTỷ lệ lọc 4.8 - thải 5.2, thu hồi được 48% lượng nước tinh khiết.\r\nMáy sử dụng 2 tấm điện cực và công nghệ tạo nước Hydrogen ion kiềm độc quyền giúp cung cấp nguồn nước hoạt hoá giàu Hydrogen, loại bỏ các tác nhân gây lão hoá.\r\nTrang bị 12 lõi lọc, công nghệ RO Vortex Hàn Quốc chất lượng giúp giảm đóng cặn bề mặt màng.\r\nCó 4 loại nước: nóng, nguội, lạnh và ion kiềm, công nghệ làm lạnh bằng Chip điện tử tiết kiệm điện.\r\nĐa dạng tiện ích: giàu Hydrogen chống oxy hóa, tạo nước kiềm trung hòa axit cho cơ thể, tự động xả nước thải,...\r\nThương hiệu Kangaroo - Việt Nam, sản xuất tại Việt Nam.', 5670000, 4670000, 'dt3.jpg', 'Điện tử', 0, '2023-12-11', 5, 0),
(33, 'Nồi cơm điện tử Sharp 1.8 lít KS-COM194EV-BK', 'Nồi cơm điện tử Sharp 1.8 lít KS-COM194EV-BK', 690000, 567000, 'dt4.jpg', 'Điện tử', 0, '2023-12-11', 5, 0),
(34, 'Tủ đông Sanaky 220 lít VH-2899W1', 'Tủ đông Sanaky 220 lít VH-2899W1', 8650000, 560000, 'dt6.jpg', 'Điện tử', 0, '2023-12-11', 5, 0),
(35, 'Hoàng Văn Đức', 'Yêu em YẾn hết mìnhhhhhh mãi đỉnh mãi đỉnh 8386', 1, 1, 'z6033488012221_4c2b0cc93187bdb8ad7c4b1e729a64b0.jpg', 'Sắt', 1, '2024-11-15', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_bill`
--

CREATE TABLE `products_bill` (
  `id` int(10) NOT NULL,
  `amount_buy` int(10) NOT NULL,
  `id_product_detail` int(10) NOT NULL,
  `id_bill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_bill`
--

INSERT INTO `products_bill` (`id`, `amount_buy`, `id_product_detail`, `id_bill`) VALUES
(24, 1, 3, 19),
(25, 2, 3, 20),
(26, 3, 5, 20),
(27, 1, 3, 21),
(28, 2, 5, 21),
(29, 2, 4, 22),
(30, 1, 3, 23),
(31, 2, 2, 23),
(32, 1, 9, 23),
(33, 1, 3, 24),
(34, 1, 4, 25),
(35, 3, 18, 26),
(36, 1, 1, 27),
(37, 3, 3, 28),
(38, 3, 4, 29),
(39, 2, 3, 30),
(40, 2, 5, 30),
(41, 1, 18, 31),
(42, 1, 3, 32),
(43, 2, 4, 33),
(44, 1, 17, 34),
(45, 2, 17, 35),
(46, 2, 3, 36),
(47, 2, 2, 37),
(48, 3, 3, 38),
(49, 1, 17, 39),
(50, 1, 3, 40),
(51, 1, 3, 41),
(52, 1, 17, 42),
(53, 1, 50, 43),
(54, 1, 1, 44);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_cart`
--

CREATE TABLE `products_cart` (
  `id` int(10) NOT NULL,
  `amount_buy` int(10) NOT NULL,
  `id_product_detail` int(10) NOT NULL,
  `id_cart` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_cart`
--

INSERT INTO `products_cart` (`id`, `amount_buy`, `id_product_detail`, `id_cart`) VALUES
(12, 1, 5, 1),
(38, 1, 4, 2),
(39, 1, 6, 2),
(73, 1, 17, 21),
(75, 1, 17, 1),
(76, 1, 3, 1),
(78, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_detail`
--

CREATE TABLE `products_detail` (
  `id` int(10) NOT NULL,
  `amount` float NOT NULL,
  `code_color` varchar(200) NOT NULL,
  `color` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `size` varchar(255) NOT NULL,
  `id_product` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_detail`
--

INSERT INTO `products_detail` (`id`, `amount`, `code_color`, `color`, `image`, `size`, `id_product`) VALUES
(1, 10, '#ffffff', 'Trắng', '', '50cm', 1),
(2, 12, '#000000', 'Đen', '', '50cm', 1),
(3, 3, '#eaebee', 'xám nhạt', 'mayxaythit.jpg', 'D1965 - R835 - C805', 2),
(4, 25, '#d2d2d0', 'Bạc', 'wc1.jpg', 'D1200 - R600 - C400 mm', 3),
(5, 32, '#846a5c', 'Nâu', 'wc1.jpg', '2m', 3),
(6, 97, '#595959', 'đen', '', 'D1200 - R600 - C400 mm', 3),
(8, 30, '#5c7f9a', 'xanh', '', 'D2000 - R1800 - C1080 mm', 9),
(9, 10, '#c1a463', 'vàng', '', 'D2300 - R800 - C760 mm', 10),
(10, 32, '#903c3c', 'adasdas', '', 'aqe12312', 11),
(11, 23, '#3d6f8c', 'Xanh dương', '', 'D1950-R900-C850', 12),
(12, 43, '#e58e7e', 'Màu cam - Góc trái', '', 'D2400/1350 - R830 - C700 mm', 13),
(13, 32, '#232427', 'Màu đen', '', 'D2100 - R900 - C750 mm', 14),
(14, 6, '#879593', 'Màu xám', '', 'D1700 - R850 - C770 mm', 15),
(15, 23, '#2b5056', 'xanh', '', 'D2250 - R905 - C790 mm', 16),
(16, 12, '#385e60', 'Màu xanh', '', 'D2000 - R880 - C700mm', 17),
(17, 3, '#be2323', 'Màu đỏ đen', 'bepga2.jpg', '2 ô', 18),
(18, 7, '#5b5a5e', 'Màu đen', '', 'D1200 - R360 - C600 mm', 19),
(19, 1, '#8e0101', 'do sam', '', '323x234', 20),
(20, 8, '#426e85', 'Xanh dương', '', 'D2300 - R800 - C760 mm', 10),
(23, 6, '#849ca8', 'Xanh nhạt', '', 'D2300 - R800 - C760 mm', 10),
(26, 4, '#ffffff', 'Màu cam - Góc phải', '', 'D2400/1350 - R830 - C700 mm', 13),
(27, 6, '#ab6e53', 'Màu nâu', '', 'D2100 - R900 - C750 mm', 14),
(28, 4, '#cfc4a9', 'Màu be', '', 'D2100- R900- C750 mm', 14),
(29, 5, '#ba9c50', 'Màu vàng', '', 'D1700 - R850 - C770 mm', 15),
(31, 8, '#8a5c27', 'Màu vàng sẫm', '', 'D2250 - R905 - C790 mm', 16),
(32, 17, '#5e4b42', 'Màu nâu sẫm', 'sofa-3-cho-ona-her-da-nau-768x511.jpg', 'D2000 - R880 - C700mm', 17),
(33, 5, '#8e8479', 'Màu xám', '1000-ban-nuoc-cognac-768x511.jpg', 'D1500 - R750 - C450 mm', 21),
(34, 5, '#cfa361', 'Màu vàng', 'ban_nuoc_cognac_2_chan_sat_pjf078_12-768x511.jpg', 'D1200- R900- C400 mm', 22),
(35, 5, '#bbb9ae', 'Màu kim loại', 'BAN-BEN-RETIRO-GOLD-L-40X10-16713485L-768x511.jpg', '400x1010 mm', 23),
(36, 4, '#8f6654', 'Màu nâu', 'ban_ben_dubai_1-768x511.jpg', 'D450-R450-C500', 24),
(37, 5, '#d2c39f', 'Màu vàng', 'Giuong-Coastal-1m8-vang-2-768x511.jpg', 'D2000 - R1800 - C1080 mm', 9),
(38, 5, '#704735', 'Màu đỏ nâu', 'dc6.jpg', '1m8', 25),
(39, 7, '#ffffff', 'Màu xám cao cấp', 'giuong_iris_1m6_stone.jpg', '1m8', 26),
(40, 50, '#e6df19', 'Vàng Kim', 'giuong-wynn1-1000-768x511.jpg', '30cm', 27),
(41, 5, '#7b9e97', 'Màu xanh', 'Giuong-ngu-boc-vai-Softly-G-1m6-S9C-300x194.jpg', '1', 28),
(42, 6, '#ffffff', 'Màu xám', '103444-giuong-softly-1m8-vai-s8w-light-768x511.jpg', '1m8', 28),
(43, 6, '#fff829', 'Vàng Kim', 'giuong-leman-1m8-111430-1-768x511.jpg', '50cm', 29),
(44, 7, '#ffffff', 'Màu nâu', 'Tu-ao-Wabrobe-02-1-768x511.jpg', 'D3800 - R670 - C2400 mm', 30),
(45, 4, '#e4e8eb', 'Màu bạc', 'Tu-ao-Acrylic-2-768x511.jpg', 'D1600 - R600 - C2000 mm', 31),
(46, 3, '#fff700', 'Đen Vàng', 'tu-ao-hien-dai-5-500.jpg', '1m2', 32),
(47, 4, '#000000', 'Đen', '3-99496-1-768x511.jpg', 'D1600-R600-C2000mm', 33),
(48, 4, '#ffffff', 'Trắng', 'dt6.jpg', '1m2x1m5', 34),
(49, 10, '#8d2020', 'Vàng Kim', 'dt6.jpg', '50cm', 34),
(50, 0, '#00fa53', 'màu xanh lá', 'z6033488012221_4c2b0cc93187bdb8ad7c4b1e729a64b0.jpg', '1m7', 35);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) NOT NULL,
  `content` varchar(200) NOT NULL,
  `stars` int(11) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `id_product` int(10) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `content`, `stars`, `created_at`, `id_product`, `id_user`) VALUES
(1, 'Sản phẩm nice !!', 4, '13/11/2023', 1, 1),
(2, 'Sản phẩm tốt !!!', 5, '13/11/2023', 1, 1),
(5, 'Hang qua dep', 5, '2023-11-26', 2, 3),
(6, 'Hang tuyet voi', 4, '2023-11-26', 3, 3),
(7, 'Hang chat luong cao', 5, '2023-11-27', 3, 7),
(8, 'Sản phẩm tốt quá', 5, '2023-12-02', 2, 7),
(9, '1', 5, '2024-10-29', 2, 1),
(11, '10d', 5, '2024-10-29', 2, 1),
(12, '12', 5, '2024-10-29', 2, 1),
(13, 'hello', 3, '2024-11-14', 18, 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `tell` varchar(13) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `birthday` varchar(50) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `role` int(10) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `tell`, `full_name`, `password`, `address`, `birthday`, `avatar`, `role`, `is_deleted`) VALUES
(1, 'abc@gmail.com', '023466789', 'Lo Van Dung', '123456', 'Hà Nội', '2023-11-25', 'roronoa-zoro.jpg', 1, 0),
(3, 'anhvanhoa.it@gmail.com', '098765432', 'Hoang Duy Khanh', '654321', 'Ha Nôi', '2023-11-02', '340080370_920826449186570_378768722843621066_n.jpg', 0, 0),
(7, 'manage@gmail.com', '0328742632342', 'Manage Web', '654321', 'Hai duong', '2023-11-22', '', 2, 0),
(10, 'user@gmail.com', '9898796', 'Ơ quá nhiều', '123456', 'Hà Nam', '2023-11-08', '', 0, 0),
(12, 'uuser@gmail.com', '', 'Ơ quá nhiều', 'asdfgh', '', '', '', 0, 1),
(16, 'dungviet461@gmail.com', '', 'Lò Văn Dũng', '123456', '', '', '', 0, 0),
(17, 'khanh@gmail.com', '', 'Nguyen Vy Khanh', '22082004', '', '', '', 0, 1),
(18, 'k@gmail.com', '0987654321', 'Nguyen Vy Khanh', '123456789', 'hn', '2000-11-11', '', 0, 0),
(19, 'tho@gmail.com', '', 'Ma Văn Thọ', '123456', '', '', '', 0, 0),
(20, 'dd@gmail.com', '', 'Lò Văn Dũng', '123456', '', '', '', 0, 0),
(21, 'duc@gmail.com', '', 'Hoàng Văn Đức', '123456', '', '', '', 0, 0),
(22, 'tho01@gmail.com', '0904123652', 'Ma Văn Thọ', '123456789', 'Hà Nội', '2001-08-02', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(10) NOT NULL,
  `code` varchar(200) NOT NULL,
  `discount` int(11) NOT NULL,
  `unit` tinyint(1) NOT NULL DEFAULT 0,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vouchers`
--

INSERT INTO `vouchers` (`id`, `code`, `discount`, `unit`, `start`, `end`, `is_deleted`) VALUES
(1, 'Adc50k0', 10, 0, '2023-12-02', '2023-12-10', 0),
(2, 'BCDV100k', 20, 0, '2023-11-30', '2023-12-01', 0),
(3, 'sdfhjsdf', 25, 0, '2023-11-30', '2023-12-05', 0),
(4, 'ssdsfd', 15, 0, '2023-11-23', '2023-12-02', 0),
(5, 'dsfsdfD', 7, 0, '2023-11-24', '2023-11-29', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dsdf` (`id_user`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dsdssd` (`id_user`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_products_detail` (`id_product_detail`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_categori` (`id_category`);

--
-- Chỉ mục cho bảng `products_bill`
--
ALTER TABLE `products_bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fdfdfd` (`id_product_detail`),
  ADD KEY `id_bill` (`id_bill`);

--
-- Chỉ mục cho bảng `products_cart`
--
ALTER TABLE `products_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dsdsd` (`id_cart`),
  ADD KEY `id_product_detail` (`id_product_detail`);

--
-- Chỉ mục cho bảng `products_detail`
--
ALTER TABLE `products_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dsds` (`id_product`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `reviews_ibfk_2` (`id_product`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `products_bill`
--
ALTER TABLE `products_bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `products_cart`
--
ALTER TABLE `products_cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `products_detail`
--
ALTER TABLE `products_detail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `dsdf` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `dsdssd` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_product_detail`) REFERENCES `products_detail` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `lk_categori` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `products_bill`
--
ALTER TABLE `products_bill`
  ADD CONSTRAINT `fdfdfd` FOREIGN KEY (`id_product_detail`) REFERENCES `products_detail` (`id`),
  ADD CONSTRAINT `products_bill_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`);

--
-- Các ràng buộc cho bảng `products_cart`
--
ALTER TABLE `products_cart`
  ADD CONSTRAINT `products_cart_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `products_cart_ibfk_2` FOREIGN KEY (`id_product_detail`) REFERENCES `products_detail` (`id`);

--
-- Các ràng buộc cho bảng `products_detail`
--
ALTER TABLE `products_detail`
  ADD CONSTRAINT `dsds` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
