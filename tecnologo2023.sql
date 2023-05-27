-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2023 a las 03:54:57
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tecnologo2023`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprendiz`
--

CREATE TABLE `aprendiz` (
  `id` int(11) NOT NULL,
  `Docu` int(11) NOT NULL,
  `NombreA` varchar(40) NOT NULL,
  `ApellidoA` varchar(40) NOT NULL,
  `EmailA` varchar(30) NOT NULL,
  `TelefonoA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aprendiz`
--

INSERT INTO `aprendiz` (`id`, `Docu`, `NombreA`, `ApellidoA`, `EmailA`, `TelefonoA`) VALUES
(1, 1025524770, 'nixon', 'canon', 'nn@n', 3104308),
(2, 1025378899, 'camilo', 'padua', 'cc@c', 120302130),
(3, 3892134, 'Felipe', 'Leal', 'ff@ff', 2143142112),
(4, 102304837, 'Sofia', 'Gaitan', 'ss@ss', 21324141),
(5, 214134258, 'Valentina', 'Galindo', 'vv@vv', 213231);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `codficha` int(11) NOT NULL,
  `cantapre` int(11) NOT NULL,
  `codprod` int(11) NOT NULL,
  `codaprendiz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`codficha`, `cantapre`, `codprod`, `codaprendiz`) VALUES
(1, 1, 1, 1),
(3, 3, 3, 3),
(25321555, 2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `codprograma` int(11) NOT NULL,
  `nombrepro` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`codprograma`, `nombrepro`) VALUES
(1, 'Multimedia'),
(2, 'Diseno'),
(3, 'Animacion'),
(4, 'PruebA'),
(6, 'ADSO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`codficha`),
  ADD KEY `codprod` (`codprod`),
  ADD KEY `codaprendiz` (`codaprendiz`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`codprograma`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD CONSTRAINT `ficha_ibfk_1` FOREIGN KEY (`codprod`) REFERENCES `programa` (`codprograma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ficha_ibfk_2` FOREIGN KEY (`codaprendiz`) REFERENCES `aprendiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
