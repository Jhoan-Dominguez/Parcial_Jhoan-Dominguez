-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2021 a las 10:03:07
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sport_shop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`) VALUES
(1, 'camiseta'),
(2, 'pantalon'),
(3, 'pantaloneta'),
(4, 'chaqueta'),
(5, 'ropa interior'),
(6, 'chalecos'),
(7, 'leggings'),
(8, 'sacos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `precio`, `id_categoria`) VALUES
(1, 'camiseta interior', 40000, 1),
(2, 'camiseta polo tenis', 35000, 1),
(3, 'camiseta anti-rayos', 25000, 1),
(4, 'camiseta trail running', 124000, 1),
(5, 'camiseta de sandero', 50000, 1),
(6, 'camiseta proteccion solar', 64000, 1),
(7, 'camiseta baloncesto', 50000, 1),
(8, 'camiseta sin mangas', 45000, 1),
(9, 'pantalon de montain', 297000, 2),
(10, 'pantalon de trkking', 149000, 2),
(11, 'pantalon senderismo', 149000, 2),
(12, 'pantalon montain y trakking', 149000, 2),
(13, 'pantalon senderismo', 140000, 2),
(14, 'pantalon solognac', 50000, 2),
(15, 'pantalon golf', 149000, 2),
(16, 'pantalon ecoresponsable', 74000, 2),
(17, 'pantaloneta de futbol', 25000, 3),
(18, 'pantaloneta running', 30000, 3),
(19, 'pantaloneta de senderismo', 74000, 3),
(20, 'pantaloneta de naturaleza', 99000, 3),
(21, 'pantaloneta boardshort', 40000, 3),
(22, 'pantaloneta de vela', 50000, 3),
(23, 'pantaloneta de baloncesto', 50000, 3),
(24, 'pantaloneta ligera', 74000, 3),
(25, 'pocho impermeable', 99000, 4),
(26, 'chaqueta acolchada', 149000, 4),
(27, 'chaqueta impermeable', 149000, 4),
(28, 'chaqueta impermeable senderismo', 149000, 4),
(29, 'chaqueta plumon', 140000, 4),
(30, 'chaqueta ciclismo', 50000, 4),
(31, 'chaqueta sailing', 149000, 4),
(32, 'chaqueta sintetica', 74000, 4),
(33, 'calzoncillo para correr', 25000, 5),
(34, 'calzoncillo para nadar', 30000, 5),
(35, 'calzoncillo para cicla', 25000, 5),
(36, 'boxer para correr', 25000, 5),
(37, 'boxer para nadar', 40000, 5),
(38, 'boxer para cicla', 25000, 5),
(39, 'banda ciclismo', 74000, 5),
(40, 'banda correr', 60000, 5),
(41, 'chaleco equitacion', 95000, 6),
(42, 'chaleco fougazan', 74000, 6),
(43, 'chaleco acolchado', 149000, 6),
(44, 'chaleco polar', 149000, 6),
(45, 'chaleco senderismo', 140000, 6),
(46, 'caleco algodon', 50000, 6),
(47, 'chaleco impermeable', 149000, 6),
(48, 'chaleco clasic', 74000, 6),
(49, 'prenda interior', 40000, 7),
(50, 'licra para correr', 124000, 7),
(51, 'pantalon termico', 59000, 7),
(52, 'pantalon kiprun', 124000, 7),
(53, 'banda ciclismo', 248000, 7),
(54, 'banda mtb', 248000, 7),
(55, 'banda ruta', 50000, 7),
(56, 'licra trail', 140000, 7),
(57, 'saco senderismo', 250000, 8),
(58, 'saco polar', 50000, 8),
(59, 'saco calido', 89000, 8),
(60, 'saco senderismo', 60000, 8),
(61, 'saco montain', 60000, 8),
(62, 'jersey solagnac', 50000, 8),
(63, 'jersey ciclismo', 173000, 8),
(64, 'chaqueta tenis', 124000, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talla`
--

