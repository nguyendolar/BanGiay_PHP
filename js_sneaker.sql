-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 03, 2022 lúc 12:21 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `js_sneaker`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhsp`
--

CREATE TABLE `anhsp` (
  `MaAnh` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBL` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `NoiDung` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL,
  `Size` int(11) NOT NULL,
  `MaMau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `MaSP` int(11) NOT NULL,
  `MaSize` int(11) NOT NULL,
  `MaMau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`MaSP`, `MaSize`, `MaMau`, `SoLuong`) VALUES
(4, 36, 'none', 60),
(4, 37, 'none', 100),
(4, 38, 'none', 100),
(4, 39, 'none', 100),
(4, 40, 'none', 100),
(4, 41, 'none', 100),
(4, 42, 'none', 100),
(4, 43, 'none', 100),
(5, 39, 'Xanh', 75),
(5, 40, 'Xanh', 100),
(5, 41, 'Xanh', 100),
(5, 42, 'Xanh', 100),
(6, 38, 'Đen ', 40),
(6, 39, 'Đen ', 40),
(6, 40, 'Đen ', 40),
(6, 41, 'Đen ', 40),
(6, 42, 'Đen ', 40),
(7, 39, 'Đen - Trắng', 18),
(7, 39, 'Trắng', 50),
(7, 40, 'Đen - Trắng', 13),
(7, 40, 'Trắng', 50),
(7, 41, 'Đen - Trắng', 20),
(7, 41, 'Trắng', 50),
(9, 38, 'Đen - Trắng', 38),
(9, 39, 'Đen - Trắng', 40),
(9, 40, 'Đen - Trắng', 40),
(9, 41, 'Đen - Trắng', 40),
(9, 42, 'Đen - Trắng', 40),
(10, 39, 'Trắng', 87),
(10, 40, 'Trắng', 100),
(10, 41, 'Trắng', 100),
(10, 42, 'Trắng', 100),
(11, 39, 'none', 95),
(11, 40, 'none', 95),
(11, 41, 'none', 95),
(11, 42, 'none', 100),
(12, 39, 'Vàng', 100),
(12, 40, 'Vàng', 99),
(12, 41, 'Vàng', 100),
(53, 42, 'none', 494),
(54, 36, 'Đen ', 500),
(54, 37, 'Đen ', 500),
(54, 38, 'Đen ', 500),
(54, 39, 'Đen ', 500),
(54, 40, 'Đen ', 500),
(54, 41, 'Đen ', 500),
(54, 42, 'Đen ', 500),
(54, 43, 'Đen ', 500),
(55, 39, 'Đen ', 194),
(55, 40, 'Đen ', 200),
(55, 41, 'Đen ', 200),
(56, 38, 'Đen - Trắng', 100),
(56, 39, 'Đen - Trắng', 99),
(56, 40, 'Đen - Trắng', 100),
(56, 41, 'Đen - Trắng', 100),
(68, 39, 'Đen ', 499),
(68, 39, 'Đen - Trắng', 29),
(68, 40, 'Đen ', 500),
(68, 40, 'Đen - Trắng', 30),
(68, 41, 'Đen ', 500),
(68, 41, 'Đen - Trắng', 30),
(69, 39, 'none', 100),
(69, 40, 'none', 100),
(69, 41, 'none', 100),
(70, 39, 'Đen - Trắng', 100),
(70, 39, 'Trắng', 98),
(70, 40, 'Đen - Trắng', 100),
(70, 40, 'Trắng', 100),
(70, 41, 'Đen - Trắng', 100),
(70, 41, 'Trắng', 100),
(71, 40, 'Đen ', 100),
(71, 41, 'Đen ', 95),
(71, 42, 'Đen ', 100),
(72, 39, 'Đen - Trắng', 100),
(72, 39, 'Trắng', 200),
(72, 40, 'Đen - Trắng', 99),
(72, 40, 'Trắng', 200),
(72, 41, 'Đen - Trắng', 100),
(72, 41, 'Trắng', 200),
(73, 36, 'Đen ', 100),
(73, 37, 'Đen ', 100),
(73, 38, 'Đen ', 100),
(73, 39, 'Đen ', 100),
(73, 40, 'Đen ', 100),
(73, 41, 'Đen ', 100),
(73, 42, 'Đen ', 100),
(73, 43, 'Đen ', 100),
(74, 38, 'Đen - Trắng', 100),
(74, 39, 'Đen - Trắng', 100),
(74, 40, 'Đen - Trắng', 100),
(74, 41, 'Đen - Trắng', 100),
(75, 38, 'Đen ', 95),
(75, 38, 'Đen - Trắng', 40),
(75, 38, 'Trắng', 50),
(75, 39, 'Đen ', 100),
(75, 39, 'Đen - Trắng', 40),
(75, 39, 'Trắng', 50),
(75, 40, 'Đen ', 100),
(75, 40, 'Đen - Trắng', 40),
(75, 40, 'Trắng', 50),
(75, 41, 'Đen ', 100),
(75, 41, 'Đen - Trắng', 40),
(75, 41, 'Trắng', 50),
(75, 42, 'Đen ', 100),
(75, 42, 'Đen - Trắng', 40),
(75, 42, 'Trắng', 50),
(76, 38, 'Đen ', 95),
(76, 38, 'Trắng', 40),
(76, 39, 'Đen ', 99),
(76, 39, 'Trắng', 40),
(76, 40, 'Đen ', 100),
(76, 40, 'Trắng', 40),
(76, 41, 'Đen ', 100),
(76, 41, 'Trắng', 40),
(76, 42, 'Đen ', 100),
(76, 42, 'Trắng', 40),
(77, 39, 'Đen - Trắng', 500),
(77, 40, 'Đen - Trắng', 500),
(77, 41, 'Đen - Trắng', 500);

