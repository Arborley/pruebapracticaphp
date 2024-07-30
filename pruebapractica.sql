-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-07-2024 a las 19:13:50
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebapractica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id_administrador` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id_administrador`, `Nombre`) VALUES
(1, 'Juan'),
(2, 'Pedro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunidades`
--

CREATE TABLE `comunidades` (
  `id_comunidad` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Dirección` varchar(100) DEFAULT NULL,
  `Población` varchar(100) DEFAULT NULL,
  `id_administrador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comunidades`
--

INSERT INTO `comunidades` (`id_comunidad`, `Nombre`, `Dirección`, `Población`, `id_administrador`) VALUES
(1, 'Los salesianos', 'Calle Cardenal nº20', 'Madrid', NULL),
(2, 'Los comunitarios', 'Calle de las viñas 12', 'Getafe', NULL),
(4, 'Los petardos', 'Calle los petas nº 20', 'Moratalaz', 1),
(5, 'Las Bordes', 'Calle de los bordes nº 34', 'Pinto', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vecinos`
--

CREATE TABLE `vecinos` (
  `id_vecino` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Escalera` varchar(10) DEFAULT NULL,
  `Piso` int(11) DEFAULT NULL,
  `Puerta` varchar(10) DEFAULT NULL,
  `id_comunidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id_administrador`);

--
-- Indices de la tabla `comunidades`
--
ALTER TABLE `comunidades`
  ADD PRIMARY KEY (`id_comunidad`),
  ADD KEY `FK_comunidad` (`id_administrador`);

--
-- Indices de la tabla `vecinos`
--
ALTER TABLE `vecinos`
  ADD PRIMARY KEY (`id_vecino`),
  ADD KEY `FK_comunidad` (`id_comunidad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id_administrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `comunidades`
--
ALTER TABLE `comunidades`
  MODIFY `id_comunidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `vecinos`
--
ALTER TABLE `vecinos`
  MODIFY `id_vecino` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunidades`
--
ALTER TABLE `comunidades`
  ADD CONSTRAINT `FK_administrador` FOREIGN KEY (`id_administrador`) REFERENCES `administradores` (`id_administrador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vecinos`
--
ALTER TABLE `vecinos`
  ADD CONSTRAINT `FK_comunidad` FOREIGN KEY (`id_comunidad`) REFERENCES `comunidades` (`id_comunidad`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
