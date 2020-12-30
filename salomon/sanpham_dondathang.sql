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

-- Dumping structure for table salomon.sanpham_dondathang
CREATE TABLE IF NOT EXISTS `sanpham_dondathang` (
  `sp_ma` int(11) NOT NULL,
  `dh_ma` int(11) NOT NULL,
  `sp_dh_soluong` int(11) NOT NULL,
  `sp_dh_dongia` decimal(12,2) NOT NULL,
  PRIMARY KEY (`sp_ma`,`dh_ma`),
  KEY `sanpham_donhang_sanpham_idx` (`sp_ma`),
  KEY `sanpham_donhang_dondathang_idx` (`dh_ma`),
  CONSTRAINT `sanpham_donhang_dondathang` FOREIGN KEY (`dh_ma`) REFERENCES `dondathang` (`dh_ma`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sanpham_donhang_sanpham` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`) ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table salomon.sanpham_dondathang: ~0 rows (approximately)
/*!40000 ALTER TABLE `sanpham_dondathang` DISABLE KEYS */;
REPLACE INTO `sanpham_dondathang` (`sp_ma`, `dh_ma`, `sp_dh_soluong`, `sp_dh_dongia`) VALUES
	(1, 5, 3, 12000000.00),
	(5, 5, 2, 10990000.00),
	(7, 4, 1, 7500000.00);
/*!40000 ALTER TABLE `sanpham_dondathang` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