--
-- Bẫy `chitietsanpham`
--
DELIMITER $$
CREATE TRIGGER `tongsl` AFTER UPDATE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_del` AFTER DELETE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = OLD.MaSP) WHERE MaSP = OLD.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_insert` AFTER INSERT ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Sản Phẩm Nổi Bật'),
(2, 'Sản Phẩm Mới'),
(3, 'Sản Phẩm bán chạy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaNV` int(11) DEFAULT NULL,
  `NgayDat` datetime DEFAULT current_timestamp(),
  `NgayGiao` datetime DEFAULT NULL,
  `TinhTrang` varchar(20) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `MaNVGH` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `TenKH` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDT` bigint(12) NOT NULL,
  `DiaChi` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MoTa` varchar(11) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `KM_PT` int(5) DEFAULT NULL,
  `TienKM` decimal(10,0) DEFAULT NULL,
  `NgayBD` date DEFAULT NULL,
  `NgayKT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau`
--

CREATE TABLE `mau` (
  `MaMau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `mau`
--

INSERT INTO `mau` (`MaMau`) VALUES
('Đen '),
('Đen - Trắng'),
('Đỏ'),
('Hồng'),
('none'),
('Trắng'),
('Vàng'),
('Xanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoinhan`
--

CREATE TABLE `nguoinhan` (
  `MaHD` int(11) NOT NULL,
  `TenNN` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DiaChiNN` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDTNN` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacc`
--

CREATE TABLE `nhacc` (
  `MaNCC` int(11) NOT NULL,
  `TenNCC` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacc`
--

INSERT INTO `nhacc` (`MaNCC`, `TenNCC`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Converse'),
(4, 'Balenciaga'),
(6, 'Vans'),
(7, 'Gucci');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int(11) NOT NULL,
  `TenNV` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDT` int(12) NOT NULL,
  `DiaChi` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Quyen` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `Email`, `SDT`, `DiaChi`, `MatKhau`, `Quyen`) VALUES
(3, 'Admin', 'admin.jssneaker@gmail.com', 905027527, 'Số 451 Hoàng Diệu - Thành phố Đà Nẵng', 'admin', 1),
(6, 'Nhân viên', 'nhanvien@gmail.com', 39212456, 'Đà Nẵng', '123456789', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPN` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `NgayNhap` datetime NOT NULL DEFAULT current_timestamp(),
  `Note` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Size` int(11) NOT NULL,
  `Mau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPX` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `Mau` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Size` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `Note` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NgayXuat` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `id` int(11) NOT NULL,
  `Ten` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MoTa` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`id`, `Ten`, `MoTa`) VALUES
(1, 'Manager', 'chủ cửa hàng'),
(2, 'Project Manager', 'quản trị viên'),
(3, 'Quản lý Kho', ''),
(4, 'Nhân viên Bán Hàng', ''),
(5, 'Nhân viên giao hàng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaDM` int(11) DEFAULT NULL,
  `MaNCC` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT 0,
  `MoTa` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `MaAnh` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `AnhNen` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaDM`, `MaNCC`, `SoLuong`, `MoTa`, `DonGia`, `MaAnh`, `AnhNen`) VALUES
(4, 'Nike Free Metcon 2 UT', 3, 1, 760, 'Nike Free Metcon 2 UT mang đến một lớp hỗ trợ khác cho một loạt các bài tập huấn luyện. Dây đai bền giúp giữ bàn chân của bạn, trong khi bọt linh hoạt giúp bạn di chuyển tự nhiên từ trọng lượng đến máy khoan nhanh nhẹn.', '3829000', NULL, 'NikeFreeMetcon2UT.png'),
(5, 'Zoom Freak 1', 3, 1, 375, 'Nhận được sự kỳ dị của bạn trong chiếc giày đặc trưng đầu tay của Giannis Antetokounmpo, lần đầu tiên Nike mang lại cảm giác bóng rổ quốc tế. Zoom Freak 1 có bộ đệm siêu nhạy, khóa trước và lực kéo đa hướng cần thiết để bổ sung cho trò chơi thể thao kỳ dị của anh ta.', '3519000', NULL, 'ZoomFreak1.png'),
(6, 'Nike Air VaporMax Flyknit 3', 3, 1, 200, 'Nổi bật và bồng bềnh trong Nike Air VaporMax Flyknit 3. Các tính năng phía trên chảy 2 dòng của cấu trúc Flyknit thoáng khí, có thể kéo dài cho phong cách độc đáo, sẵn sàng trên đường phố. Công nghệ VaporMax Air mang tính cách mạng giúp duy trì mùa xuân trong bước chân của bạn với đệm từ gót chân đến gót chân.', '3500000', NULL, 'NikeAirVaporMaxFlyknit3.png'),
(7, 'Nike Drop-Type Premium', 1, 1, 201, 'Nike Drop-Type Premium được lấy cảm hứng từ những đôi giày tennis cổ điển trong gia đình NikeCourt. Một phần của gia đình N354 gật đầu với dặm bay nhanh nhất của Steve Prefontaine, nó cung cấp các dòng thiết kế riêng biệt mượn từ All Court 2.', '2499000', '', 'NikeDropTypePremium.png'),
(9, 'Nike Zoom Rival Fly', 1, 1, 198, 'Lấy cảm hứng từ các vận động viên tiếp sức Ekiden của Nhật Bản, Nike Zoom Rival Fly mang dáng vẻ tương lai với bộ phận Zoom Air ở bàn chân trước mang đến cho bạn lực đẩy nhạy. Rãnh uốn cong bên dưới tối ưu hóa ngón chân cái và đệm bọt mềm mại sải chân của bạn. Lưới và tổng hợp trên pha trộn sức mạnh và hơi thở.', '2649000', NULL, 'NikeZoomRivalFly.png'),
(10, 'Nike Air Max 720 Waves', 1, 1, 387, 'Mang lại một quan điểm mới cho văn hóa ngoài tòa án trong Nike Air Max 720 Waves của bạn. Lập trường cấu hình thấp của nó cho thấy đơn vị Air cao nhất của Nike cho đến nay trong khi thiết kế D / MS / X của nó pha trộn văn hóa với thể thao, cho phép bạn bước vào một chiều hướng mới của phong cách hoops với sự thoải mái vô song.', '5589000', NULL, 'NikeAirMax720Waves.PNG'),
(11, 'Nike Zoom Fly Flyknit ', 1, 1, 385, 'Giày chạy bộ Nike Zoom Fly Flyknit được sản xuất với tốc độ kỷ lục. Flyknit trên cung cấp hỗ trợ siêu nhẹ phù hợp như một chiếc găng tay.', '4699000', NULL, 'NikeZoomFlyFlyknit.png'),
(12, 'Nike SB Solarsoft Portmore II', 1, 1, 299, 'Được thiết kế cho đế giày đặc biệt, Giày trượt ván nam Nike SB Solarsoft Portmore II kết hợp đệm mềm với đế ngoài bền, chắc chắn để bạn có thể tập trung vào buổi tập của mình.', '2069000', NULL, 'NikeSBSolarsoftPortmoreII.PNG'),
(53, 'BALENCIAGA TRIPLE S 2019', 1, 4, 494, 'ok', '1700000', NULL, 'BALENCIAGA TRIPLE S.PNG'),
(54, 'BALENCIAGA SPEED TRAINER ĐEN', 3, 4, 4000, 'Một sản phẩm tuyệt vời được nhiều bạn trẻ lựa chọn.', '730000', NULL, 'BALENCIAGA SPEED TRAINER ĐEN.PNG'),
(55, 'BALENCIAGA BALEN DAD', 1, 4, 594, 'Đây là mẫu giày cũng được nhiều người nghệ sĩ thế giới lựa chọn. Tại Việt Nam, giày Triple S được rất nhiều nghệ sĩ nổi tiếng yêu thích.\r\n\r\nThiết kế đột phá.\r\nMột đôi giày ra đời đã phá vỡ những tiêu chuẩn về thời trang hiện nay.\r\nPhần đế cao, uốn lượn hơn hẳn để bạn ăn gian thêm vài centimet\r\nPha trộn những gam màu vintage và nhiều chất liệu vải khác nhau.\r\nTrên thân, gót hay đế giày cũng đều được thêu và khắc tên thương hiệu, tạo sự đẳng cấp.', '1330000', NULL, 'BALEN DAD.PNG'),
(56, 'Balenciaga Track', 3, 4, 399, '', '1700000', NULL, 'Balenciaga Track.PNG'),
(68, 'Off-White & Orange Track', 1, 6, 1588, 'ok', '1230000', NULL, 'Black OG Old Skool LX.PNG'),
(69, 'BALENCIAGA TRIPLE S 2018', 1, 4, 300, 'sản phẩm hot 2017', '1700000', NULL, 'Off-White & Orange Track.PNG'),
(70, ' ADVANTAGE', 1, 2, 598, 'GIÀY TENNIS ĐƯỢC SÁNG TẠO LẠI ĐỂ MANG PHONG CÁCH ĐƯỜNG PHỐ.\r\nPhong cách thể thao thiết yếu. Với kiểu dáng đơn giản, mẫu giày lấy cảm hứng từ quần vợt này có phần thân giày bằng da mịn. 3 Sọc đục lỗ tạo điểm nhấn bên hông giày. Lót giày có đệm mang đến sự êm ái trong mỗi bước đi.', '1700000', NULL, 'GIÀY ADVANTAGE.PNG'),
(71, 'ULTRABOOST 20', 1, 2, 295, 'KIỂM SOÁT LỰC KHI CHẠM ĐẤT, THOẢI MÁI TRONG TỪNG BƯỚC CHẠY.\r\nMỗi ngày mới. Mỗi buổi chạy mới. Hãy tận dụng tối đa. Đôi giày hiệu năng cao này có thân giày bằng vải dệt kim ôm chân. Các đường may trong trợ lực được bố trí chuẩn xác để tạo độ nâng đỡ ở đúng những vị trí cần thiết. Gót giày làm từ chất liệu elastane mềm mại cho độ ôm thoải mái hơn. Lớp đệm đàn hồi hoàn trả năng lượng cho từng sải bước tạo cảm giác như có thể chạy mãi mãi.', '1200000', NULL, 'ULTRABOOST 20.PNG'),
(72, 'GRAND COURT', 1, 2, 899, '', '1800000', NULL, 'GRAND COURT.PNG'),
(73, 'CONTINENTAL 80', 2, 2, 800, 'PHONG CÁCH QUẦN VỢT TỪ NHỮNG NĂM 1980 TRỞ LẠI VỚI KIỂU DÁNG TƯƠI MỚI.\r\nMang dáng vẻ hoài cổ, Continental 80 giữ trọn kiểu dáng xưa cũ của những đôi giày thể thao trong nhà từ đầu những năm 1980. Mẫu giày da nổi bật với sọc kẻ hai màu hướng xuống dưới và đế cupsole khác biệt bằng cao su phân tách cho cảm giác thoải mái và linh hoạt.', '2500000', NULL, 'CONTINENTAL 80.PNG'),
(74, 'Chuck 70 Specialty Suede Utility', 1, 3, 400, 'Chất liệu: Suede', '2200000', NULL, 'Chuck 70 Specialty Suede Utility.PNG'),
(75, 'Chuck Taylor All Star Utility', 2, 3, 945, 'Chất liệu: Suede', '1400000', NULL, 'Chuck Taylor All Star Utility.PNG'),
(76, 'Chuck Taylor All Star Space Utility', 1, 3, 694, '', '1500000', NULL, 'Chuck Taylor All Star Space Utility.PNG'),
(77, 'Chuck Taylor Classic', 2, 3, 1500, '', '1400000', NULL, 'Chuck Taylor Classic.PNG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamkhuyenmai`
--

CREATE TABLE `sanphamkhuyenmai` (
  `MaSP` int(11) NOT NULL,
  `MaKM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `MaSize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`MaSize`) VALUES
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `image`) VALUES
(1, 'b1.jpg'),
(2, 'b2.jpg'),
(5, 'unnamed.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  ADD PRIMARY KEY (`MaAnh`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBL`,`MaSP`,`MaKH`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaHD`,`MaSP`,`Size`,`MaMau`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `Size` (`Size`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`MaSP`,`MaSize`,`MaMau`),
  ADD KEY `MaSize` (`MaSize`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaKH` (`MaKH`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`MaMau`);

--
-- Chỉ mục cho bảng `nguoinhan`
--
ALTER TABLE `nguoinhan`
  ADD PRIMARY KEY (`MaHD`);

--
-- Chỉ mục cho bảng `nhacc`
--
ALTER TABLE `nhacc`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaNV` (`MaNV`),
  ADD KEY `Quyen` (`Quyen`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`MaPX`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MauSP` (`MaSP`),
  ADD KEY `Mau` (`Mau`),
  ADD KEY `Size` (`Size`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaNCC` (`MaNCC`),
  ADD KEY `MaDM` (`MaDM`);

--
-- Chỉ mục cho bảng `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD PRIMARY KEY (`MaSP`,`MaKM`),
  ADD KEY `MaKH` (`MaKM`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`MaSize`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  MODIFY `MaAnh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `MaDM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nhacc`
--
ALTER TABLE `nhacc`
  MODIFY `MaNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MaPN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `MaPX` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  ADD CONSTRAINT `anhsp_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `chitiethoadon_ibfk_3` FOREIGN KEY (`Size`) REFERENCES `size` (`MaSize`),
  ADD CONSTRAINT `chitiethoadon_ibfk_4` FOREIGN KEY (`MaMau`) REFERENCES `mau` (`MaMau`);

--
-- Các ràng buộc cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `chitietsanpham_ibfk_1` FOREIGN KEY (`MaSize`) REFERENCES `size` (`MaSize`),
  ADD CONSTRAINT `chitietsanpham_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `chitietsanpham_ibfk_3` FOREIGN KEY (`MaMau`) REFERENCES `mau` (`MaMau`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `nguoinhan`
--
ALTER TABLE `nguoinhan`
  ADD CONSTRAINT `nguoinhan_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`Quyen`) REFERENCES `quyen` (`id`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `phieuxuat_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `phieuxuat_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `phieuxuat_ibfk_3` FOREIGN KEY (`Mau`) REFERENCES `mau` (`MaMau`),
  ADD CONSTRAINT `phieuxuat_ibfk_4` FOREIGN KEY (`Size`) REFERENCES `size` (`MaSize`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacc` (`MaNCC`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`);

--
-- Các ràng buộc cho bảng `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD CONSTRAINT `sanphamkhuyenmai_ibfk_1` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`),
  ADD CONSTRAINT `sanphamkhuyenmai_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
