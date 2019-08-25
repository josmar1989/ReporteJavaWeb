-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 24, 2019 at 04:21 AM
-- Server version: 5.7.24-log
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `requerimiento`
--

-- --------------------------------------------------------

--
-- Table structure for table `depto`
--

CREATE TABLE `depto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `gerencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `depto`
--

INSERT INTO `depto` (`id`, `nombre`, `gerencia`) VALUES
(1, 'Ventas 1', 2),
(2, 'Clientes 1', 1),
(3, 'Ventas 2', 2),
(4, 'Clientes 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gerencia`
--

CREATE TABLE `gerencia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `gerencia`
--

INSERT INTO `gerencia` (`id`, `nombre`) VALUES
(1, 'Clientes'),
(2, 'Ventas');

-- --------------------------------------------------------

--
-- Table structure for table `requerimiento`
--

CREATE TABLE `requerimiento` (
  `id` int(11) NOT NULL,
  `detalle` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Activo/cerrado',
  `gerencia` int(11) NOT NULL,
  `depto` int(11) NOT NULL,
  `responsable` int(11) NOT NULL,
  `usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `requerimiento`
--

INSERT INTO `requerimiento` (`id`, `detalle`, `estado`, `gerencia`, `depto`, `responsable`, `usuario`) VALUES
(1, 'Hola, este es el requerimiento de prueba', 'Activo', 1, 2, 4, 1),
(2, 'hola segunda prueba', 'Activo', 1, 1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `responsable`
--

CREATE TABLE `responsable` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `unidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `responsable`
--

INSERT INTO `responsable` (`id`, `nombre`, `unidad`) VALUES
(1, 'Juan Perez', 1),
(2, 'Rodolfo Lopez', 2),
(3, 'Alberto espinoza', 1),
(4, 'Jose Ramirez', 2);

-- --------------------------------------------------------

--
-- Table structure for table `unidad`
--

CREATE TABLE `unidad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `unidad`
--

INSERT INTO `unidad` (`id`, `nombre`) VALUES
(1, 'Soporte TI'),
(2, 'Abastecimiento');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Iniciales del nombre para login',
  `password` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `depto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `usuario`, `password`, `depto`) VALUES
(1, 'Josmar Poblete', 'joz', '123', 1),
(2, 'Marco Oechsler', 'mark', '123', 2),
(3, 'Raul Maturana', 'ram', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `depto`
--
ALTER TABLE `depto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gerencia` (`gerencia`);

--
-- Indexes for table `gerencia`
--
ALTER TABLE `gerencia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requerimiento`
--
ALTER TABLE `requerimiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gerencia` (`gerencia`),
  ADD KEY `depto` (`depto`),
  ADD KEY `responsable` (`responsable`),
  ADD KEY `usuario` (`usuario`);

--
-- Indexes for table `responsable`
--
ALTER TABLE `responsable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unidad` (`unidad`);

--
-- Indexes for table `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `NombreUsuarios` (`usuario`),
  ADD KEY `depto` (`depto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `depto`
--
ALTER TABLE `depto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gerencia`
--
ALTER TABLE `gerencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `requerimiento`
--
ALTER TABLE `requerimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `responsable`
--
ALTER TABLE `responsable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unidad`
--
ALTER TABLE `unidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `depto`
--
ALTER TABLE `depto`
  ADD CONSTRAINT `depto_ibfk_1` FOREIGN KEY (`gerencia`) REFERENCES `gerencia` (`id`);

--
-- Constraints for table `requerimiento`
--
ALTER TABLE `requerimiento`
  ADD CONSTRAINT `requerimiento_ibfk_1` FOREIGN KEY (`gerencia`) REFERENCES `gerencia` (`id`),
  ADD CONSTRAINT `requerimiento_ibfk_2` FOREIGN KEY (`depto`) REFERENCES `depto` (`id`),
  ADD CONSTRAINT `requerimiento_ibfk_3` FOREIGN KEY (`responsable`) REFERENCES `responsable` (`id`),
  ADD CONSTRAINT `requerimiento_ibfk_4` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`);

--
-- Constraints for table `responsable`
--
ALTER TABLE `responsable`
  ADD CONSTRAINT `responsable_ibfk_1` FOREIGN KEY (`unidad`) REFERENCES `unidad` (`id`);

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`depto`) REFERENCES `depto` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
