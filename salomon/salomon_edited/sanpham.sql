-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table salomon.sanpham
CREATE TABLE IF NOT EXISTS `sanpham` (
  `sp_ma` int(11) NOT NULL AUTO_INCREMENT,
  `sp_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sp_gia` decimal(12,2) DEFAULT NULL,
  `sp_giacu` decimal(12,2) DEFAULT NULL,
  `sp_mota_ngan` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `sp_mota_chitiet` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sp_ngaycapnhat` datetime NOT NULL,
  `sp_soluong` int(11) DEFAULT NULL,
  `lsp_ma` int(11) NOT NULL,
  `nsx_ma` int(11) NOT NULL,
  `km_ma` int(11) DEFAULT NULL,
  PRIMARY KEY (`sp_ma`),
  KEY `sanpham_loaisanpham_idx` (`lsp_ma`),
  KEY `sanpham_nhasanxuat_idx` (`nsx_ma`),
  KEY `sanpham_khuyenmai_idx` (`km_ma`),
  CONSTRAINT `sanpham_khuyenmai` FOREIGN KEY (`km_ma`) REFERENCES `khuyenmai` (`km_ma`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `sanpham_loaisanpham` FOREIGN KEY (`lsp_ma`) REFERENCES `loaisanpham` (`lsp_ma`),
  CONSTRAINT `sanpham_nhasanxuat` FOREIGN KEY (`nsx_ma`) REFERENCES `nhasanxuat` (`nsx_ma`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table salomon.sanpham: ~9 rows (approximately)
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` (`sp_ma`, `sp_ten`, `sp_gia`, `sp_giacu`, `sp_mota_ngan`, `sp_mota_chitiet`, `sp_ngaycapnhat`, `sp_soluong`, `lsp_ma`, `nsx_ma`, `km_ma`) VALUES
	(1, 'Samsung Galaxy S3', 12000000.00, 12600000.00, 'Sản phẩm của Samsung năm 2013', 'Cấu hình: CPU Dual Core – Ram 1 GB', '2012-12-22 11:20:30', 17, 3, 2, 1),
	(2, 'Apple Ipad 4 Wifi 16GB', 11800000.00, 12000000.00, 'CPU  Dual-core Cortex-A9 tốc độ 1GHz', 'Màn hình 9.7 inch, cảm ứng điện dung đa điểm', '2013-01-12 10:04:45', 100, 1, 1, NULL),
	(3, 'Apple iPhone 5 16GB', 14890000.00, NULL, 'CPU: Dual-core 1 GHz', 'Chi tiết iPhone 5', '2013-01-16 17:13:45', 0, 3, 1, NULL),
	(4, 'Apple iPhone 5 16GB White', 14990000.00, NULL, 'CPU: Dual-core 1 GHz - Màu trắng', 'Chi tiết iPhone 5', '2013-01-16 17:14:55', 10, 3, 1, 1),
	(5, 'Samsung Galaxy Tab 10.1 3G 16G', 10990000.00, 12000000.00, 'Màn hình 10.1 inch cảm ứng đa điểm', 'Vi xử lý Dual-core 1 Cortex-A9 tốc độ 1GHz', '2013-01-17 14:18:03', 6, 1, 2, NULL),
	(6, 'Nokia Asha 311', 2699000.00, 3000000.00, 'Điện thoại di động Nokia Asha 311', 'Màn hình QVGA, 3.0 inches', '2013-01-17 14:19:10', 25, 3, 3, NULL),
	(7, 'Samsung Galaxy Tab 2 7.0', 7500000.00, 7950000.00, 'MÃ¡y tÃ­nh báº£ng Samsung Galaxy Tab 2 7.0 ', 'Mï¿½n hï¿½nh 7 inch C?m ?ng ?i?n dung,?a ?i?m', '2013-01-28 10:42:08', 13, 1, 2, NULL),
	(8, 'adasd', 2321321.00, NULL, 'Ã¡dsad', 'sadassad', '2013-01-28 10:37:52', 12, 1, 1, 1),
	(9, 'Asus ROG', 30000000.00, 31000000.00, 'Mô tả ngắn laptop Asus ROG', 'Mô tả chi tiết laptop Asus ROG', '2021-01-11 20:10:29', 10, 2, 5, 1);
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