CREATE TABLE `talla` (
  `id_talla` varchar(50) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `talla`
--

INSERT INTO `talla` (`id_talla`, `id_producto`, `cantidad`) VALUES
('l', 1, 13),
('l', 2, 2),
('l', 3, 3),
('l', 4, 6),
('l', 5, 4),
('l', 9, 13),
('l', 10, 2),
('l', 11, 3),
('l', 12, 6),
('l', 13, 4),
('l', 17, 13),
('l', 18, 2),
('l', 19, 3),
('l', 20, 6),
('l', 21, 4),
('l', 25, 13),
('l', 26, 2),
('l', 27, 3),
('l', 28, 6),
('l', 29, 4),
('l', 33, 13),
('l', 34, 2),
('l', 35, 3),
('l', 36, 6),
('l', 37, 4),
('l', 41, 13),
('l', 42, 2),
('l', 43, 3),
('l', 44, 6),
('l', 45, 4),
('l', 49, 13),
('l', 50, 2),
('l', 51, 3),
('l', 52, 6),
('l', 53, 4),
('l', 57, 13),
('l', 58, 2),
('l', 59, 3),
('l', 60, 6),
('l', 61, 4),
('m', 1, 15),
('m', 2, 23),
('m', 3, 6),
('m', 4, 6),
('m', 5, 6),
('m', 6, 8),
('m', 7, 3),
('m', 8, 5),
('m', 9, 15),
('m', 10, 23),
('m', 11, 6),
('m', 12, 6),
('m', 13, 6),
('m', 14, 8),
('m', 15, 3),
('m', 16, 5),
('m', 17, 15),
('m', 18, 23),
('m', 19, 6),
('m', 20, 6),
('m', 21, 6),
('m', 22, 8),
('m', 23, 3),
('m', 24, 5),
('m', 25, 15),
('m', 26, 23),
('m', 27, 6),
('m', 28, 6),
('m', 29, 6),
('m', 30, 8),
('m', 31, 3),
('m', 32, 5),
('m', 33, 15),
('m', 34, 23),
('m', 35, 6),
('m', 36, 6),
('m', 37, 6),
('m', 38, 8),
('m', 39, 3),
('m', 40, 5),
('m', 41, 15),
('m', 42, 23),
('m', 43, 6),
('m', 44, 6),
('m', 45, 6),
('m', 46, 8),
('m', 47, 3),
('m', 48, 5),
('m', 49, 15),
('m', 50, 23),
('m', 51, 6),
('m', 52, 6),
('m', 53, 6),
('m', 54, 8),
('m', 55, 3),
('m', 56, 5),
('m', 57, 15),
('m', 58, 23),
('m', 59, 6),
('m', 60, 6),
('m', 61, 6),
('m', 62, 8),
('m', 63, 3),
('m', 64, 5),
('s', 1, 12),
('s', 2, 5),
('s', 3, 2),
('s', 4, 7),
('s', 5, 6),
('s', 6, 3),
('s', 7, 5),
('s', 8, 7),
('s', 9, 12),
('s', 10, 5),
('s', 11, 2),
('s', 12, 7),
('s', 13, 6),
('s', 14, 3),
('s', 15, 5),
('s', 16, 7),
('s', 17, 12),
('s', 18, 5),
('s', 19, 2),
('s', 20, 7),
('s', 21, 6),
('s', 22, 3),
('s', 23, 5),
('s', 24, 7),
('s', 25, 12),
('s', 26, 5),
('s', 27, 2),
('s', 28, 7),
('s', 29, 6),
('s', 30, 3),
('s', 31, 5),
('s', 32, 7),
('s', 33, 12),
('s', 34, 5),
('s', 35, 2),
('s', 36, 7),
('s', 37, 6),
('s', 38, 3),
('s', 39, 5),
('s', 40, 7),
('s', 41, 12),
('s', 42, 5),
('s', 43, 2),
('s', 44, 7),
('s', 45, 6),
('s', 46, 3),
('s', 47, 5),
('s', 48, 7),
('s', 49, 12),
('s', 50, 5),
('s', 51, 2),
('s', 52, 7),
('s', 53, 6),
('s', 54, 3),
('s', 55, 5),
('s', 56, 7),
('s', 57, 12),
('s', 58, 5),
('s', 59, 2),
('s', 60, 7),
('s', 61, 6),
('s', 62, 3),
('s', 63, 5),
('s', 64, 7),
('xl', 1, 10),
('xl', 2, 6),
('xl', 3, 8),
('xl', 4, 5),
('xl', 5, 4),
('xl', 9, 10),
('xl', 10, 6),
('xl', 11, 8),
('xl', 12, 5),
('xl', 13, 4),
('xl', 17, 10),
('xl', 18, 6),
('xl', 19, 8),
('xl', 20, 5),
('xl', 21, 4),
('xl', 25, 10),
('xl', 26, 6),
('xl', 27, 8),
('xl', 28, 5),
('xl', 29, 4),
('xl', 33, 10),
('xl', 34, 6),
('xl', 35, 8),
('xl', 36, 5),
('xl', 37, 4),
('xl', 41, 10),
('xl', 42, 6),
('xl', 43, 8),
('xl', 44, 5),
('xl', 45, 4),
('xl', 49, 10),
('xl', 50, 6),
('xl', 51, 8),
('xl', 52, 5),
('xl', 53, 4),
('xl', 57, 10),
('xl', 58, 6),
('xl', 59, 8),
('xl', 60, 5),
('xl', 61, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `talla`
--
ALTER TABLE `talla`
  ADD PRIMARY KEY (`id_talla`,`id_producto`),
  ADD KEY `id_producto` (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);

--
-- Filtros para la tabla `talla`
--
ALTER TABLE `talla`
  ADD CONSTRAINT `talla_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
