-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.6.4-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- 테이블 kakaoweb.user_mst 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_mst` (
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_phone` varchar(50) NOT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  PRIMARY KEY (`user_email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 kakaoweb.user_mst:~1 rows (대략적) 내보내기
DELETE FROM `user_mst`;
/*!40000 ALTER TABLE `user_mst` DISABLE KEYS */;
INSERT INTO `user_mst` (`user_email`, `user_password`, `user_name`, `user_phone`, `create_date`, `update_date`) VALUES
	('junil@kakao.com', '1234', '김준일', '01099881916', '2021-10-05', '2021-10-05');
/*!40000 ALTER TABLE `user_mst` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
