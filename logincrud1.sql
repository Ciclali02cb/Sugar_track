-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 13-11-2024 a las 08:09:12
-- Versión del servidor: 8.2.0
-- Versión de PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `logincrud1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas_confirmadas`
--

DROP TABLE IF EXISTS `citas_confirmadas`;
CREATE TABLE IF NOT EXISTS `citas_confirmadas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `estado` enum('pendiente','confirmada') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `citas_confirmadas`
--

INSERT INTO `citas_confirmadas` (`id`, `nombre`, `fecha`, `hora`, `estado`) VALUES
(1, 'Jane Doe', '2023-10-28', '10:30:00', 'confirmada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `stock`) VALUES
(4, 'Fertilizante Granulado', 15.00, 50),
(23, 'Planta de caña', 25.00, 15),
(5, 'Fertilizante Líquido', 12.00, 30),
(6, 'Abono Orgánico', 10.00, 40),
(7, 'Pala', 25.00, 10),
(8, 'Azadón', 18.00, 15),
(9, 'Rastrillo', 15.00, 20),
(10, 'Manguera de Riego', 10.00, 30),
(11, 'Aspersor', 8.00, 25),
(12, 'Semillas de Caña de Azúcar', 5.00, 100),
(13, 'Fungicida', 12.00, 20),
(14, 'Insecticida', 10.00, 15),
(15, 'Herbicida', 15.00, 10),
(16, 'Cinta para Marcar', 5.00, 50),
(17, 'Tijeras de Podar', 8.00, 20),
(18, 'Guantes de Trabajo', 3.00, 30),
(19, 'Sombrero de Sol', 5.00, 20),
(20, 'Botas de Goma', 15.00, 10),
(21, 'Tubo de PVC para Riego', 8.00, 40),
(22, 'Conector de PVC', 2.00, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quejas`
--

DROP TABLE IF EXISTS `quejas`;
CREATE TABLE IF NOT EXISTS `quejas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `mensaje` text,
  `estado` enum('pendiente','verificado') DEFAULT 'pendiente',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `quejas`
--

INSERT INTO `quejas` (`id`, `nombre`, `correo`, `mensaje`, `estado`) VALUES
(1, 'John Doe', 'john.doe@example.com', 'Tengo un problema con el servicio al cliente.', 'pendiente'),
(2, 'Paul Christian', 'admin@gmail.com', 'Tengo un detalle con mi terreno', 'pendiente'),
(3, 'Paul Christian', 'admin@gmail.com', 'Una pregunta cuando vienen a revisar mis  cultivos', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_citas`
--

DROP TABLE IF EXISTS `solicitudes_citas`;
CREATE TABLE IF NOT EXISTS `solicitudes_citas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `estado` enum('pendiente') DEFAULT 'pendiente',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `solicitudes_citas`
--

INSERT INTO `solicitudes_citas` (`id`, `nombre`, `fecha`, `hora`, `estado`) VALUES
(1, 'John Doe', '2023-10-29', '14:00:00', 'pendiente'),
(2, 'Paul Christian', '2024-11-22', '17:15:00', 'pendiente'),
(3, 'Paul Christian', '2024-11-15', '12:30:00', 'pendiente'),
(4, 'Paul Christian', '2024-11-15', '12:30:00', 'pendiente'),
(5, 'Paul Christian', '2024-11-15', '12:30:00', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `nom` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`correo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nom`, `correo`, `pass`) VALUES
('Paul Christian', 'admin@gmail.com', 'admin123'),
('Juan Pérez', 'juanperez@gmail.com', '123456'),
('Luis Hernández', 'luishernandez@yahoo.com', 'qwerty'),
('María Rodríguez', 'mariarodriguez@gmail.com', '987654'),
('Carlos Sánchez', 'carlossanchez@hotmail.com', 'asdfgh'),
('Laura Martínez', 'lauramartinez@yahoo.com', 'zxcvbn'),
('David Gómez', 'davidgomez@gmail.com', '111111'),
('Sofía Torres', 'sofiatorres@hotmail.com', '222222'),
('Pablo Ramírez', 'pabloramirez@yahoo.com', '333333'),
('Andrea Castro', 'andreacastro@gmail.com', '444444'),
('Ruth Reyes', 'ruthireyes@gmail.com', 'zxcasd'),
('Samuel', 'sam_02@hotmail.com', 'sam12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE IF NOT EXISTS `ventas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `producto_id` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `producto_id`, `cantidad`, `fecha`) VALUES
(1, 1, 2, '2023-10-26');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
