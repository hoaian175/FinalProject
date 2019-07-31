-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 31, 2019 lúc 04:29 AM
-- Phiên bản máy phục vụ: 10.3.15-MariaDB
-- Phiên bản PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qltb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(10000) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `madonhang`, `masanpham`, `tensanpham`, `giasanpham`, `soluongsanpham`) VALUES
(1, 2, 1, 'Dien thoai ngu', 699000, 1),
(2, 2, 6, 'Laptop ngu', 23123122, 3),
(3, 3, 17, 'Điện thoại Samsung Galaxy S10+ (512GB)', 25990000, 1),
(4, 3, 18, 'Laptop Lenovo Ideapad 130 14IKB i3 7020U', 8790000, 1),
(5, 4, 17, 'Điện thoại Samsung Galaxy S10+ (512GB)', 77970000, 3),
(6, 5, 2, 'Laptop Apple Macbook Air 2018 i5', 63800000, 2),
(7, 5, 17, 'Điện thoại Samsung Galaxy S10+ (512GB)', 25990000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `diachi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `sodienthoai`, `email`, `diachi`) VALUES
(1, 'Phat', 12312312, 'phat@gmail.com', 'Binh duong'),
(2, 'huhu', 2147483647, 'vcb000111@gmail.com', 'ghu'),
(3, 'huhu', 96969339, 'vcb000111@gmail.com', 'binh duong'),
(4, 'u', 66, 'gg', 'gg'),
(5, 'an ne', 3333333, 'hhjjjj@gahjj', 'tttttt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhanhloaisanpham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`, `hinhanhloaisanpham`) VALUES
(1, 'Điện thoại', 'https://www.ermakbilisim.com/images/about/mobi-uygulama2.png'),
(2, 'Laptop', 'https://images.vexels.com/media/users/3/157295/isolated/preview/5ab1a21aaafa93397c0d6eedcb24731e-computer-laptop-icon-by-vexels.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanhoi`
--

CREATE TABLE `phanhoi` (
  `id` int(11) NOT NULL,
  `idkhachhang` int(11) NOT NULL,
  `emailkhachhang` varchar(200) NOT NULL,
  `tieude` varchar(10000) NOT NULL,
  `noidung` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quantrivien`
--

CREATE TABLE `quantrivien` (
  `id` int(11) NOT NULL,
  `taikhoan` int(11) NOT NULL,
  `matkhau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsp` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `hinhanhsanpham` varchar(200) NOT NULL,
  `motasanpham` varchar(10000) NOT NULL,
  `idloaisanpham` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `tensanpham`, `giasanpham`, `hinhanhsanpham`, `motasanpham`, `idloaisanpham`) VALUES
(1, 'Điện thoại iPhone X 64GB', 22990000, 'https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb-1-400x460.png', 'Như các bạn cũng đã biết thì đã 4 năm kể từ chiếc điện thoại iPhone 6 và iPhone 6 Plus thì Apple vẫn chưa có thay đổi nào đáng kể trong thiết kế của mình.', 1),
(2, 'Laptop Apple Macbook Air 2018 i5', 31900000, 'https://cdn.tgdd.vn/Products/Images/44/197305/apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-600x600.jpg', 'Dung lượng RAM 8 GB của Macbook Air 2018 cho phép bạn sử dụng cùng lúc nhiều ứng dụng, mở nhiều tab trình duyệt mà không bị đứng, giật.\r\n\r\nChiếc laptop Apple sở hữu ổ cứng SSD cho tốc độ khởi chạy các ứng dụng trong chớp mắt, dung lượng 128 GB là đủ dùng với nhu cầu lưu trữ tài liệu, hình ảnh, bài thuyết trình...\r\n\r\nMẫu Macbook 2018 còn cho phép bạn có thể sử dụng mượt mà các ứng dụng thiết kế chuyên nghiệp như Photoshop, AI,... ', 2),
(3, 'Điện thoại Samsung Galaxy S10+', 19990000, 'https://cdn.tgdd.vn/Products/Images/42/179530/samsung-galaxy-s10-plus-black-400x460.png', 'Samsung Galaxy S10+ là một trong những chiếc smartphone được trông chờ nhiều nhất trong năm 2019 và không phụ sự kỳ vọng của mọi người thì chiếc Galaxy S thứ 10 của Samsung thực sự gây ấn tượng mạnh cho người dùng.\r\n\r\nThiết kế sang trọng, bóng bẩy\r\n\r\nVới một chiếc máy cao cấp như Samsung Galaxy S10+ thì việc đầu tiên cần có là máy phải sở hữu một vẻ ngoài \"lộng lẫy\", thu hút mọi ánh nhìn.\r\n', 1),
(4, 'Điện thoại Samsung Galaxy Note 8', 11990000, 'https://cdn.tgdd.vn/Products/Images/42/106211/samsung-galaxy-note8-black-400x460.png', 'Galaxy Note 8 là niềm hy vọng vực lại dòng Note danh tiếng của điện thoại Samsung với diện mạo nam tính, sang trọng. Máy trang bị camera kép xóa phông thời thượng, màn hình vô cực như trên S8 Plus, bút S Pen cùng nhiều tính năng mới và nhiều công nghệ được ưu ái.\r\n\r\nMàn hình vô cực hiện đại tiên tiến\r\n\r\nDù được giới thiệu là màn hình lên tới 6.3 inch nhưng thực sự khi cầm điện thoại Note 8 trên tay rất nhỏ gọn nhờ vào công nghệ \"màn hình vô cực\" tiên tiến nhất hiện nay của Samsung.\r\n\r\nMàn hình điện thoại Samsung Galaxy Note 8\r\n\r\nCác cạnh bên máy được làm cong đều khiến mình khi cầm có cảm giác ôm tay rất thoải mái và không hề bị cấn.\r\n\r\nThiết kế điện thoại Samsung Galaxy Note 8\r\n\r\nCả mặt trước và mặt sau máy đều được phủ kín bằng lớp kính phản chiếu rất đẹp như đã từng xuất hiện ở bộ đôi S8/S8+.\r\n\r\nMặt lưng điện thoại Samsung Galaxy Note 8\r\n\r\nVà màn hình 2K+ trên Note 8 hoạt động tốt, góc nhìn sắc nét.\r\n\r\n❝Điện thoại kiểu dáng nam tính, thiết kế gọn và mỏng hơn những dòng note trước... cảm thấy rất thích thú khi sở hữu chiếc galaxy note 8 này lắm... cám ơn SAMSUNG rất nhiều.❞\r\n', 1),
(5, 'Điện thoại iPhone 7 Plus 32GB', 12990000, 'https://cdn.tgdd.vn/Products/Images/42/78124/iphone-7-plus-gold-400x460.png', 'Mặc dù giữ nguyên vẻ bề ngoài so với dòng điện thoại iPhone đời trước, bù lại iPhone 7 Plus 32GB lại được trang bị nhiều nâng cấp đáng giá như camera kép đầu tiên cũng như cấu hình mạnh mẽ.\r\n\r\nChiếc điện thoại sở hữu camera kép đầu tiên của Apple\r\n\r\nCamera kép mặt lưng của điện thoại iPhone 7 Plus\r\n\r\niPhone 7 Plus là chiếc iPhone đầu tiên được trang bị camera kép có cùng độ phân giải 12 MP, đem lại khả năng chụp ảnh ở hai tiêu cự khác nhau.\r\n\r\nCamera chính chụp hình góc rộng, còn camera phụ có tiêu cự phù hợp để chụp chân dung, có tính năng chụp chân dung xóa phông (làm mờ hậu cảnh). \r\n\r\nVới 1 chạm nhanh chóng bạn có thể chuyển đổi giữa chế độ 1x và zoom 2x, hoặc bạn có thể kéo thanh trượt hay dùng 2 ngón tay đến zoom. Apple đã thêm tính năng zoom kỹ thuật số lên đến 10x.\r\n\r\nCamera kép mặt lưng của điện thoại iPhone 7 Plus\r\nCamera trước nâng cấp độ phân giải 7MP với khẩu độ mở lớn f/2.2 hỗ trợ chụp trong điều kiện thiếu sáng tuyệt vời với công nghệ Retina Flash, Auto HDR.', 1),
(6, 'Điện thoại Samsung Galaxy A10', 3090000, 'https://cdn.tgdd.vn/Products/Images/42/197512/samsung-galaxy-a10-red-docquyen-400x460.png', 'Galaxy A10 - chiếc smartphone rẻ nhất ở dòng A của Samsung vừa được trình làng nhưng sở hữu nhiều đặc điểm ưu việt về thiết kế màn hình và hiệu năng với chip Exynos 7884.\r\n\r\nThiết kế màn hình Infinity-V\r\n\r\nGalaxy A10 có thiết kế bo tròn với màn hình tràn tràn viền kiểu \"giọt nước\" kiểu mới mà Samsung gọi đó là Infinity-V. Kiểu thiết kế này trông khá dễ thương và cho tỉ lệ hiển thị màn hình được đạt tối đa.\r\n\r\nMàn hình - Điện thoại Samsung Galaxy A10\r\n\r\nMàn hình của máy khá lớn 6.2 inch với tấm nền IPS LCD có độ phân giải HD+ mang đến cho bạn những trải nghiệm hình ảnh sắc nét và sinh động nhất là khi xem phim chất lượng cao. \r\n\r\nThiết kế mặt trước - Điện thoại Samsung Galaxy A10\r\n\r\nHiệu năng ổn định\r\n\r\nGalaxy A10 được trang bị con chip Exynos 7884 \"cây nhà lá vườn\" của Samsung đủ cho máy cho máy có độ ổn định tốt trong các tác vụ hằng ngày của bạn như lướt web, chơi game nhẹ, xem phim,...\r\n\r\nTrên tay trải nghiệm - Điện thoại Samsung Galaxy A10\r\n\r\nDung lượng của máy có phần hơi hạn chế với 2 GB RAM và 32 GB bộ nhớ trong, tuy nhiên có thể mở rộng dung lượng bằng thẻ nhớ MicroSD lên đến 512 GB đáp ứng nhu cầu lưu trữ dữ liệu cá nhân của bạn. \r\n\r\nGiao diện Android - Điện thoại Samsung Galaxy A10\r\n\r\nMột điểm đáng khen ở Galaxy A10 là nó được cài đặt chạy trên hệ điều hành Android 9.0 (Pie) với giao diện One UI giúp tối ưu hóa việc chạy các ứng dụng trên máy cũng như cải thiện việc tiêu tốn năng lượng pin.\r\n', 1),
(7, 'Điện thoại OPPO F11', 7290000, 'https://cdn.tgdd.vn/Products/Images/42/199801/oppo-f11-mtp-400x460.png', 'OPPO F11 gây ấn tượng với người dùng bởi thiết kế màn hình tràn viền hình giọt nước và camera sau khủng đến 48 MP.\r\n\r\nThiết kế màn hình tràn viền thực thụ\r\n\r\nVới các nhà sản xuất smartphone thì màn hình giọt nước để chứa camera selfie đang là xu hướng mới mẻ và vẫn tiếp tục phát triển.\r\n\r\nĐiện thoại OPPO F11 - Thiết kế tổng thể\r\n\r\nTuy nhiên với OPPO F11, màn hình giọt nước đã được tối ưu lại, giúp nhỏ gọn hơn, đem lại màn hình tràn viền hoàn hảo.\r\n\r\nOPPO F11 có bộ khung viền cũng được bo cong để thoải mái cầm nắm trên tay mà không cho cảm giác cấn tay, khó chịu.\r\n\r\nĐiện thoại OPPO F11 - Thiết kế màn hình tràn viền giọt nước\r\n\r\nMặt sau của OPPO F11 có hiệu ứng đổi màu đẹp mắt, bạn có thể thấy các màu như tím, hay xanh trên chiếc smartphone này cho dù nhìn từ hướng nào.\r\n\r\nĐiện thoại OPPO F11 - Thiết kế mặt lưng\r\n\r\nCamera sau khủng đến 48 MP\r\n\r\nChiếc điện thoại OPPO sở hữu một camera selfie 16 MP chất lượng ngay điểm giọt nước trên màn hình.\r\n\r\nTất nhiên camera này cũng được tích hợp công nghệ AI và nhiều chế độ làm đẹp để bạn luôn có được những hình ảnh đẹp nhất, chia sẻ với bạn bè.\r\n\r\nĐiện thoại OPPO F11 - Chế độ làm đẹp AI\r\n\r\nCamera chính của máy có độ phân giải lớn 48 MP kết hợp với một camera 5 MP có nhiệm vụ đo độ sâu trường ảnh hỗ trợ người dùng trong chụp ảnh xóa phông.\r\n\r\nĐiện thoại OPPO F11 - Cụm camera kép mặt sau\r\n\r\nMáy cũng có chế độ chụp ảnh ban đêm chuyên dụng cho phép bạn có các bức ảnh sáng hơn, bớt nhiễu hơn và sắc nét dù là cầm tay.\r\n\r\nĐiện thoại OPPO F11 - Ảnh chụp ban đêm\r\n\r\nMàn hình lớn, hiển thị sắc nét\r\n\r\nOPPO F11 sở hữu màn hình với kích thước lớn 6.5 inch, độ phân giải Full HD+, tấm nền LTPS LCD và tỷ lệ hiển thị đạt khoảng 85%, mức rất cao trong phân khúc này.\r\n\r\nĐiện thoại OPPO F11 - Màn hình giọt nước\r\n\r\nHiệu năng mượt mà trong hầu hết điều kiện\r\n\r\nCung cấp sức mạnh cho F11 là con chip MediaTek Helio P70 8 nhân, bộ nhớ RAM lên tới 6 GB, ROM 64 GB.\r\n\r\nVới cấu hình như vậy, OPPO F11 có thể chạy đa nhiệm cùng lúc nhiều ứng dụng, xử lý tốt các tác vụ nặng, kể cả những game đòi hỏi nhiều sức mạnh đồ họa như PUBG hay Liên Quân ở mức cấu hình trung.\r\n\r\nĐiện thoại OPPO F11 - Giao diện ColorOS\r\nOPPO F11 đang chạy phiên bản ColorOS 6 dựa trên Android 9.0 (Pie) với rất nhiều bổ sung mới từ thanh thông báo được thiết kế lại, điều hướng cử chỉ, quản lý thời gian sử dụng...\r\n\r\nDung lượng pin thoải mái sử dụng cả ngày\r\n\r\nOPPO trang bị một viên pin có dung lượng cao 4.020 mAh trên điện thoại để đảm bảo bạn có đủ năng lượng vượt qua những ngày bận rộn nhất.\r\n\r\nĐiện thoại OPPO F11 - Cổng sạc trên máy\r\n\r\nTương tự như nhiều sản phẩm khác của hãng, OPPO F11 cũng hỗ trợ công nghệ sạc nhanh VOOC.', 1),
(8, 'Laptop HP Pavilion 15 i5 8265U', 15390000, 'https://cdn.tgdd.vn/Products/Images/44/195383/hp-pavilion-15-cs1009tu-i5-8265u-4gb-1tb-win10-5j-thumb-33397-600x600.jpg', 'Laptop HP Pavilion 15 cs1009TU (5JL43PA) vừa được ra mắt, nhằm mang đến cho sinh viên, nhân viên văn phòng có thêm sự lựa chọn tốt. Vẻ ngoài được thiết kế hiện đại, mỏng nhẹ phù hợp di chuyển hằng ngày đến công ty. Cấu hình máy chạy tốt các ứng dụng văn phòng, đồ hoạ cơ bản.\r\n\r\nThiết kế tinh tế, thuận tiện di chuyển hằng ngày\r\n\r\nĐược hoàn thiện từ chất liệu nhựa, nắp lưng kim loại làm tăng sự sang trọng trong thiết kế. Khớp nối màn hình và thân máy nhô lên khi mở rộng góc màn hình vừa là điểm cộng cho tổng thể thiết kế hiện đại, vừa có công dụng là điểm nổi giúp bạn đánh máy thuận tiện nhất. Là một chiếc laptop văn phòng nên trọng lượng máy khá nhẹ chỉ 1.8 kg phù hợp để bạn mang theo bên mình mọi lúc mọi nơi.\r\n\r\nThiết kết hài hoà trên laptop văn phòng HP Pavilion 15 cs1009TU i5 (5JL43PA)\r\n\r\nMàn hình to, rõ xem phim chất lượng cao\r\n\r\nKích thước màn hình 15.6 inch độ phân giải Full HD (1920 x 1080), kết hợp cùng công nghệ LED Blacklit giúp bạn xem những bộ phim HD chất lượng cao, sắc nét đến từng chi tiết nhỏ.\r\n\r\nMàn hình sắc nét trên laptop văn phòng HP Pavilion 15 cs1009TU i5 (5JL43PA)\r\n\r\nXử lý đồ hoạ cơ bản\r\n\r\nMáy tính xách tay HP Pavilion 15 cs1009TU (5JL43PA) được trang bị chip xử lý core i5 thế hệ 8, 4GB RAM DDR4 chạy mượt các ứng dụng văn phòng như word, excel, powerpoint,... Cho phản hồi các thao tác kéo thả trong photoshop, Pr,... nhanh chóng.\r\n\r\nHỗ trợ khe cắm SSD M.2 PCIe giúp bạn có thể nâng cấp ổ cứng SSD giúp bạn khởi động máy, vào ứng dụng nhanh hơn ổ HDD truyền thống.\r\n\r\nCấu hình mạnh mẽ trên máy tính xách tay văn phòng HP Pavilion 15 cs1009TU i5 (5JL43PA)\r\n\r\nNghe nhạc chất lượng cao\r\n\r\nRealtek High Definition Audio - Công nghệ âm thanh quen thuộc trên các dòng laptop HP. Cải thiện âm treble giúp âm thanh trong trẻo, những bài nhạc EDM sẽ có độ vang hơn.\r\n\r\nÂm thanh to rõ trên máy tính xách tay văn phòng HP Pavilion 15 cs1009TU i5 (5JL43PA)\r\n\r\nUSB 3.1 và USB Type C truyền dữ liệu nhanh chóng\r\n\r\nBên cạnh các cổng kết nối cơ bản như HDMI, LAN,... Máy còn được trang bị 2 cổng USB 3.1 và 1 cổng USB Type C giúp bạn truyền các file nặng. Tốc độ tối đa mà cổng này hỗ trợ lên đến 600Mb/s. ', 2),
(9, 'Laptop Lenovo Ideapad 530S 14IKB i7 8550U', 20490000, 'https://cdn.tgdd.vn/Products/Images/44/198795/lenovo-ideapad-530s-14ikb-i7-8550u-8gb-256gb-win10-33397-thumb-600x600.jpg', 'Laptop Lenovo Ideapad 530S (81EU00P5VN) mang trong mình một thiết kế mỏng nhẹ rất thuận tiện khi di chuyển, cùng với đó là một cấu hình khá mạnh, giúp chạy mượt mà các ứng dụng văn phòng cũng như đáp ứng tốt nhu cầu đồ họa cơ bản. Chiếc laptop Lenovo này sẽ là một sự lựa chọn đáng để cân nhắc dành cho nhân viên văn phòng hoặc học sinh, sinh viên trong phân khúc.\r\n\r\n\r\n\r\n\r\n\r\nThiết kế mỏng nhẹ, trang nhã\r\n\r\nMáy tính xách tay Lenovo Ideapad 530S (81EU00P5VN) được gia công mỉ từ chất liệu nhựa, cùng với 4 góc được bo tròn nhẹ, tạo nên một sự thanh lịch, trang nhã. Bên cạnh đó là một thiết kế mỏng nhẹ với trọng lượng chỉ 1.54Kg, giúp cho người dùng có thể dễ dàng mang theo laptop đến bất kì đâu mà không cảm thấy mệt mỏi.\r\n\r\nThiết kế mỏng nhẹ trên Laptop văn phòng Lenovo Ideapad 530S 14IKB i7 (81EU00P5VN)\r\nTrải nghiệm hình ảnh sắc nét, chân thật\r\n\r\nLaptop Lenovo Ideapad 530S (81EU00P5VN) được trang bị màn hình chống chói 14 inch có độ phân giải FHD (1920 x 1080) giúp mang lại hình ảnh sắc nét, chân thật, tạo cho người dùng cảm giác tuyệt với nhất khi sử dụng kể cả khi sản phẩm đang được sử dụng ở điều kiện bị ngược sáng.\r\n\r\nMàn hình siêu sắc nét trên Laptop văn phòng Lenovo Ideapad 530S 14IKB i7 (81EU00P5VN)\r\nCấu hình đáp ứng tốt nhu cầu đồ họa cơ bản\r\n\r\nSản phẩm được tích hợp chip xử lý Intel Core i7 thế hệ thứ 8 tiết kiệm điện năng, mạnh mẽ. Cùng với sự kết hợp của 8GB RAM DDR4 giúp máy có thể chạy mượt mà các ứng dụng văn phòng cũng như xử lý khá tốt các ứng dụng đồ họa cơ bản như photoshop, AI,...\r\n\r\nCấu hình mạnh mẽ trên Laptop văn phòng Lenovo Ideapad 530S 14IKB i7 (81EU00P5VN)\r\nTiện lợi khi làm việc vào ban đêm cùng đèn nền bàn phím\r\n\r\nViệc tích hợp đèn nền bàn phím sẽ giúp cho người dùng hạn chế tối đa việc gõ sai phím trong điều kiện thiếu sáng cũng như tối ưu khả năng làm việc tại nhà vào ban đêm.\r\n\r\nBàn phím độ nảy cao trên Laptop văn phòng Lenovo Ideapad 530S 14IKB i7 (81EU00P5VN)\r\nTrải nghiệm âm thanh trong trẻo, rõ ràng và chân thật\r\n\r\nSản phẩm được tích hợp công nghệ âm thanh Dolby Audio Premium giúp mang đến âm thanh phong phú, rõ ràng, trong trẻo và mạnh mẽ. Bên cạnh đó là tính năng giả lập âm thanh vòm giúp cho bạn có thể trải nghiệm chất lượng âm thanh chất lượng cao trong những bộ phim bom tấn mà không cần phải đến rạp chiếu phim.\r\n\r\nÂm thanh to, rõ trên Laptop văn phòng Lenovo Ideapad 530S 14IKB i7 (81EU00P5VN)\r\nTruyền tải dữ liệu nhanh hơn với cổng USB 3.0\r\n\r\nLaptop Lenovo Ideapad 530S (81EU00P5VN) được trang bị khá đầy đủ các cổng kết nối cơ bản, ngoài ra còn được tích hợp thêm 2 cổng USB 3.0 giúp cho việc truyền dữ liệu trở nên nhanh chóng.', 2),
(10, 'Laptop Asus VivoBook X507UF i5\r\n\r\n', 14290000, 'https://cdn.tgdd.vn/Products/Images/44/193516/asus-x507uf-i5-8250u-4gb-1tb-2gb-mx130-ej121t-thumb-1-600x600.jpg', 'Laptop Asus X507UF i5 8250U (EJ121T) được thiết kế hiện đại, thanh lịch. Trọng lượng nhẹ phù hợp cho sinh viên - nhân viên văn phòng khi phải mang vác máy tính hằng ngày đến lớp, công ty. Bên cạnh đó máy được trang bị cấu hình khoẻ để chạy tốt ứng dụng đồ hoạ, chơi game nặng ở mức cơ bản.\r\n\r\nThiết kế hiện đại, dễ di chuyển\r\n\r\nLaptop Asus X507UF i5 8250U (EJ121T) được thiết kế hiện đại, tinh tế với chất liệu vỏ nhựa giả kim loại. Các cạnh được bo cong nhẹ với độ dày máy chỉ 21,9 mm, trọng lượng 1,8 kg tiện lợi việc mang vác, di chuyển đến công sở.\r\n\r\nThiết kế trên máy tính xách tay Asus core i5 X507UF 8250U\r\n\r\nMàn hình độ phân giải cao cho chất lượng hiển thị hình ảnh sắc nét\r\n\r\nĐược trang bị màn hình lớn 15.6 inch Full HD (1920 x 1080) kết hợp công nghệ màn hình LED Backlight - AntiGlare cho chất lượng hình ảnh xem phim chân thật, sắc nét.\r\n\r\nMàn hình fullhd trên máy tính xách tay Asus Core i5 X507UF 8250U\r\n\r\nCấu hình chơi game tốt\r\n\r\nLà một chiếc laptop đồ hoạ - kĩ thuật, Asus X507UF i5 8250U (EJ121T) được trang bị cấu hình mạnh trong phân khúc với chip xử lý core i5 thế hệ 8 (8250U), kết hợp cùng 4GB RAM DDR4 và card đồ hoạ rời NVIDIA Geforce MX130 2GB các thao tác kéo thả trong photoshop cho phản hồi nhanh chóng, chơi PUBG chỉnh ở mức medium, game chạy khá tốt không giật lag.\r\n\r\nCấu hình chơi game cơ bản trên máy tính xách tay Asus core i5 X507UF 8250U\r\n\r\nMở khoá vân tay nhanh chóng\r\n\r\nHướng tới sự hiện đại, máy tính xách tay X507UF (EJ121T) được Asus trang bị tính năng mở khoá vân tay, không cần nhập mật khẩu rườm rà, chỉ cần chạm để sử dụng nhanh máy tính, khả năng bảo mật được cải thiện.\r\n\r\nCảm biến vân tay trên máy tính xách tay Asus Core i5 X507UF 8250U\r\n\r\nCổng USB 3.0 truyền dữ liệu nhanh chóng\r\n\r\nBên cạnh các cổng kết nối cơ bản, mẫu laptop Asus core i5 này được trang bị cổng USB 3.0 giúp việc truyền dữ liệu qua USB, ổ cứng rời nhanh chóng với tốc độ truyền lên đến 600MB/s.', 2),
(11, 'Laptop Dell Inspiron 3576 i5 8250U', 15490000, 'https://cdn.tgdd.vn/Products/Images/44/175159/dell-inspiron-3576-i5-8250u-70157552-600x600.jpg', 'Laptop Dell Inspiron 3576 là phiên bản máy tính xách tay với cấu hình được trang bị chip Core i5 Kabylake, cùng RAM 4 GB và card đồ họa rời AMD Radeon 520 được tích hợp đáp ứng tốt nhu cầu về xử lí đồ họa - kĩ thuật.\r\n\r\nThiết kế đơn giản, cứng cáp\r\n\r\nVẫn giữ nét truyền thống trong thiết kế, Dell Inspiron 3576 với chất liệu nhựa cùng trọng lượng 2.3 kg cũng không quá khó khăn trong việc mang máy khi di chuyển.\r\n\r\nThiết kế Dell Inspiron 3576 i5\r\n\r\nCấu hình mạnh mẽ với Core i5 Kabylake\r\n\r\nVới việc được trang bị chip core i5, thế hệ thứ 8 cùng card đồ họa rời AMD Radeon 520 được tích hợp trên máy, cho khả năng xử lý các tác vụ chuyên về đồ họa - kĩ thuật được nhanh chóng, mượt mà. Bên cạnh đó, máy cũng được tích hợp thanh RAM DDR4 hỗ trợ người dùng nâng cấp RAM lên 16 GB, cho hiệu quả công việc được nâng cao hơn, thích hợp với đối tượng như giới văn phòng.\r\n\r\nCấu hình Dell Inspiron 3576 i5\r\n\r\nCùng với 4 GB RAM, ổ cứng HDD 1 TB được trang bị trên Dell Inspiron 3576 cho khả năng lưu trữ dữ liệu tuyệt vời.\r\n\r\nMàn hình to, hình ảnh rõ nét\r\n\r\nLaptop Dell Inspiron 3576 với màn hình Full HD 15.6 inch cùng độ phân giải màn hình Full HD (1920 x 1080), công nghệ màn hình TrueLife LED-Backlit Display cho chất lượng hình ảnh hiển thị sắc nét.\r\n\r\nMàn hình Dell Inspiron 3576 i5\r\n\r\nTouchpad đa chạm thông minh\r\n\r\nTouchpad thông minh, cho người dùng thao tác phóng to, thu nhỏ, kéo thả trực tiếp trên chuột của máy một cách tiện lợi.\r\n\r\nTouchPad Dell Inspiron 3576 i5\r\n\r\nKết nối đáp ứng nhu cầu cần thiết\r\n\r\nMáy được trang bị các cổng kết nối hiện đại như USB 3.0 cho tốc độ sao chép dữ liệu được nhanh chóng hơn. Cổng HDMI hỗ trợ việc trình chiếu hình ảnh, âm thanh từ laptop qua máy chiếu, tivi được tiện lợi hơn. Bên cạnh đó, máy còn được trang bị ổ đĩa DVD thích hợp cho việc học ngoại ngữ hay cài win, kết nối không dây Bluetooth 4.1 cho phép kết nối với các thiết bị như tai nghe, chuột và sử dụng tiện lợi hơn.\r\n', 2),
(12, 'Laptop Acer Aspire E5 476 i3 8130U', 9790000, 'https://cdn.tgdd.vn/Products/Images/44/160296/acer-aspire-e5-476-i3-8130u-nxgwtsv002-ava-600x600.jpg', 'Acer Aspire E5 476 i3 8130U là phiên bản máy tính xách tay với cấu hình cao, sử dụng vi xử lý mạnh mẽ trong phân khúc nhưng vẫn rất tiết kiệm pin do sử dụng kiến trúc chip mới từ Intel. Laptop Acer với mức giá thành hợp lý cùng cấu hình cực kì mạnh mẽ, Aspire E5 476 có thể đáp ứng tốt cho người dùng phổ thông cần một chiếc máy tính văn phòng, giải trí.\r\n\r\nThiết kế\r\n\r\nMáy mang thiết kế đơn giản quen thuộc của đa số các dòng laptop hiện giờ với bộ khung cứng cáp, chắc chắn, ngoại hình gọn gàng. Thân máy được làm thiết kế hoa văn vân nổi tăng thêm phần cao cấp, độc đáo cho vẻ ngoài của máy. Vỏ nhựa giúp máy bền bỉ hơn chịu được va chạm tốt hơn và giảm thiểu trọng lượng nhằm tăng tính di động giúp người dùng dễ dàng mang theo.\r\n\r\nThiế kế đơn giản thanh lịch trên máy tính văn phòng Acer Aspire E5 476 i3 8130U\r\n\r\nCấu hình\r\n\r\nSở hữu một trong những vi xử lý mới nhất từ Intel, cho hiệu năng cao, ổn định và tiết kiệm pin. Chip Core i3 thế hệ mới cho xung nhịp đến 3.4 GHz kết hợp cùng 4 GB DDR4 tốc độ cao cho khả năng chơi tốt một số game nhẹ như game di động, web game, hay những game giải trí nhẹ nhàng.\r\n\r\nVề khả năng xử lý công việc, máy có thể xử lý mượt mà các tác vụ phổ thông như lướt web, xem phim, làm công việc văn phòng một cách dễ dàng, ngoài ra máy có thể làm đồ hoạ nhẹ, phù hợp với người dùng cần một chiếc máy đa năng, mạnh mẽ về cấu hình và gọn nhẹ.\r\n\r\nNhờ có vi xử lý đồ hoạ tích hợp thế hệ mới UHD 620 từ Intel cho khả năng xuất hình ảnh lên đến độ phân giải 4K mạnh mẽ hơn thế hệ cũ.\r\n\r\nCấu hình ổn định trên máy tính văn phòng Acer Aspire E5 476 i3 8130U\r\n\r\nMàn hình\r\n\r\nTrang bị màn hình 14 inch cùng độ phân giải HD, máy có khả năng hiển thị khá tốt các hình ảnh, nội dung. Màu sắc hài hoà đáp ứng tốt các nhu cầu cơ bản về chất lượng hình ảnh trên laptop. Kích thước màn hình ở mức 14 inch cũng giúp máy có kích thước màn hình vừa phải, dễ nhìn, hình ảnh không bị quá nhỏ gây hại mắt khi làm việc trong thời gian dài.\r\n\r\nMàn hình tươi sáng trên máy tính văn phòng Acer Aspire E5 476 i3 8130U\r\n\r\n \r\n\r\nÂm thanh\r\n\r\nNằm ờ phân khúc laptop giá rẻ nhưng máy vẫn được trang bị công nghệ TrueHarmony cho âm thanh sống động, chân thực. Sử dụng loa kép stereo cho âm thanh hai chiều giúp trải nghiệm âm thanh khi chơi game, xem phim hay hơn. Công nghệ TrueHarmony còn giúp tái tạo âm thanh vòm, tăng cường bass mang lại âm thanh mạnh mẽ. Ngoài ra, máy còn tích hợp microphone giúp gọi điện video trên laptop mà không cần tai nghe.\r\n\r\nÂm thanh to, rõ trên máy tính văn phòng Acer Aspire E5 476 i3 8130U\r\n\r\n \r\n\r\nHệ điều hành và các kết nối\r\n\r\nChiếc laptop đến từ Acer sử dụng Windows 10 có bản quyền giúp máy hoạt động ổn định hơn, nhận được các bản cập nhật đều đặn nhanh chóng từ Microsoft giúp sửa lỗi và tăng tính bảo mật cho máy, hạn chế virus xâm nhập. Ngoài ra máy cũng sẽ nhận được các thay đổi về giao diện mới nhất khi sử dụng hệ điều hành có bản quyền. \r\n\r\n \r\n\r\nMáy có 3 cổng USB tiện lợi, 1 cổng HDMI và 1 cổng VGA giúp kết nối dễ dàng để phát hình lên các loại máy chiếu hoặc tivi dễ dàng, 1 cổng LAN giúp kết nối mạng có dây cho đường truyền nhanh và ổn định hơn.', 2),
(13, 'Điện thoại iPhone X 64GB', 21990000, 'https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb-1-400x460.png', 'iPhone X là cụm từ được rất nhiều người mong chờ muốn biết và tìm kiếm trên Google bởi đây là chiếc điện thoại mà Apple kỉ niệm 10 năm iPhone đầu tiên được bán ra.\r\n\r\nThiết kế mang tính đột phá\r\n\r\nNhư các bạn cũng đã biết thì đã 4 năm kể từ chiếc điện thoại iPhone 6 và iPhone 6 Plus thì Apple vẫn chưa có thay đổi nào đáng kể trong thiết kế của mình.\r\n\r\nThiết kế đột phá của điện thoại iPhone X\r\n\r\nNhưng với iPhone X thì đó lại là 1 câu chuyện hoàn toàn khác, máy chuyển qua sử dụng màn hình tỉ lệ 19.5:9 mới mẻ với phần diện tích hiển thị mặt trước cực lớn.\r\n\r\nThiết kế đột phá của điện thoại iPhone X\r\n\r\nMặt lưng kính hỗ trợ sạc nhanh không dây cũng như phần camera kép đặt dọc cũng là những thứ đầu tiên xuất hiện trên 1 chiếc iPhone.\r\n\r\nMàn hình với tai thỏ\r\n\r\nĐiểm khiến iPhone X bị chê nhiều nhất đó chính là phần \"tai thỏ\" phía trên màn hình, Apple đã chấp nhận điều này để đặt cụm camera TrueDepth mới của hãng.\r\n\r\nMàn hình tai thỏ của điện thoại iPhone X\r\n\r\nMàn hình kích thước 5.8 inch độ phân giải 1125 x 2436 pixels đem đến khả năng hiển thị xuất sắc.\r\n\r\nMàn hình tai thỏ của điện thoại iPhone X\r\n\r\niPhone X sử dụng tấm nền OLED (được tinh chỉnh bởi Apple) thay vì LCD như những chiếc iPhone trước đây và điều này đem lại cho máy 1 màu đen thể hiện rất sâu cùng khả năng tái tạo màu sắc không kém phần chính xác.\r\n\r\nFace ID tạo nên đột phá\r\n\r\nTouch ID trên iPhone X đã bị loại bỏ, thay vào đó là bạn sẽ chuyển qua sử dụng Face ID, một phương thức bảo mật sinh trắc học mới của Apple.\r\n\r\nFace ID tạo nên đột phá trên điện thoại iPhone X\r\n\r\nVới sự trợ giúp của cụm camera TrueDept thì iPhone X có khả năng nhận diện khuôn mặt 3D của người dùng từ đó mở khóa chiếc iPhone một cách nhanh chóng.\r\n\r\nFace ID tạo nên đột phá trên điện thoại iPhone X\r\n\r\nTuy sẽ hơi hụt hẫng khi Touch ID đã quá quen thuộc trên những chiếc iPhone như tốc độ cũng như trải nghiệm \"khóa như không khóa\" của Face ID hoàn toàn có thể khiến bạn yên tâm sử dụng.\r\n\r\nĐiện thoại iPhone X tích hợp Face ID\r\n\r\nThao tác vuốt và vuốt\r\n\r\nKhông còn phím Home cứng nên các thao tác trên iPhone X cũng hoàn toàn khác so với những đàn anh đi trước.\r\n\r\nThao tác vuốt và vuốt trên điện thoại iPhone X\r\n\r\nGiờ đây chỉ với thao tác vuốt và vuốt từ cạnh dưới là bạn đã có thể truy cập vào đa nhiệm, trở về màn hình Home một cách nhanh chóng.\r\n\r\nCamera kép cải tiến tích hợp Animoji\r\n\r\niPhone X vẫn sở hữu bộ đôi camera kép có cùng độ phân giải 12 MP nhưng camera tele thứ 2 với khẩu độ được nâng lên mức f/2.4 so với f/2.8 của iPhone 7 Plus.\r\n\r\nĐiện thoại iPhone X tích hợp camera kép\r\n\r\nNgoài ra thì cả 2 camera trên iPhone X đều sở hữu cho mình khả năng chống rung quang học giúp bạn dễ dàng bắt trọn mọi khoảnh khắc trong cuộc sống.\r\n\r\nĐiện thoại iPhone X tích hợp camera kép\r\n\r\nCamera trước độ phân giải 7 MP với khả năng selfie xóa phông đáp ứng tốt mọi nhu cầu tự sướng của giới trẻ hiện nay.\r\n\r\nĐiện thoại iPhone X tích hợp camera kép\r\n\r\nBộ đôi camera trên iPhone X được đánh giá rất cao về chất lượng ảnh chụp và là một trong những chiếc camera phone chụp ảnh đẹp nhất trong năm 2017.\r\n\r\nHiệu năng mạnh mẽ với Apple A11\r\n\r\nHiệu năng của những chiếc iPhone chưa bao giờ là vấn đề và với iPhone X thì mọi thứ vẫn rất ấn tượng.\r\n\r\nCon chip Apple A11 Bionic 6 nhân kết hợp với 3 GB RAM thì iPhone X tự tin là chiếc smartphone mạnh mẽ nhất mà Apple từng sản xuất.\r\n\r\nĐiện thoại iPhone X có hiệu năng mạnh mẽ\r\n\r\nNgoài ra với iPhone X thì Apple cũng nhấn mạnh với trải nghiệm thực tế ảo tăng cường giúp bạn có những phút giây thư giãn thú vị.\r\n\r\nĐiện thoại iPhone X có hiệu năng mạnh mẽ\r\n\r\nViên pin trên iPhone X có dung lượng 2716 mAh (lớn hơn cả trên iPhone 8 Plus) cho bạn sử dụng khá ổn trong khoảng một ngày liên tục.', 1),
(14, 'Laptop Dell Vostro 3578 i5 8250U', 16190000, 'https://cdn.tgdd.vn/Products/Images/44/166856/dell-vostro-3578-p63f002v78b-450-600x600.jpg', 'Dell Vostro 3578 là mẫu máy tính xách tay Dell ra mắt năm 2018 có cấu hình khá tốt. Chiếc laptop còn sử dụng card đồ hoạ rời Radeon phù hợp để làm đồ hoạ hay chơi game đều ổn.\r\n\r\nThiết kế vỏ nhựa chắc chắn\r\n\r\nVẫn giữ lại thiết kế khá quen thuộc của dòng Vostro từ Dell với vỏ nhựa chắc chắn. Thân máy cứng cáp giúp bạn yên tâm sử dụng hơn. Phần vỏ đen giúp thiết kế tổng thể của máy đẹp và mạnh mẽ.\r\n\r\nThiết kế của máy tính xách tay Dell Vostro 3578\r\n\r\nCấu hình tầm trung\r\n\r\nSử dụng vi xử lý Core i5 8250U thế hệ 8 cùng 4 GB RAM dư dùng với người dùng phổ thông. Chiếc laptop đến từ Dell có thể chạy tốt các ứng dụng, phần mềm cho công việc, học tập. Ngoài ra việc bổ sung card đồ hoạ Radeon 520 cũng làm máy chạy tốt hơn các phần mềm yêu cầu đồ hoạ như chỉnh sửa ảnh, video hay chơi game ở mức cấu hình tầm trung.\r\n\r\nMáy tính xách tay Dell Vostro 3578 có cấu hình mạnh mẽ\r\n\r\nMàn hình 15.6 inch Full HD\r\n\r\nMàn hình của máy có kích thước 15.6 inch cùng với độ phân giải Full HD sắc nét, hiển thị màu sắc hài hoà cùng khả năng xem phim giải trí tốt. Ngoài ra, màu sắc hiển thị khá chính xác trên máy cũng giúp bạn tiết kiệm thời gian khi xem hình ảnh trên máy. Phù hợp với công việc cần độ chính xác màu cao.\r\n\r\nMàn hình FullHD của Máy tính xách tay Dell Vostro 3578\r\n\r\nBàn phím tích hợp dãy số\r\n\r\nSử dụng bàn phím có dãy phím số bên cạnh, tiện lợi khi bạn cần gõ số nhanh phù hợp cho công việc phải tính toán nhiều với các con số. Phím bấm có độ nảy tốt và độ bền cao khi sử dụng trong thời gian dài.\r\n\r\nBàn phím fullsize của Máy tính xách tay Dell Vostro 3578\r\n\r\nCổng kết nối tiện ích\r\n\r\nTrang bị đầy đủ các cổng kết nối cần cho người dùng phổ thông như USB, xuất hình qua cổng HDMI và cổng kết nối dây mạng.', 2),
(15, 'Điện thoại iPhone Xs Max 512GB', 39990000, 'https://cdn.tgdd.vn/Products/Images/42/191482/iphone-xs-max-512gb-gold-400x460.png', 'Là chiếc smartphone cao cấp nhất của Apple với mức giá khủng chưa từng có, bộ nhớ trong lên tới 512GB, iPhone XS Max 512GB - sở hữu cái tên khác biệt so với các thế hệ trước, trang bị tới 6.5 inch đầu tiên của hãng cùng các thiết kế cao cấp hiện đại từ chip A12 cho tới camera AI.\r\n\r\nMàn hình OLED chất lượng cao rộng 6.5 inch đầu tiên của Apple\r\n\r\nVới công nghệ Super Retina kết hợp tấm nền OLED trên iPhone XS Max đem lại dải màu sắc cực kì sống động và sắc nét đến từng chi tiết.\r\n\r\nMàn hình điện thoại iPhone Xs Max chính hãng\r\n\r\nBên cạnh đó, Apple còn tích hợp thêm công nghệ HDR10 cùng tần số cảm ứng 120 Hz giúp chất lượng hình ảnh được nâng cao và mượt mà hơn đáng kể.\r\n\r\nMàn hình điện thoại iPhone Xs Max chính hãng\r\n\r\nViệc sở hữu màn hình lớn đem đến cho bạn khá nhiều tiện ích như dễ dàng chỉnh sửa ảnh, xem phim, lướt web nhưng sẽ khó khăn hơn trong việc di chuyển.\r\n\r\nCamera kép tích hợp trí tuệ nhân tạo\r\n\r\nDù không sở hữu thông số camera khủng nhưng iPhone XS Max luôn cho thấy sự đẳng cấp của mình về khả năng nhiếp ảnh với cụm camera kép có cảm biến chính 12 MP và cảm biến phụ tele 12 MP.\r\n\r\nCamera sau điện thoại iPhone Xs Max chính hãng\r\n\r\nMáy được trang bị hệ thống xử lý hình ảnh chất lượng cân bằng sáng, giảm nhiễu, tăng cường độ phơi sáng, màu da sao cho phù hợp và tự nhiên nhất.\r\n\r\nCùng với đó là khả năng điều chỉnh khẩu độ ấn tượng từ f/1.4 đến f/16 ngay trên bức ảnh sau khi chụp ảnh với chế độ chân dung.\r\n\r\nCamera sau điện thoại iPhone Xs Max chính hãng\r\n\r\nChưa dừng lại ở đó, máy còn được tích hợp thêm công nghệ Smart HDR giúp tái tạo hình ảnh và cho ra một bức hình với độ sáng tốt nhất.\r\n\r\nNgoài ra, iPhone XS Max còn được hỗ trợ bởi trí thông minh nhân tạo đem đến khả năng tự động điều chỉnh màu sắc, độ sáng và độ tương phản sao cho phù hợp với từng vật thể khác nhau.\r\n\r\nHiệu năng mạnh mẽ tột đỉnh với chip Apple A12 Bionic\r\n\r\niPhone XS Max được Apple trang bị cho con chip mới toanh hàng đầu của hãng mang tên Apple A12 Bionic.\r\n\r\nChip A12 Bionic được xây dựng trên tiến trình 7nm đầu tiên mà hãng sản xuất với 6 nhân đáp ứng vượt trội trong việc xử lý các tác vụ và khả năng tiết kiệm năng lượng tối ưu.\r\n\r\nHơn nữa, chiếc điện thoại iPhone còn có bộ xử lý đồ họa mạnh mẽ được Apple thiết kế riêng giúp hiệu năng được cải thiện rất lớn về mặt đồ họa của máy.\r\n\r\nTrải nghiệm điện thoại iPhone Xs Max chính hãng\r\n\r\nChưa dừng lại ở đó, máy còn được tích hợp trí thông minh nhân tạo giúp phần cứng tối ưu hiệu suất, nhờ đó mà các thao tác của bạn được xử lý một cách nhanh chóng hơn.\r\n\r\nThiết kế viền thép không gỉ và mặt kính cường lực cao cấp, chắc chắn\r\n\r\n Điện thoại iPhone XS Max sở hữu lối thiết kế vô cùng đẹp mắt với những đường cong mềm mại được thừa hưởng từ chiếc iPhone đời trước đó.\r\n\r\nThiết kế điện thoại iPhone Xs Max chính hãng\r\nTuy nhiên, iPhone XS Max lại có một thân hình to bản ngang bằng với kích thước dòng Plus nhưng chứa đựng một màn hình rộng lớn lên đến 6.5 inch.\r\n\r\nThiết kế điện thoại iPhone Xs Max chính hãng\r\n\r\nNhờ thế mà bạn sẽ có một không gian trải nghiệm vô cùng rộng rãi để thưởng thức những bộ phim chất lượng cao được trở nên trọn vẹn.\r\n\r\nMột số tính năng cao cấp được cập nhật và bổ sung\r\n\r\nFace ID đã được Apple cải tiến về khả năng bảo mật cũng như cho tốc độ mở khóa được nhanh hơn nhờ các thuật toán mới.\r\n\r\nBảo mật trên điện thoại iPhone Xs Max chính hãng\r\n\r\nBên cạnh đó, tính năng Animoji cũng được cập nhật thêm một số biểu tượng mới trông khá ngộ nghĩnh và đáng yêu.\r\n\r\nAnimoji trên điện thoại iPhone Xs Max chính hãng\r\n\r\nVới hệ thống camera TrueDepth nay bạn có thể tự tạo cho bản thân những bức ảnh ấn tượng với công nghệ thực tế ảo tăng cường AR.\r\n\r\nNgoài ra, hệ thống âm thanh 2 chiều trên siêu phẩm mới được Apple tinh chỉnh lại cho dải âm rộng, âm thanh sống động hơn hay khả năng kháng nước và bụi cũng được nâng cấp lên thành IP 68 đảm bảo an toàn hơn cho máy.', 1),
(16, 'Laptop Asus X507UA i3 7020U', 10390000, 'https://cdn.tgdd.vn/Products/Images/44/195010/laptop-asus-x507ua-i3-7020u-4gb-1tb-win10-ej727t-600x600.jpg', 'Tiếp tục hướng tới khách hàng là sinh viên, nhân viên văn phòng Asus vừa tung ra một sản phẩm mới với tên gọi Asus X507UA (EJ727T). Với cấu hình chạy tốt các ứng dụng văn phòng, mở khoá vân tay hiện đại, và một thiết kế gọn nhẹ phù hợp cho việc di chuyển hằng ngày đến lớp, công ty.\r\n\r\n\r\n\r\n \r\n\r\nThiết kế thuận tiện di chuyển hằng ngày\r\n\r\nĐược hoàn thiện chất liệu vỏ nhựa, các cạnh được bo cong nhẹ tạo sự chắc chắn. Trọng lượng máy chỉ 1.68 kg giúp việc mang vác máy tính hằng ngày không còn khó khăn.\r\n\r\nThiết kế đơn giản trên máy tính văn phòng Asus X507UA i3 7020U\r\n\r\n Mở khoá vân tay không cần nhập mật khẩu\r\n\r\nĐược thừa hưởng từ các đàn anh đi trước trong gia đình laptop Asus - Asus X507UA (EJ727T) được trang bị mở khoá vân tay hiện đại và nhanh chóng, không cần phải nhập mật khẩu rườm rà, chỉ cần chạm nhẹ để mở khoá màn hình.\r\n\r\nBảo mật vân tay trên máy tính văn phòng Asus X507UA i3 7020U\r\n\r\nMáy tính văn phòng với cấu hình ổn\r\n\r\nSự kết hợp từ chíp xử lý core i3 thế hệ 7 cùng 4GB RAM, giúp máy chạy mượt mà các ứng dụng văn phòng như word, excel, powerpoint. Bên cạnh khả năng cho phản hồi các thao tác kéo thả tốt trong photoshop, ai,...\r\n\r\nCấu hình ổn định trên máy tính văn phòng Asus X507UA i3 7020U\r\nMàn hình to, rõ xem phim chất lượng cao\r\n\r\nMàn hình 15.6 inch độ phân giải FullHD (1920 x 1080), kết hợp màn hình chống chói Led Backlit cho chất lượng ảnh tươi sáng và rõ nét ngay trong điều kiện nhiều ánh sáng.\r\n\r\nMàn hình sắc nét trên máy tính văn phòng Asus X507UA i3 7020UÂm thanh lớn, sống động nghe nhạc chất lượng cao\r\nCông nghệ Realtek HD Audio trên Asus X507UA (EJ727T) cho chất lượng âm stereo to và rõ, âm bass cũng dày hơn giúp bạn nghe những bài nhạc lossless với chất âm tốt.\r\n\r\nÂm thanh chất lượng cao trên máy tính văn phòng Asus X507UA i3 7020U\r\n\r\nUSB 3.0 truyền dữ liệu nhanh chóng\r\n\r\nBên cạnh các cổng kết nối cơ bản, Asus X507UA (EJ727T) trang bị cổng USB 3.0 giúp bạn truyền dữ liệu nhanh chóng với tốc độ tối đa mà cổng này hỗ trợ lên đến 600MB/s.', 2),
(17, 'Điện thoại Samsung Galaxy S10+ (512GB)', 25990000, 'https://cdn.tgdd.vn/Products/Images/42/198986/samsung-galaxy-s10-plus-512gb-ceramic-black-400x460.png', 'Samsung Galaxy S10+ (512GB) - phiên bản kỷ niệm 10 năm chiếc Galaxy S đầu tiên ra mắt, là một chiếc smartphone hội tủ đủ các yếu tố mà bạn cần ở một chiếc máy cao cấp trong năm 2019.\r\n\r\nKhác biệt tới từ màn hình Infinity-O\r\n\r\nSamsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.\r\n\r\nCamera được nâng lên tầm cao mới\r\n\r\nNhững chiếc Galaxy S tới từ Samsung luôn được người dùng đánh giá cao về camera và với Samsung Galaxy S10+ (512GB) cũng không phải là một ngoại lệ.\r\n\r\nGiao diện camera điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMáy sở hữu 3 camera với các thông số lần lượt là: ống kính chính góc rộng (77 độ) 12 MP (khẩu độ f/1.5), ống kính phụ tele 12 MP (khẩu độ f/2.4) và ống kính phụ góc siêu rộng (123 độ, f/2.2) 16 MP.\r\n\r\nẢnh chụp từ camera của điện thoại Samsung Galaxy S10+ (512GB) chính hãng\r\n\r\nTrang công nghệ DxOMark - trang chuyên đánh giá về camera cũng đã đưa ra nhận xét về Galaxy S10+ là một trong những chiếc máy có camera tốt nhất trên thị trường nhờ khả năng chụp siêu rộng cũng như hình ảnh sắc nét, màu sắc rực rỡ.\r\n\r\nCamera trước selfie của điện thoại Samsung Galaxy S10+ (512GB) chính hãng\r\n\r\nCamera trước của máy cũng là cụm camera kép với chiếc ống kính chính 10 MP và ống kính phụ 8 MP hỗ trợ chụp ảnh chân dung và quay phim với độ phân giải 4K.\r\n\r\nSở hữu con chip mạnh mẽ nhất năm 2019\r\n\r\nCon chip Exynos 9820 kết hợp với 8 GB RAM đủ sức cho bạn có thể sử dụng tất cả game và ứng dụng nặng nhất hiện nay một cách mượt mà, bất kể là Liên Quân Mobile, Free Fire hay PUBG.\r\n\r\nAndroid trên điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nBên cạnh đó thì với 512 GB bộ nhớ trong thì bạn sẽ có một không gian \"cực kỳ thoải mái\" để tải ứng dụng hay lưu trữ dữ liệu cá nhân.\r\n\r\nChơi game trên điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nSamsung Galaxy S10+ cũng được tối ưu về giao diện OneUI mới hứa hẹn sẽ giúp máy có được khả năng hoạt động lâu dài hơn các phiên bản tiền nhiệm trước đây.\r\n\r\nNhiều tính năng cao cấp khác\r\n\r\nTrên Samsung Galaxy S10+ còn có một tính năng mới được rất nhiều người yêu thích đó chính là khả năng sạc ngược không dây cho smartphone khác (PowerShare).\r\n\r\nTính năng PowerShare trên Galaxy S10+\r\n\r\nĐiều này có thể giúp bạn biến chiếc smartphone của mình thành một cục sạc không dây di động trong những trường hợp khẩn cấp.\r\n\r\n\r\nXem thêm: Tính năng PowerShare trên Galaxy S10 là gì? Làm sao để sử dụng nó?\r\n\r\nĐánh giá điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nNgoài ra tiêu chuẩn kháng nước và bụi bẩn IP68 cao cấp nhất hiện nay vẫn xuất hiện trên máy đảm bảo bạn có thể sử dụng dưới các điều kiện khắc nghiệt mà máy không gặp vấn đề gì.\r\n\r\nVân tay trên điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nVân tay siêu âm hiện đại và tiên tiến cũng là 1 tính năng hấp dẫn trên S10+ giúp mở khoá máy nhanh chóng và đẳng cấp.', 1),
(18, 'Laptop Lenovo Ideapad 130 14IKB i3 7020U', 8790000, 'https://cdn.tgdd.vn/Products/Images/44/200507/lenovo-ideapad-130-14ikb-i3-7020u-4gb-1tb-81h6001-1-600x600.jpg', 'Lenovo Ideapad 130 (81H60016VN) là mẫu máy tính xách tay có cấu hình ổn trong tầm giá, phục vụ tốt nhu cầu làm việc văn phòng và học tập với các tác vụ đơn giản như báo cáo, thuyết trình, word, excel... Máy có trọng lượng nhẹ và thiết kế chắc chắn, phù hợp với người cần di chuyển nhiều. \r\n\r\n \r\n\r\n\r\n\r\n\r\nThiết kế đơn giản, gọn gàng\r\n\r\nLaptop Lenovo Ideapad 130 được làm từ chất liệu nhựa màu đen vân nhám. Khối lượng nhẹ 1.6 Kg dễ dàng cho vào balo mang vác khắp nơi. Cạnh bên của laptop có trang bị khe đọc thẻ nhớ SD tiện lợi để kết nối thẻ nhớ máy ảnh, quay phim.\r\n\r\nThiết kế đơn giản, cứng cáp trên máy tính xách tay Lenovo Ideapad 130 14IKB i3 7020U/4GB/1TB (81H60016VN)\r\n\r\nMàn hình 14 inch, mở rộng đến 180 độ\r\n\r\nMàn hình HD 14 inch của Ideapad 130 (81H60016VN) hiển thị ổn. Bản lề có thể mở rộng đến 180 độ, thoải mái sử dụng ở nhiều tư thế ngồi.\r\n\r\nMàn hình máy tính xách tay Lenovo Ideapad 130 14IKB i3 7020U/4GB/1TB (81H60016VN)\r\n\r\nCấu hình vừa đủ học tập, văn phòng.\r\n\r\nLaptop Lenovo Ideapad 130 được trang bị CPU Intel Core i3 7020U, RAM 4 GB, có thể nâng cấp lên 8GB. Cấu hình này giúp máy chạy mượt các tác vụ Word, Excel, Chrome, Youtube, chỉnh sửa cơ bản bằng Photoshop.\r\n\r\nmáy tính xách tay Lenovo Ideapad 130 14IKB i3 7020U/4GB/1TB (81H60016VN) có cấu hình văn phòng, học sinh, sinh viên\r\n\r\nBàn phím và TouchPad\r\n\r\nIdeapad 130 có TouchPad nhạy, hỗ trợ sử dụng nhiều ngón tay để cuộn trang, thu phóng ảnh. Bàn phím có khoảng cách phím hợp lý, độ nảy cao cho cảm giác gõ thoải mái, độ chính xác cao.\r\n\r\nBàn phím máy tính xách tay Lenovo Ideapad 130 14IKB i3 7020U/4GB/1TB (81H60016VN)\r\n\r\nCông nghệ âm thanh vòm\r\n\r\nBên cạnh hệ thống loa kép, bên trong Laptop Lenovo Ideapad 130 trang bị công nghệ âm thanh Dolby Home Theater, cho chất âm phát ra được chuẩn xác và chân thực hơn.\r\n\r\nCông nghệ âm thanh trên máy tính xách tay Lenovo Ideapad 130 14IKB i3 7020U/4GB/1TB (81H60016VN)\r\n\r\nCông kết nối đầy đủ\r\n\r\nLenovo Ideapad 130 81H60016VN trang bị các cổng kết nối thông dụng như khe thẻ nhớ máy ảnh, cổng mạng LAN, cổng HDMI dùng cho trình chiếu. Máy cũng sở hữu 2 cổng USB 3.0 cho tốc độ truyền tải dữ liệu nhanh chóng.', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quantrivien`
--
ALTER TABLE `quantrivien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quantrivien`
--
ALTER TABLE `quantrivien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
