-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 29-05-2021 a las 14:34:22
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id16726728_appsistemasaldia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CashMove`
--

CREATE TABLE `CashMove` (
  `Id_Movement` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `concepto` decimal(10,0) NOT NULL,
  `valor` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Clients`
--

CREATE TABLE `Clients` (
  `Id_Client` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Nombre` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tel1` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `tel2` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Clients`
--

INSERT INTO `Clients` (`Id_Client`, `Nombre`, `tel1`, `tel2`, `direccion`, `email`) VALUES
('3030', 'Cliente A1', '315596656', '3920003221', 'cll 69r sds', 'daviud@live.com'),
('3040', 'Cliente B2', '315596656', '3920003221', 'cll 69r sds', 'davidl.contrerasg@unilibrebog.edu.co');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Factura`
--

CREATE TABLE `Factura` (
  `Id_fac` int(30) NOT NULL,
  `ref` int(40) DEFAULT NULL,
  `Id_Client` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `dateCurrent` datetime NOT NULL,
  `products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `valor` decimal(19,2) NOT NULL,
  `observaciones` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id_user` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Factura`
--

INSERT INTO `Factura` (`Id_fac`, `ref`, `Id_Client`, `dateCurrent`, `products`, `cantidad`, `valor`, `observaciones`, `Id_user`) VALUES
(32, NULL, '987654', '2021-05-25 01:02:04', '[{\"Id\": \"4\", \"Name\": \"Producto 4\", \"Cant\": \"1\", \"Amount\": \"156500.5\"}, {\"Id\": \"1\", \"Name\": \"Producto 1\", \"Cant\": \"0\", \"Amount\": \"0.0\"}, {\"Id\": \"2\", \"Name\": \"Producto 2\", \"Cant\": \"1\", \"Amount\": \"50000.0\"}]', NULL, 206501.00, 'None', '1021'),
(33, NULL, '987654', '2021-05-25 01:07:10', '[{\"Id\": \"4\", \"Name\": \"Producto 4\", \"Cant\": \"1\", \"Amount\": \"156500.5\"}, {\"Id\": \"2\", \"Name\": \"Producto 2\", \"Cant\": \"2\", \"Amount\": \"100000.0\"}, {\"Id\": \"1\", \"Name\": \"Producto 1\", \"Cant\": \"0\", \"Amount\": \"0.0\"}]', NULL, 256500.50, 'None', '1021'),
(34, NULL, '', '2021-05-26 00:29:30', '[{\"Id\": \"2\", \"Name\": \"Producto 2\", \"Cant\": \"1\", \"Amount\": \"50000.0\"}]', NULL, 50000.00, '', '1021'),
(35, NULL, '', '2021-05-26 00:30:09', '[{\"Id\": \"1\", \"Name\": \"logitech g29 driving force\", \"Cant\": \"2\", \"Amount\": \"40000.0\"}]', NULL, 40000.00, '', '1021'),
(36, NULL, '545', '2021-05-26 00:51:38', '[{\"Id\": \"3\", \"Name\": \"Producto 3\", \"Cant\": \"1\", \"Amount\": \"35000.0\"}, {\"Id\": \"2\", \"Name\": \"Producto 2\", \"Cant\": \"1\", \"Amount\": \"50000.0\"}]', NULL, 85000.00, 'nnnn', '1021'),
(37, NULL, '999', '2021-05-26 00:54:00', '[{\"Id\": \"1\", \"Name\": \"logitech g29 driving force\", \"Cant\": \"1\", \"Amount\": \"20000.0\"}]', NULL, 20000.00, 'lllk', '1021'),
(38, NULL, '', '2021-05-26 01:11:02', '[{\"Id\": \"1\", \"Name\": \"logitech g29 driving force\", \"Cant\": \"4\", \"Amount\": \"80000.0\"}, {\"Id\": \"2\", \"Name\": \"Producto 2\", \"Cant\": \"2\", \"Amount\": \"100000.0\"}, {\"Id\": \"4\", \"Name\": \"Producto 4\", \"Cant\": \"1\", \"Amount\": \"156500.5\"}]', NULL, 336500.50, '', '1021'),
(40, NULL, '', '2021-05-26 23:52:47', '[{\"Id\": \"1\", \"Name\": \"logitech g29 driving force\", \"Cant\": \"1\", \"Amount\": \"20000.0\"}]', NULL, 20000.00, '', '1021'),
(41, NULL, '', '2021-05-28 00:45:22', '[{\"Id\": \"2\", \"Name\": \"Producto 2\", \"Cant\": \"2\", \"Amount\": \"100000.0\"}, {\"Id\": \"1\", \"Name\": \"logitech g29 driving force\", \"Cant\": \"1\", \"Amount\": \"20000.0\"}]', NULL, 120000.00, 'Observacion detallada: sad asd asda sdas dasd', '1021');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Products`
--

CREATE TABLE `Products` (
  `Id_product` int(11) NOT NULL,
  `product_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(19,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Products`
--

INSERT INTO `Products` (`Id_product`, `product_name`, `amount`) VALUES
(1, 'logitech g29 driving force', 20000.0000),
(2, 'Producto 2', 50000.0000),
(3, 'Producto 3', 35000.0000),
(4, 'Producto 4', 156500.5000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Users`
--

CREATE TABLE `Users` (
  `Id_User` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Nombre` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Apellido` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Users`
--

INSERT INTO `Users` (`Id_User`, `Nombre`, `Apellido`, `type_user`) VALUES
('1021', 'Guillermo', 'Puentes', 2),
('1022', 'David', 'Contreras', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CashMove`
--
ALTER TABLE `CashMove`
  ADD PRIMARY KEY (`Id_Movement`);

--
-- Indices de la tabla `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`Id_Client`);

--
-- Indices de la tabla `Factura`
--
ALTER TABLE `Factura`
  ADD PRIMARY KEY (`Id_fac`);

--
-- Indices de la tabla `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`Id_product`);

--
-- Indices de la tabla `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`Id_User`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `CashMove`
--
ALTER TABLE `CashMove`
  MODIFY `Id_Movement` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Factura`
--
ALTER TABLE `Factura`
  MODIFY `Id_fac` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
