-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.29-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table salomon.khachhang
CREATE TABLE IF NOT EXISTS `khachhang` (
  `kh_tendangnhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `kh_matkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kh_ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `kh_gioitinh` int(11) NOT NULL,
  `kh_diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kh_dienthoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `kh_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `kh_ngaysinh` int(11) DEFAULT NULL,
  `kh_thangsinh` int(11) DEFAULT NULL,
  `kh_namsinh` int(11) NOT NULL,
  `kh_cmnd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kh_makichhoat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kh_trangthai` int(11) NOT NULL,
  `kh_quantri` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kh_tendangnhap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table salomon.khachhang: ~6 rows (approximately)
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
REPLACE INTO `khachhang` (`kh_tendangnhap`, `kh_matkhau`, `kh_ten`, `kh_gioitinh`, `kh_diachi`, `kh_dienthoai`, `kh_email`, `kh_ngaysinh`, `kh_thangsinh`, `kh_namsinh`, `kh_cmnd`, `kh_makichhoat`, `kh_trangthai`, `kh_quantri`) VALUES
	('admin', '123', 'Quản trị', 1, 'Số 01 - Lý Tự Trọng - Cần Thơ', '0912.123.567', 'admin@salomon.vn', 2, 2, 1985, NULL, NULL, 1, 1),
	('dinhduyvo', 'fcea920f7412b5da7be0cf42b8c93759', 'Vo Dinh Duy', 0, 'Can Tho', '07103.273.34433', 'vdduy@ctu.edu.vn', 2, 2, 1985, '', '', 1, 0),
	('nhdung', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyá»…n HÃ¹ng DÅ©ng', 0, 'Cáº§n ThÆ¡', '0903100550', 'hungdung@ctu.edu.vn', 18, 11, 1986, '', 'dfdae6bda1be436b13e8bc4240879355', 0, 1),
	('nta', '|J	Ê7b¯aå• ”=Âd”ø”', 'Nguyen Thi A', 1, 'Cáº§n ThÆ¡', '0903100550', 'nta@gmail.com', 17, 5, 1987, '', '', 0, 0),
	('usermoi', 'fcea920f7412b5da7be0cf42b8c93759', 'Nguoi dung moi', 0, 'Can Tho', '07103-273.344', 'vdduy@ctu.edu.vn', 2, 2, 1985, '', '44766fb4dd4e4977e75a9321cbc6413e', 0, 0),
	('vdduy', 'fcea920f7412b5da7be0cf42b8c93759', 'Vo Dinh Duy', 0, 'Can Tho', '0975107705', 'vdduy@ctu.edu.vn', 2, 2, 1985, '', 'â€zcnl82qbuj', 1, 0);
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
