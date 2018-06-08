-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 08, 2018 at 04:03 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lidosuites`
--

-- --------------------------------------------------------

--
-- Table structure for table `alicuotas`
--

CREATE TABLE `alicuotas` (
  `id_alicuota` int(10) UNSIGNED NOT NULL,
  `alicuota` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `monto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `alicuotas`
--

INSERT INTO `alicuotas` (`id_alicuota`, `alicuota`, `monto`, `created`) VALUES
(1, 'Cinco %', '5', '2018-05-15 01:47:20'),
(2, 'Dos %', '2', '2018-05-27 19:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `apartamentos`
--

CREATE TABLE `apartamentos` (
  `id_apartamento` int(10) UNSIGNED NOT NULL,
  `id_alicuota` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `saldo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `apartamentos`
--

INSERT INTO `apartamentos` (`id_apartamento`, `id_alicuota`, `nombre`, `saldo`, `created`) VALUES
(5, 1, 'Apartamento nro 4', '242', '2018-05-15 01:56:49'),
(6, 2, 'Apartamento 5', '200', '2018-06-04 00:06:30');

-- --------------------------------------------------------

--
-- Table structure for table `auditorias`
--

CREATE TABLE `auditorias` (
  `id_auditoria` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `evento` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `tabla` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `auditorias`
--

INSERT INTO `auditorias` (`id_auditoria`, `id_usuario`, `evento`, `tabla`, `created`) VALUES
(1, 1, 'Editar un usuario', 'usuarios', '2018-04-24 19:31:36'),
(2, 1, 'Agregar un proveedor', 'proveedores', '2018-05-02 13:36:40'),
(3, 1, 'Editar un propietario', 'propietarios', '2018-05-02 13:45:18'),
(4, 1, 'Agregar un proveedor', 'proveedores', '2018-05-02 13:49:39'),
(5, 1, 'Eliminar un proveedor', 'proveedores', '2018-05-02 13:50:01'),
(6, 2, 'Agregar una mensualidad', 'mensualidad', '2018-05-15 00:11:20'),
(7, 2, 'Agregar un propietario', 'propietarios', '2018-05-15 00:12:20'),
(8, 2, 'Agregar un propietario', 'propietarios', '2018-05-15 00:23:57'),
(9, 2, 'Agregar un proveedor', 'proveedores', '2018-05-15 00:24:21'),
(10, 2, 'Agregar un proveedor', 'proveedores', '2018-05-15 00:25:15'),
(11, 2, 'Agregar una novedad', 'novedades', '2018-05-15 00:25:26'),
(12, 1, 'Agregar una alicuota', 'alicuotas', '2018-05-15 01:47:20'),
(13, 1, 'Agregar un apartamento', 'apartamentos', '2018-05-15 01:49:30'),
(14, 1, 'Agregar un apartamento', 'apartamentos', '2018-05-15 01:50:44'),
(15, 1, 'Agregar un apartamento', 'apartamentos', '2018-05-15 01:52:09'),
(16, 1, 'Agregar un apartamento', 'apartamentos', '2018-05-15 01:52:57'),
(17, 1, 'Eliminar un apartamento', 'apartamentos', '2018-05-15 01:56:36'),
(18, 1, 'Agregar un apartamento', 'apartamentos', '2018-05-15 01:56:49'),
(19, 1, 'Editar un apartamento', 'apartamentos', '2018-05-15 02:03:11'),
(20, 1, 'Agregar un banco', 'bancos', '2018-05-15 13:56:48'),
(21, 3, 'Agregar una notificacion ', 'pagos', '2018-05-15 13:58:01'),
(22, 3, 'Agregar una notificacion ', 'pagos', '2018-05-15 14:00:28'),
(23, 2, 'Agregar un propietario', 'propietarios', '2018-05-15 14:28:30'),
(24, 3, 'Agregar una notificacion ', 'pagos', '2018-05-15 14:43:23'),
(25, 2, 'Aprobar pago', 'pagos', '2018-05-15 14:58:06'),
(26, 3, 'Agregar una notificacion ', 'pagos', '2018-05-15 15:26:31'),
(27, 3, 'Agregar una notificacion ', 'pagos', '2018-05-15 15:27:19'),
(28, 3, 'Agregar una notificacion ', 'pagos', '2018-05-15 15:30:35'),
(29, 2, 'Aprobar pago', 'pagos', '2018-05-15 15:30:47'),
(30, 3, 'Agregar una notificacion ', 'pagos', '2018-05-18 00:37:30'),
(34, 3, 'Agregar una notificacion ', 'pagos', '2018-05-18 00:57:37'),
(35, 2, 'Aprobar pago', 'pagos', '2018-05-19 13:56:57'),
(36, 2, 'Aprobar pago', 'pagos', '2018-05-19 15:21:09'),
(37, 2, 'Aprobar pago', 'pagos', '2018-05-19 15:21:14'),
(39, 3, 'Agregar una notificacion ', 'pagos', '2018-05-19 15:32:40'),
(40, 1, 'Agregar una unidad tribut', 'ut', '2018-05-19 19:48:28'),
(42, 2, 'Aprobar pago', 'pagos', '2018-05-19 20:17:23'),
(43, 2, 'Aprobar pago', 'pagos', '2018-05-20 00:39:06'),
(45, 2, 'Aprobar pago', 'pagos', '2018-05-20 02:09:25'),
(46, 2, 'Aprobar pago', 'pagos', '2018-05-20 02:13:50'),
(47, 3, 'Agregar una notificacion ', 'pagos', '2018-05-20 02:20:38'),
(48, 1, 'Agregar una alicuota', 'alicuotas', '2018-05-27 19:32:33'),
(49, 1, 'Agregar una unidad tribut', 'ut', '2018-05-27 19:32:55'),
(50, 1, 'Agregar un banco', 'bancos', '2018-05-27 19:33:16'),
(51, 3, 'Agregar una notificacion ', 'pagos', '2018-05-28 00:40:45'),
(52, 3, 'Editar una notificacion', 'pagos', '2018-05-28 02:17:55'),
(53, 3, 'Editar una notificacion', 'pagos', '2018-05-28 02:18:15'),
(54, 3, 'Editar una notificacion', 'pagos', '2018-05-28 02:19:04'),
(55, 3, 'Editar una notificacion', 'pagos', '2018-05-28 02:20:30'),
(56, 3, 'Editar una notificacion', 'pagos', '2018-05-28 02:21:40'),
(57, 3, 'Editar una notificacion', 'pagos', '2018-05-28 02:23:23'),
(58, 3, 'Editar una notificacion', 'pagos', '2018-05-28 02:28:53'),
(59, 2, 'Aprobar pago', 'pagos', '2018-05-28 02:29:58'),
(60, 2, 'Agregar un gasto', 'gastos', '2018-05-31 00:38:53'),
(61, 2, 'Agregar un gasto', 'gastos', '2018-05-31 00:40:51'),
(62, 2, 'Editar un gasto', 'gastos', '2018-05-31 02:22:23'),
(63, 2, 'Editar un gasto', 'gastos', '2018-05-31 02:22:55'),
(64, 2, 'Eliminar un gasto', 'gastos', '2018-05-31 02:25:08'),
(65, 2, 'Editar un gasto', 'gastos', '2018-06-02 01:04:50'),
(66, 2, 'Editar un gasto', 'gastos', '2018-06-02 01:04:57'),
(67, 2, 'Editar un gasto', 'gastos', '2018-06-02 01:05:05'),
(68, 2, 'Agregar un gasto', 'gastos', '2018-06-03 00:49:16'),
(69, 2, 'Agregar un gasto', 'gastos', '2018-06-03 00:56:27'),
(70, 2, 'Editar un gasto', 'gastos', '2018-06-03 01:09:02'),
(71, 2, 'Agregar un gasto', 'gastos', '2018-06-03 03:43:44'),
(72, 1, 'Agregar un apartamento', 'apartamentos', '2018-06-04 00:06:30'),
(73, 1, 'Editar un apartamento', 'apartamentos', '2018-06-04 00:06:41'),
(74, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 00:25:40'),
(75, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 00:27:22'),
(76, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 00:29:46'),
(77, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 00:31:13'),
(78, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 00:34:25'),
(79, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 00:34:27'),
(80, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 00:34:29'),
(81, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 00:34:31'),
(82, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 00:34:55'),
(83, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 00:37:51'),
(84, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 00:39:06'),
(85, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 00:40:14'),
(86, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 00:40:25'),
(87, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 00:40:27'),
(88, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 00:40:29'),
(89, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 00:42:04'),
(90, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 00:43:38'),
(91, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 00:43:57'),
(92, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 00:44:15'),
(93, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 00:44:45'),
(94, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 00:44:55'),
(95, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 00:44:57'),
(96, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 00:44:59'),
(97, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 00:45:02'),
(98, 2, 'Agregar una cuenta por co', 'cxc', '2018-06-04 01:51:31'),
(99, 2, 'Agregar una cuenta por co', 'cxc', '2018-06-04 01:51:31'),
(100, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 01:57:54'),
(101, 2, 'Agregar una cuenta por co', 'cxc', '2018-06-04 01:58:00'),
(102, 2, 'Agregar una cuenta por co', 'cxc', '2018-06-04 01:58:00'),
(103, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 01:59:44'),
(104, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 01:59:46'),
(105, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 02:00:38'),
(106, 2, 'Agregar una cuenta por co', 'cxc', '2018-06-04 02:01:10'),
(107, 2, 'Agregar una cuenta por co', 'cxc', '2018-06-04 02:01:10'),
(108, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 03:02:50'),
(109, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 03:03:00'),
(110, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 03:03:45'),
(111, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 03:17:45'),
(112, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 03:18:04'),
(113, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 03:24:54'),
(114, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 03:35:03'),
(115, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-04 03:35:05'),
(116, 2, 'Agregar una mensualidad', 'mensualidad', '2018-06-04 03:35:25'),
(117, 2, 'Agregar una cuenta por co', 'cxc', '2018-06-04 03:35:58'),
(118, 2, 'Agregar una cuenta por co', 'cxc', '2018-06-04 03:35:58'),
(119, 2, 'Eliminar una mensualidad', 'mensualidad', '2018-06-05 02:22:54'),
(124, 2, 'Agregar un contrato', 'contrato', '2018-06-05 15:49:08'),
(125, 2, 'Agregar un contrato', 'contrato', '2018-06-05 15:55:52'),
(126, 2, 'Agregar un contrato', 'contrato', '2018-06-05 16:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `bancos`
--

CREATE TABLE `bancos` (
  `id_banco` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(115) COLLATE utf8_spanish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `bancos`
--

INSERT INTO `bancos` (`id_banco`, `descripcion`, `created`) VALUES
(1, 'Mercantil', '2018-05-15 13:56:47'),
(2, 'Provincial', '2018-05-27 19:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `contrato`
--

CREATE TABLE `contrato` (
  `id_contrato` int(10) UNSIGNED NOT NULL,
  `id_apartamento` int(10) UNSIGNED NOT NULL,
  `id_propietario` int(10) UNSIGNED NOT NULL,
  `fecha_inicio` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_fin` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `contrato`
--

INSERT INTO `contrato` (`id_contrato`, `id_apartamento`, `id_propietario`, `fecha_inicio`, `fecha_fin`, `created`) VALUES
(4, 5, 11, '2018-06-05', '2018-06-16', '2018-06-05 15:55:52'),
(5, 6, 3, '2018-06-04', '2018-06-15', '2018-06-05 16:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `cxc`
--

CREATE TABLE `cxc` (
  `id_cxc` int(10) UNSIGNED NOT NULL,
  `id_apartamento` int(10) UNSIGNED NOT NULL,
  `id_alicuota` int(10) UNSIGNED NOT NULL,
  `id_mensualidad` int(10) UNSIGNED NOT NULL,
  `monto` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `cancelado` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fecha` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `cxc`
--

INSERT INTO `cxc` (`id_cxc`, `id_apartamento`, `id_alicuota`, `id_mensualidad`, `monto`, `cancelado`, `fecha`, `created`) VALUES
(5, 5, 1, 15, '7288.25', 0, '2018-06-03', '2018-06-04 02:01:10'),
(6, 6, 2, 15, '2915.3', 0, '2018-06-03', '2018-06-04 02:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `cxc_has_pago`
--

CREATE TABLE `cxc_has_pago` (
  `id_cxc_has_pago` int(10) UNSIGNED NOT NULL,
  `id_cxc` int(10) UNSIGNED NOT NULL,
  `cancelado` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detalle`
--

CREATE TABLE `detalle` (
  `id_detalle` int(10) UNSIGNED NOT NULL,
  `id_gasto` int(10) UNSIGNED NOT NULL,
  `id_proveedor` int(10) UNSIGNED NOT NULL,
  `id_ut` int(10) UNSIGNED NOT NULL,
  `id_mensualidad` int(10) UNSIGNED NOT NULL,
  `monto` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` tinyint(4) DEFAULT '0',
  `descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detalle_mensualidad`
--

CREATE TABLE `detalle_mensualidad` (
  `id_detalle_mensualidad` int(10) UNSIGNED NOT NULL,
  `id_mensualidad` int(10) UNSIGNED NOT NULL,
  `id_gasto` int(10) UNSIGNED NOT NULL,
  `fecha` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `detalle_mensualidad`
--

INSERT INTO `detalle_mensualidad` (`id_detalle_mensualidad`, `id_mensualidad`, `id_gasto`, `fecha`, `created`) VALUES
(1, 15, 2, '2018-07-01', '2018-06-04 03:18:04'),
(2, 15, 3, '2018-07-01', '2018-06-04 03:18:04'),
(3, 15, 4, '2018-07-01', '2018-06-04 03:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `documentos`
--

CREATE TABLE `documentos` (
  `id_documento` int(10) UNSIGNED NOT NULL,
  `fecha` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `ubicacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `formas_pagos`
--

CREATE TABLE `formas_pagos` (
  `id_forma_pago` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(115) COLLATE utf8_spanish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `formas_pagos`
--

INSERT INTO `formas_pagos` (`id_forma_pago`, `descripcion`, `created`) VALUES
(1, 'Debito', '2018-05-15 13:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `gastos`
--

CREATE TABLE `gastos` (
  `id_gasto` int(10) UNSIGNED NOT NULL,
  `id_ut` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `monto` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` tinyint(4) DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `gastos`
--

INSERT INTO `gastos` (`id_gasto`, `id_ut`, `descripcion`, `monto`, `tipo`, `created`) VALUES
(2, 1, 'Bolsas de basura', '60.00', 1, '2018-06-03 00:49:16'),
(3, 1, 'Gasto de luz', '224.55', 1, '2018-06-03 00:56:27'),
(4, 1, 'Alquiler', '784.00', 1, '2018-06-03 03:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `mensualidad`
--

CREATE TABLE `mensualidad` (
  `id_mensualidad` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `total` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` tinyint(4) DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `mensualidad`
--

INSERT INTO `mensualidad` (`id_mensualidad`, `descripcion`, `total`, `fecha`, `tipo`, `created`) VALUES
(15, 'Junio', '1457.65', '2018-06-03', 1, '2018-06-04 02:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `niveles`
--

CREATE TABLE `niveles` (
  `id_nivel` int(10) UNSIGNED NOT NULL,
  `nivel` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `niveles`
--

INSERT INTO `niveles` (`id_nivel`, `nivel`, `descripcion`, `created`) VALUES
(1, 'Administrador del sistema', 'Administrador del sistema', '2018-04-20 18:37:06'),
(2, 'Administrador del condominio', 'Administrador del condominio', '2018-04-24 19:24:01'),
(3, 'Propietario', 'Propietario', '2018-04-24 19:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `novedades`
--

CREATE TABLE `novedades` (
  `id_novedad` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `novedades`
--

INSERT INTO `novedades` (`id_novedad`, `id_usuario`, `descripcion`, `created`) VALUES
(1, 1, 'Ok ok', '2018-05-15 00:25:26');

-- --------------------------------------------------------

--
-- Table structure for table `pagos`
--

CREATE TABLE `pagos` (
  `id_pago` int(10) UNSIGNED NOT NULL,
  `id_forma_pago` int(10) UNSIGNED NOT NULL,
  `id_apartamento` int(10) UNSIGNED NOT NULL,
  `id_banco` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `monto` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `referencia` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `aprobado` tinyint(1) NOT NULL DEFAULT '0',
  `descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `propietarios`
--

CREATE TABLE `propietarios` (
  `id_propietario` int(10) UNSIGNED NOT NULL,
  `cedula` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `notas` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `propietarios`
--

INSERT INTO `propietarios` (`id_propietario`, `cedula`, `nombres`, `apellidos`, `telefono`, `correo`, `notas`, `created`) VALUES
(3, '2548842', 'Maria', 'Diaz', '04141881071', 'mariad@gmail.com', 'Propietario', '2018-05-15 14:28:30'),
(4, '8220801', 'Luisa', 'Rondon', '04267837367', 'luisarondon@outlook.com', 'Propietario', '2018-06-05 14:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(10) UNSIGNED NOT NULL,
  `nombres` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `notas` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nombres`, `apellidos`, `correo`, `notas`, `created`) VALUES
(2, 'Jose', 'Jimenez', 'josej@gmail.com', 'Notas de jose', '2018-05-02 13:49:39'),
(3, 'Avior', 'Avior', 'avior@avior.com.ve', 'Avior', '2018-05-15 00:24:21'),
(4, 'PSM', 'PSM', 'psm@psm.edu.ve', 'PSM', '2018-05-15 00:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `id_nivel` int(10) UNSIGNED NOT NULL,
  `nombres` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `contrasena` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `id_nivel`, `nombres`, `apellidos`, `correo`, `contrasena`, `telefono`, `created`) VALUES
(1, 1, 'Luis Eduardo', 'Rondon', 'leduardo.rondon@gmail.com', '202cb962ac59075b964b07152d234b70', '04121805865', '2018-04-20 18:37:45'),
(2, 2, 'Ronald', 'Rodriguez', 'ronaldr@gmail.com', '202cb962ac59075b964b07152d234b70', '0416887744', '2018-05-10 14:40:59'),
(3, 3, 'Maria', 'Diaz', 'mariad@gmail.com', '202cb962ac59075b964b07152d234b70', '0414777545', '2018-05-10 14:41:21'),
(11, 3, 'Luisa', 'Rondon', 'luisarondon@outlook.com', '202cb962ac59075b964b07152d234b70', '04267837367', '2018-06-05 14:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `ut`
--

CREATE TABLE `ut` (
  `id_ut` int(10) UNSIGNED NOT NULL,
  `ut` varchar(55) COLLATE utf8_spanish_ci NOT NULL,
  `anio` int(5) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `ut`
--

INSERT INTO `ut` (`id_ut`, `ut`, `anio`, `created`) VALUES
(1, '12', 2018, '2018-05-19 19:48:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alicuotas`
--
ALTER TABLE `alicuotas`
  ADD PRIMARY KEY (`id_alicuota`);

--
-- Indexes for table `apartamentos`
--
ALTER TABLE `apartamentos`
  ADD PRIMARY KEY (`id_apartamento`),
  ADD KEY `id_alicuota` (`id_alicuota`);

--
-- Indexes for table `auditorias`
--
ALTER TABLE `auditorias`
  ADD PRIMARY KEY (`id_auditoria`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `bancos`
--
ALTER TABLE `bancos`
  ADD PRIMARY KEY (`id_banco`);

--
-- Indexes for table `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`id_contrato`),
  ADD KEY `id_apartamento` (`id_apartamento`);

--
-- Indexes for table `cxc`
--
ALTER TABLE `cxc`
  ADD PRIMARY KEY (`id_cxc`),
  ADD KEY `id_apartamento` (`id_apartamento`);

--
-- Indexes for table `cxc_has_pago`
--
ALTER TABLE `cxc_has_pago`
  ADD PRIMARY KEY (`id_cxc_has_pago`),
  ADD KEY `id_cxc` (`id_cxc`);

--
-- Indexes for table `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_gasto` (`id_gasto`);

--
-- Indexes for table `detalle_mensualidad`
--
ALTER TABLE `detalle_mensualidad`
  ADD PRIMARY KEY (`id_detalle_mensualidad`),
  ADD KEY `id_mensualidad` (`id_mensualidad`);

--
-- Indexes for table `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id_documento`);

--
-- Indexes for table `formas_pagos`
--
ALTER TABLE `formas_pagos`
  ADD PRIMARY KEY (`id_forma_pago`);

--
-- Indexes for table `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id_gasto`),
  ADD KEY `id_ut` (`id_ut`);

--
-- Indexes for table `mensualidad`
--
ALTER TABLE `mensualidad`
  ADD PRIMARY KEY (`id_mensualidad`);

--
-- Indexes for table `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Indexes for table `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`id_novedad`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `id_apartamento` (`id_apartamento`);

--
-- Indexes for table `propietarios`
--
ALTER TABLE `propietarios`
  ADD PRIMARY KEY (`id_propietario`);

--
-- Indexes for table `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `id_nivel` (`id_nivel`);

--
-- Indexes for table `ut`
--
ALTER TABLE `ut`
  ADD PRIMARY KEY (`id_ut`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alicuotas`
--
ALTER TABLE `alicuotas`
  MODIFY `id_alicuota` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `apartamentos`
--
ALTER TABLE `apartamentos`
  MODIFY `id_apartamento` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auditorias`
--
ALTER TABLE `auditorias`
  MODIFY `id_auditoria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `bancos`
--
ALTER TABLE `bancos`
  MODIFY `id_banco` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contrato`
--
ALTER TABLE `contrato`
  MODIFY `id_contrato` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cxc`
--
ALTER TABLE `cxc`
  MODIFY `id_cxc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cxc_has_pago`
--
ALTER TABLE `cxc_has_pago`
  MODIFY `id_cxc_has_pago` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id_detalle` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detalle_mensualidad`
--
ALTER TABLE `detalle_mensualidad`
  MODIFY `id_detalle_mensualidad` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id_documento` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formas_pagos`
--
ALTER TABLE `formas_pagos`
  MODIFY `id_forma_pago` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id_gasto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mensualidad`
--
ALTER TABLE `mensualidad`
  MODIFY `id_mensualidad` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `niveles`
--
ALTER TABLE `niveles`
  MODIFY `id_nivel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `novedades`
--
ALTER TABLE `novedades`
  MODIFY `id_novedad` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id_pago` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `propietarios`
--
ALTER TABLE `propietarios`
  MODIFY `id_propietario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ut`
--
ALTER TABLE `ut`
  MODIFY `id_ut` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apartamentos`
--
ALTER TABLE `apartamentos`
  ADD CONSTRAINT `apartamentos_ibfk_1` FOREIGN KEY (`id_alicuota`) REFERENCES `alicuotas` (`id_alicuota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auditorias`
--
ALTER TABLE `auditorias`
  ADD CONSTRAINT `auditorias_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`id_apartamento`) REFERENCES `apartamentos` (`id_apartamento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cxc`
--
ALTER TABLE `cxc`
  ADD CONSTRAINT `cxc_ibfk_1` FOREIGN KEY (`id_apartamento`) REFERENCES `apartamentos` (`id_apartamento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cxc_has_pago`
--
ALTER TABLE `cxc_has_pago`
  ADD CONSTRAINT `cxc_has_pago_ibfk_1` FOREIGN KEY (`id_cxc`) REFERENCES `cxc` (`id_cxc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`id_gasto`) REFERENCES `gastos` (`id_gasto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detalle_mensualidad`
--
ALTER TABLE `detalle_mensualidad`
  ADD CONSTRAINT `detalle_mensualidad_ibfk_1` FOREIGN KEY (`id_mensualidad`) REFERENCES `mensualidad` (`id_mensualidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gastos`
--
ALTER TABLE `gastos`
  ADD CONSTRAINT `gastos_ibfk_1` FOREIGN KEY (`id_ut`) REFERENCES `ut` (`id_ut`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `novedades`
--
ALTER TABLE `novedades`
  ADD CONSTRAINT `novedades_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`id_apartamento`) REFERENCES `apartamentos` (`id_apartamento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_nivel`) REFERENCES `niveles` (`id_nivel`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
