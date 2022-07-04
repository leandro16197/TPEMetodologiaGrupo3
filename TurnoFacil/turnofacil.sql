-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
<<<<<<< HEAD
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2022 a las 18:24:09
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11
=======
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2022 at 09:56 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6
>>>>>>> master

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `turnofacil`
--

-- --------------------------------------------------------

--
-- Table structure for table `medico`
--

CREATE TABLE `medico` (
  `id_medico` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Especialidad` varchar(30) NOT NULL,
  `Imagen` mediumblob DEFAULT NULL,
  `Obras_sociales` varchar(50) NOT NULL,
<<<<<<< HEAD
  `urgencia` int(1) NOT NULL
=======
  `urgencia` int(11) NOT NULL DEFAULT 0,
  `id_secretaria` int(11) DEFAULT NULL
>>>>>>> master
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medico`
--

<<<<<<< HEAD
INSERT INTO `medico` (`id_medico`, `Nombre`, `Especialidad`, `Imagen`, `Obras_sociales`, `urgencia`) VALUES
(1, 'Martina Garcia', 'Psicologa', NULL, 'IOMA', 1),
(2, 'Juan Lopez', 'Psicologo', NULL, 'PAMI,OSPEDIC', 0);
=======
INSERT INTO `medico` (`id_medico`, `Nombre`, `Especialidad`, `Imagen`, `Obras_sociales`, `urgencia`, `id_secretaria`) VALUES
(2, 'Martina Garcia', 'Psicologa', NULL, 'IOMA', 1, 1),
(4, 'Juan Lopez', 'Psicologo', NULL, 'PAMI,OSPEDIC', 0, 1);
>>>>>>> master

-- --------------------------------------------------------

--
-- Table structure for table `paciente`
--

CREATE TABLE `paciente` (
  `DNI` int(8) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Telefono` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Obra social` varchar(10) NOT NULL,
  `Numero de afiliado` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paciente`
--

INSERT INTO `paciente` (`DNI`, `Nombre`, `Direccion`, `Telefono`, `Email`, `Obra social`, `Numero de afiliado`) VALUES
(11223344, 'Juan Perez', 'Durruti 1200', '0800 112233', 'JuanPerez@hotmail.com', 'PAMI', 15388954);

-- --------------------------------------------------------

--
-- Table structure for table `secretaria`
--

CREATE TABLE `secretaria` (
  `id_secretaria` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `secretaria`
--

INSERT INTO `secretaria` (`id_secretaria`, `nombre`, `email`) VALUES
(1, 'Florencia Revez', 'FlorenciaRevez@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `turno`
--

CREATE TABLE `turno` (
  `id_turno` int(10) NOT NULL,
  `dni_paciente` int(11) NOT NULL,
  `id_medico` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `confirmado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `turno`
--

<<<<<<< HEAD
INSERT INTO `turno` (`id_turno`, `dni_paciente`, `id_doctor`, `fecha`, `confirmado`) VALUES
(8, 11223344, 2, '2022-05-19 18:26:52', 1);
=======
INSERT INTO `turno` (`id_turno`, `dni_paciente`, `id_medico`, `fecha`, `confirmado`) VALUES
(8, 11223344, 2, '2022-05-19 18:26:52', 1),
(9, 11223344, 4, '2022-05-07 18:26:52', 1),
(10, 11223344, 4, '2022-05-22 20:07:24', 1),
(11, 11223344, 4, '2025-05-07 15:25:18', 1),
(12, 11223344, 2, '2022-05-19 16:36:59', 0),
(13, 11223344, 2, '2022-05-28 16:36:59', 1);
>>>>>>> master

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id_medico`),
  ADD KEY `id_medico` (`id_medico`);

--
-- Indexes for table `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`DNI`),
  ADD KEY `DNI` (`DNI`);

--
-- Indexes for table `secretaria`
--
ALTER TABLE `secretaria`
  ADD PRIMARY KEY (`id_secretaria`);

--
-- Indexes for table `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id_turno`),
  ADD KEY `id_turno` (`id_turno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medico`
--
ALTER TABLE `medico`
  MODIFY `id_medico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `secretaria`
--
ALTER TABLE `secretaria`
  MODIFY `id_secretaria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `turno`
--
ALTER TABLE `turno`
  MODIFY `id_turno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
