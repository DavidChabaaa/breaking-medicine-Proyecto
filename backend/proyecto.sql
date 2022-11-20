-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 20-11-2022 a las 22:39:35
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

DROP TABLE IF EXISTS `administrador`;
CREATE TABLE IF NOT EXISTS `administrador` (
  `Id_user` int NOT NULL,
  `nivel` int NOT NULL,
  `apellido` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CI` int NOT NULL,
  PRIMARY KEY (`Id_user`,`CI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`Id_user`, `nivel`, `apellido`, `CI`) VALUES
(1, 1, 'Chabat Lopez', 12312354),
(2, 2, 'Areosa Fagundez', 54354312),
(3, 3, 'Galeano Gerez', 98798712),
(4, 3, 'Torres Fernandez', 76576512);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artcat`
--

DROP TABLE IF EXISTS `artcat`;
CREATE TABLE IF NOT EXISTS `artcat` (
  `Id_SubCat` int NOT NULL,
  `Id_MiniCat` int DEFAULT NULL,
  `Cod_Art` int NOT NULL,
  PRIMARY KEY (`Cod_Art`) USING BTREE,
  KEY `Cod_Art` (`Cod_Art`),
  KEY `Id_MiniCat` (`Id_MiniCat`) USING BTREE,
  KEY `artcat_ibfk_1` (`Id_SubCat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artcat`
--

INSERT INTO `artcat` (`Id_SubCat`, `Id_MiniCat`, `Cod_Art`) VALUES
(36, NULL, 1),
(62, NULL, 2),
(30, NULL, 3),
(25, NULL, 4),
(36, NULL, 5),
(14, NULL, 7),
(36, NULL, 9),
(36, NULL, 10),
(36, NULL, 11),
(36, NULL, 12),
(36, NULL, 13),
(36, NULL, 14),
(36, NULL, 15),
(36, NULL, 16),
(36, NULL, 17),
(36, NULL, 18),
(36, NULL, 19),
(36, NULL, 20),
(36, NULL, 21),
(36, NULL, 22),
(36, NULL, 23),
(36, NULL, 24),
(36, NULL, 25),
(36, NULL, 26),
(36, NULL, 27),
(36, NULL, 28),
(36, NULL, 29),
(36, NULL, 30),
(36, NULL, 31),
(36, NULL, 32),
(36, NULL, 33),
(36, NULL, 34),
(36, NULL, 35),
(36, NULL, 36),
(36, NULL, 37),
(36, NULL, 38),
(36, NULL, 39),
(36, NULL, 40),
(36, NULL, 41),
(36, NULL, 42),
(36, NULL, 43),
(36, NULL, 44),
(37, NULL, 45),
(37, NULL, 46),
(37, NULL, 47),
(37, NULL, 48),
(37, NULL, 49),
(37, NULL, 50),
(37, NULL, 51),
(37, NULL, 52),
(37, NULL, 53),
(37, NULL, 54),
(37, NULL, 55),
(37, NULL, 56),
(37, NULL, 57),
(37, NULL, 58),
(37, NULL, 59),
(37, NULL, 60),
(37, NULL, 61),
(37, NULL, 62),
(37, NULL, 63),
(37, NULL, 64),
(37, NULL, 65),
(37, NULL, 66),
(37, NULL, 67),
(37, NULL, 68),
(37, NULL, 69),
(37, NULL, 70),
(37, NULL, 71),
(37, NULL, 72),
(37, NULL, 73),
(37, NULL, 74),
(37, NULL, 75),
(37, NULL, 76),
(37, NULL, 77),
(37, NULL, 78),
(37, NULL, 79),
(37, NULL, 80),
(38, NULL, 81),
(38, NULL, 82),
(38, NULL, 83),
(38, NULL, 84),
(38, NULL, 85),
(38, NULL, 86),
(38, NULL, 87),
(38, NULL, 88),
(38, NULL, 89),
(38, NULL, 90),
(38, NULL, 91),
(38, NULL, 92),
(38, NULL, 93),
(38, NULL, 94),
(38, NULL, 95),
(38, NULL, 96),
(38, NULL, 97),
(38, NULL, 98),
(38, NULL, 99),
(38, NULL, 100),
(38, NULL, 101),
(38, NULL, 102),
(38, NULL, 103),
(38, NULL, 104),
(38, NULL, 105),
(38, NULL, 106),
(38, NULL, 107),
(38, NULL, 108),
(38, NULL, 109),
(38, NULL, 110),
(38, NULL, 111),
(38, NULL, 112),
(38, NULL, 113),
(38, NULL, 114),
(38, NULL, 115),
(38, NULL, 116),
(39, NULL, 117),
(39, NULL, 118),
(39, NULL, 119),
(39, NULL, 120),
(39, NULL, 121),
(39, NULL, 122),
(39, NULL, 123),
(39, NULL, 124),
(39, NULL, 125),
(39, NULL, 126),
(39, NULL, 127),
(39, NULL, 128),
(39, NULL, 129),
(39, NULL, 130),
(39, NULL, 131),
(39, NULL, 132),
(39, NULL, 133),
(39, NULL, 134),
(39, NULL, 135),
(39, NULL, 136),
(39, NULL, 137),
(39, NULL, 138),
(39, NULL, 139),
(39, NULL, 140),
(39, NULL, 141),
(39, NULL, 142),
(39, NULL, 143),
(39, NULL, 144),
(39, NULL, 145),
(39, NULL, 146),
(39, NULL, 147),
(39, NULL, 148),
(39, NULL, 149),
(39, NULL, 150),
(39, NULL, 151),
(39, NULL, 152),
(40, NULL, 153),
(40, NULL, 154),
(40, NULL, 155),
(40, NULL, 156),
(40, NULL, 157),
(40, NULL, 158),
(40, NULL, 159),
(40, NULL, 160),
(40, NULL, 161),
(40, NULL, 162),
(40, NULL, 163),
(40, NULL, 164),
(40, NULL, 165),
(40, NULL, 166),
(40, NULL, 167),
(40, NULL, 168),
(40, NULL, 169),
(41, NULL, 170),
(41, NULL, 171),
(41, NULL, 172),
(41, NULL, 173),
(41, NULL, 174),
(41, NULL, 175),
(41, NULL, 176),
(41, NULL, 177),
(41, NULL, 178),
(41, NULL, 179),
(41, NULL, 180),
(41, NULL, 181),
(30, NULL, 182),
(30, NULL, 183),
(30, NULL, 184),
(30, NULL, 185),
(30, NULL, 186),
(30, NULL, 187),
(30, NULL, 188),
(30, NULL, 189),
(30, NULL, 190),
(30, NULL, 191),
(30, NULL, 192),
(30, NULL, 193),
(30, NULL, 194),
(30, NULL, 195),
(30, NULL, 196),
(30, NULL, 197),
(30, NULL, 198),
(30, NULL, 199),
(30, NULL, 200),
(30, NULL, 201),
(30, NULL, 202),
(30, NULL, 203),
(30, NULL, 204),
(30, NULL, 205);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

DROP TABLE IF EXISTS `articulos`;
CREATE TABLE IF NOT EXISTS `articulos` (
  `Cod_Art` int NOT NULL AUTO_INCREMENT,
  `Id_p` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `imagen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `precio` int NOT NULL,
  `stock` int NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `descuento` tinyint NOT NULL,
  PRIMARY KEY (`Cod_Art`,`Id_p`),
  KEY `Id_p` (`Id_p`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`Cod_Art`, `Id_p`, `nombre`, `descripcion`, `imagen`, `precio`, `stock`, `estado`, `descuento`) VALUES
