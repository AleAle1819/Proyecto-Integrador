-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3310
-- Tiempo de generación: 10-05-2023 a las 01:42:33
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basedatos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablausers`
--

CREATE TABLE `tablausers` (
  `ID` int(11) UNSIGNED NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `Apellido` varchar(150) NOT NULL,
  `Edad` int(20) NOT NULL,
  `Rol` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tablausers`
--

INSERT INTO `tablausers` (`ID`, `Nombre`, `Apellido`, `Edad`, `Rol`) VALUES
(1020456213, 'Andrea', 'Leon', 25, 'Paciente'),
(1020845213, 'Edson', 'Calisaya', 28, 'Paciente'),
(1020956231, 'Edson', 'Calisaya', 26, 'Asesor'),
(1024521345, 'Paolo', 'Mendez', 28, 'Paciente'),
(1031584765, 'Camilo', 'Pardo', 37, 'Asesor'),
(1032456212, 'Jorge', 'Castro', 28, 'Asesor'),
(1032564121, 'Paolo', 'Mendez', 27, 'Paciente'),
(1045213256, 'Salomé', 'Pachón', 25, 'Paciente'),
(1055428271, 'Samantha', 'Noelis', 21, 'Paciente'),
(1059712453, 'Camilo', 'Sánchez', 37, 'Asesor'),
(1068593751, 'Samuel', 'Velazquez', 19, 'Paciente'),
(1069582751, 'Andrea', 'Leon', 50, 'Asesor'),
(1069582754, 'Camilo', 'Sánchez', 29, 'Paciente'),
(1069582761, 'Alex', 'Alba', 25, 'Asesor'),
(1069582764, 'Andrea', 'Leon', 28, 'Paciente'),
(1096542212, 'Andrés', 'Riaño', 20, 'Paciente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tablausers`
--
ALTER TABLE `tablausers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tablausers`
--
ALTER TABLE `tablausers`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1567891255;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
