-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for vision_database
CREATE DATABASE IF NOT EXISTS `vision_database` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `vision_database`;

-- Dumping structure for table vision_database.aspirante
CREATE TABLE IF NOT EXISTS `aspirante` (
  `tipo_doc` varchar(50) NOT NULL,
  `num_doc` varchar(50) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `edad` int(11) NOT NULL DEFAULT '0',
  `direccion` varchar(200) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tipo_doc`,`num_doc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vision_database.aspirante: ~1 rows (approximately)
/*!40000 ALTER TABLE `aspirante` DISABLE KEYS */;
INSERT INTO `aspirante` (`tipo_doc`, `num_doc`, `nombre`, `edad`, `direccion`) VALUES
	('CC', '1023956895', 'Camilo Andres Buitrago', 21, 'Tv 14 # 40 31 s');
/*!40000 ALTER TABLE `aspirante` ENABLE KEYS */;

-- Dumping structure for table vision_database.cargos
CREATE TABLE IF NOT EXISTS `cargos` (
  `id_cargo` int(11) NOT NULL,
  `nombre_cargo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vision_database.cargos: ~2 rows (approximately)
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` (`id_cargo`, `nombre_cargo`) VALUES
	(1, 'Atención al cliente'),
	(2, 'Asesor comercial');
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;

-- Dumping structure for table vision_database.cargo_aspirante
CREATE TABLE IF NOT EXISTS `cargo_aspirante` (
  `tipo_doc` varchar(50) DEFAULT NULL,
  `num_doc` varchar(50) DEFAULT NULL,
  `cargo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vision_database.cargo_aspirante: ~1 rows (approximately)
/*!40000 ALTER TABLE `cargo_aspirante` DISABLE KEYS */;
INSERT INTO `cargo_aspirante` (`tipo_doc`, `num_doc`, `cargo`) VALUES
	('CC', '1023956895', 'Asesor comercial');
/*!40000 ALTER TABLE `cargo_aspirante` ENABLE KEYS */;

-- Dumping structure for table vision_database.resultados_vision
CREATE TABLE IF NOT EXISTS `resultados_vision` (
  `tipo_doc` varchar(50) NOT NULL,
  `num_doc` varchar(50) NOT NULL,
  `ira` varchar(200) DEFAULT NULL,
  `alegria` varchar(200) DEFAULT NULL,
  `sorpresa` varchar(200) DEFAULT NULL,
  `dolor` varchar(200) DEFAULT NULL,
  `confidence` varchar(200) DEFAULT NULL,
  `landmarking` varchar(200) DEFAULT NULL,
  `objetos` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tipo_doc`,`num_doc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vision_database.resultados_vision: ~1 rows (approximately)
/*!40000 ALTER TABLE `resultados_vision` DISABLE KEYS */;
INSERT INTO `resultados_vision` (`tipo_doc`, `num_doc`, `ira`, `alegria`, `sorpresa`, `dolor`, `confidence`, `landmarking`, `objetos`) VALUES
	('CC', '1023956895', 'NO MUY PROBABLE', 'MUY PROBABLE', 'NO MUY PROBABLE', 'NO MUY PROBABLE', '0.9381407499313354', '0.5165491700172424', 'Glasses,Man');
/*!40000 ALTER TABLE `resultados_vision` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