(1, 1, 'Novemina Fuerte', 'Analgésico', 'Novemina.jpg', 88, 110, 1, 0),
(2, 1, 'Linus', 'Tto. de síntomas moderados-graves de hiperplasia benigna de próstata', 'Linus.png', 1807, 100, 1, 20),
(3, 1, 'Vitace A', 'Suplemento o complemento multivitamínico diario que fortalece el sistema inmune ayudando a prevenir gripes, resfríos e infecciones.', 'Vitace A.jpg', 926, 200, 1, 0),
(4, 2, 'Axe Epic Fresh', 'El antitranspirante en aerosol AXE Epic Fresh tiene una fórmula potenciada que te mantiene seco y libre de transpiración por 72 horas. Y no es sólo eso. Este antitranspirante contiene una fragancia in', 'Axe Epic Fresh.jpg', 174, 60, 1, 0),
(5, 1, 'Perifar', 'Baja la fiebre', 'Perifargrip.png', 300, 12, 1, 0),
(7, 1, 'Championes', 'azules', 'Protector solar.jpg', 500, 1, 0, 0),
(9, 1, 'Aspirina 10 Comp.', '-', '9.jpg', 70, 99, 1, 0),
(10, 1, 'Novemina Fuerte 10 Comp.', '-', '10.jpg', 83, 99, 1, 0),
(11, 1, 'Novemina Max 6 Comp.', '-', '11.jpg', 92, 99, 1, 0),
(12, 1, 'Dolex 500 Mg. 8 Comp.', '-', '12.jpg', 88, 99, 1, 0),
(13, 1, 'Apitox Parches D4 3 Uds.', '-', '13.jpg', 808, 99, 1, 0),
(14, 1, 'Perifar 600 10 Caps. Blandas.', '-', '14.jpg', 189, 99, 1, 0),
(15, 1, 'Perifar 400 10 Caps. Blandas.', '-', '15.jpg', 126, 99, 1, 0),
(16, 1, 'Efaflex Inyectable 2 Ml. 2 Ampollas', '-', '16.jpg', 251, 99, 1, 0),
(17, 1, 'Efagesic 20 Comp.', '-', '17.jpg', 266, 99, 1, 0),
(18, 1, 'Efagesic 10 Comp.', '-', '18.jpg', 158, 99, 1, 0),
(19, 1, 'Nopain 15 Mg. 30 Comp.', '-', '19.jpg', 328, 99, 1, 0),
(20, 1, 'Dipar 10 Comp.', '-', '20.jpg', 128, 99, 1, 0),
(21, 1, 'Actron 400 Mg. 10 Caps. Blandas.', '-', '21.jpg', 138, 99, 1, 0),
(22, 1, 'Actron 2% Pediátrico Suspensión 100 Ml.', '-', '22.jpg', 275, 99, 1, 0),
(23, 1, 'Actron 200 Mg. 10 Caps. Blandas.', '-', '23.jpg', 119, 99, 1, 0),
(24, 1, 'Actron 600 Mg. 10 Caps. Blandas.', '-', '24.jpg', 208, 99, 1, 0),
(25, 1, 'Actron Pediátrico 4% 100 Ml.', '-', '25.jpg', 399, 99, 1, 0),
(26, 1, 'Xedenol 50 20 Comp.', '-', '26.jpg', 629, 99, 1, 0),
(27, 1, 'Xedenol Lp 20 Comp.', '-', '27.jpg', 909, 99, 1, 0),
(28, 1, 'Xedenol Gesic 10 Comp.', '-', '28.jpg', 215, 99, 1, 0),
(29, 1, 'Xedenol Gesic 20 Comp.', '-', '29.jpg', 334, 99, 1, 0),
(30, 1, 'Xedenol Gel 50 Grs.', '-', '30.jpg', 516, 99, 1, 0),
(31, 1, 'Celicox-2 200 Mg. 30 Caps.', '-', '31.jpg', 759, 99, 1, 0),
(32, 1, 'Arcoxia 90 Mg. 14 Comp.', '-', '32.jpg', 1173, 99, 1, 0),
(33, 1, 'Arcoxia 60 Mg. 28 Comp.', '-', '33.jpg', 2239, 99, 1, 0),
(34, 1, 'Arcoxia 120 Mg. 7 Comp.', '-', '34.jpg', 1120, 99, 1, 0),
(35, 1, 'Kefentech 7 Parches', '-', '35.jpg', 496, 99, 1, 0),
(36, 1, 'Dispercort 6 Mg. 10 Tabletas', '-', '36.jpg', 541, 99, 1, 0),
(37, 1, 'Dispercort 30 Mg. 10 Tabletas', '-', '37.jpg', 1881, 99, 1, 0),
(38, 1, 'Naramig 2.5 Mg. 2 Comp.', '-', '38.jpg', 1576, 99, 1, 0),
(39, 1, 'Artrilona 20 Comp.', '-', '39.jpg', 676, 99, 1, 0),
(40, 1, 'Artrilona S 20 Comp.', '-', '40.jpg', 466, 99, 1, 0),
(41, 1, 'Gel Rati Salil 30 Grs.', '-', '41.jpg', 440, 99, 1, 0),
(42, 1, 'Dioxaflex 10 Comp.', '-', '42.jpg', 345, 99, 1, 0),
(43, 1, 'Dioxaflex B12 10 Comp.', '-', '43.jpg', 395, 99, 1, 0),
(44, 1, 'Dioxaflex Plus 10 Comp.', '-', '44.jpg', 192, 99, 1, 0),
(45, 1, 'Loratadina Ion 10 Mg. 30 Comp.', '-', '45.jpg', 396, 99, 1, 0),
(46, 1, 'Prednisone 5 Mg. 20 Comp.', '-', '46.jpg', 175, 99, 1, 0),
(47, 1, 'Prednisone 50 Mg. 10 Comp.', '-', '47.jpg', 437, 99, 1, 0),
(48, 1, 'Prednisone 20 Mg. 20 Comp.', '-', '48.jpg', 315, 99, 1, 0),
(49, 1, 'Alergidina Nf 15 Cc.', '-', '49.jpg', 378, 99, 1, 0),
(50, 1, 'Coripen 20 Mg. 20 Comp.', '-', '50.jpg', 856, 99, 1, 0),
(51, 1, 'Corodex 1 Mg. 30 Comp.', '-', '51.jpg', 417, 99, 1, 0),
(52, 1, 'Corodex Inyectable 5 Ampollas', '-', '52.jpg', 766, 99, 1, 0),
(53, 1, 'Ventirene Solución 100 Ml.', '-', '53.jpg', 708, 99, 1, 0),
(54, 1, 'Hisradin 10 Mg. 10 Comp.', '-', '54.jpg', 247, 99, 1, 0),
(55, 1, 'Hisradin Jarabe 40 Ml.', '-', '55.jpg', 291, 99, 1, 0),
(56, 1, 'Hexaler 120 Nf 30 Comp.', '-', '56.jpg', 540, 99, 1, 0),
(57, 1, 'Fantil 3 Solución 50 Ml.', '-', '57.jpg', 558, 99, 1, 0),
(58, 1, 'Hexaler 180 Nf 30 Comp.', '-', '58.jpg', 805, 99, 1, 0),
(59, 1, 'Hisradin Fuerte 20 Comp.', '-', '59.jpg', 486, 99, 1, 0),
(60, 1, 'Enastin 20 Mg. 10 Comp.', '-', '60.jpg', 461, 99, 1, 0),
(61, 1, 'Zyrtec 30 Comp.', '-', '61.jpg', 2435, 99, 1, 0),
(62, 1, 'Desloratadina Teva 5 Mg. 30 Comp.', '-', '62.jpg', 345, 99, 1, 0),
(63, 1, 'Loratadina 10 Mg. 30 Comp.', '-', '63.jpg', 242, 99, 1, 0),
(64, 1, 'Histacetin 10 Comp.', '-', '64.jpg', 555, 99, 1, 0),
(65, 1, 'Kalitron Simple 4 Mg. 20 Grageas', '-', '65.jpg', 489, 99, 1, 0),
(66, 1, 'Kalitron Fuerte 20 Grageas', '-', '66.jpg', 446, 99, 1, 0),
(67, 1, 'Kalitron Jarabe 60 Ml.', '-', '67.jpg', 377, 99, 1, 0),
(68, 1, 'Kalitron Pomada 10 Grs.', '-', '68.jpg', 337, 99, 1, 0),
(69, 1, 'Kalitron 8 Mg. 20 Comp.', '-', '69.jpg', 457, 99, 1, 0),
(70, 1, 'Kalitron Jarabe 120 Ml.', '-', '70.jpg', 519, 99, 1, 0),
(71, 1, 'Kalitron Fuerte 10 Comp.', '-', '71.jpg', 297, 99, 1, 0),
(72, 1, 'Kalitron Simple 4 Mg. 10 Comp.', '-', '72.jpg', 265, 99, 1, 0),
(73, 1, 'Desloratadina Icu 5 Mg. 30 Comp.', '-', '73.jpg', 494, 99, 1, 0),
(74, 1, 'Hidrocortisona Inyectable 100 Mg.', '-', '74.jpg', 646, 99, 1, 0),
(75, 1, 'Alerfedine 120 Mg. 10 Comp.', '-', '75.jpg', 329, 99, 1, 0),
(76, 1, 'Alerfedine 120 Mg. 30 Comp.', '-', '76.jpg', 712, 99, 1, 0),
(77, 1, 'Alerfedine 180 Mg. 10 Comp.', '-', '77.jpg', 504, 99, 1, 0),
(78, 1, 'Alerfedine Suspensión 150 Ml.', '-', '78.jpg', 608, 99, 1, 0),
(79, 1, 'Levocet 30 Comp.', '-', '79.jpg', 802, 99, 1, 0),
(80, 1, 'Allegra 120 Mg. 10 Comp.', '-', '80.jpg', 458, 99, 1, 0),
(81, 1, 'Ciprofloxacina Lazar 500 16 Comp.', '-', '81.jpg', 809, 99, 1, 0),
(82, 1, 'Cinefar 20 Comp.', '-', '82.jpg', 363, 99, 1, 0),
(83, 1, 'Avelox 5 Comp.', '-', '83.jpg', 1416, 99, 1, 0),
(84, 1, 'Doxiciclina 100 Mg. 16 Comp.', '-', '84.jpg', 1498, 99, 1, 0),
(85, 1, 'Valifaxin 500 Mg. 7 Comp.', '-', '85.jpg', 1097, 99, 1, 0),
(86, 1, 'Cisterak 500 Mg. 10 Comp.', '-', '86.jpg', 529, 99, 1, 0),
(87, 1, 'Cisterak ótico 5 Ml.', '-', '87.jpg', 470, 99, 1, 0),
(88, 1, 'Cifloxim 400 Mg. 5 Comp.', '-', '88.jpg', 1598, 99, 1, 0),
(89, 1, 'Rifaxol 200 Mg. 20 Comp.', '-', '89.jpg', 689, 99, 1, 0),
(90, 1, 'Astro 500 Mg. 3 Comp.', '-', '90.jpg', 291, 99, 1, 0),
(91, 1, 'Zinnat 250 Mg. 10 Comp.', '-', '91.jpg', 2137, 99, 1, 0),
(92, 1, 'Zinnat 500 Mg. 10 Comp.', '-', '92.jpg', 4019, 99, 1, 0),
(93, 1, 'Zinnat Suspensión 125 Grs. 50 Ml.', '-', '93.jpg', 1694, 99, 1, 0),
(94, 1, 'Imigran 100 Mg. 2 Tabletas', '-', '94.jpg', 4790, 99, 1, 0),
(95, 1, 'Augmentin Bid 1grs. 14 Comp.', '-', '95.jpg', 1544, 99, 1, 0),
(96, 1, 'Bacticel Susp 60 Ml.', '-', '96.jpg', 591, 99, 1, 0),
(97, 1, 'Tiaxal Crema 15 Grs.', '-', '97.jpg', 626, 99, 1, 0),
(98, 1, 'Tiaxal Ung 15 Grs.', '-', '98.jpg', 611, 99, 1, 0),
(99, 1, 'Ceftriaxona Inyectable Intra Venoso 1 Gr.', '-', '99.jpg', 646, 99, 1, 0),
(100, 1, 'Claritro Ion 250 Mg. 50 Ml.', '-', '100.jpg', 867, 99, 1, 0),
(101, 1, 'Cipro Ion 500 Mg. 10 Comp.', '-', '101.jpg', 397, 99, 1, 0),
(102, 1, 'Pebenzatil 2.400.000 1 Ampolla 5 Ml.', '-', '102.jpg', 730, 99, 1, 0),
(103, 1, 'Cefalexina Ion 250 Mg. Suspención 60 Ml.', '-', '103.jpg', 559, 99, 1, 0),
(104, 1, 'Sulbampicin A+s 1 Ampolla 1.5 Grs.', '-', '104.jpg', 899, 99, 1, 0),
(105, 1, 'Azitromicina Ion 500 Mg. 3 Comp.', '-', '105.jpg', 373, 99, 1, 0),
(106, 1, 'Clindamicina Ion Iny 600 Mg. 1 Ampolla', '-', '106.jpg', 897, 99, 1, 0),
(107, 1, 'Ceftriaxona Inyectables 2 Grs.', '-', '107.jpg', 1012, 99, 1, 0),
(108, 1, 'Azitromicina Ion Susp 200 Mg. 15 Ml.', '-', '108.jpg', 409, 99, 1, 0),
(109, 1, 'Cefalexina Ion 500 16 Comp.', '-', '109.jpg', 913, 99, 1, 0),
(110, 1, 'Cefradina 500 Mg. 16 Comp.', '-', '110.jpg', 519, 99, 1, 0),
(111, 1, 'Sulbampicin 375 A+s 16 Comp.', '-', '111.jpg', 727, 99, 1, 0),
(112, 1, 'Cefuroxime Ion 500 Mg. 16 Comp.', '-', '112.jpg', 1292, 99, 1, 0),
(113, 1, 'Truxa 500 Mg. 7 Comp.', '-', '113.jpg', 1173, 99, 1, 0),
(114, 1, 'Amoxidal Suspensión 250 Mg. 60 Ml.', '-', '114.jpg', 417, 99, 1, 0),
(115, 1, 'Amoxidal Suspensión 500 Mg. 70 Ml.', '-', '115.jpg', 611, 99, 1, 0),
(116, 1, 'Amoxidal Plus Duo Suspensión 70 Ml.', '-', '116.jpg', 1092, 99, 1, 0),
(117, 1, 'Diane 35 21 Grageas', '-', '117.jpg', 682, 99, 1, 0),
(118, 1, 'Femiane 21 Grageas', '-', '118.jpg', 553, 99, 1, 0),
(119, 1, 'Mesigyna 1 Ampolla De 1 Ml.', '-', '119.jpg', 632, 99, 1, 0),
(120, 1, 'Microgynon 21 Grageas', '-', '120.jpg', 258, 99, 1, 0),
(121, 1, 'Mirena Endoceptivo 1 Ud.', '-', '121.jpg', 14306, 99, 1, 0),
(122, 1, 'Qlaira 28 Grageas', '-', '122.jpg', 684, 99, 1, 0),
(123, 1, 'Yasmin 21 Grageas', '-', '123.jpg', 637, 99, 1, 0),
(124, 1, 'Yaz 28 Comp.', '-', '124.jpg', 631, 99, 1, 0),
(125, 1, 'Sop 21 Comp.', '-', '125.jpg', 649, 99, 1, 0),
(126, 1, 'April 21 Comp.', '-', '126.jpg', 185, 99, 1, 0),
(127, 1, 'Damsel 28 Comp.', '-', '127.jpg', 457, 99, 1, 0),
(128, 1, 'Damsella 28 Comp.', '-', '128.jpg', 466, 99, 1, 0),
(129, 1, 'April 28 Comp.', '-', '129.jpg', 185, 99, 1, 0),
(130, 1, 'Rubi 28 Comp.', '-', '130.jpg', 515, 99, 1, 0),
(131, 1, 'Desire 28 Comp.', '-', '131.jpg', 1850, 99, 1, 0),
(132, 1, 'Evra 3 Parches', '-', '132.jpg', 572, 99, 1, 0),
(133, 1, 'Evacin 21 Grageas', '-', '133.jpg', 553, 99, 1, 0),
(134, 1, 'Trievacin 21 Grageas', '-', '134.jpg', 538, 99, 1, 0),
(135, 1, 'Minifem 21 Grageas', '-', '135.jpg', 577, 99, 1, 0),
(136, 1, 'Secret 28 Comp.', '-', '136.jpg', 694, 99, 1, 0),
(137, 1, 'Femexin 21 Comp.', '-', '137.jpg', 224, 99, 1, 0),
(138, 1, 'Genoderm 21 Comp.', '-', '138.jpg', 646, 99, 1, 0),
(139, 1, 'Divina 21 21 Comp.', '-', '139.jpg', 716, 99, 1, 0),
(140, 1, 'Secufem Plus 1 Comp.', '-', '140.jpg', 322, 99, 1, 0),
(141, 1, 'Diva 28 Comp.', '-', '141.jpg', 709, 99, 1, 0),
(142, 1, 'Carmin 28 Comp.', '-', '142.jpg', 611, 99, 1, 0),
(143, 1, 'Divina 28 28 Comp.', '-', '143.jpg', 730, 99, 1, 0),
(144, 1, 'Equifem 28 Comp.', '-', '144.jpg', 1652, 99, 1, 0),
(145, 1, 'Florence 21 Comp.', '-', '145.jpg', 868, 99, 1, 0),
(146, 1, 'Miranda 28 Comp.', '-', '146.jpg', 729, 99, 1, 0),
(147, 1, 'Femexin 28 Comp.', '-', '147.jpg', 224, 99, 1, 0),
(148, 1, 'Bellaface 21 Comp.', '-', '148.jpg', 660, 99, 1, 0),
(149, 1, 'Bellaface 28 Comp.', '-', '149.jpg', 660, 99, 1, 0),
(150, 1, 'Triquilar 21 Grageas', '-', '150.jpg', 552, 99, 1, 0),
(151, 1, 'Jaydess', '-', '151.jpg', 10647, 99, 1, 0),
(152, 1, 'Implanon Nxt 68 Mg. 1 Dispositivo', '-', '152.jpg', 9013, 99, 1, 0),
(153, 1, 'Aspirina C Fría Nf 1 Sobre', '-', '153.jpg', 49, 99, 1, 0),
(154, 1, 'Aspirina C Caliente 1 Sobre', '-', '154.jpg', 49, 99, 1, 0),
(155, 1, 'Acf C Nf 1 Sobres', '-', '155.jpg', 43, 99, 1, 0),
(156, 1, 'Bio Grip L Descongestivo Soluble 1 Sobre.', '-', '156.jpg', 42, 99, 1, 0),
(157, 1, 'Acf 4 Naranja 8 Comp.', '-', '157.jpg', 152, 99, 1, 0),
(158, 1, 'Bio Grip Plus C 8 Comp.', '-', '158.jpg', 141, 99, 1, 0),
(159, 1, 'Bio Grip Descongestivo 10 Comp.', '-', '159.jpg', 227, 99, 1, 0),
(160, 1, 'Flodigrip Descongestivo 10 Comp.', '-', '160.jpg', 229, 99, 1, 0),
(161, 1, 'Flodesco Nf 12 Tabletas', '-', '161.jpg', 450, 99, 1, 0),
(162, 1, 'Perifar Grip Sobre Caliente 1 Sobre.', '-', '162.jpg', 53, 99, 1, 0),
(163, 1, 'Acf Plus Descongestivo 10 Comp.', '-', '163.jpg', 227, 99, 1, 0),
(164, 1, 'Flodigrip Descongestivo 5 Sobres', '-', '164.jpg', 245, 99, 1, 0),
(165, 1, 'Flodigrip C 10 Comp.', '-', '165.jpg', 173, 99, 1, 0),
(166, 1, 'Web C Plus 8 Comp.', '-', '166.jpg', 137, 99, 1, 0),
(167, 1, 'Web Descongestivo Plus Día 10 Comp.', '-', '167.jpg', 209, 99, 1, 0),
(168, 1, 'Web Descongestivo Plus Día 5 Sobres', '-', '168.jpg', 215, 99, 1, 0),
(169, 1, 'Zolben Plus Limón Y Miel 5 Sobres', '-', '169.jpg', 215, 99, 1, 0),
(170, 1, 'Efa Mycol Crema 20 Grs.', '-', '170.jpg', 392, 99, 1, 0),
(171, 1, 'Efa Mycol Loción Spray 20 Ml.', '-', '171.jpg', 368, 99, 1, 0),
(172, 1, 'Efa Mycol Polvo 30 Grs.', '-', '172.jpg', 366, 99, 1, 0),
(173, 1, 'Uñex 30 Comp.', '-', '173.jpg', 1528, 99, 1, 0),
(174, 1, 'Canesten Crema 20 Grs.', '-', '174.jpg', 430, 99, 1, 0),
(175, 1, 'Canesten Spray 40 Ml.', '-', '175.jpg', 479, 99, 1, 0),
(176, 1, 'Etrux Crema 15 Grs.', '-', '176.jpg', 489, 99, 1, 0),
(177, 1, 'Etrux 200 Mg. 10 Comp.', '-', '177.jpg', 753, 99, 1, 0),
(178, 1, 'Uñalitic Unguento 20 Grs.', '-', '178.jpg', 2295, 99, 1, 0),
(179, 1, 'Terbimax 14 Comp.', '-', '179.jpg', 1087, 99, 1, 0),
(180, 1, 'Terbimax Crema 15 Grs.', '-', '180.jpg', 239, 99, 1, 0),
(181, 1, 'Metidazol 100 Tabletas', '-', '181.jpg', 660, 99, 1, 0),
(182, 1, 'Garlic Oil Nature´s Bounty 1000 Mg. 100 Caps.', 'Contribuye a reducir la presión sanguínea y mantener una circulación sanguínea adecuada.', '182.jpg', 571, 99, 1, 0),
(183, 1, 'Levadura De Cerveza Brewer´s Yeast Natural Life 25', 'Fuente natural de vitamina B1, B2 y B3, vit. esenciales que protegen a las células del daño oxidativo, disiminuyen el cansancio y la fatiga, contribuyen en el funcionamiento normal del metabolismo ene', '183.jpg', 1493, 99, 1, 0),
(184, 1, 'Coenzima Q10 Natural Life 100 Caps.', 'Coenzima presente en todas las células del cuerpo humano. Poderoso antioxidante que ayuda a proteger cada célula del cuerpo humano. Esencial para combatir los efectos de los radicales libres.', '184.jpg', 1509, 99, 1, 0),
(185, 1, 'Calcio,magnesio Y Zinc Natural Life 100 Caps.', 'El calcio es necesario para el mantenimiento de los huesos y dientes en condiciones normales. El magnesio contribuye al funcionamiento normal de los músculos. El zinc colabora en el buen funcionamient', '185.jpg', 736, 99, 1, 0),
(186, 1, 'One Natural Life 30 Tabletas.', 'Complementa el aporte de vit. y minerales de los alimentos, resguardando al organismo de cualquier deficiencia. Su fórmula equilibrada y completa, beneficia los procesos metabólicos y funciones vitale', '186.jpg', 533, 99, 1, 0),
(187, 1, 'Aloe Vera Gel Sabor Arándanos Y Manzana Qualivits ', '-', '187.jpg', 947, 99, 1, 0),
(188, 1, 'Luteína Nature´s Bounty 20 Mg. 40 Caps.', 'Ayuda a prevenir y tratar afecciones oculares. Funciona como filtro solar natural, protegiendo la visita de los efectos dañinos del sol y previniendo la perdida visual que suele producirse naturalment', '188.jpg', 1448, 99, 1, 0),
(189, 1, 'Magnex 30 Comp.', '-', '189.jpg', 546, 99, 1, 0),
(190, 1, 'Dayamineral Jarabe 90 Ml.', '-', '190.jpg', 1205, 99, 1, 0),
(191, 1, 'Vitacea 30 Tabletas', '-', '191.jpg', 926, 99, 1, 0),
(192, 1, 'Arcalion 200 Mg. 20 Comp.', '-', '192.jpg', 765, 99, 1, 0),
(193, 1, 'Redoxon Naranja 1 Gr. 10 Tabletas Efervescentes.', '-', '193.jpg', 329, 99, 1, 0),
(194, 1, 'Supradyn Forte 60 Grageas', '-', '194.jpg', 1564, 99, 1, 0),
(195, 1, 'Supradyn Forte 30 Grageas', '-', '195.jpg', 843, 99, 1, 0),
(196, 1, 'Supradyn Pronatal 30 Comp.', '-', '196.jpg', 904, 99, 1, 0),
(197, 1, 'Redoxon Efervecente + Zinc 10 Comp.', '-', '197.jpg', 427, 99, 1, 0),
(198, 1, 'Viosterol Calcico 400 60 Comp.', '-', '198.jpg', 597, 99, 1, 0),
(199, 1, 'Viosterol 1000 60 Comp.', '-', '199.jpg', 467, 99, 1, 0),
(200, 1, 'Viosterol 10 Ml.', '-', '200.jpg', 486, 99, 1, 0),
(201, 1, 'Viosterol 5000. 30 Comp.', '-', '201.jpg', 578, 99, 1, 0),
(202, 1, 'Magnesium 500 Mg. 40 Tabletas.', '-', '202.jpg', 595, 99, 1, 0),
(203, 1, 'Pharmaton 30 Comp.', '-', '203.jpg', 994, 99, 1, 0),
(204, 1, 'Vitamina B1 100 Mg. 20 Comp.', '-', '204.jpg', 203, 99, 1, 0),
(205, 1, 'K Retard 30 Caps.', '-', '205.jpg', 712, 99, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `Id_Cat` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id_Cat`,`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`Id_Cat`, `Nombre`) VALUES
(1, 'Bebés y niños'),
(2, 'Dermocosmética'),
(3, 'Cuidado Personal'),
(4, 'Perfumería'),
(5, 'Nutrición'),
(6, 'Salud');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `categoriavis`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `categoriavis`;
CREATE TABLE IF NOT EXISTS `categoriavis` (
`Categoria` varchar(30)
,`Cod_Art` int
,`Id_Cat` int
,`Id_MiniCat` int
,`Id_SubCat` int
,`Minicategoria` varchar(50)
,`Subcategoria` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

DROP TABLE IF EXISTS `compra`;
CREATE TABLE IF NOT EXISTS `compra` (
  `Id_Com` int NOT NULL AUTO_INCREMENT,
  `Id_user` int NOT NULL,
  `forma_pago` enum('Efectivo','PayPal','Tarjeta') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `forma_entrega` enum('retiro','domicilio') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_compra` date NOT NULL,
  `monto` int NOT NULL,
  `foto_rec` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id_Com`,`Id_user`),
  KEY `Id_user` (`Id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_articulos`
--

DROP TABLE IF EXISTS `compra_articulos`;
CREATE TABLE IF NOT EXISTS `compra_articulos` (
  `Id_Com` int NOT NULL,
  `Id_Art` int NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`Id_Com`,`Id_Art`),
  KEY `Id_Art` (`Id_Art`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_domicilio`
--

DROP TABLE IF EXISTS `compra_domicilio`;
CREATE TABLE IF NOT EXISTS `compra_domicilio` (
  `Id_Com` int NOT NULL,
  `calle` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `calleAdy` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `numeroDom` int NOT NULL,
  PRIMARY KEY (`Id_Com`),
  KEY `Id_Com` (`Id_Com`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_tarjeta`
--

DROP TABLE IF EXISTS `compra_tarjeta`;
CREATE TABLE IF NOT EXISTS `compra_tarjeta` (
  `Id_Com` int NOT NULL,
  `numero` bigint NOT NULL,
  `titular` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ccv` int NOT NULL,
  `vencimiento` date NOT NULL,
  PRIMARY KEY (`Id_Com`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

DROP TABLE IF EXISTS `envios`;
CREATE TABLE IF NOT EXISTS `envios` (
  `Id_Com` int NOT NULL,
  `realizado` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id_Com`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
CREATE TABLE IF NOT EXISTS `medicamentos` (
  `Cod_Med` int NOT NULL AUTO_INCREMENT,
  `Cod_Art` int NOT NULL,
  `especificaciones` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `receta` tinyint(1) NOT NULL,
  PRIMARY KEY (`Cod_Med`,`Cod_Art`),
  KEY `Cod_Art` (`Cod_Art`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`Cod_Med`, `Cod_Art`, `especificaciones`, `receta`) VALUES
(1, 1, 'NOVEMINA FUERTE 10 COMPRIMIDOS', 0),
(2, 2, 'Inhibidor de la testosterona 5 alfa reductasa. ', 1),
(3, 3, 'VITACE A 30 TABLETAS', 0),
(4, 5, 'Paracetamol 500mg', 0),
(5, 5, 'Paracetamol 500mg', 0),
(6, 5, 'Paracetamol 500mg', 0),
(7, 7, 'perifar 500', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `minicategoria`
--

DROP TABLE IF EXISTS `minicategoria`;
CREATE TABLE IF NOT EXISTS `minicategoria` (
  `Id_MiniCat` int NOT NULL AUTO_INCREMENT,
  `Id_SubCat` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id_MiniCat`,`nombre`),
  KEY `Id_SubCat` (`Id_SubCat`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `minicategoria`
--

INSERT INTO `minicategoria` (`Id_MiniCat`, `Id_SubCat`, `nombre`) VALUES
(1, 1, 'Accesorios de Alimentación'),
(2, 1, 'Accesorios de lactancia'),
(3, 1, 'Mamaderas'),
(4, 1, 'Chupetes y Mordillos'),
(5, 2, 'Aceites'),
(6, 2, 'Botiquín de niño'),
(7, 2, 'Colonias y Talcos'),
(8, 2, 'Jabones y Shampoo'),
(9, 2, 'Óleo Calcáreo'),
(10, 3, 'Almacenamiento'),
(11, 3, 'Cremas Curativas'),
(12, 3, 'Discos Absorbentes'),
(13, 3, 'Extractores'),
(14, 3, 'Tetinas y Pezoneras'),
(15, 13, 'Cuerpo'),
(16, 13, 'Rostro'),
(17, 15, 'Afeitadoras'),
(18, 15, 'Aftershave'),
(19, 15, 'Espumas'),
(20, 16, 'Afeitadoras de dama'),
(21, 16, 'Bandas'),
(22, 16, 'Ceras'),
(23, 16, 'Cremas'),
(24, 19, 'Pañuelos'),
(25, 19, 'Papel higiénico'),
(26, 21, 'Copas y vasos'),
(27, 21, 'Higiene íntima'),
(28, 21, 'Tampones'),
(29, 21, 'Toallitas'),
(30, 28, 'Leches vegetales'),
(31, 28, 'Alimentos orgánicos'),
(32, 28, 'Proteinas'),
(33, 28, 'Aminoácidos'),
(34, 28, 'Ganadores de peso'),
(35, 28, 'Quemadores de grasa'),
(36, 28, 'Gel energizante'),
(37, 28, 'Barras proteicas'),
(38, 28, 'Vasos mezcladores'),
(39, 34, 'Alimentos'),
(40, 34, 'Complementos'),
(41, 35, 'Complementos adultos'),
(42, 46, 'Anticoagulantes'),
(43, 46, 'Betabloqueantes'),
(44, 46, 'Colesterol'),
(45, 46, 'Hipertensión'),
(46, 50, 'Antiácidos'),
(47, 50, 'Antidiarreicos'),
(48, 50, 'Antiespasmódicos'),
(49, 50, 'Antiflatulentos'),
(50, 50, 'Digestivos'),
(51, 50, 'Estreñimiento'),
(52, 50, 'Náuseas'),
(53, 61, 'Antigotosos'),
(54, 61, 'Hipouricemiantes'),
(55, 61, 'Osteoporosis'),
(56, 61, 'Reuma y Artrosis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `calle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `esquina` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contrasenia` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `correo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`Id`, `nombre`, `calle`, `numero`, `esquina`, `contrasenia`, `correo`) VALUES
(1, 'David', NULL, NULL, NULL, '$2y$10$AjWGQWkz051GtJoAjQOmxOcsJgCP0uGU/ZrzuDSV6O8MVics4CxXS', 'davichaba@gmail.com'),
(2, 'Lucas', '0', NULL, NULL, '$2y$10$Ho3j3ET6N7Cgu5zM80yt.u636Boe9kn1dMgmOidhR5XGarDvOQzg.', 'LucasNahuel@gmail.com'),
(3, 'Jesus', NULL, NULL, NULL, '$2y$10$ryp9MEhtq/FGAUGY42vvvuNvdv8aRANlu8abXW6QOWYnB7ygDclIa', 'Joshua@gmail.com'),
(4, 'Eleazar', NULL, NULL, NULL, '$2y$10$p/aKfIWpcXaZJOQYK262a.hL.1Ehp9FWbNHIMOzeMV0lbpFDFmkNy', 'eleazar@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE IF NOT EXISTS `proveedor` (
  `Id_p` int NOT NULL AUTO_INCREMENT,
  `nombre_p` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telefono_p` int NOT NULL,
  `calle_p` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `numero_p` int NOT NULL,
  `esquina_p` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `estado_p` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id_p`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`Id_p`, `nombre_p`, `telefono_p`, `calle_p`, `numero_p`, `esquina_p`, `estado_p`) VALUES
(1, 'A casa', 98543764, 'Arrospide', 123, 'Battle', 1),
(2, 'Luqui', 24134, 'ere', 12, 'are', 1),
(3, 'Gamma', 246205235, 'Morquio', 505, '', 1),
(4, 'gam', 75643433, 'Mor', 344, 'esquina', 1),
(5, 'Lucas proveedor', 24425234, 'mac', 123, 'esq', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoria`
--

DROP TABLE IF EXISTS `subcategoria`;
CREATE TABLE IF NOT EXISTS `subcategoria` (
  `Id_SubCat` int NOT NULL AUTO_INCREMENT,
  `id_Cat` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id_SubCat`,`nombre`),
  KEY `id_Cat` (`id_Cat`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subcategoria`
--

INSERT INTO `subcategoria` (`Id_SubCat`, `id_Cat`, `nombre`) VALUES
(1, 1, 'Alimentación'),
(2, 1, 'Higiene y Salud'),
(3, 1, 'Lactancia'),
(4, 1, 'Pañales y Toallitas'),
(5, 1, 'Seguridad'),
(6, 2, 'Acné'),
(7, 2, 'Capilar'),
(8, 2, 'Limpiadores'),
(9, 2, 'Pigmentación'),
(10, 2, 'Solares'),
(11, 2, 'Solares infantiles'),
(12, 2, 'Antiedad'),
(13, 2, 'Hidratantes'),
(14, 3, 'Aceites y Lubricantes'),
(15, 3, 'Afeitado'),
(16, 3, 'Depilación'),
(17, 3, 'Protección Masculina'),
(18, 3, 'Geles de ducha'),
(19, 3, 'Higiene y salud'),
(20, 3, 'Jabones'),
(21, 3, 'Protección Femenina'),
(22, 3, 'Repelentes'),
(23, 3, 'Talcos'),
(24, 4, 'Perfumes para Mujeres'),
(25, 4, 'Perfumes para Hombres'),
(26, 4, 'Perfumes para Niñas'),
(27, 4, 'Perfumes para Niños'),
(28, 5, 'Alimentación Saludable'),
(29, 5, 'Edulcorantes'),
(30, 5, 'Vitaminas y minerales'),
(31, 5, 'Colágenos '),
(32, 5, 'Suplementos dietarios'),
(33, 5, 'Suplementos deportivos'),
(34, 5, 'Nutrición infantil'),
(35, 5, 'Nutrición adultos'),
(36, 6, 'Analgésicos y Antiinflamatorios'),
(37, 6, 'Antialérgicos'),
(38, 6, 'Antibióticos'),
(39, 6, 'Anticonceptivos'),
(40, 6, 'Antigripales'),
(41, 6, 'Antimicóticos'),
(42, 6, 'Antiparasitarios'),
(43, 6, 'Antivirales'),
(44, 6, 'Aparatología'),
(45, 6, 'Bienestar sexual'),
(46, 6, 'Cardiología'),
(47, 6, 'Dermatología'),
(48, 6, 'Diabetes'),
(49, 6, 'Endocrinología'),
(50, 6, 'Gastroenterología'),
(51, 6, 'Ginecología'),
(52, 6, 'Hematología'),
(53, 6, 'Inductores del sueño'),
(54, 6, 'Inmunología'),
(55, 6, 'Metabolismo'),
(56, 6, 'Neumología'),
(57, 6, 'Neurología'),
(58, 6, 'Oftalmología'),
(59, 6, 'ORL'),
(60, 6, 'Relajantes musculares'),
(61, 6, 'Reumatología'),
(62, 6, 'Urología');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta`
--

DROP TABLE IF EXISTS `tarjeta`;
CREATE TABLE IF NOT EXISTS `tarjeta` (
  `Id_user` int NOT NULL,
  `numero_t` int NOT NULL,
  `tipo_t` enum('Visa','Mastercard') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id_user`,`numero_t`,`tipo_t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonos`
--

DROP TABLE IF EXISTS `telefonos`;
CREATE TABLE IF NOT EXISTS `telefonos` (
  `Id_User` int NOT NULL,
  `telefono` int NOT NULL,
  PRIMARY KEY (`telefono`),
  KEY `Id_User` (`Id_User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `Id_user` int NOT NULL,
  `estado` int NOT NULL,
  `acceso` date DEFAULT NULL,
  PRIMARY KEY (`Id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_user`, `estado`, `acceso`) VALUES
(1, 1, '2022-10-28'),
(2, 1, '2022-11-20'),
(3, 1, '2022-10-07'),
(4, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `usuariocomp`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `usuariocomp`;
CREATE TABLE IF NOT EXISTS `usuariocomp` (
`acceso` date
,`correo` varchar(50)
,`estado` int
,`Id` int
,`nombre` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `categoriavis`
--
DROP TABLE IF EXISTS `categoriavis`;

DROP VIEW IF EXISTS `categoriavis`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `categoriavis`  AS SELECT `c`.`Id_Cat` AS `Id_Cat`, `c`.`Nombre` AS `Categoria`, `a`.`Id_SubCat` AS `Id_SubCat`, `s`.`nombre` AS `Subcategoria`, `a`.`Id_MiniCat` AS `Id_MiniCat`, `m`.`nombre` AS `Minicategoria`, `a`.`Cod_Art` AS `Cod_Art` FROM ((`categoria` `c` join (`subcategoria` `s` left join `minicategoria` `m` on((`s`.`Id_SubCat` = `m`.`Id_SubCat`)))) join `artcat` `a`) WHERE ((`c`.`Id_Cat` = `s`.`id_Cat`) AND (`s`.`Id_SubCat` = `a`.`Id_SubCat`) AND ((`a`.`Id_MiniCat` = `m`.`Id_MiniCat`) OR (`a`.`Id_MiniCat` is null))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `usuariocomp`
--
DROP TABLE IF EXISTS `usuariocomp`;

DROP VIEW IF EXISTS `usuariocomp`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usuariocomp`  AS SELECT `p`.`Id` AS `Id`, `p`.`nombre` AS `nombre`, `p`.`correo` AS `correo`, `u`.`estado` AS `estado`, `u`.`acceso` AS `acceso` FROM (`usuario` `u` join `persona` `p`) WHERE (`p`.`Id` = `u`.`Id_user`) ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`Id_user`) REFERENCES `persona` (`Id`);

--
-- Filtros para la tabla `artcat`
--
ALTER TABLE `artcat`
  ADD CONSTRAINT `artcat_ibfk_1` FOREIGN KEY (`Id_SubCat`) REFERENCES `subcategoria` (`Id_SubCat`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `artcat_ibfk_2` FOREIGN KEY (`Cod_Art`) REFERENCES `articulos` (`Cod_Art`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `artcat_ibfk_3` FOREIGN KEY (`Id_MiniCat`) REFERENCES `minicategoria` (`Id_MiniCat`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`Id_p`) REFERENCES `proveedor` (`Id_p`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`Id_user`) REFERENCES `persona` (`Id`);

--
-- Filtros para la tabla `compra_articulos`
--
ALTER TABLE `compra_articulos`
  ADD CONSTRAINT `compra_articulos_ibfk_1` FOREIGN KEY (`Id_Com`) REFERENCES `compra` (`Id_Com`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `envios`
--
ALTER TABLE `envios`
  ADD CONSTRAINT `envios_ibfk_1` FOREIGN KEY (`Id_Com`) REFERENCES `compra` (`Id_Com`);

--
-- Filtros para la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD CONSTRAINT `medicamentos_ibfk_1` FOREIGN KEY (`Cod_Art`) REFERENCES `articulos` (`Cod_Art`);

--
-- Filtros para la tabla `minicategoria`
--
ALTER TABLE `minicategoria`
  ADD CONSTRAINT `minicategoria_ibfk_1` FOREIGN KEY (`Id_SubCat`) REFERENCES `subcategoria` (`Id_SubCat`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD CONSTRAINT `subcategoria_ibfk_1` FOREIGN KEY (`id_Cat`) REFERENCES `categoria` (`Id_Cat`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD CONSTRAINT `tarjeta_ibfk_1` FOREIGN KEY (`Id_user`) REFERENCES `persona` (`Id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Id_user`) REFERENCES `persona` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
