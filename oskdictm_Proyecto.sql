-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 27-07-2020 a las 15:55:52
-- Versión del servidor: 10.3.23-MariaDB-cll-lve
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `oskdictm_Proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `IdCliente` int(30) NOT NULL,
  `DocumentoCliente` int(30) NOT NULL,
  `NombreCliente` varchar(30) NOT NULL,
  `ApellidoCliente` varchar(30) NOT NULL,
  `FechaRegistroCliente` date NOT NULL,
  `Genero` varchar(30) NOT NULL,
  `Usuario` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `ClaveCliente` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`IdCliente`, `DocumentoCliente`, `NombreCliente`, `ApellidoCliente`, `FechaRegistroCliente`, `Genero`, `Usuario`, `Correo`, `ClaveCliente`) VALUES
(7, 0, 'Cristian', 'Timana', '2020-03-01', 'Masculino', '', '', ''),
(8, 1000285895, 'Sofia', 'Gomez', '2020-07-27', 'Femenino', 'sofia', 'piegomalo2001@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(9, 1000285893, 'Sebastian', 'Gomez', '2020-07-27', 'Masculino', 'sebas', 'pipegomalo201@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(10, 1000285898, 'Sebastian', 'Gomez', '2020-07-27', 'Masculino', 'carlos', 'pipegomalo@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(11, 1000708856, 'Felipe', 'Gomez', '2020-07-27', 'MASCULINO', 'FelipeG', 'Felipe@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `IdEmpleado` int(30) NOT NULL,
  `DocumentoEmpleado` int(30) NOT NULL,
  `NombreEmpleado` varchar(40) NOT NULL,
  `ApellidoEmpleado` varchar(40) NOT NULL,
  `FechacontratoInicio` date NOT NULL,
  `FechacontratoFinal` date NOT NULL,
  `Estado` varchar(200) NOT NULL,
  `Correo` varchar(200) NOT NULL,
  `Usuario` varchar(40) NOT NULL,
  `Clave` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`IdEmpleado`, `DocumentoEmpleado`, `NombreEmpleado`, `ApellidoEmpleado`, `FechacontratoInicio`, `FechacontratoFinal`, `Estado`, `Correo`, `Usuario`, `Clave`) VALUES
(8, 0, 'Cristian', 'Timana', '2020-03-01', '2020-03-31', 'Activo', 'neitimacris@hotmail.com', 'CRISTIM', '$2y$10$trV8gvluiiYvHO1SW7uYSeaowvkqEq2WiV/MbGQBfLT3rjxBfRSFW'),
(10, 1000285894, 'AndrÃ©s', 'Gomez', '2020-07-25', '2020-07-30', 'ACTIVO', 'pipegomalo2001@gmail.com', 'pipe', '81dc9bdb52d04dc20036dbd8313ed055'),
(11, 1000285896, 'Johann', 'Gomez', '2020-07-27', '2020-07-31', 'ACTIVO', 'pipegomalo20@gmail.com', 'guz', '81dc9bdb52d04dc20036dbd8313ed055'),
(12, 1000708857, 'Sebastian', '', '0000-00-00', '0000-00-00', 'ACTIVO', '', '', 'd41d8cd98f00b204e9800998ecf8427e'),
(13, 1000708857, 'Sebastian', 'Gordillo', '2020-07-27', '2020-09-23', 'ACTIVO', 'SEBASTIAN@GMAIL.COM', 'SEBASTIAN_G', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `IdServicio` int(30) NOT NULL,
  `NombreServicio` varchar(30) NOT NULL,
  `PrecioServicio` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`IdServicio`, `NombreServicio`, `PrecioServicio`) VALUES
(1, 'Corte Hombre', '10000'),
(2, 'Corte Mujer', '15000'),
(3, 'Tinturado', '25000'),
(4, 'Pedicure', '8000'),
(5, 'Manicure', '6000'),
(6, 'Alizado', '6000'),
(7, 'Depilacion', '8000'),
(8, 'Keratina', '80000'),
(9, 'Peinado Mujer', '17000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `IdTurno` int(30) NOT NULL,
  `ServicioId` int(30) NOT NULL,
  `ClienteId` int(30) NOT NULL,
  `EmpleadoId` int(30) NOT NULL,
  `FechaReserva` date NOT NULL,
  `HoraReserva` time(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`IdTurno`, `ServicioId`, `ClienteId`, `EmpleadoId`, `FechaReserva`, `HoraReserva`) VALUES
(12, 1, 7, 8, '2020-03-12', '14:00:00.000000'),
(11, 1, 7, 7, '2020-03-14', '14:00:00.000000'),
(13, 1, 8, 10, '2020-07-27', '12:00:00.000000'),
(14, 6, 8, 11, '2020-07-27', '11:23:00.000000'),
(15, 8, 8, 11, '2020-07-28', '20:19:00.000000'),
(16, 8, 8, 11, '2020-07-28', '20:19:00.000000'),
(17, 8, 9, 11, '2020-07-28', '20:19:00.000000'),
(18, 2, 11, 13, '2020-07-27', '14:02:00.000000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`IdEmpleado`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`IdServicio`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`IdTurno`),
  ADD KEY `turno_FKIndex1` (`ServicioId`),
  ADD KEY `turno_FKIndex2` (`ClienteId`),
  ADD KEY `turno_FKIndex3` (`EmpleadoId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `IdCliente` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `IdEmpleado` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `IdServicio` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `IdTurno` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
