-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-06-2025 a las 23:57:43
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
-- Base de datos: `empresa_envios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `ciudad`, `region`) VALUES
(1, 'Laura Gómez', 'Medellín', 'Antioquia'),
(2, 'Carlos Pérez', 'Bogotá', 'Cundinamarca'),
(3, 'Ana Torres', 'Cali', 'Valle'),
(4, 'Jorge Díaz', 'Barranquilla', 'Atlántico'),
(5, 'Sofía Ruiz', 'Cartagena', 'Bolívar'),
(6, 'Felipe Castro', 'Manizales', 'Caldas'),
(7, 'Natalia López', 'Bucaramanga', 'Santander'),
(8, 'Daniel Romero', 'Armenia', 'Quindío'),
(9, 'Camila Salazar', 'Pereira', 'Risaralda'),
(10, 'Andrés Mejía', 'Cúcuta', 'Norte de Santander');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costos_envio`
--

CREATE TABLE `costos_envio` (
  `id_costo` int(11) NOT NULL,
  `id_zona` int(11) DEFAULT NULL,
  `costo_fijo` decimal(10,2) DEFAULT NULL,
  `costo_variable` decimal(10,2) DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `costos_envio`
--

INSERT INTO `costos_envio` (`id_costo`, `id_zona`, `costo_fijo`, `costo_variable`, `fecha_actualizacion`) VALUES
(1, 1, 5000.00, 200.00, '2025-05-31'),
(2, 2, 5500.00, 180.00, '2025-05-31'),
(3, 3, 6000.00, 210.00, '2025-05-31'),
(4, 4, 7000.00, 250.00, '2025-05-31'),
(5, 5, 5000.00, 150.00, '2025-05-31'),
(6, 6, 4000.00, 300.00, '2025-05-31'),
(7, 7, 4500.00, 320.00, '2025-05-31'),
(8, 8, 5300.00, 190.00, '2025-05-31'),
(9, 9, 4800.00, 210.00, '2025-05-31'),
(10, 10, 5200.00, 200.00, '2025-05-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `id_envio` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_zona` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fecha_envio` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id_envio`, `id_cliente`, `id_producto`, `id_zona`, `cantidad`, `fecha_envio`) VALUES
(1, 1, 2, 1, 15, '2025-06-01'),
(2, 2, 5, 2, 10, '2025-06-02'),
(3, 3, 7, 3, 20, '2025-06-03'),
(4, 4, 4, 4, 5, '2025-06-04'),
(5, 5, 1, 5, 8, '2025-06-05'),
(6, 6, 10, 6, 25, '2025-06-06'),
(7, 7, 3, 7, 12, '2025-06-07'),
(8, 8, 6, 8, 30, '2025-06-08'),
(9, 9, 9, 9, 18, '2025-06-09'),
(10, 10, 8, 10, 22, '2025-06-10'),
(11, 4, 2, 3, 10, '2025-06-19'),
(12, 4, 1, 3, 25, '2025-06-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `categoria`, `precio_unitario`) VALUES
(1, 'Café Especial', 'Bebidas', 15000.00),
(2, 'Chocolate Amargo', 'Alimentos', 8000.00),
(3, 'Jugo Natural', 'Bebidas', 5000.00),
(4, 'Pan Integral', 'Panadería', 4500.00),
(5, 'Aceite de Coco', 'Alimentos', 12000.00),
(6, 'Mermelada Natural', 'Alimentos', 10000.00),
(7, 'Galletas de Avena', 'Panadería', 6000.00),
(8, 'Té Verde', 'Bebidas', 7000.00),
(9, 'Granola', 'Alimentos', 9500.00),
(10, 'Agua Mineral', 'Bebidas', 3500.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `id_zona` int(11) NOT NULL,
  `nombre_zona` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `tipo_zona` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`id_zona`, `nombre_zona`, `ciudad`, `tipo_zona`) VALUES
(1, 'Zona Norte', 'Medellín', 'Urbana'),
(2, 'Zona Sur', 'Bogotá', 'Urbana'),
(3, 'Zona Centro', 'Cali', 'Urbana'),
(4, 'Zona Industrial', 'Barranquilla', 'Industrial'),
(5, 'Zona Comercial', 'Cartagena', 'Urbana'),
(6, 'Zona Rural 1', 'Manizales', 'Rural'),
(7, 'Zona Rural 2', 'Bucaramanga', 'Rural'),
(8, 'Zona Este', 'Armenia', 'Urbana'),
(9, 'Zona Oeste', 'Pereira', 'Urbana'),
(10, 'Zona Central', 'Cúcuta', 'Comercial');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `costos_envio`
--
ALTER TABLE `costos_envio`
  ADD PRIMARY KEY (`id_costo`),
  ADD KEY `id_zona` (`id_zona`);

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`id_envio`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_zona` (`id_zona`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`id_zona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `costos_envio`
--
ALTER TABLE `costos_envio`
  MODIFY `id_costo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `envios`
--
ALTER TABLE `envios`
  MODIFY `id_envio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `costos_envio`
--
ALTER TABLE `costos_envio`
  ADD CONSTRAINT `costos_envio_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Filtros para la tabla `envios`
--
ALTER TABLE `envios`
  ADD CONSTRAINT `envios_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `envios_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `envios_ibfk_3` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
