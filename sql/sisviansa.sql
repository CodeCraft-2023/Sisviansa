-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2023 a las 03:43:51
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
-- Base de datos: `codecraft`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cambiaestadom`
--

CREATE TABLE `cambiaestadom` (
  `idEstadoM` int(11) NOT NULL,
  `idMenu` int(11) NOT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `cambiaestadom`
--

INSERT INTO `cambiaestadom` (`idEstadoM`, `idMenu`, `fechaInicio`, `fechaFin`) VALUES
(1, 1, '2023-10-19', '2023-10-20'),
(1, 4, '2023-10-22', '2023-10-23'),
(2, 2, '2023-10-20', '2023-10-21'),
(2, 5, '2023-10-23', '2023-10-24'),
(3, 3, '2023-10-21', '2023-10-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cambiaestadop`
--

CREATE TABLE `cambiaestadop` (
  `idPedido` int(11) NOT NULL,
  `idEstadoP` int(11) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `cambiaestadop`
--

INSERT INTO `cambiaestadop` (`idPedido`, `idEstadoP`, `fechaInicio`, `fechaFin`) VALUES
(1, 1, '2023-10-19', '2023-10-20'),
(2, 2, '2023-10-20', '2023-10-21'),
(3, 3, '2023-10-21', '2023-10-22'),
(4, 1, '2023-10-22', '2023-10-23'),
(5, 2, '2023-10-23', '2023-10-24'),
(6, 3, '2023-10-24', '2023-10-25'),
(7, 1, '2023-10-25', '2023-10-26'),
(8, 2, '2023-10-26', '2023-10-27'),
(9, 3, '2023-10-27', '2023-10-28'),
(10, 1, '2023-10-28', '2023-10-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `nCliente` int(11) NOT NULL,
  `correo` varchar(20) NOT NULL,
  `barrio` varchar(20) NOT NULL,
  `calle` varchar(20) NOT NULL,
  `nPuerta` int(11) NOT NULL,
  `esquina` varchar(20) NOT NULL,
  `estadoCliente` varchar(20) NOT NULL,
  `contrasena` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`nCliente`, `correo`, `barrio`, `calle`, `nPuerta`, `esquina`, `estadoCliente`) VALUES
(1, 'cliente1@example.com', 'Barrio1', 'Calle1', 123, 'Esquina1', 'Activo'),
(2, 'cliente2@example.com', 'Barrio2', 'Calle2', 456, 'Esquina2', 'Activo'),
(3, 'cliente3@example.com', 'Barrio3', 'Calle3', 789, 'Esquina3', 'Activo'),
(4, 'cliente4@example.com', 'Barrio4', 'Calle4', 101, 'Esquina4', 'Activo'),
(5, 'cliente5@example.com', 'Barrio5', 'Calle5', 222, 'Esquina5', 'Activo'),
(6, 'cliente6@example.com', 'Barrio6', 'Calle6', 333, 'Esquina6', 'Activo'),
(7, 'cliente7@example.com', 'Barrio7', 'Calle7', 444, 'Esquina7', 'Activo'),
(8, 'cliente8@example.com', 'Barrio8', 'Calle8', 555, 'Esquina8', 'Activo'),
(9, 'cliente9@example.com', 'Barrio9', 'Calle9', 666, 'Esquina9', 'Activo'),
(10, 'cliente10@example.co', 'Barrio10', 'Calle10', 777, 'Esquina10', 'Activo'),
(11, 'cliente11@example.co', 'Barrio11', 'Calle11', 888, 'Esquina11', 'Activo'),
(12, 'cliente12@example.co', 'Barrio12', 'Calle12', 999, 'Esquina12', 'Activo'),
(13, 'cliente13@example.co', 'Barrio13', 'Calle13', 111, 'Esquina13', 'Activo'),
(14, 'cliente14@example.co', 'Barrio14', 'Calle14', 222, 'Esquina14', 'Activo'),
(15, 'cliente15@example.co', 'Barrio15', 'Calle15', 333, 'Esquina15', 'Activo'),
(16, 'cliente16@example.co', 'Barrio16', 'Calle16', 444, 'Esquina16', 'Activo'),
(17, 'cliente17@example.co', 'Barrio17', 'Calle17', 555, 'Esquina17', 'Activo'),
(18, 'cliente18@example.co', 'Barrio18', 'Calle18', 666, 'Esquina18', 'Activo'),
(19, 'cliente19@example.co', 'Barrio19', 'Calle19', 777, 'Esquina19', 'Activo'),
(20, 'cliente20@example.co', 'Barrio20', 'Calle20', 888, 'Esquina20', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clienteempresa`
--

CREATE TABLE `clienteempresa` (
  `nCliente` int(11) NOT NULL,
  `rut` int(11) NOT NULL,
  `razonSocial` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `clienteempresa`
--

INSERT INTO `clienteempresa` (`nCliente`, `rut`, `razonSocial`) VALUES
(11, 123456789, 'Empresa1 S.A.'),
(12, 234567890, 'Empresa2 S.A.'),
(13, 345678901, 'Empresa3 S.A.'),
(14, 456789012, 'Empresa4 S.A.'),
(15, 567890123, 'Empresa5 S.A.'),
(16, 678901234, 'Empresa6 S.A.'),
(17, 789012345, 'Empresa7 S.A.'),
(18, 890123456, 'Empresa8 S.A.'),
(19, 901234567, 'Empresa9 S.A.'),
(20, 101112131, 'Empresa10 S.A.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientefisico`
--

CREATE TABLE `clientefisico` (
  `nCliente` int(11) NOT NULL,
  `tipoDocumento` varchar(20) NOT NULL,
  `nDocumento` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `clientefisico`
--

INSERT INTO `clientefisico` (`nCliente`, `tipoDocumento`, `nDocumento`, `nombre`, `apellido`) VALUES
(1, 'DNI', 12345678, 'Juan', 'Pérez'),
(2, 'DNI', 23456789, 'Ana', 'Gómez'),
(3, 'DNI', 34567890, 'Carlos', 'López'),
(4, 'DNI', 45678901, 'María', 'Rodríguez'),
(5, 'DNI', 56789012, 'Luis', 'Fernández'),
(6, 'DNI', 67890123, 'Laura', 'Martínez'),
(7, 'DNI', 78901234, 'Pedro', 'Sánchez'),
(8, 'DNI', 89012345, 'Carmen', 'García'),
(9, 'DNI', 90123456, 'Sergio', 'Díaz'),
(10, 'DNI', 10111213, 'Lucía', 'Torres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componelote`
--

CREATE TABLE `componelote` (
  `nLote` int(11) NOT NULL,
  `idMenu` int(11) NOT NULL,
  `idPlato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `componelote`
--

INSERT INTO `componelote` (`nLote`, `idMenu`, `idPlato`) VALUES
(1, 1, 1),
(1, 1, 2),
(2, 2, 3),
(2, 2, 4),
(3, 3, 5),
(3, 3, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componemenu`
--

CREATE TABLE `componemenu` (
  `idMenu` int(11) NOT NULL,
  `idPlato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `componemenu`
--

INSERT INTO `componemenu` (`idMenu`, `idPlato`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componesucursal`
--

CREATE TABLE `componesucursal` (
  `idMenu` int(11) NOT NULL,
  `idPlato` int(11) NOT NULL,
  `nSucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `componesucursal`
--

INSERT INTO `componesucursal` (`idMenu`, `idPlato`, `nSucursal`) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 2),
(2, 4, 2),
(3, 5, 3),
(3, 6, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dieta`
--

CREATE TABLE `dieta` (
  `idDieta` int(11) NOT NULL,
  `tipoDieta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `dieta`
--

INSERT INTO `dieta` (`idDieta`, `tipoDieta`) VALUES
(1, 'Vegetariana'),
(2, 'Vegana'),
(3, 'Celiaca'),
(4, 'Diabético'),
(5, 'Hipertenso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadomenu`
--

CREATE TABLE `estadomenu` (
  `idEstadoM` int(11) NOT NULL,
  `tipoEstadoM` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `estadomenu`
--

INSERT INTO `estadomenu` (`idEstadoM`, `tipoEstadoM`) VALUES
(1, 'Solicitado'),
(2, 'En Stock'),
(3, 'En Producción'),
(4, 'Envasado'),
(5, 'Entregado'),
(6, 'Devuelto'),
(7, 'Desechado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadopedido`
--

CREATE TABLE `estadopedido` (
  `idEstadoP` int(11) NOT NULL,
  `tipoEstadoP` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `estadopedido`
--

INSERT INTO `estadopedido` (`idEstadoP`, `tipoEstadoP`) VALUES
(1, 'Solicitado'),
(2, 'Confrimado'),
(3, 'Enviado'),
(4, 'Entregado'),
(5, 'Rechazado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hacepedido`
--

CREATE TABLE `hacepedido` (
  `nCliente` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL,
  `fechaPedido` date NOT NULL,
  `medioPago` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `hacepedido`
--

INSERT INTO `hacepedido` (`nCliente`, `idPedido`, `fechaPedido`, `medioPago`) VALUES
(1, 1, '2023-10-19', 'Tarjeta de Crédito'),
(2, 2, '2023-10-20', 'Efectivo'),
(3, 3, '2023-10-21', 'PayPal'),
(4, 4, '2023-10-22', 'Tarjeta de Crédito'),
(5, 5, '2023-10-23', 'Efectivo'),
(6, 6, '2023-10-24', 'PayPal'),
(7, 7, '2023-10-25', 'Tarjeta de Crédito'),
(8, 8, '2023-10-26', 'Efectivo'),
(9, 9, '2023-10-27', 'PayPal'),
(10, 10, '2023-10-28', 'Tarjeta de Crédito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lotemenu`
--

CREATE TABLE `lotemenu` (
  `nLote` int(11) NOT NULL,
  `duracion` int(11) NOT NULL,
  `fechaEnvasado` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `lotemenu`
--

INSERT INTO `lotemenu` (`nLote`, `duracion`, `fechaEnvasado`) VALUES
(1, 5, '2023-10-19'),
(2, 7, '2023-10-20'),
(3, 6, '2023-10-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `idMenu` int(11) NOT NULL,
  `precio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`idMenu`, `precio`) VALUES
(1, 15),
(2, 20),
(3, 18),
(4, 25),
(5, 22),
(6, 12),
(7, 10),
(8, 14),
(9, 19),
(10, 21),
(11, 15),
(12, 20),
(13, 18),
(14, 25),
(15, 22),
(16, 10),
(17, 12),
(18, 11),
(19, 14),
(20, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menucomun`
--

CREATE TABLE `menucomun` (
  `idMenu` int(11) NOT NULL,
  `frecuencia` int(11) NOT NULL,
  `tiempoElaboracion` int(11) NOT NULL,
  `stockMaximo` int(11) NOT NULL,
  `stockMinimo` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `menucomun`
--

INSERT INTO `menucomun` (`idMenu`, `frecuencia`, `tiempoElaboracion`, `stockMaximo`, `stockMinimo`, `stock`) VALUES
(1, 7, 20, 50, 10, 30),
(2, 6, 25, 60, 15, 40),
(3, 5, 22, 55, 12, 35),
(4, 7, 20, 50, 10, 30),
(5, 6, 25, 60, 15, 40),
(6, 5, 22, 55, 12, 35),
(7, 7, 20, 50, 10, 30),
(8, 6, 25, 60, 15, 40),
(9, 5, 22, 55, 12, 35),
(10, 7, 20, 50, 10, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menuespecial`
--

CREATE TABLE `menuespecial` (
  `idMenu` int(11) NOT NULL,
  `cantidadPlatos` int(11) NOT NULL,
  `tiempoElaboracion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `menuespecial`
--

INSERT INTO `menuespecial` (`idMenu`, `cantidadPlatos`, `tiempoElaboracion`) VALUES
(11, 4, 30),
(12, 3, 28),
(13, 5, 35),
(14, 4, 30),
(15, 3, 28),
(16, 5, 35),
(17, 4, 30),
(18, 3, 28),
(19, 5, 35),
(20, 4, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `idMenu` int(11) NOT NULL,
  `nCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idPedido`, `idMenu`, `nCliente`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plato`
--

CREATE TABLE `plato` (
  `idPlato` int(11) NOT NULL,
  `tiempoElaboracion` int(11) NOT NULL,
  `valorNutricional` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `plato`
--

INSERT INTO `plato` (`idPlato`, `tiempoElaboracion`, `valorNutricional`) VALUES
(1, 30, 350),
(2, 25, 400),
(3, 20, 280),
(4, 35, 450),
(5, 40, 320),
(6, 15, 280),
(7, 25, 360),
(8, 30, 410),
(9, 22, 290),
(10, 28, 380);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `nSucursal` int(11) NOT NULL,
  `idMenu` int(11) DEFAULT NULL,
  `idPlato` int(11) DEFAULT NULL,
  `nCliente` int(11) DEFAULT NULL,
  `cocinas` int(11) NOT NULL,
  `direccion` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`nSucursal`, `idMenu`, `idPlato`, `nCliente`, `cocinas`, `direccion`, `telefono`) VALUES
(1, 1, 1, 1, 5, 'Dirección Sucursal 1', '555-123456'),
(2, 2, 2, 2, 6, 'Dirección Sucursal 2', '555-234567'),
(3, 3, 3, 3, 7, 'Dirección Sucursal 3', '555-345678');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `nCliente` int(11) NOT NULL,
  `telefonoUno` varchar(20) NOT NULL,
  `telefonoDos` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`nCliente`, `telefonoUno`, `telefonoDos`, `celular`) VALUES
(1, '12345678', '87654321', '55555555'),
(2, '23456789', '98765432', '55555556'),
(3, '34567890', '87654321', '55555557'),
(4, '45678901', '76543210', '55555558'),
(5, '56789012', '65432109', '55555559'),
(6, '67890123', '54321098', '55555560'),
(7, '78901234', '43210987', '55555561'),
(8, '89012345', '32109876', '55555562'),
(9, '90123456', '21098765', '55555563'),
(10, '10111213', '10987654', '55555564'),
(11, '11121314', '12131415', '55555565'),
(12, '12131415', '13141516', '55555566'),
(13, '13141516', '14151617', '55555567'),
(14, '14151617', '15161718', '55555568'),
(15, '15161718', '16171819', '55555569'),
(16, '16171819', '17181920', '55555570'),
(17, '17181920', '18192021', '55555571'),
(18, '18192021', '19202122', '55555572'),
(19, '19202122', '20212223', '55555573'),
(20, '20212223', '21222324', '55555574');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiene`
--

CREATE TABLE `tiene` (
  `idPlato` int(11) NOT NULL,
  `idDieta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tiene`
--

INSERT INTO `tiene` (`idPlato`, `idDieta`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 2),
(4, 1),
(5, 3),
(6, 1),
(6, 2),
(7, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cambiaestadom`
--
ALTER TABLE `cambiaestadom`
  ADD PRIMARY KEY (`idEstadoM`,`idMenu`),
  ADD KEY `idMenu` (`idMenu`);

--
-- Indices de la tabla `cambiaestadop`
--
ALTER TABLE `cambiaestadop`
  ADD PRIMARY KEY (`idPedido`,`idEstadoP`),
  ADD KEY `idEstadoP` (`idEstadoP`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`nCliente`);

--
-- Indices de la tabla `clienteempresa`
--
ALTER TABLE `clienteempresa`
  ADD PRIMARY KEY (`nCliente`);

--
-- Indices de la tabla `clientefisico`
--
ALTER TABLE `clientefisico`
  ADD PRIMARY KEY (`nCliente`);

--
-- Indices de la tabla `componelote`
--
ALTER TABLE `componelote`
  ADD PRIMARY KEY (`nLote`,`idMenu`,`idPlato`),
  ADD KEY `idMenu` (`idMenu`),
  ADD KEY `idPlato` (`idPlato`);

--
-- Indices de la tabla `componemenu`
--
ALTER TABLE `componemenu`
  ADD PRIMARY KEY (`idMenu`,`idPlato`),
  ADD KEY `idPlato` (`idPlato`);

--
-- Indices de la tabla `componesucursal`
--
ALTER TABLE `componesucursal`
  ADD PRIMARY KEY (`idMenu`,`idPlato`,`nSucursal`),
  ADD KEY `nSucursal` (`nSucursal`);

--
-- Indices de la tabla `dieta`
--
ALTER TABLE `dieta`
  ADD PRIMARY KEY (`idDieta`);

--
-- Indices de la tabla `estadomenu`
--
ALTER TABLE `estadomenu`
  ADD PRIMARY KEY (`idEstadoM`);

--
-- Indices de la tabla `estadopedido`
--
ALTER TABLE `estadopedido`
  ADD PRIMARY KEY (`idEstadoP`);

--
-- Indices de la tabla `hacepedido`
--
ALTER TABLE `hacepedido`
  ADD PRIMARY KEY (`nCliente`,`idPedido`),
  ADD KEY `idPedido` (`idPedido`);

--
-- Indices de la tabla `lotemenu`
--
ALTER TABLE `lotemenu`
  ADD PRIMARY KEY (`nLote`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idMenu`);

--
-- Indices de la tabla `menucomun`
--
ALTER TABLE `menucomun`
  ADD PRIMARY KEY (`idMenu`);

--
-- Indices de la tabla `menuespecial`
--
ALTER TABLE `menuespecial`
  ADD PRIMARY KEY (`idMenu`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`,`idMenu`,`nCliente`),
  ADD KEY `idMenu` (`idMenu`),
  ADD KEY `nCliente` (`nCliente`);

--
-- Indices de la tabla `plato`
--
ALTER TABLE `plato`
  ADD PRIMARY KEY (`idPlato`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`nSucursal`),
  ADD KEY `idMenu` (`idMenu`),
  ADD KEY `idPlato` (`idPlato`),
  ADD KEY `nCliente` (`nCliente`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`nCliente`);

--
-- Indices de la tabla `tiene`
--
ALTER TABLE `tiene`
  ADD PRIMARY KEY (`idPlato`,`idDieta`),
  ADD KEY `idDieta` (`idDieta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `nCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `dieta`
--
ALTER TABLE `dieta`
  MODIFY `idDieta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estadomenu`
--
ALTER TABLE `estadomenu`
  MODIFY `idEstadoM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `estadopedido`
--
ALTER TABLE `estadopedido`
  MODIFY `idEstadoP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `lotemenu`
--
ALTER TABLE `lotemenu`
  MODIFY `nLote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `idMenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `plato`
--
ALTER TABLE `plato`
  MODIFY `idPlato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `nSucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cambiaestadom`
--
ALTER TABLE `cambiaestadom`
  ADD CONSTRAINT `cambiaestadom_ibfk_1` FOREIGN KEY (`idEstadoM`) REFERENCES `estadomenu` (`idEstadoM`),
  ADD CONSTRAINT `cambiaestadom_ibfk_2` FOREIGN KEY (`idMenu`) REFERENCES `menu` (`idMenu`);

--
-- Filtros para la tabla `cambiaestadop`
--
ALTER TABLE `cambiaestadop`
  ADD CONSTRAINT `cambiaestadop_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`),
  ADD CONSTRAINT `cambiaestadop_ibfk_2` FOREIGN KEY (`idEstadoP`) REFERENCES `estadopedido` (`idEstadoP`);

--
-- Filtros para la tabla `clienteempresa`
--
ALTER TABLE `clienteempresa`
  ADD CONSTRAINT `clienteempresa_ibfk_1` FOREIGN KEY (`nCliente`) REFERENCES `cliente` (`nCliente`);

--
-- Filtros para la tabla `clientefisico`
--
ALTER TABLE `clientefisico`
  ADD CONSTRAINT `clientefisico_ibfk_1` FOREIGN KEY (`nCliente`) REFERENCES `cliente` (`nCliente`);

--
-- Filtros para la tabla `componelote`
--
ALTER TABLE `componelote`
  ADD CONSTRAINT `componelote_ibfk_1` FOREIGN KEY (`nLote`) REFERENCES `lotemenu` (`nLote`),
  ADD CONSTRAINT `componelote_ibfk_2` FOREIGN KEY (`idMenu`) REFERENCES `menu` (`idMenu`),
  ADD CONSTRAINT `componelote_ibfk_3` FOREIGN KEY (`idPlato`) REFERENCES `plato` (`idPlato`);

--
-- Filtros para la tabla `componemenu`
--
ALTER TABLE `componemenu`
  ADD CONSTRAINT `componemenu_ibfk_1` FOREIGN KEY (`idMenu`) REFERENCES `menu` (`idMenu`),
  ADD CONSTRAINT `componemenu_ibfk_2` FOREIGN KEY (`idPlato`) REFERENCES `plato` (`idPlato`);

--
-- Filtros para la tabla `componesucursal`
--
ALTER TABLE `componesucursal`
  ADD CONSTRAINT `componesucursal_ibfk_1` FOREIGN KEY (`idMenu`,`idPlato`) REFERENCES `componemenu` (`idMenu`, `idPlato`),
  ADD CONSTRAINT `componesucursal_ibfk_2` FOREIGN KEY (`nSucursal`) REFERENCES `sucursal` (`nSucursal`);

--
-- Filtros para la tabla `hacepedido`
--
ALTER TABLE `hacepedido`
  ADD CONSTRAINT `hacepedido_ibfk_1` FOREIGN KEY (`nCliente`) REFERENCES `cliente` (`nCliente`),
  ADD CONSTRAINT `hacepedido_ibfk_2` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`);

--
-- Filtros para la tabla `menucomun`
--
ALTER TABLE `menucomun`
  ADD CONSTRAINT `menucomun_ibfk_1` FOREIGN KEY (`idMenu`) REFERENCES `menu` (`idMenu`);

--
-- Filtros para la tabla `menuespecial`
--
ALTER TABLE `menuespecial`
  ADD CONSTRAINT `menuespecial_ibfk_1` FOREIGN KEY (`idMenu`) REFERENCES `menu` (`idMenu`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idMenu`) REFERENCES `menu` (`idMenu`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`nCliente`) REFERENCES `cliente` (`nCliente`);

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`idMenu`) REFERENCES `menu` (`idMenu`),
  ADD CONSTRAINT `sucursal_ibfk_2` FOREIGN KEY (`idPlato`) REFERENCES `plato` (`idPlato`),
  ADD CONSTRAINT `sucursal_ibfk_3` FOREIGN KEY (`nCliente`) REFERENCES `cliente` (`nCliente`);

--
-- Filtros para la tabla `tiene`
--
ALTER TABLE `tiene`
  ADD CONSTRAINT `tiene_ibfk_1` FOREIGN KEY (`idPlato`) REFERENCES `plato` (`idPlato`),
  ADD CONSTRAINT `tiene_ibfk_2` FOREIGN KEY (`idDieta`) REFERENCES `dieta` (`idDieta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
