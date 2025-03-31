-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th3 31, 2025 lúc 03:21 PM
-- Phiên bản máy phục vụ: 9.1.0
-- Phiên bản PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bantrangsuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

DROP TABLE IF EXISTS `tbl_baiviet`;
CREATE TABLE IF NOT EXISTS `tbl_baiviet` (
  `baiviet_id` int NOT NULL AUTO_INCREMENT,
  `tenbaiviet` varchar(100) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `danhmuctin_id` int NOT NULL,
  `baiviet_image` varchar(50) NOT NULL,
  PRIMARY KEY (`baiviet_id`),
  KEY `dmbaiviet` (`danhmuctin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`baiviet_id`, `tenbaiviet`, `tomtat`, `noidung`, `danhmuctin_id`, `baiviet_image`) VALUES
(1, 'Cara Luna - Thương hiệu trang sức vàng bạc uy tín chính hãng', 'Cara Luna - thương hiệu trang sức vàng bạc uy tín chính hãng. Các sản phẩm của nhà Cara Luna mang phong cách cá tính, thời thượng và đa dạng, giúp quý khách hàng hoàn thiện phong cách cá nhân và biến hóa vẻ ngoài của mình. Nếu bạn vẫn còn đang phân vân lựa chọn cửa hàng chất lượng về vàng bạc, thì hãy theo dõi bài viết dưới đây nhé! Chúng tôi sẽ cung cấp thông tin đầy đủ về cửa hàng Cara Luna đến bạn. \r\n\r\n', 'Tổng quan về Trang Sức Cara Luna\r\nCara Luna được xem là một thương hiệu trang sức vàng bạc chất lượng, chính hãng, phù hợp dành cho giới trẻ với những mẫu thiết kế tinh tế và đa dạng. Hầu hết, các mẫu sản phẩm được sản xuất từ chất liệu bạc Ý 925 và vàng 10K, cam kết được định lượng chuẩn. Hơn nữa, các sản phẩm đều được xử lý bằng kỹ thuật đánh bóng gương, tạo ra hiệu ứng óng ánh, lấp lánh giống như vàng trắng. \r\n\r\nMẫu mã sản phẩm trang sức bạc chẳng hạn như dây chuyền, vòng tay, nhẫn, bông tai của Cara Luna mang phong cách thời thượng, giúp quý khách hàng dễ dàng tô điểm phong cách cá nhân và biến hóa vẻ bề ngoài của chính bản mình.\r\n\r\nVới gần 10 năm kinh nghiệm trong việc xuất khẩu trang sức bạc đến các thị trường quốc tế như Hoa Kỳ, Singapore, Cara Luna luôn cam kết cung cấp cho quý khách hàng những sản phẩm vàng bạc đạt chuẩn chất lượng quốc tế, kèm theo gói dịch vụ nhanh chóng và thuận tiện nhất.\r\n\r\nChất liệu trang sức Caraluna\r\nCửa hàng bạc Cara Luna luôn luôn khác biệt với các thương hiệu khác trên thị trường chính là về mặt chất lượng sản phẩm. Cara Luna tự hào khi cam kết đem đến cho quý khách hàng sản phẩm trang sức bao gồm bông tai, vòng tay, dây chuyền, nhẫn bạc Ý 925 và vàng 10K, đạt chuẩn chất lượng quốc tế, không pha tạp chất Niken, để nhằm đảm bảo an toàn cho làn da và sức khỏe của người sử dụng.', 1, 'unnamed.png'),
(2, 'Tặng hoa 20/10 cho người yêu có ý nghĩa gì? Chọn hoa nào?', 'Vào ngày 20/10 thì hoa vẫn là một lựa chọn \"cổ điển\" để các chàng trai gửi đến nửa kia yêu thương. Việc tặng hoa 20/10 cho người yêu không chỉ là việc đơn giản trao đi một món quà nhỏ, mà còn là cách thể hiện tình cảm và sự trân trọng đối với nàng. Nếu bạn đang phân vân không biết nên chọn loại hoa nào để tặng người ấy vào dịp 20/10, hãy cùng Cara Luna tham khảo những thông tin dưới đây.', 'Ý nghĩa của việc tặng hoa 20/10 cho người yêu\r\nViệc tặng hoa vào ngày 20/10 cho người yêu sẽ làm tăng sự gắn kết trong mối quan hệ tình cảm của hai bạn. Các chàng thường chọn mua hoa tặng người yêu vào ngày này là vì:\r\n\r\n1. Cùng chia sẻ khoảnh khắc đáng nhớ\r\nViệc lựa chọn và tặng hoa vào ngày 20/10 cho người yêu là cơ hội để hai bạn cùng tạo ra những kỷ niệm đáng nhớ. Các bạn có thể cùng nhau thảo luận về loại hoa mà mỗi người yêu thích, cùng trải nghiệm một buổi dạo chơi thú vị hoặc một bữa tối lãng mạn. Nhờ đó, các bạn có thể tạo ra một buổi hẹn hò mà cả hai không thể quên.\r\n2. Thể hiện tình cảm & sự quan tâm\r\nViệc tặng hoa cho người yêu không chỉ đơn giản là việc đưa ra một món quà vật chất, mà còn là biểu hiện của tình yêu và sự quan tâm sâu sắc của bạn dành cho người đó. Những bông hoa không chỉ đơn thuần là một món quà, mà còn là cách bạn muốn truyền đạt những điều tốt đẹp nhất đến người bạn yêu.\r\n\r\n3. Ngày đặc biệt trở nên ý nghĩa hơn\r\nNgày 20/10 - ngày Phụ nữ Việt Nan là cơ hội để thể hiện sự quan tâm và tình yêu đối với \"nửa kia\" của bạn. Việc tặng hoa vào ngày này không chỉ là cách làm cho nàng cảm thấy được yêu thương mà còn làm cho ngày 20 tháng 10 trở nên ý nghĩa hơn bao giờ hết. Trải qua những năm tháng sau này, mỗi khi nhìn thấy những bông hoa thì cả hai bạn sẽ nhớ đến những kỷ niệm đáng nhớ trong quá khứ.\r\n', 2, 'tang-hoa-20-10-cho-nguoi-yeu-1.jpg'),
(6, 'Tặng quà sinh nhật cho bạn gái - Gợi ý món quà ý nghĩa', 'Sắp đến ngày sinh nhật của bạn gái nhưng bạn vẫn đang băn khoăn không biết nên tặng quà gì để làm cho cô ấy cảm thấy thích thú và đầy ý nghĩa? Đừng lo lắng nữa, hãy tham khảo ngay bài viết dưới đây, Cara Luna sẽ đưa ra 57 gợi ý để bạn có thể tặng quà sinh nhật cho bạn gái chắc chắn sẽ khiến cô ấy phải mê mẩn.', 'Trước khi quyết định tặng quà sinh nhật cho bạn gái, điều quan trọng là hiểu rõ sở thích của cô ấy. Mỗi cô gái đều có những ưu tiên riêng biệt, vì vậy để chọn được món quà khiến cô ấy hạnh phúc và hào hứng, bạn cần dành thời gian để tìm hiểu và hiểu sâu hơn về điều này.\r\n\r\nKhi tặng quà sinh nhật cho bạn gái, hãy lựa chọn một món quà thể hiện sự quan tâm và tinh tế. Bạn có thể chọn từ các gợi ý như trang sức, hoa và chocolate, đồ handmade, các trải nghiệm đặc biệt như buổi tối lãng mạn, sách yêu thích, dịch vụ spa, sản phẩm công nghệ. Quan trọng nhất là chọn một món quà phản ánh cá tính và sở thích riêng của bạn gái để tạo ra một bất ngờ thực sự vào ngày sinh nhật của cô ấy.\r\nSinh nhật nàng sắp đến và bạn đang băn khoăn lựa chọn món quà gì thật ý nghĩa để dành tặng cho cô gái của mình? Hãy tham khảo ngay 57 gợi ý quà tặng ý nghĩa cho bạn gái vừa độc đáo vừa tinh tế dưới đây, đảm bảo sẽ khiến nàng \"đổ đứ đừ\" vì hạnh phúc!\r\n\r\n1. Nhẫn\r\nNếu bạn đã dành thời gian chuẩn bị kỹ lưỡng để tỏ tình với bạn gái của mình, thì ngày sinh nhật của cô ấy sẽ là cơ hội lý tưởng để thể hiện tình yêu và lòng thành của bạn. Hãy lựa chọn một chiếc nhẫn bạc nữ tinh tế và sang trọng để trở thành món quà đặc biệt trong dịp lễ này.\r\n2. Dây chuyền\r\nNếu nhẫn thường được coi là biểu tượng của sự ổn định, trung thành và cam kết đời đời trong tình yêu, thì dây chuyền lại là biểu tượng của sự gắn kết và tình yêu đôi lứa. Trong những khoảnh khắc có xích mích, bạn có thể lựa chọn một chiếc dây chuyền tặng bạn gái thật tinh tế, ẩn chứa nhiều ý nghĩa sâu xa để làm quà tặng. Đặc biệt, bạn có thể tận dụng dịp sinh nhật của cô ấy để trao gửi món quà ý nghĩa này.\r\n3. Lắc tay\r\nCó nhiều gợi ý quà tặng ý nghĩa mà bạn có thể chọn để tặng cho người thân hoặc bạn bè trong những dịp đặc biệt. Tuy nhiên, việc chọn món quà cho bạn gái thường không dễ dàng. Nếu bạn đang phân vân không biết nên chọn món quà gì cho sinh nhật của cô ấy, một lựa chọn đáng xem xét có thể là một chiếc lắc tay. Một chiếc vòng tay tặng bạn gái thực sự là một món quà mà nhiều chàng trai có thể chọn để làm quà tặng cho những người phụ nữ đặc biệt trong cuộc đời họ.\r\n4. Bông tai\r\nKhuyên Tai Bạc 925 Nụ Hoa Đính Đá Lấp Lánh Stud Lady Clover là mẫu khuyên cực ấn tượng vì mặt khuyên hình hoa bốn cánh to bản, đính full đá CZ để tạo hiệu ứng bắt sáng lấp lánh. Lấy chấm bạc ở trọng tâm làm nụ, các cánh hoa đối nhau cân xứng, tinh xảo. Đây là item phù hợp cho các cô nàng thích sự nổi bật, ấn tượng, sang chảnh, nhìn từ xa cũng thấy rõ được sự lấp lánh nơi khuyên tai.', 2, 'qua-tang-sinh-nhat-cho-ban-gai-1.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Dây chuyền'),
(2, 'Hoa tai'),
(3, 'Vòng tay'),
(4, 'Nhẫn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc_tin`
--

DROP TABLE IF EXISTS `tbl_danhmuc_tin`;
CREATE TABLE IF NOT EXISTS `tbl_danhmuc_tin` (
  `danhmuctin_id` int NOT NULL AUTO_INCREMENT,
  `tendanhmuc` varchar(100) NOT NULL,
  PRIMARY KEY (`danhmuctin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc_tin`
--

INSERT INTO `tbl_danhmuc_tin` (`danhmuctin_id`, `tendanhmuc`) VALUES
(1, 'Kiến thức trang sức'),
(2, 'Tin tức');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang`
--

DROP TABLE IF EXISTS `tbl_donhang`;
CREATE TABLE IF NOT EXISTS `tbl_donhang` (
  `donhang_id` int NOT NULL AUTO_INCREMENT,
  `sanpham_id` int NOT NULL,
  `soluong` int NOT NULL,
  `mahang` varchar(50) NOT NULL,
  `khachhang_id` int NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tinhtrang` int NOT NULL,
  `huydon` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`donhang_id`),
  KEY `sanpham_id` (`sanpham_id`),
  KEY `khachhang_id` (`khachhang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`donhang_id`, `sanpham_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(47, 20, 1, '9461', 31, '2025-03-24 02:21:24', 1, 1),
(48, 22, 1, '9461', 31, '2025-03-24 02:21:24', 1, 1),
(49, 21, 1, '2638', 32, '2025-03-17 13:36:15', 0, 0),
(50, 25, 2, '2638', 32, '2025-03-17 13:36:15', 0, 0),
(51, 20, 1, '2638', 32, '2025-03-17 13:36:15', 0, 0),
(52, 21, 1, '3774', 32, '2025-03-17 13:53:33', 0, 0),
(53, 26, 1, '7195', 32, '2025-03-17 13:54:59', 0, 0),
(54, 20, 1, '2718', 31, '2025-03-24 02:21:03', 0, 0),
(55, 22, 1, '2718', 31, '2025-03-24 02:21:03', 0, 0),
(56, 20, 2, '5064', 31, '2025-03-24 22:02:45', 0, 0),
(57, 22, 1, '5064', 31, '2025-03-24 22:02:45', 0, 0),
(58, 24, 2, '5064', 31, '2025-03-24 22:02:45', 0, 0),
(59, 22, 2, '6329', 31, '2025-03-25 02:32:04', 0, 0),
(60, 27, 2, '6329', 31, '2025-03-25 02:32:04', 0, 0),
(61, 20, 1, '6329', 31, '2025-03-25 02:32:04', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giaodich`
--

DROP TABLE IF EXISTS `tbl_giaodich`;
CREATE TABLE IF NOT EXISTS `tbl_giaodich` (
  `giaodich_id` int NOT NULL AUTO_INCREMENT,
  `sanpham_id` int NOT NULL,
  `soluong` int NOT NULL,
  `magiaodich` varchar(50) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `khachhang_id` int NOT NULL,
  `tinhtrangdon` int NOT NULL DEFAULT '0',
  `huydon` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`giaodich_id`),
  KEY `gd_kh` (`khachhang_id`),
  KEY `sanpham_id` (`sanpham_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_giaodich`
--

INSERT INTO `tbl_giaodich` (`giaodich_id`, `sanpham_id`, `soluong`, `magiaodich`, `ngaythang`, `khachhang_id`, `tinhtrangdon`, `huydon`) VALUES
(4, 26, 1, '6219', '2025-03-24 21:03:46', 28, 0, 0),
(24, 20, 1, '9461', '2025-03-24 02:21:24', 31, 1, 1),
(25, 22, 1, '9461', '2025-03-24 02:21:24', 31, 1, 1),
(26, 21, 1, '2638', '2025-03-17 13:36:15', 32, 0, 0),
(27, 25, 2, '2638', '2025-03-17 13:36:15', 32, 0, 0),
(28, 20, 1, '2638', '2025-03-17 13:36:15', 32, 0, 0),
(29, 21, 1, '3774', '2025-03-17 13:53:33', 32, 0, 0),
(30, 26, 1, '7195', '2025-03-17 13:54:59', 32, 0, 0),
(31, 20, 1, '2718', '2025-03-24 02:21:03', 31, 0, 0),
(32, 22, 1, '2718', '2025-03-24 02:21:03', 31, 0, 0),
(33, 20, 2, '5064', '2025-03-24 22:02:45', 31, 0, 0),
(34, 22, 1, '5064', '2025-03-24 22:02:45', 31, 0, 0),
(35, 24, 2, '5064', '2025-03-24 22:02:45', 31, 0, 0),
(36, 22, 2, '6329', '2025-03-25 02:32:04', 31, 0, 0),
(37, 27, 2, '6329', '2025-03-25 02:32:04', 31, 0, 0),
(38, 20, 1, '6329', '2025-03-25 02:32:04', 31, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

DROP TABLE IF EXISTS `tbl_giohang`;
CREATE TABLE IF NOT EXISTS `tbl_giohang` (
  `giohang_id` int NOT NULL AUTO_INCREMENT,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `soluong` int NOT NULL,
  PRIMARY KEY (`giohang_id`),
  KEY `sanpham_id` (`sanpham_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khachhang`
--

DROP TABLE IF EXISTS `tbl_khachhang`;
CREATE TABLE IF NOT EXISTS `tbl_khachhang` (
  `khachhang_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`khachhang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `phone`, `address`, `email`, `password`) VALUES
(28, 'Hoa', '0932023992', '123/123', 'hoa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(31, 'Abc', '12345', 'abc12345', 'abc@gmail.com', '900150983cd24fb0d6963f7d28e17f72'),
(32, '123', '123', '123a', '123@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

DROP TABLE IF EXISTS `tbl_sanpham`;
CREATE TABLE IF NOT EXISTS `tbl_sanpham` (
  `sanpham_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_mota` text NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_giakhuyenmai` varchar(100) NOT NULL,
  `sanpham_soluong` int NOT NULL,
  `sanpham_image` varchar(50) NOT NULL,
  PRIMARY KEY (`sanpham_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_soluong`, `sanpham_image`) VALUES
(17, 2, 'Khuyên Tai Thả Bạc 925 Hình Khối Chữ Nhật Dáng Dài Crown Princess', 'Khuyên tai thả dáng dài hình khối chữ nhật\r\nChất liệu\r\n100% bạc Ý 925', 'Khuyên Tai Thả Hình Khối Chữ Nhật Dáng Dài Crown Princess với hai phần khuyên tai hình lục giác được nối với nhau bởi vòng treo bạc 925. Thiết kế dễ đeo, dễ phối đểsử dụng hàng ngày hoặc mix match.', '1080000', '702000', 10, 'h3.png'),
(20, 4, 'Nhẫn Bạc 925 Vương Miện Công Chúa Đính Đá Cách Điệu Crown Princess ', 'Nhẫn hình vương miện kiểu công chúa cách điệu đính đá\r\nChất liệu\r\n100% bạc Ý 925, xi mạ vàng hồng 18K', 'Nhẫn Bạc 925 Vương Miện Công Chúa Đính Đá Cách Điệu Crown Princess cực ấn tượng với kiểu uốn bạc cong mềm mại, thiết kế dễ đeo, dễ phối, sử dụng hàng ngày hoặc mix match đều hợp lý.', '590000', '510000', 10, 'n2.png'),
(21, 4, 'Nhẫn Bạc 925 Đá CZ Tròn Vương Miện Lấp Lánh Crown Ring ', 'Nhẫn đính đá chủ vương miện và đá rải xung quanh\r\nChất liệu\r\n\r\n100% bạc Ý 925, xi mạ vàng 18K', 'Nhẫn Bạc 925 Đá CZ Tròn Vương Miện với viên đá chấu tạo hình vương miện sang chảnh nổi bật được lấy cảm hứng từ sự kiêu hãnh và nữ tính, tạo được điểm nhấn nhưng vẫn tinh tế và thanh lịch.', '690000', '690000', 10, 'n1.png'),
(22, 2, 'Hoa Tai Thả Bạc 925 Chùm Hoa Đính Đá Lấp Lánh Dáng Dài Blossom Flower', 'Khuyên tai dáng treo thiết kế chùm hoa đính đá thả dáng dài\r\nChất liệu 100% bạc Ý 925, mạ vàng hồng 18K', 'Hoa Tai Thả Bạc 925 Chùm Hoa Đính Đá Lấp Lánh Dáng Dài Blossom Flower phù hợp cho những cô nàng nữ tính, ngọt ngào. Khuyên tai dáng treo drop earrings, chuyển động nhẹ nhàng khi đeo. ', '790000', '750000', 5, 'h2.png'),
(23, 2, 'Hoa Tai Bạc 925 Trái Tim Đá Nhảy Bling Heart ', 'Hoa tai dáng thả thiết kế hình trái tim 2 tầng; một viên đá nhảy CZ màu hồng ở giữa trái tim\r\nChất liệu: 100% bạc Ý 925, có thể thêm xi mạ vàng hồng 18K', 'Hoa Tai Bạc 925 Trái Tim Đá Nhảy Bling Heart với trái tim đính đá nhảy màu hồng cute là món quà tình yêu cực kỳ ngọt ngào mà các bạn trai dành tặng cho bạn gái của mình.', '990000', '990000', 10, 'h1.png'),
(24, 1, 'Dây chuyền đá nhảy', 'Mẫu dây chuyền bạc Hàn Quốc My Queen đá nhảy được lấy cảm hứng từ vẻ đẹp kiêu kỳ của vương miện, với thiết kế tinh xảo, nữ tính giúp bạn gái hoàn thiện vẻ ngoài và rạng rỡ hơn mỗi ngày. Đặc biệt với viên đá nhảy 5 ly có thể \"nhảy\" theo từng nhịp chuyển động của cơ thể, giúp nàng trở nên cuốn hút và nhiều năng lượng tích cực hơn.', 'Dây chuyền bạc Hàn Quốc My Queen đá nhảy được lấy cảm hứng từ vẻ đẹp kiêu kỳ của vương miện, viên đá nhảy lấp lánh theo từng nhịp chuyển động. Đây là món quà thay cho lời yêu thương \"Em là nữ hoàng của anh\".', '1290000', '1290000', 10, 'v1.png'),
(25, 1, 'Dây Chuyền Bạc 925 Cỏ 4 Lá Đính Đá Lấp Lánh Lady Clover', 'Dây Chuyền Bạc 925 Hoa 4 Cánh Đính Đá Lấp Lánh Big Lady Clover là mẫu dây chuyền cực ấn tượng vì mặt dây hình hoa bốn cánh to bản, đính full đá CZ để tạo hiệu ứng bắt sáng lấp lánh. Dây dạng Xích Oval dẹt Hàn Quốc, dài 38cm + 5cm dây phụ dễ đeo, dễ điều chỉnh kích thước. Đây là item phù hợp cho các quý cô thích sự nổi bật, ấn tượng, sang chảnh, nhìn từ xa cũng thấy rõ được sự lấp lánh nơi vòng cổ.', 'Dây Chuyền Hoa 4 Cánh Đính Đá Lấp Lánh Big Lady Clover cực ấn tượng vì mặt dây hình hoa bốn cánh to bản phù hợp cho các quý cô thích sự nổi bật, sang chảnh', '990000', '990000', 10, 'v2.png'),
(26, 3, 'Vòng Tay Bạc 925 Hành Tinh Trăng Sao Galaxy Đính Đá', 'Lắc tay hành tinh thiên hà gắn đá hồng, xanh, vàng\r\nChất liệu\r\n100% bạc Ý 925, có thể thêm xi mạ vàng hồng 18K', 'Vòng Tay Bạc 925 Hành Tinh Trăng Sao Galaxy Đính Đá Hồng, Xanh, Vàng mang đến một thiết kế tinh xảo như các hành tinh và thiên hà đang bay bồng bềnh. Những viên đá màu hồng, xanh, vàng lấp lánh được đính khéo léo, tạo nên vẻ đẹp độc đáo', '990000', '990000', 10, 'l2.png'),
(27, 3, '123 Lắc Tay Bạc 925 Cỏ 4 Lá Đính Đá - 4 Leaf Clover ', '', 'Mỗi lá đại diện cho một khía cạnh khác nhau trong cuộc sống, lá thứ nhất cho niềm tin, lá thứ 2 cho hi vọng, lá thứ 3 là may mắn và lá thứ 4 là tình yêu - Đây chính là món quà gửi gắm may mắn tới người bạn yêu.', '890000', '890000', 10, 'l1.png');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD CONSTRAINT `dmbaiviet` FOREIGN KEY (`danhmuctin_id`) REFERENCES `tbl_danhmuc_tin` (`danhmuctin_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD CONSTRAINT `tbl_donhang_ibfk_1` FOREIGN KEY (`sanpham_id`) REFERENCES `tbl_sanpham` (`sanpham_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tbl_donhang_ibfk_2` FOREIGN KEY (`khachhang_id`) REFERENCES `tbl_khachhang` (`khachhang_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD CONSTRAINT `gd_kh` FOREIGN KEY (`khachhang_id`) REFERENCES `tbl_khachhang` (`khachhang_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tbl_giaodich_ibfk_1` FOREIGN KEY (`sanpham_id`) REFERENCES `tbl_sanpham` (`sanpham_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD CONSTRAINT `tbl_giohang_ibfk_1` FOREIGN KEY (`sanpham_id`) REFERENCES `tbl_sanpham` (`sanpham_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `tbl_sanpham_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
