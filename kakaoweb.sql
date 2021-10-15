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


-- kakaoweb 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `kakaoweb`;
CREATE DATABASE IF NOT EXISTS `kakaoweb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `kakaoweb`;

-- 테이블 kakaoweb.notice_dtl 구조 내보내기
DROP TABLE IF EXISTS `notice_dtl`;
CREATE TABLE IF NOT EXISTS `notice_dtl` (
  `notice_code` int(11) NOT NULL,
  `notice_content` text NOT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  PRIMARY KEY (`notice_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 kakaoweb.notice_dtl:~1 rows (대략적) 내보내기
DELETE FROM `notice_dtl`;
/*!40000 ALTER TABLE `notice_dtl` DISABLE KEYS */;
INSERT INTO `notice_dtl` (`notice_code`, `notice_content`, `create_date`, `update_date`) VALUES
	(200, '공지사항입니다.', '2021-10-14', '2021-10-14');
/*!40000 ALTER TABLE `notice_dtl` ENABLE KEYS */;

-- 테이블 kakaoweb.notice_mst 구조 내보내기
DROP TABLE IF EXISTS `notice_mst`;
CREATE TABLE IF NOT EXISTS `notice_mst` (
  `notice_code` int(11) NOT NULL,
  `notice_title` varchar(50) NOT NULL,
  `notice_writer` varchar(50) NOT NULL,
  `notice_date` date NOT NULL,
  `notice_count` int(11) NOT NULL DEFAULT 0,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  PRIMARY KEY (`notice_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 kakaoweb.notice_mst:~158 rows (대략적) 내보내기
DELETE FROM `notice_mst`;
/*!40000 ALTER TABLE `notice_mst` DISABLE KEYS */;
INSERT INTO `notice_mst` (`notice_code`, `notice_title`, `notice_writer`, `notice_date`, `notice_count`, `create_date`, `update_date`) VALUES
	(1, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(2, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(3, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(4, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(5, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(6, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(7, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(8, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(9, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(10, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(11, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(12, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(13, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(14, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(15, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(16, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(17, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(18, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(19, 'test', '관리자', '2021-10-13', 100, '2021-10-13', '2021-10-13'),
	(20, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(21, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(22, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(23, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(24, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(25, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(26, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(27, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(28, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(29, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(30, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(31, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(32, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(33, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(34, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(35, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(36, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(37, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(38, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(39, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(40, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(41, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(42, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(43, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(44, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(45, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(46, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(47, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(48, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(49, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(50, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(51, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(52, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(53, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(54, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(55, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(56, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(57, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(58, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(59, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(60, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(61, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(62, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(63, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(64, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(65, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(66, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(67, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(68, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(69, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(70, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(71, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(72, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(73, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(74, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(75, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(76, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(77, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(78, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(79, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(80, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(81, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(82, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(83, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(84, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(85, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(86, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(87, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(88, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(89, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(90, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(91, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(92, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(93, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(94, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(95, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(96, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(97, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(98, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(99, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(100, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(101, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(102, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(103, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(104, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(105, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(106, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(107, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(108, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(109, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(110, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(111, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(112, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(113, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(114, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(115, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(116, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(117, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(118, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(119, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(120, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(121, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(122, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(123, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(124, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(125, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(126, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(127, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(128, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(129, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(130, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(131, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(132, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(133, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(134, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(135, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(136, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(137, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(138, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(139, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(140, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(141, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(142, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(143, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(144, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(145, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(146, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(147, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(148, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(149, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(150, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(151, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(152, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(153, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(154, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(155, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(156, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(157, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(158, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(159, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(160, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(161, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(162, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(163, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14'),
	(200, 'test', '관리자', '2021-10-14', 100, '2021-10-14', '2021-10-14');
/*!40000 ALTER TABLE `notice_mst` ENABLE KEYS */;

-- 테이블 kakaoweb.phonenumber_list_mst 구조 내보내기
DROP TABLE IF EXISTS `phonenumber_list_mst`;
CREATE TABLE IF NOT EXISTS `phonenumber_list_mst` (
  `phone_number` varchar(50) NOT NULL,
  `phone_user_name` varchar(50) NOT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  PRIMARY KEY (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 kakaoweb.phonenumber_list_mst:~0 rows (대략적) 내보내기
DELETE FROM `phonenumber_list_mst`;
/*!40000 ALTER TABLE `phonenumber_list_mst` DISABLE KEYS */;
INSERT INTO `phonenumber_list_mst` (`phone_number`, `phone_user_name`, `create_date`, `update_date`) VALUES
	('01011112222', '김준삼', '2021-10-11', '2021-10-11'),
	('01011223344', '김준사', '2021-10-13', '2021-10-13'),
	('01012345678', '김준이', '2021-10-07', '2021-10-07'),
	('01099881916', '김준일', '2021-10-06', '2021-10-06');
/*!40000 ALTER TABLE `phonenumber_list_mst` ENABLE KEYS */;

-- 테이블 kakaoweb.user_mst 구조 내보내기
DROP TABLE IF EXISTS `user_mst`;
CREATE TABLE IF NOT EXISTS `user_mst` (
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_phone` varchar(50) NOT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  PRIMARY KEY (`user_email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 kakaoweb.user_mst:~5 rows (대략적) 내보내기
DELETE FROM `user_mst`;
/*!40000 ALTER TABLE `user_mst` DISABLE KEYS */;
INSERT INTO `user_mst` (`user_email`, `user_password`, `user_name`, `user_phone`, `create_date`, `update_date`) VALUES
	('junil', '1234', '김준일', '01099881916', '2021-10-05', '2021-10-05'),
	('junil1234', '1q2w3e4r5t', '김준삼', '01011112222', '2021-10-11', '2021-10-11'),
	('junil2', '1234', '김준일', '01099881916', '2021-10-05', '2021-10-05'),
	('junil3', '1234', '김준일', '01099881916', '2021-10-05', '2021-10-05'),
	('junil4', '1234', '김준일', '01099881916', '2021-10-05', '2021-10-05');
/*!40000 ALTER TABLE `user_mst` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;