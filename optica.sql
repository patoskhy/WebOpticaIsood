-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-07-2018 a las 10:01:10
-- Versión del servidor: 5.6.39-cll-lve
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `opticabe_optica`
--
CREATE DATABASE IF NOT EXISTS `opticabe_optica` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `opticabe_optica`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_cajas`
--

CREATE TABLE `brc_cajas` (
  `DIA` varchar(8) NOT NULL,
  `USUARIO` decimal(12,0) NOT NULL,
  `ESTADO` varchar(1) NOT NULL,
  `MONTO` decimal(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_codigos`
--

CREATE TABLE `brc_codigos` (
  `TIPO` varchar(6) NOT NULL,
  `CODIGO` varchar(6) NOT NULL,
  `DESCRIPCION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `brc_codigos`
--

INSERT INTO `brc_codigos` (`TIPO`, `CODIGO`, `DESCRIPCION`) VALUES
('ABONO', 'A00001', 'ABONO'),
('ABONO', 'A00002', 'CANCELADO'),
('COLOR', 'C00001', 'NARANJA'),
('DOC', 'D00001', 'FACTURA'),
('DOC', 'D00002', 'ORDEN DE COMPRA'),
('DOC', 'D00003', 'BOLETA'),
('DOC', 'D00004', 'GUIA DE DESPACHO'),
('EST_BO', 'N', 'NO'),
('EST_BO', 'S', 'SI'),
('ES_CAJ', 'A', 'ABRIR'),
('ES_CAJ', 'C', 'CERRAR'),
('ES_VEN', 'V00001', 'VENTAS'),
('ES_VEN', 'V00002', 'ABONOS'),
('PER_CT', 'P00001', 'CLIENTE'),
('PER_CT', 'P00002', 'DOCTOR'),
('WEB_CA', 'W00001', 'COLOR'),
('WEB_CA', 'W00002', 'FORMA'),
('WEB_CA', 'W00003', 'MATERIAL'),
('WEB_CA', 'W00004', 'MARCA'),
('WEB_CA', 'W00005', 'TIPO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_codigos_web`
--

CREATE TABLE `brc_codigos_web` (
  `TIPO` varchar(15) NOT NULL,
  `CODIGO` varchar(6) NOT NULL,
  `DESCRIPCION` varchar(50) NOT NULL,
  `IMG` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `brc_codigos_web`
--

INSERT INTO `brc_codigos_web` (`TIPO`, `CODIGO`, `DESCRIPCION`, `IMG`) VALUES
('COLOR', '000001', 'NEGRO', ''),
('COLOR', '000002', 'GRIS', ''),
('COLOR', '000003', 'BEIGE', ''),
('COLOR', '000004', 'OTRO', ''),
('COLOR', '000005', 'VERDE', ''),
('COLOR', '000006', 'AZÚL', ''),
('COLOR', '000007', 'PURPURA', ''),
('COLOR', '000008', 'MARRON', ''),
('COLOR', '000009', 'ROJO', ''),
('COLOR', '000010', 'HAVANA', ''),
('COLOR', '000011', 'BORGOÑA', ''),
('COLOR', '000012', 'METAL', ''),
('COLOR', '000013', 'GUNMETAL', ''),
('COLOR', '000014', 'MARRON CLARO', ''),
('COLOR', '000015', 'IVORY', ''),
('COLOR', '000016', 'ROSADO', ''),
('COLOR', '000017', 'BRONCE', ''),
('COLOR', '000018', 'VIOLETA', ''),
('COLOR', '000019', 'BLANCO', ''),
('COLOR', '000020', 'NARANJA', ''),
('FORMA', '000001', 'CUADRADO', ''),
('FORMA', '000002', 'REDONDO', ''),
('FORMA', '000003', 'PILOTO', ''),
('FORMA', '000004', 'OJO DE GATO', ''),
('FORMA', '000005', 'RECTANGULO', ''),
('FORMA', '000006', 'IRREGULAR', ''),
('FORMA', '000007', 'MARIPOSA', ''),
('FORMA', '000008', 'OVALADO', ''),
('MARCA', '000001', 'RAY BAN', '/uploads/codWeb/MARCA-000001.jpg'),
('MARCA', '000002', 'FORCE FLEX', '/uploads/codWeb/MARCA-000002.jpg'),
('MARCA', '000003', 'DIOOR', '/uploads/codWeb/MARCA-000003.jpg'),
('MARCA', '000004', 'CARLOS ROSSI', '/uploads/codWeb/MARCA-000004.jpg'),
('MARCA', '000005', 'RULFOO', '/uploads/codWeb/MARCA-000005.jpg'),
('MARCA', '000006', 'MABE', '/uploads/codWeb/MARCA-000006.jpg'),
('MARCA', '000007', 'VULSANY', '/uploads/codWeb/MARCA-000007.jpg'),
('MARCA', '000008', 'COOL', '/uploads/codWeb/MARCA-000008.jpg'),
('MARCA', '000009', 'BOLLE', '/uploads/codWeb/MARCA-000009.jpg'),
('MARCA', '000010', 'MIR YAM', '/uploads/codWeb/MARCA-000010.jpg'),
('MARCA', '000011', 'TRONIC', '/uploads/codWeb/MARCA-000011.jpg'),
('MARCA', '000012', 'CONTU', '/uploads/codWeb/MARCA-000012.jpg'),
('MARCA', '000013', 'ANDA', '/uploads/codWeb/MARCA-000013.jpg'),
('MARCA', '000014', 'ALUMINIUM', '/uploads/codWeb/MARCA-000014.jpg'),
('MARCA', '000015', 'BATUSSO', '/uploads/codWeb/MARCA-000015.jpg'),
('MARCA', '000016', 'CRISTIAN LEROY', '/uploads/codWeb/MARCA-000016.jpg'),
('MARCA', '000017', 'RAFIO', '/uploads/codWeb/MARCA-000017.jpg'),
('MARCA', '000018', 'KOALI', '/uploads/codWeb/MARCA-000018.jpg'),
('MARCA', '000019', 'MOSÉ', '/uploads/codWeb/MARCA-000019.jpg'),
('MARCA', '000020', 'AMAY', '/uploads/codWeb/MARCA-000020.jpg'),
('MARCA', '000021', 'CARIEMIN', '/uploads/codWeb/MARCA-000021.jpg'),
('MARCA', '000022', 'BRADY', '/uploads/codWeb/MARCA-000022.jpg'),
('MARCA', '000023', 'OBYE', '/uploads/codWeb/MARCA-000023.jpg'),
('MARCA', '000024', 'JADE', '/uploads/codWeb/MARCA-000024.jpg'),
('MARCA', '000025', 'TRESURY', '/uploads/codWeb/MARCA-000025.jpg'),
('MARCA', '000026', 'OSTRICH', '/uploads/codWeb/MARCA-000026.jpg'),
('MARCA', '000027', 'VERINO', '/uploads/codWeb/MARCA-000027.jpg'),
('MARCA', '000028', 'ESPIRIT', '/uploads/codWeb/MARCA-000028.jpg'),
('MARCA', '000029', 'VIOLET', '/uploads/codWeb/MARCA-000029.jpg'),
('MARCA', '000030', 'NUTRI', '/uploads/codWeb/MARCA-000030.jpg'),
('MARCA', '000031', 'VALCHI', '/uploads/codWeb/MARCA-000031.jpg'),
('MARCA', '000032', 'BOCHETTI', '/uploads/codWeb/MARCA-000032.jpg'),
('MARCA', '000033', 'TRIKER', '/uploads/codWeb/MARCA-000033.jpg'),
('MARCA', '000034', 'BAZARO', '/uploads/codWeb/MARCA-000034.jpg'),
('MARCA', '000035', 'CROWN', '/uploads/codWeb/MARCA-000035.jpg'),
('MARCA', '000036', 'LANNIM', '/uploads/codWeb/MARCA-000036.jpg'),
('MARCA', '000037', 'HILL', '/uploads/codWeb/MARCA-000037.jpg'),
('MARCA', '000038', 'EMANUEL', '/uploads/codWeb/MARCA-000038.jpg'),
('MARCA', '000039', 'SEGGUY', '/uploads/codWeb/MARCA-000039.jpg'),
('MARCA', '000040', 'GUNZUN', '/uploads/codWeb/MARCA-000040.jpg'),
('MARCA', '000041', 'BRESLIN', '/uploads/codWeb/MARCA-000041.jpg'),
('MARCA', '000042', 'VIKTOR', '/uploads/codWeb/MARCA-000042.jpg'),
('MARCA', '000043', 'BADYLLA', '/uploads/codWeb/MARCA-000043.jpg'),
('MARCA', '000044', 'Z-M', '/uploads/codWeb/MARCA-000044.jpg'),
('MARCA', '000045', 'DELUX', '/uploads/codWeb/MARCA-000045.jpg'),
('MARCA', '000046', 'ARNNETE', '/uploads/codWeb/MARCA-000046.jpg'),
('MARCA', '000047', 'KAIZI', '/uploads/codWeb/MARCA-000047.jpg'),
('MARCA', '000048', 'CERRUTI', '/uploads/codWeb/MARCA-000048.jpg'),
('MARCA', '000049', 'ATSD', '/uploads/codWeb/MARCA-000049.jpg'),
('MARCA', '000050', 'EYEWEAR', '/uploads/codWeb/MARCA-000050.jpg'),
('MARCA', '000051', 'SILLONEFFE', '/uploads/codWeb/MARCA-000051.jpg'),
('MARCA', '000052', 'TOMMY', '/uploads/codWeb/MARCA-000052.jpg'),
('MARCA', '000053', 'OFFIX', '/uploads/codWeb/MARCA-000053.jpg'),
('MARCA', '000054', 'JEAN POOL', '/uploads/codWeb/MARCA-000054.jpg'),
('MARCA', '000055', 'SDWL', '/uploads/codWeb/MARCA-000055.jpg'),
('MARCA', '000056', 'ALMERIA', '/uploads/codWeb/MARCA-000056.jpg'),
('MARCA', '000057', 'VESPA', '/uploads/codWeb/MARCA-000057.jpg'),
('MARCA', '000058', 'BRISBROLI', '/uploads/codWeb/MARCA-000058.jpg'),
('MARCA', '000059', 'GEORGE', '/uploads/codWeb/MARCA-000059.jpg'),
('MARCA', '000060', 'NOUVELLE', '/uploads/codWeb/MARCA-000060.jpg'),
('MARCA', '000061', 'IGNA', '/uploads/codWeb/MARCA-000061.jpg'),
('MARCA', '000062', 'ETON', '/uploads/codWeb/MARCA-000062.jpg'),
('MARCA', '000063', 'SNIPER', '/uploads/codWeb/MARCA-000063.jpg'),
('MARCA', '000064', 'SAYO', '/uploads/codWeb/MARCA-000064.jpg'),
('MARCA', '000065', 'SIANA', '/uploads/codWeb/MARCA-000065.jpg'),
('MARCA', '000066', 'CARELLI', '/uploads/codWeb/MARCA-000066.jpg'),
('MARCA', '000067', 'KANE', '/uploads/codWeb/MARCA-000067.jpg'),
('MARCA', '000068', 'VOLF', '/uploads/codWeb/MARCA-000068.jpg'),
('MARCA', '000069', 'MATGREEN', '/uploads/codWeb/MARCA-000069.jpg'),
('MARCA', '000070', 'ZOE', '/uploads/codWeb/MARCA-000070.jpg'),
('MARCA', '000071', 'KEMEL', '/uploads/codWeb/MARCA-000071.jpg'),
('MARCA', '000072', 'SHIMMY', '/uploads/codWeb/MARCA-000072.jpg'),
('MARCA', '000073', 'MUSISOL', '/uploads/codWeb/MARCA-000073.jpg'),
('MARCA', '000074', 'CHAMELON', '/uploads/codWeb/MARCA-000074.jpg'),
('MARCA', '000075', 'YMBOSS', '/uploads/codWeb/MARCA-000075.jpg'),
('MARCA', '000076', 'ZIPPER', '/uploads/codWeb/MARCA-000076.jpg'),
('MARCA', '000077', 'DESING ITALY', '/uploads/codWeb/MARCA-000077.jpg'),
('MARCA', '000078', 'FKR4', '/uploads/codWeb/MARCA-000078.jpg'),
('MARCA', '000079', 'RONEZY', '/uploads/codWeb/MARCA-000079.jpg'),
('MATERIAL', '000001', 'PROPIONATO', ''),
('MATERIAL', '000002', 'INYECTADO', ''),
('MATERIAL', '000003', 'NYLON_PROPIONATO', ''),
('MATERIAL', '000004', 'METAL', ''),
('MATERIAL', '000005', 'ACETATO', ''),
('MATERIAL', '000006', 'ACERO', ''),
('MATERIAL', '000007', 'CAUCHO', ''),
('MATERIAL', '000008', 'TITANIO', ''),
('TIPO', '000001', 'LENTES ÓPTICOS', '/uploads/codWeb/MARCA-000001.jpg'),
('TIPO', '000002', 'LENTES DE SOL', '/uploads/codWeb/MARCA-000001.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_compra`
--

CREATE TABLE `brc_compra` (
  `FOLIO` varchar(12) NOT NULL,
  `ID_PROVEEDOR` decimal(11,0) NOT NULL,
  `ID_DOCUMENTO` varchar(6) NOT NULL,
  `N_DOCUMENTO` varchar(11) NOT NULL,
  `SUBTOTAL` decimal(12,0) NOT NULL,
  `DESCUENTO` decimal(12,0) NOT NULL,
  `TOTAL_NETO` decimal(12,0) NOT NULL,
  `IVA` decimal(12,0) NOT NULL,
  `TOTAL` decimal(12,0) NOT NULL,
  `FECHA_COMPRA` varchar(8) NOT NULL,
  `USUARIO` decimal(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_compra_detalle`
--

CREATE TABLE `brc_compra_detalle` (
  `FOLIO` varchar(12) NOT NULL,
  `CANTIDAD` decimal(11,0) NOT NULL,
  `LOTE` varchar(20) NOT NULL,
  `ID_PRODUC_PROVE` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_folio`
--

CREATE TABLE `brc_folio` (
  `RUT_USUARIO` decimal(12,0) NOT NULL,
  `FOLIO` varchar(12) NOT NULL,
  `OPERACION` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_operativos`
--

CREATE TABLE `brc_operativos` (
  `DIA` varchar(8) NOT NULL,
  `HORA` varchar(6) NOT NULL,
  `RUT_DOCTOR` decimal(12,0) NOT NULL,
  `OBSERVACION` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_operativos_detalle`
--

CREATE TABLE `brc_operativos_detalle` (
  `DIA` varchar(8) NOT NULL,
  `HORA` varchar(6) NOT NULL,
  `HORA_PACIENTE` varchar(6) NOT NULL,
  `RUT_DOCTOR` decimal(12,0) NOT NULL,
  `RUT_CLIENTE` decimal(12,0) NOT NULL,
  `CERCA_OJO_D_E` varchar(6) NOT NULL,
  `CERCA_OJO_D_C` varchar(6) NOT NULL,
  `CERCA_OJO_D_G` varchar(6) NOT NULL,
  `CERCA_OJO_I_E` varchar(6) NOT NULL,
  `CERCA_OJO_I_C` varchar(6) NOT NULL,
  `CERCA_OJO_I_G` varchar(6) NOT NULL,
  `DPC` varchar(5) NOT NULL,
  `LEJOS_OJO_D_E` varchar(6) NOT NULL,
  `LEJOS_OJO_D_C` varchar(6) NOT NULL,
  `LEJOS_OJO_D_G` varchar(6) NOT NULL,
  `LEJOS_OJO_I_E` varchar(6) NOT NULL,
  `LEJOS_OJO_I_C` varchar(6) NOT NULL,
  `LEJOS_OJO_I_G` varchar(6) NOT NULL,
  `DPL` varchar(5) NOT NULL,
  `DESCRIPCION_RECETA` varchar(500) NOT NULL,
  `DESCUENTO_RECETA` decimal(3,0) NOT NULL,
  `ASISTENCIA` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_perfiles`
--

CREATE TABLE `brc_perfiles` (
  `ID_PADRE` int(11) NOT NULL,
  `ID_HIJO` int(11) NOT NULL,
  `DESCRIPCION` varchar(255) NOT NULL,
  `IMG` varchar(500) NOT NULL,
  `RUTA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `brc_perfiles`
--

INSERT INTO `brc_perfiles` (`ID_PADRE`, `ID_HIJO`, `DESCRIPCION`, `IMG`, `RUTA`) VALUES
(0, 100000000, 'INICIO', 'home', '/index.php'),
(0, 200000000, 'LOGOUT', 'sign-out', '/index.php?r=site/logout'),
(0, 300000000, 'OPERACIONES', 'star', ''),
(0, 400000000, 'OPERATIVOS', 'stethoscope', ''),
(0, 500000000, 'MANTENCIÓN', 'tachometer', ''),
(0, 600000000, 'REPORTES', 'file-o', ''),
(0, 700000000, 'INVENTARIO', 'book', ''),
(0, 800000000, 'PÁGINA WEB', 'globe', ''),
(300000000, 310000000, 'CAJA', 'table', ''),
(300000000, 320000000, 'VENTA', 'money', ''),
(300000000, 330000000, 'COMPRA', 'truck', ''),
(310000000, 311000000, 'APERTURA CAJA', 'book', '/index.php?r=ventas/index-cajas&id=[id]&t=[t]'),
(310000000, 312000000, 'CIERRE CAJA', 'book', '/index.php?r=ventas/index-cierre-caja&id=[id]&t=[t]'),
(320000000, 321000000, 'VENTA DE LENTES', 'wpforms', '/index.php?r=ventas/index-venta&id=[id]&t=[t]'),
(320000000, 322000000, 'CONSULTA DE SALDOS', 'credit-card', '/index.php?r=ventas/index-saldo&id=[id]&t=[t]'),
(320000000, 323000000, 'REPORTE DE VENTA', 'file', '/index.php?r=ventas/index-informe-venta&id=[id]&t=[t]'),
(330000000, 331000000, 'COMPRA DE INSUMOS', 'cart-arrow-down', '/index.php?r=compras/index-compra&id=[id]&t=[t]'),
(330000000, 332000000, 'DONACIONES', 'cart-plus', '/index.php?r=compras/index-donaciones&id=[id]&t=[t]'),
(400000000, 410000000, 'AGENDAR OPERATIVO', 'user-md', '/index.php?r=operativos/index-agrega-operativo&id=[id]&t=[t]'),
(400000000, 420000000, 'OPERATIVOS', 'hospital-o', '/index.php?r=operativos/index-operativo&id=[id]&t=[t]'),
(400000000, 430000000, 'REPORTE OPERATIVO', 'file', '/index.php?r=operativos/index-informe-operativo&id=[id]&t=[t]'),
(400000000, 440000000, 'RECETAS', 'file-text-o', '/index.php?r=operativos/index-receta&id=[id]&t=[t]'),
(500000000, 510000000, 'USUARIOS', 'user-circle-o', '/index.php?r=mantencion/index-usuario&id=[id]&t=[t]'),
(500000000, 520000000, 'PRODUCTOS', 'dropbox', '/index.php?r=mantencion/index-producto&id=[id]&t=[t]'),
(500000000, 530000000, 'PRODUCTOS X PROVEE.', 'dropbox', '/index.php?r=mantencion/index-producto-proveedor&id=[id]&t=[t]'),
(500000000, 540000000, 'PROVEEDOR', 'user-o', '/index.php?r=mantencion/index-proveedor&id=[id]&t=[t]'),
(500000000, 550000000, 'PERSONAS', 'user-o ', '/index.php?r=mantencion/index-persona&id=[id]&t=[t]'),
(500000000, 560000000, 'CÓDIGOS GENERALES', 'barcode', '/index.php?r=mantencion/index-cod-general&id=[id]&t=[t]'),
(600000000, 601000000, 'PRODUCTOS', 'file', '/index.php?r=compras/reporte-producto-index&id=[id]&t=[t]'),
(600000000, 602000000, 'PRODUCTOS X PROVEE.', 'file', '/index.php?r=compras/reporte-pro-prov-index&id=[id]&t=[t]'),
(700000000, 710000000, 'STOCK', 'list-ol', '/index.php?r=inventario/index-inventario&id=[id]&t=[t]'),
(800000000, 810000000, 'CÓDIGOS WEB', 'barcode', '/index.php?r=sitioweb/index-codigos&id=[id]&t=[t]'),
(800000000, 820000000, 'PRODUCTOS WEB', 'dropbox', '/index.php?r=sitioweb/index-productos&id=[id]&t=[t]'),
(800000000, 830000000, 'EDICIÓN IMAGEN', 'file-image-o ', '/index.php?r=site/editar-imagen\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_persona`
--

CREATE TABLE `brc_persona` (
  `RUT` decimal(12,0) NOT NULL,
  `DV` varchar(1) NOT NULL,
  `CAT_PERSONA` varchar(6) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `DIRECCION` varchar(255) NOT NULL,
  `TELEFONO` varchar(25) NOT NULL,
  `EMAIL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_producto`
--

CREATE TABLE `brc_producto` (
  `ID_PADRE` decimal(11,0) NOT NULL,
  `ID_HIJO` decimal(11,0) NOT NULL,
  `DESCRIPCION` varchar(255) NOT NULL,
  `STOCK_CRITICO` int(3) NOT NULL,
  `VIGENCIA` varchar(1) NOT NULL,
  `COD_BARRA` varchar(30) NOT NULL,
  `VALOR_VENTA` decimal(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `brc_producto`
--

INSERT INTO `brc_producto` (`ID_PADRE`, `ID_HIJO`, `DESCRIPCION`, `STOCK_CRITICO`, `VIGENCIA`, `COD_BARRA`, `VALOR_VENTA`) VALUES
('0', '1000000000', 'MARCOS', 0, 'N', '000000000000', '0'),
('0', '2000000000', 'CRISTALES', 0, 'N', '000000000000', '0'),
('0', '3000000000', 'TRATAMIENTOS', 0, 'N', '000000000000', '0'),
('0', '4000000000', 'ACCESORIOS', 0, 'N', '000000000000', '0'),
('0', '5000000000', 'LENTES DE SOL', 0, 'N', '000000000000', '0'),
('0', '6000000000', 'RECETAS', 0, 'N', '000000000000', '0'),
('1000000000', '1100000000', 'MARCO METALICO', 0, 'N', '000000000000', '0'),
('1000000000', '1200000000', 'MARCO CELULOIDE', 0, 'N', '000000000000', '0'),
('1100000000', '1110000000', 'MARCO METALICO', 0, 'N', '000000000000', '0'),
('1100000000', '1120000000', 'MARCO METALICO SEMI AL AIRE', 0, 'N', '000000000000', '0'),
('1100000000', '1130000000', 'MARCO METALICO AL AIRE', 0, 'N', '000000000000', '0'),
('2000000000', '2100000000', 'CRISTAL MINERAL', 0, 'N', '000000000000', '0'),
('2000000000', '2200000000', 'CRISTAL ORGANICO', 0, 'N', '000000000000', '0'),
('2000000000', '2300000000', 'CRISTAL LABORATORIO', 0, 'N', '000000000000', '0'),
('2000000000', '2400000000', 'CRISTAL POLICARBONATO', 0, 'N', '000000000000', '0'),
('2100000000', '2110000000', 'C. MINERAL MONOFOCAL', 0, 'N', '000000000000', '0'),
('2100000000', '2120000000', 'C. MINERAL BIFOCAL', 0, 'N', '000000000000', '0'),
('2100000000', '2130000000', 'C. MINERAL PROGRESIVOS', 0, 'N', '000000000000', '0'),
('2110000000', '2111000000', 'C.MINE.MONO. ESFERICO', 0, 'N', '000000000000', '0'),
('2110000000', '2112000000', 'C.MINE.MONO. CILINDRICO', 0, 'N', '000000000000', '0'),
('2111000000', '21110000001', 'C.MINE.MONO ESFERICO 2.00', 0, 'S', '535511199426', '0'),
('2111000000', '21110000002', 'C.MINE.MONO ESFERICO 4.00', 0, 'S', '535511199427', '0'),
('2111000000', '21110000003', 'C.MINE.MONO ESFERICO 6.00', 0, 'S', '535511199428', '0'),
('2111000000', '21110000004', 'C.MINE.MONO ESFERICO 8.00', 0, 'S', '535511199429', '0'),
('2112000000', '21120000001', 'C.MINE.MONO CILINDRICO 2.00/2.00', 0, 'S', '535511199430', '0'),
('2112000000', '21120000002', 'C.MINE.MONO CILINDRICO 4.00/2.00', 0, 'S', '535511199431', '0'),
('2112000000', '21120000003', 'C.MINE.MONO CILINDRICO 6.00/2.00', 0, 'S', '535511199432', '0'),
('2120000000', '2121000000', 'C. MINE. BIFOCAL ESF.', 0, 'N', '000000000000', '0'),
('2120000000', '2122000000', 'C. MINE. BIFOCAL CIL.', 0, 'N', '000000000000', '0'),
('2121000000', '21210000001', 'C. MINE. BIFOCAL ESF. 2.00', 0, 'S', '446768396973', '0'),
('2121000000', '21210000002', 'C. MINE. BIFOCAL ESF. 4.00', 0, 'S', '446768396974', '0'),
('2121000000', '21210000003', 'C. MINE. BIFOCAL ESF. 6.00', 0, 'S', '446768396975', '0'),
('2121000000', '21210000004', 'C. MINE. BIFOCAL ESF. 8.00', 0, 'S', '446768396976', '0'),
('2122000000', '21220000001', 'C. MINE. BIFOCAL CIL. 2.00/4.00', 0, 'S', '519236683163', '0'),
('2122000000', '21220000002', 'C. MINE. BIFOCAL CIL. 4.00/4.00', 0, 'S', '519236683164', '0'),
('2122000000', '21220000003', 'C. MINE. BIFOCAL CIL. 6.00/4.00', 0, 'S', '519236683165', '0'),
('2122000000', '21220000004', 'C. MINE. BIFOCAL CIL. 8.00/4.00', 0, 'S', '519236683166', '0'),
('2130000000', '2131000000', 'C. MINE. PROGRE. ESFERICO', 0, 'N', '000000000000', '0'),
('2130000000', '2132000000', 'C. MINE. PROGRE. CILINDRICO', 0, 'N', '000000000000', '0'),
('2131000000', '21310000001', 'C. MINE. PROGRE. ESF. 2.00', 0, 'S', '643343725758', '0'),
('2131000000', '21310000002', 'C. MINE. PROGRE. ESF. 4.00', 0, 'S', '643343725759', '0'),
('2131000000', '21310000003', 'C. MINE. PROGRE. ESF. 6.00', 0, 'S', '643343725760', '0'),
('2132000000', '21320000001', 'C. MINE. PROGRE. CIL. 2.00/4.00', 0, 'S', '978653376569', '0'),
('2132000000', '21320000002', 'C. MINE. PROGRE. CIL. 4.00/4.00', 0, 'S', '736598157324', '0'),
('2132000000', '21320000003', 'C. MINE. PROGRE. CIL. 6.00/4.00', 0, 'S', '593476157543', '0'),
('2200000000', '2210000000', 'C. ORGANICO MONOFOCAL', 0, 'N', '000000000000', '0'),
('2200000000', '2220000000', 'C. ORGANICO BIFOCAL', 0, 'N', '000000000000', '0'),
('2200000000', '2230000000', 'C. ORGANICO PROGRESIVOS', 0, 'N', '000000000000', '0'),
('2210000000', '2211000000', 'C. ORG. MONO. ESFERICO', 0, 'N', '000000000000', '0'),
('2210000000', '2212000000', 'C. ORG. MONO. COMBINADO', 0, 'N', '000000000000', '0'),
('2211000000', '22110000001', 'C. ORG. MONO. ESFERICO 2.00', 0, 'S', '647114857185', '0'),
('2211000000', '22110000002', 'C. ORG. MONO. ESFERICO 4.00', 0, 'S', '647114857186', '0'),
('2211000000', '22110000003', 'C. ORG. MONO. ESFERICO 6.00', 0, 'S', '647114857187', '0'),
('2211000000', '22110000004', 'C. ORG. MONO. ESFERICO 8.00', 0, 'S', '647114857188', '0'),
('2212000000', '22120000001', 'C. ORG. MONO. COMBINADO 2.00/2.00', 0, 'S', '647114857189', '0'),
('2212000000', '22120000002', 'C. ORG. MONO. COMBINADO 4.00/2.00', 0, 'S', '647114857190', '0'),
('2212000000', '22120000003', 'C. ORG. MONO. COMBINADO 6.00/2.00', 0, 'S', '647114857191', '0'),
('2220000000', '2221000000', 'C. ORG. BIFOCAL ESF.', 0, 'N', '000000000000', '0'),
('2220000000', '2222000000', 'C. ORG. BIFOCAL CIL.', 0, 'N', '000000000000', '0'),
('2221000000', '22210000001', 'C. ORG. BIFOCAL ESF. 2.00', 0, 'S', '574744358459', '0'),
('2221000000', '22210000002', 'C. ORG. BIFOCAL ESF. 4.00', 0, 'S', '574744358460', '0'),
('2221000000', '22210000003', 'C. ORG. BIFOCAL ESF. 6.00', 0, 'S', '574744358461', '0'),
('2221000000', '22210000004', 'C. ORG. BIFOCAL ESF. 8.00', 0, 'S', '574744358462', '0'),
('2222000000', '22220000001', 'C. ORG. BIFOCAL CIL. 2.00/4.00', 0, 'S', '562137394484', '0'),
('2222000000', '22220000002', 'C. ORG. BIFOCAL CIL. 4.00/4.00', 0, 'S', '562137394485', '0'),
('2222000000', '22220000003', 'C. ORG. BIFOCAL CIL. 6.00/4.00', 0, 'S', '562137394486', '0'),
('2222000000', '22220000004', 'C. ORG. BIFOCAL CIL. 8.00/4.00', 0, 'S', '562137394487', '0'),
('2230000000', '2231000000', 'C. ORG. PROGRE. ESF.', 0, 'N', '000000000000', '0'),
('2230000000', '2232000000', 'C. ORG. PROGRE. CIL.', 0, 'N', '000000000000', '0'),
('2231000000', '22310000001', 'C. ORG. PROGRE. ESF. 2.00', 0, 'S', '616376472521', '0'),
('2231000000', '22310000002', 'C. ORG. PROGRE. ESF. 4.00', 0, 'S', '616376472522', '0'),
('2231000000', '22310000003', 'C. ORG. PROGRE. ESF. 6.00', 0, 'S', '616376472523', '0'),
('2232000000', '22320000001', 'C. ORG. PROGRE. CIL. 2.00/4.00', 0, 'S', '888671633223', '0'),
('2232000000', '22320000002', 'C. ORG. PROGRE. CIL. 4.00/4.00', 0, 'S', '888671633224', '0'),
('2232000000', '22320000003', 'C. ORG. PROGRE. CIL. 6.00/4.00', 0, 'S', '888671633225', '0'),
('2300000000', '2310000000', 'C. LABORATORIO MINERAL', 0, 'N', '000000000000', '0'),
('2300000000', '2320000000', 'C. LABORATORIO ORGANICO', 0, 'N', '000000000000', '0'),
('2310000000', '2311000000', 'C. LAB. MINE. NORMAL', 0, 'N', '000000000000', '0'),
('2310000000', '2312000000', 'C. LAB. MINE. H.LITE', 0, 'N', '000000000000', '0'),
('2311000000', '2311100000', 'C. LAB. MINE. NORMAL ESFERICO', 0, 'N', '000000000000', '0'),
('2311000000', '2311200000', 'C. LAB. MINE. NORMAL CILINDRICO', 0, 'N', '000000000000', '0'),
('2311100000', '23111000001', 'C. LAB. MINE. NORMAL ESF. 2.00', 0, 'S', '151821142543', '0'),
('2311100000', '23111000002', 'C. LAB. MINE. NORMAL ESF. 4.00', 0, 'S', '151821142574', '0'),
('2311100000', '23111000003', 'C. LAB. MINE. NORMAL ESF. 6.00', 0, 'S', '151821142567', '0'),
('2311100000', '23111000004', 'C. LAB. MINE. NORMAL ESF. 8.00', 0, 'S', '151821142578', '0'),
('2311100000', '23111000005', 'C. LAB. MINE. NORMAL ESF. 10.00', 0, 'S', '151821142545', '0'),
('2311100000', '23111000006', 'C. LAB. MINE. NORMAL ESF. 14.00', 0, 'S', '151821142576', '0'),
('2311200000', '23112000001', 'C. LAB. MINE. NORMAL CILIN. 2.00/2.00', 0, 'S', '298512591549', '0'),
('2311200000', '23112000002', 'C. LAB. MINE. NORMAL CILIN. 2.00/4.00', 0, 'S', '298512591550', '0'),
('2311200000', '23112000003', 'C. LAB. MINE. NORMAL CILIN. 4.00/2.00', 0, 'S', '298512591551', '0'),
('2311200000', '23112000004', 'C. LAB. MINE. NORMAL CILIN. 4.00/4.00', 0, 'S', '298512591552', '0'),
('2311200000', '23112000005', 'C. LAB. MINE. NORMAL CILIN. 6.00/2.00', 0, 'S', '298512591553', '0'),
('2311200000', '23112000006', 'C. LAB. MINE. NORMAL CILIN. 6.00/4.00', 0, 'S', '298512591554', '0'),
('2311200000', '23112000007', 'C. LAB. MINE. NORMAL CILIN. 8.00/2.00', 0, 'S', '298512591555', '0'),
('2311200000', '23112000008', 'C. LAB. MINE. NORMAL CILIN. 8.00/4.00', 0, 'S', '298512591556', '0'),
('2311200000', '23112000009', 'C. LAB. MINE. NORMAL CILIN. 10.00/2.00', 0, 'S', '298512591557', '0'),
('2311200000', '23112000010', 'C. LAB. MINE. NORMAL CILIN. 10.00/4.00', 0, 'S', '298512591558', '0'),
('2312000000', '2312100000', 'C. LAB. MINE. H.LITE ESF.', 0, 'N', '000000000000', '0'),
('2312000000', '2312200000', 'C. LAB. MINE. H.LITE CIL.', 0, 'N', '000000000000', '0'),
('2312100000', '23121000001', 'C. LAB. MINE. H.LITE ESF. 2.00', 0, 'S', '436129218973', '0'),
('2312100000', '23121000002', 'C. LAB. MINE. H.LITE ESF. 4.00', 0, 'S', '436129218974', '0'),
('2312100000', '23121000003', 'C. LAB. MINE. H.LITE ESF. 6.00', 0, 'S', '436129218975', '0'),
('2312100000', '23121000004', 'C. LAB. MINE. H.LITE ESF. 8.00', 0, 'S', '436129218976', '0'),
('2312100000', '23121000005', 'C. LAB. MINE. H.LITE ESF. 10.00', 0, 'S', '436129218977', '0'),
('2312100000', '23121000006', 'C. LAB. MINE. H.LITE ESF. 14.00', 0, 'S', '436129218978', '0'),
('2312100000', '23121000007', 'C. LAB. MINE. H.LITE ESF. 18.00', 0, 'S', '436129218979', '0'),
('2312100000', '23121000008', 'C. LAB. MINE. H.LITE ESF. 20.00', 0, 'S', '436129218980', '0'),
('2312200000', '23122000001', 'C. LAB. MINE. H.LITE CIL. 2.00/2.00', 0, 'S', '397574416138', '0'),
('2312200000', '23122000002', 'C. LAB. MINE. H.LITE CIL. 4.00/2.00', 0, 'S', '397574416139', '0'),
('2312200000', '23122000003', 'C. LAB. MINE. H.LITE CIL. 6.00/2.00', 0, 'S', '397574416140', '0'),
('2312200000', '23122000004', 'C. LAB. MINE. H.LITE CIL. 8.00/2.00', 0, 'S', '397574416141', '0'),
('2312200000', '23122000005', 'C. LAB. MINE. H.LITE CIL. 10.00/2.00', 0, 'S', '397574416142', '0'),
('2312200000', '23122000006', 'C. LAB. MINE. H.LITE CIL. 14.00/2.00', 0, 'S', '397574416143', '0'),
('2312200000', '23122000007', 'C. LAB. MINE. H.LITE CIL. 18.00/2.00', 0, 'S', '397574416144', '0'),
('2312200000', '23122000008', 'C. LAB. MINE. H.LITE CIL. 20.00/2.00', 0, 'S', '397574416145', '0'),
('2312200000', '23122000009', 'C. LAB. MINE. H.LITE CIL. 2.00/4.00', 0, 'S', '397574416146', '0'),
('2312200000', '23122000010', 'C. LAB. MINE. H.LITE CIL. 4.00/4.00', 0, 'S', '397574416147', '0'),
('2312200000', '23122000011', 'C. LAB. MINE. H.LITE CIL. 6.00/4.00', 0, 'S', '397574416148', '0'),
('2312200000', '23122000012', 'C. LAB. MINE. H.LITE CIL. 8.00/4.00', 0, 'S', '397574416149', '0'),
('2312200000', '23122000013', 'C. LAB. MINE. H.LITE CIL. 10.00/4.00', 0, 'S', '397574416150', '0'),
('2312200000', '23122000014', 'C. LAB. MINE. H.LITE CIL. 14.00/4.00', 0, 'S', '397574416151', '0'),
('2312200000', '23122000015', 'C. LAB. MINE. H.LITE CIL. 18.00/4.00', 0, 'S', '397574416152', '0'),
('2312200000', '23122000016', 'C. LAB. MINE. H.LITE CIL. 20.00/4.00', 0, 'S', '397574416153', '0'),
('2320000000', '2321000000', 'C. LAB. ORG. NORMAL', 0, 'N', '000000000000', '0'),
('2320000000', '2322000000', 'C. LAB. ORG. LENTICULAR', 0, 'N', '000000000000', '0'),
('2321000000', '2321100000', 'C. LAB. ORG. NORMAL. ESF.', 0, 'N', '000000000000', '0'),
('2321000000', '2321200000', 'C. LAB .ORG. NORMAL. CIL', 0, 'N', '000000000000', '0'),
('2321100000', '23211000001', 'C. LAB. ORG. NORMAL ESF. 2.00', 0, 'S', '273521872811', '0'),
('2321100000', '23211000002', 'C. LAB. ORG. NORMAL ESF. 4.00', 0, 'S', '273521872812', '0'),
('2321100000', '23211000003', 'C. LAB. ORG. NORMAL ESF. 6.00', 0, 'S', '273521872813', '0'),
('2321100000', '23211000004', 'C. LAB. ORG. NORMAL ESF. 8.00', 0, 'S', '273521872814', '0'),
('2321100000', '23211000005', 'C. LAB. ORG. NORMAL ESF. 10.00', 0, 'S', '273521872815', '0'),
('2321100000', '23211000006', 'C. LAB. ORG. NORMAL ESF. 14.00', 0, 'S', '273521872816', '0'),
('2321200000', '23212000001', 'C. LAB. ORG. NORMAL CIL. 2.00/2.00', 0, 'S', '916863549326', '0'),
('2321200000', '23212000002', 'C. LAB. ORG. NORMAL CIL. 4.00/2.00', 0, 'S', '916863549327', '0'),
('2321200000', '23212000003', 'C. LAB. ORG. NORMAL CIL. 6.00/2.00', 0, 'S', '916863549328', '0'),
('2321200000', '23212000004', 'C. LAB. ORG. NORMAL CIL. 8.00/2.00', 0, 'S', '916863549329', '0'),
('2321200000', '23212000005', 'C. LAB. ORG. NORMAL CIL. 10.00/2.00', 0, 'S', '916863549330', '0'),
('2321200000', '23212000006', 'C. LAB. ORG. NORMAL CIL. 14.00/2.00', 0, 'S', '916863549331', '0'),
('2321200000', '23212000007', 'C. LAB. ORG. NORMAL CIL. 2.00/4.00', 0, 'S', '916863549332', '0'),
('2321200000', '23212000008', 'C. LAB. ORG. NORMAL CIL. 4.00/4.00', 0, 'S', '916863549333', '0'),
('2321200000', '23212000009', 'C. LAB. ORG. NORMAL CIL. 6.00/4.00', 0, 'S', '916863549334', '0'),
('2321200000', '23212000010', 'C. LAB. ORG. NORMAL CIL. 8.00/4.00', 0, 'S', '916863549335', '0'),
('2321200000', '23212000011', 'C. LAB. ORG. NORMAL CIL. 10.00/4.00', 0, 'S', '916863549336', '0'),
('2321200000', '23212000012', 'C. LAB. ORG. NORMAL CIL. 14.00/4.00', 0, 'S', '916863549337', '0'),
('2322000000', '2322100000', 'C. LAB. ORG. LENTICULAR. ESF.', 0, 'N', '000000000000', '0'),
('2322000000', '2322200000', 'C. LAB. ORG. LENTICULAR. CIL.', 0, 'N', '000000000000', '0'),
('2322100000', '23221000001', 'C. LAB. ORG. LENTICULAR ESF. 8.00', 0, 'S', '849854549734', '0'),
('2322100000', '23221000002', 'C. LAB. ORG. LENTICULAR ESF. 10.00', 0, 'S', '849854549735', '0'),
('2322100000', '23221000003', 'C. LAB. ORG. LENTICULAR ESF. 14.00', 0, 'S', '849854549736', '0'),
('2322100000', '23221000004', 'C. LAB. ORG. LENTICULAR ESF. 18.00', 0, 'S', '849854549737', '0'),
('2322100000', '23221000005', 'C. LAB. ORG. LENTICULAR ESF. 20.00', 0, 'S', '849854549738', '0'),
('2322200000', '23222000001', 'C. LAB. ORG. LENTICULAR CIL. 8.00/2.00', 0, 'S', '932954152373', '0'),
('2322200000', '23222000002', 'C. LAB. ORG. LENTICULAR CIL. 10.00/2.00', 0, 'S', '932954152374', '0'),
('2322200000', '23222000003', 'C. LAB. ORG. LENTICULAR CIL. 14.00/2.00', 0, 'S', '932954152375', '0'),
('2322200000', '23222000004', 'C. LAB. ORG. LENTICULAR CIL. 18.00/2.00', 0, 'S', '932954152376', '0'),
('2322200000', '23222000005', 'C. LAB. ORG. LENTICULAR CIL. 20.00/2.00', 0, 'S', '932954152377', '0'),
('2322200000', '23222000006', 'C. LAB. ORG. LENTICULAR CIL. 8.00/4.00', 0, 'S', '932954152378', '0'),
('2322200000', '23222000007', 'C. LAB. ORG. LENTICULAR CIL. 10.00/4.00', 0, 'S', '932954152379', '0'),
('2322200000', '23222000008', 'C. LAB. ORG. LENTICULAR CIL. 14.00/4.00', 0, 'S', '932954152380', '0'),
('2322200000', '23222000009', 'C. LAB. ORG. LENTICULAR CIL. 18.00/4.00', 0, 'S', '932954152381', '0'),
('2322200000', '23222000010', 'C. LAB. ORG. LENTICULAR CIL. 20.00/4.00', 0, 'S', '932954152382', '0'),
('2400000000', '2410000000', 'CRISTAL POLI. MONOFOCAL', 0, 'N', '000000000000', '0'),
('2400000000', '2420000000', 'CRISTAL POLI. BIFOCAL', 0, 'N', '000000000000', '0'),
('2400000000', '2430000000', 'CRISTAL POLI. PROGRESIVOS', 0, 'N', '000000000000', '0'),
('2410000000', '2411000000', 'C.POLI. MONO. ESFERICO', 0, 'N', '000000000000', '0'),
('2410000000', '2412000000', 'C.POLI. MONO. COMBINADO', 0, 'N', '000000000000', '0'),
('2411000000', '24110000001', 'C. POLI. MONO. ESFERICO 2.00', 0, 'S', '894143419673', '0'),
('2411000000', '24110000002', 'C. POLI. MONO. ESFERICO 4.00', 0, 'S', '114946511231', '0'),
('2411000000', '24110000003', 'C. POLI. MONO. ESFERICO 6.00', 0, 'S', '162371978845', '0'),
('2411000000', '24110000004', 'C. POLI. MONO. ESFERICO 8.00', 0, 'S', '134184642716', '0'),
('2412000000', '24120000001', 'C. POLI. MONO. COMBINADO 2.00/2.00', 0, 'S', '481362449249', '0'),
('2412000000', '24120000002', 'C. POLI. MONO. COMBINADO 4.00/2.00', 0, 'S', '429395217469', '0'),
('2412000000', '24120000003', 'C. POLI. MONO. COMBINADO 2.00/4.00', 0, 'S', '221442526164', '0'),
('2412000000', '24120000004', 'C. POLI. MONO. COMBINADO 4.00/4.00', 0, 'S', '177816948611', '0'),
('2420000000', '2421000000', 'C. POLI. BIFOCAL. ESF.', 0, 'N', '000000000000', '0'),
('2420000000', '2422000000', 'C. POLI. BIFOCAL CIL. ', 0, 'N', '000000000000', '0'),
('2421000000', '24210000001', 'C. POLI. BIFOCAL ESF. 2.00', 0, 'S', '531345146141', '0'),
('2421000000', '24210000002', 'C. POLI. BIFOCAL ESF. 4.00', 0, 'S', '531345146142', '0'),
('2421000000', '24210000003', 'C. POLI. BIFOCAL ESF. 6.00', 0, 'S', '531345146143', '0'),
('2422000000', '24220000001', 'C. POLI. BIFOCAL CIL. 2.00/2.00', 0, 'S', '363839368934', '0'),
('2422000000', '24220000002', 'C. POLI. BIFOCAL CIL. 4.00/2.00', 0, 'S', '363839368935', '0'),
('2422000000', '24220000003', 'C. POLI. BIFOCAL CIL. 6.00/2.00', 0, 'S', '363839368936', '0'),
('2430000000', '2431000000', 'C. POLI. PROGRE. ESF.', 0, 'N', '000000000000', '0'),
('2430000000', '2432000000', 'C. POLI. PROGRE. CIL.', 0, 'N', '000000000000', '0'),
('2431000000', '24310000001', 'C. POLI. PROGRE. ESF. 2.00', 0, 'S', '474365826521', '0'),
('2431000000', '24310000002', 'C. POLI. PROGRE. ESF. 4.00', 0, 'S', '474365826522', '0'),
('2431000000', '24310000003', 'C. POLI. PROGRE. ESF. 6.00', 0, 'S', '474365826523', '0'),
('2432000000', '24320000001', 'C. POLI. PROGRE. CIL. 2.00/2.00', 0, 'S', '563228576644', '0'),
('2432000000', '24320000002', 'C. POLI. PROGRE. CIL. 4.00/2.00', 0, 'S', '563228576645', '0'),
('2432000000', '24320000003', 'C. POLI. PROGRE. CIL. 6.00/2.00', 0, 'S', '563228576646', '0'),
('3000000000', '3100000000', 'ANTIRREFLEJOS', 0, 'N', '000000000000', '0'),
('3000000000', '3200000000', 'FOTOCOMATICOS', 0, 'N', '000000000000', '0'),
('3000000000', '3300000000', 'FILTRO UV', 0, 'N', '000000000000', '0'),
('3000000000', '3400000000', 'COLORACION', 0, 'N', '000000000000', '0'),
('3000000000', '3500000000', 'POLARIZADO', 0, 'N', '000000000000', '0'),
('3000000000', '3600000000', 'ENDURECIMIENTOS', 0, 'N', '000000000000', '0'),
('3100000000', '31000000001', 'ANTIRRELEJO 2 CAPAS', 0, 'S', '194566342398', '0'),
('3100000000', '31000000002', 'ANTIRRELEJO 4 CAPAS', 0, 'S', '589829598976', '0'),
('3100000000', '31000000003', 'ANTIRRELEJO 8 CAPAS', 0, 'S', '591341773261', '0'),
('3100000000', '31000000004', 'ANTIRRELEJO 16 CAPAS', 0, 'S', '977444919878', '0'),
('3200000000', '32000000001', 'FOTOCROMATICO', 0, 'S', '965657183689', '0'),
('3300000000', '33000000001', 'FILTRO UV', 0, 'S', '431582959372', '0'),
('3400000000', '34000000001', 'COLORACION GRIS', 0, 'S', '788973823148', '0'),
('3400000000', '34000000002', 'COLORACION CAFE', 0, 'S', '452381212467', '0'),
('3400000000', '34000000003', 'COLORACION VERDE', 0, 'S', '491145574343', '0'),
('3400000000', '34000000004', 'COLORACION ROSA', 0, 'S', '677362668375', '0'),
('3400000000', '34000000005', 'COLORACION NEGRO', 0, 'S', '811462383287', '0'),
('3500000000', '35000000001', 'POLARIZADO', 0, 'S', '786785182665', '0'),
('3600000000', '36000000001', 'ENDURECIMIENTO', 0, 'S', '591886663615', '0'),
('4000000000', '40000000001', 'ESTUCHES', 5, 'S', '245746426951', '0'),
('4000000000', '40000000002', 'LIMPIADORES', 5, 'S', '784282137213', '0'),
('4000000000', '40000000003', 'CINTA', 10, 'S', '446356544233', '0'),
('6000000000', '61000000001', 'COPIA DE RECETA', 0, 'S', '582491798966', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_producto_proveedor`
--

CREATE TABLE `brc_producto_proveedor` (
  `ID_PADRE` decimal(11,0) NOT NULL,
  `ID_HIJO` decimal(11,0) NOT NULL,
  `ID_PROVEEDOR` decimal(11,0) NOT NULL,
  `VALOR_PROVEEDOR` decimal(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_producto_web`
--

CREATE TABLE `brc_producto_web` (
  `CODIGO` varchar(30) NOT NULL,
  `DESCRIPCION` varchar(255) NOT NULL,
  `VIGENCIA` varchar(1) NOT NULL,
  `VALOR` decimal(12,0) NOT NULL,
  `COD_TIPO` varchar(6) NOT NULL,
  `COD_MARCA` varchar(6) NOT NULL,
  `MODELO` varchar(50) NOT NULL,
  `COD_MATERIAL` varchar(6) NOT NULL,
  `COD_COLOR` varchar(6) NOT NULL,
  `COD_FORMA` varchar(6) NOT NULL,
  `FOTO1` blob NOT NULL,
  `FOTO2` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_proveedor`
--

CREATE TABLE `brc_proveedor` (
  `ID_PROVEEDOR` decimal(11,0) NOT NULL,
  `NOMBRE_EMPRESA` varchar(255) NOT NULL,
  `CONTACTO` varchar(255) NOT NULL,
  `DIRECCION` varchar(255) NOT NULL,
  `CIUDAD` varchar(50) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `TELEFONO` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_usuarios`
--

CREATE TABLE `brc_usuarios` (
  `RUT` decimal(12,0) NOT NULL,
  `DV` varchar(1) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `USUARIO` varchar(15) NOT NULL,
  `CLAVE` varchar(15) NOT NULL,
  `AVATAR` varchar(255) NOT NULL,
  `VIGENCIA` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='USUARIO QUE PUEDEN INGRESAR AL SISTEMA';

--
-- Volcado de datos para la tabla `brc_usuarios`
--

INSERT INTO `brc_usuarios` (`RUT`, `DV`, `NOMBRE`, `USUARIO`, `CLAVE`, `AVATAR`, `VIGENCIA`) VALUES
('1', '9', 'ADMINISTRADOR', 'ADMINISTRADOR', '4DM1N.', 'default-avatar.jpg', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_usuarios_perfiles`
--

CREATE TABLE `brc_usuarios_perfiles` (
  `RUT_USUARIO` decimal(12,0) NOT NULL,
  `ID_PADRE` decimal(11,0) NOT NULL,
  `ID_HIJO` decimal(11,0) NOT NULL,
  `VIGENCIA` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `brc_usuarios_perfiles`
--

INSERT INTO `brc_usuarios_perfiles` (`RUT_USUARIO`, `ID_PADRE`, `ID_HIJO`, `VIGENCIA`) VALUES
('1', '0', '100000000', 'S'),
('1', '0', '200000000', 'S'),
('1', '0', '300000000', 'S'),
('1', '0', '400000000', 'S'),
('1', '0', '500000000', 'S'),
('1', '0', '600000000', 'S'),
('1', '0', '700000000', 'S'),
('1', '0', '800000000', 'S'),
('1', '300000000', '310000000', 'S'),
('1', '300000000', '320000000', 'S'),
('1', '300000000', '330000000', 'S'),
('1', '310000000', '311000000', 'S'),
('1', '310000000', '312000000', 'S'),
('1', '310000000', '313000000', 'S'),
('1', '320000000', '321000000', 'S'),
('1', '320000000', '322000000', 'S'),
('1', '320000000', '323000000', 'S'),
('1', '330000000', '331000000', 'S'),
('1', '330000000', '332000000', 'S'),
('1', '400000000', '410000000', 'S'),
('1', '400000000', '420000000', 'S'),
('1', '400000000', '430000000', 'S'),
('1', '400000000', '440000000', 'S'),
('1', '500000000', '510000000', 'S'),
('1', '500000000', '520000000', 'S'),
('1', '500000000', '530000000', 'S'),
('1', '500000000', '540000000', 'S'),
('1', '500000000', '550000000', 'S'),
('1', '500000000', '560000000', 'S'),
('1', '600000000', '601000000', 'S'),
('1', '600000000', '602000000', 'S'),
('1', '700000000', '710000000', 'S'),
('1', '800000000', '810000000', 'S'),
('1', '800000000', '820000000', 'S'),
('1', '800000000', '830000000', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_venta`
--

CREATE TABLE `brc_venta` (
  `FOLIO` varchar(12) NOT NULL,
  `RUT_CLIENTE` decimal(12,0) NOT NULL,
  `DV_CLIENTE` varchar(1) NOT NULL,
  `SUBTOTAL` decimal(12,0) NOT NULL,
  `DESCUENTO` decimal(12,0) NOT NULL,
  `NETO` decimal(12,0) NOT NULL,
  `IVA` decimal(12,0) NOT NULL,
  `TOTAL` decimal(12,0) NOT NULL,
  `FECHA_VENTA` varchar(8) NOT NULL,
  `USUARIO` decimal(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_venta_abono`
--

CREATE TABLE `brc_venta_abono` (
  `FOLIO` varchar(12) NOT NULL,
  `FECHA_ABONO` varchar(8) NOT NULL,
  `TIPO_PAGO` varchar(6) NOT NULL,
  `VALOR` decimal(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brc_venta_detalle`
--

CREATE TABLE `brc_venta_detalle` (
  `FOLIO` varchar(12) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `PRODUCTO` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rpt_operativos`
--

CREATE TABLE `rpt_operativos` (
  `NOMBRE` varchar(255) NOT NULL,
  `TELEFONO` varchar(25) NOT NULL,
  `HORA` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rpt_productos`
--

CREATE TABLE `rpt_productos` (
  `DESCRIPCION_PADRE` varchar(255) NOT NULL,
  `DESCRIPCION` varchar(255) NOT NULL,
  `STOCK_CRITICO` int(4) NOT NULL,
  `VIGENCIA` varchar(30) NOT NULL,
  `CODIGO` varchar(30) NOT NULL,
  `VALOR_VENTA` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rpt_productos`
--

INSERT INTO `rpt_productos` (`DESCRIPCION_PADRE`, `DESCRIPCION`, `STOCK_CRITICO`, `VIGENCIA`, `CODIGO`, `VALOR_VENTA`) VALUES
('ACCESORIOS', 'CINTA', 10, 'VIGENTE', '446356544233', 0),
('ACCESORIOS', 'ESTUCHES', 5, 'VIGENTE', '245746426951', 0),
('ACCESORIOS', 'LIMPIADORES', 5, 'VIGENTE', '784282137213', 0),
('ANTIRREFLEJOS', 'ANTIRRELEJO 16 CAPAS', 0, 'VIGENTE', '977444919878', 0),
('ANTIRREFLEJOS', 'ANTIRRELEJO 2 CAPAS', 0, 'VIGENTE', '194566342398', 0),
('ANTIRREFLEJOS', 'ANTIRRELEJO 4 CAPAS', 0, 'VIGENTE', '589829598976', 0),
('ANTIRREFLEJOS', 'ANTIRRELEJO 8 CAPAS', 0, 'VIGENTE', '591341773261', 0),
('C. LAB .ORG. NORMAL. CIL', 'C. LAB. ORG. NORMAL CIL. 10.00/2.00', 0, 'VIGENTE', '916863549330', 0),
('C. LAB .ORG. NORMAL. CIL', 'C. LAB. ORG. NORMAL CIL. 10.00/4.00', 0, 'VIGENTE', '916863549336', 0),
('C. LAB .ORG. NORMAL. CIL', 'C. LAB. ORG. NORMAL CIL. 14.00/2.00', 0, 'VIGENTE', '916863549331', 0),
('C. LAB .ORG. NORMAL. CIL', 'C. LAB. ORG. NORMAL CIL. 14.00/4.00', 0, 'VIGENTE', '916863549337', 0),
('C. LAB .ORG. NORMAL. CIL', 'C. LAB. ORG. NORMAL CIL. 2.00/2.00', 0, 'VIGENTE', '916863549326', 0),
('C. LAB .ORG. NORMAL. CIL', 'C. LAB. ORG. NORMAL CIL. 2.00/4.00', 0, 'VIGENTE', '916863549332', 0),
('C. LAB .ORG. NORMAL. CIL', 'C. LAB. ORG. NORMAL CIL. 4.00/2.00', 0, 'VIGENTE', '916863549327', 0),
('C. LAB .ORG. NORMAL. CIL', 'C. LAB. ORG. NORMAL CIL. 4.00/4.00', 0, 'VIGENTE', '916863549333', 0),
('C. LAB .ORG. NORMAL. CIL', 'C. LAB. ORG. NORMAL CIL. 6.00/2.00', 0, 'VIGENTE', '916863549328', 0),
('C. LAB .ORG. NORMAL. CIL', 'C. LAB. ORG. NORMAL CIL. 6.00/4.00', 0, 'VIGENTE', '916863549334', 0),
('C. LAB .ORG. NORMAL. CIL', 'C. LAB. ORG. NORMAL CIL. 8.00/2.00', 0, 'VIGENTE', '916863549329', 0),
('C. LAB .ORG. NORMAL. CIL', 'C. LAB. ORG. NORMAL CIL. 8.00/4.00', 0, 'VIGENTE', '916863549335', 0),
('C. LAB. MINE. H.LITE CIL.', 'C. LAB. MINE. H.LITE CIL. 10.00/2.00', 0, 'VIGENTE', '397574416142', 0),
('C. LAB. MINE. H.LITE CIL.', 'C. LAB. MINE. H.LITE CIL. 10.00/4.00', 0, 'VIGENTE', '397574416150', 0),
('C. LAB. MINE. H.LITE CIL.', 'C. LAB. MINE. H.LITE CIL. 14.00/2.00', 0, 'VIGENTE', '397574416143', 0),
('C. LAB. MINE. H.LITE CIL.', 'C. LAB. MINE. H.LITE CIL. 14.00/4.00', 0, 'VIGENTE', '397574416151', 0),
('C. LAB. MINE. H.LITE CIL.', 'C. LAB. MINE. H.LITE CIL. 18.00/2.00', 0, 'VIGENTE', '397574416144', 0),
('C. LAB. MINE. H.LITE CIL.', 'C. LAB. MINE. H.LITE CIL. 18.00/4.00', 0, 'VIGENTE', '397574416152', 0),
('C. LAB. MINE. H.LITE CIL.', 'C. LAB. MINE. H.LITE CIL. 2.00/2.00', 0, 'VIGENTE', '397574416138', 0),
('C. LAB. MINE. H.LITE CIL.', 'C. LAB. MINE. H.LITE CIL. 2.00/4.00', 0, 'VIGENTE', '397574416146', 0),
('C. LAB. MINE. H.LITE CIL.', 'C. LAB. MINE. H.LITE CIL. 20.00/2.00', 0, 'VIGENTE', '397574416145', 0),
('C. LAB. MINE. H.LITE CIL.', 'C. LAB. MINE. H.LITE CIL. 20.00/4.00', 0, 'VIGENTE', '397574416153', 0),
('C. LAB. MINE. H.LITE CIL.', 'C. LAB. MINE. H.LITE CIL. 4.00/2.00', 0, 'VIGENTE', '397574416139', 0),
('C. LAB. MINE. H.LITE CIL.', 'C. LAB. MINE. H.LITE CIL. 4.00/4.00', 0, 'VIGENTE', '397574416147', 0),
('C. LAB. MINE. H.LITE CIL.', 'C. LAB. MINE. H.LITE CIL. 6.00/2.00', 0, 'VIGENTE', '397574416140', 0),
('C. LAB. MINE. H.LITE CIL.', 'C. LAB. MINE. H.LITE CIL. 6.00/4.00', 0, 'VIGENTE', '397574416148', 0),
('C. LAB. MINE. H.LITE CIL.', 'C. LAB. MINE. H.LITE CIL. 8.00/2.00', 0, 'VIGENTE', '397574416141', 0),
('C. LAB. MINE. H.LITE CIL.', 'C. LAB. MINE. H.LITE CIL. 8.00/4.00', 0, 'VIGENTE', '397574416149', 0),
('C. LAB. MINE. H.LITE ESF.', 'C. LAB. MINE. H.LITE ESF. 10.00', 0, 'VIGENTE', '436129218977', 0),
('C. LAB. MINE. H.LITE ESF.', 'C. LAB. MINE. H.LITE ESF. 14.00', 0, 'VIGENTE', '436129218978', 0),
('C. LAB. MINE. H.LITE ESF.', 'C. LAB. MINE. H.LITE ESF. 18.00', 0, 'VIGENTE', '436129218979', 0),
('C. LAB. MINE. H.LITE ESF.', 'C. LAB. MINE. H.LITE ESF. 2.00', 0, 'VIGENTE', '436129218973', 0),
('C. LAB. MINE. H.LITE ESF.', 'C. LAB. MINE. H.LITE ESF. 20.00', 0, 'VIGENTE', '436129218980', 0),
('C. LAB. MINE. H.LITE ESF.', 'C. LAB. MINE. H.LITE ESF. 4.00', 0, 'VIGENTE', '436129218974', 0),
('C. LAB. MINE. H.LITE ESF.', 'C. LAB. MINE. H.LITE ESF. 6.00', 0, 'VIGENTE', '436129218975', 0),
('C. LAB. MINE. H.LITE ESF.', 'C. LAB. MINE. H.LITE ESF. 8.00', 0, 'VIGENTE', '436129218976', 0),
('C. LAB. MINE. NORMAL CILINDRICO', 'C. LAB. MINE. NORMAL CILIN. 10.00/2.00', 0, 'VIGENTE', '298512591557', 0),
('C. LAB. MINE. NORMAL CILINDRICO', 'C. LAB. MINE. NORMAL CILIN. 10.00/4.00', 0, 'VIGENTE', '298512591558', 0),
('C. LAB. MINE. NORMAL CILINDRICO', 'C. LAB. MINE. NORMAL CILIN. 2.00/2.00', 0, 'VIGENTE', '298512591549', 0),
('C. LAB. MINE. NORMAL CILINDRICO', 'C. LAB. MINE. NORMAL CILIN. 2.00/4.00', 0, 'VIGENTE', '298512591550', 0),
('C. LAB. MINE. NORMAL CILINDRICO', 'C. LAB. MINE. NORMAL CILIN. 4.00/2.00', 0, 'VIGENTE', '298512591551', 0),
('C. LAB. MINE. NORMAL CILINDRICO', 'C. LAB. MINE. NORMAL CILIN. 4.00/4.00', 0, 'VIGENTE', '298512591552', 0),
('C. LAB. MINE. NORMAL CILINDRICO', 'C. LAB. MINE. NORMAL CILIN. 6.00/2.00', 0, 'VIGENTE', '298512591553', 0),
('C. LAB. MINE. NORMAL CILINDRICO', 'C. LAB. MINE. NORMAL CILIN. 6.00/4.00', 0, 'VIGENTE', '298512591554', 0),
('C. LAB. MINE. NORMAL CILINDRICO', 'C. LAB. MINE. NORMAL CILIN. 8.00/2.00', 0, 'VIGENTE', '298512591555', 0),
('C. LAB. MINE. NORMAL CILINDRICO', 'C. LAB. MINE. NORMAL CILIN. 8.00/4.00', 0, 'VIGENTE', '298512591556', 0),
('C. LAB. MINE. NORMAL ESFERICO', 'C. LAB. MINE. NORMAL ESF. 10.00', 0, 'VIGENTE', '151821142545', 0),
('C. LAB. MINE. NORMAL ESFERICO', 'C. LAB. MINE. NORMAL ESF. 14.00', 0, 'VIGENTE', '151821142576', 0),
('C. LAB. MINE. NORMAL ESFERICO', 'C. LAB. MINE. NORMAL ESF. 2.00', 0, 'VIGENTE', '151821142543', 0),
('C. LAB. MINE. NORMAL ESFERICO', 'C. LAB. MINE. NORMAL ESF. 4.00', 0, 'VIGENTE', '151821142574', 0),
('C. LAB. MINE. NORMAL ESFERICO', 'C. LAB. MINE. NORMAL ESF. 6.00', 0, 'VIGENTE', '151821142567', 0),
('C. LAB. MINE. NORMAL ESFERICO', 'C. LAB. MINE. NORMAL ESF. 8.00', 0, 'VIGENTE', '151821142578', 0),
('C. LAB. ORG. LENTICULAR. CIL.', 'C. LAB. ORG. LENTICULAR CIL. 10.00/2.00', 0, 'VIGENTE', '932954152374', 0),
('C. LAB. ORG. LENTICULAR. CIL.', 'C. LAB. ORG. LENTICULAR CIL. 10.00/4.00', 0, 'VIGENTE', '932954152379', 0),
('C. LAB. ORG. LENTICULAR. CIL.', 'C. LAB. ORG. LENTICULAR CIL. 14.00/2.00', 0, 'VIGENTE', '932954152375', 0),
('C. LAB. ORG. LENTICULAR. CIL.', 'C. LAB. ORG. LENTICULAR CIL. 14.00/4.00', 0, 'VIGENTE', '932954152380', 0),
('C. LAB. ORG. LENTICULAR. CIL.', 'C. LAB. ORG. LENTICULAR CIL. 18.00/2.00', 0, 'VIGENTE', '932954152376', 0),
('C. LAB. ORG. LENTICULAR. CIL.', 'C. LAB. ORG. LENTICULAR CIL. 18.00/4.00', 0, 'VIGENTE', '932954152381', 0),
('C. LAB. ORG. LENTICULAR. CIL.', 'C. LAB. ORG. LENTICULAR CIL. 20.00/2.00', 0, 'VIGENTE', '932954152377', 0),
('C. LAB. ORG. LENTICULAR. CIL.', 'C. LAB. ORG. LENTICULAR CIL. 20.00/4.00', 0, 'VIGENTE', '932954152382', 0),
('C. LAB. ORG. LENTICULAR. CIL.', 'C. LAB. ORG. LENTICULAR CIL. 8.00/2.00', 0, 'VIGENTE', '932954152373', 0),
('C. LAB. ORG. LENTICULAR. CIL.', 'C. LAB. ORG. LENTICULAR CIL. 8.00/4.00', 0, 'VIGENTE', '932954152378', 0),
('C. LAB. ORG. LENTICULAR. ESF.', 'C. LAB. ORG. LENTICULAR ESF. 10.00', 0, 'VIGENTE', '849854549735', 0),
('C. LAB. ORG. LENTICULAR. ESF.', 'C. LAB. ORG. LENTICULAR ESF. 14.00', 0, 'VIGENTE', '849854549736', 0),
('C. LAB. ORG. LENTICULAR. ESF.', 'C. LAB. ORG. LENTICULAR ESF. 18.00', 0, 'VIGENTE', '849854549737', 0),
('C. LAB. ORG. LENTICULAR. ESF.', 'C. LAB. ORG. LENTICULAR ESF. 20.00', 0, 'VIGENTE', '849854549738', 0),
('C. LAB. ORG. LENTICULAR. ESF.', 'C. LAB. ORG. LENTICULAR ESF. 8.00', 0, 'VIGENTE', '849854549734', 0),
('C. LAB. ORG. NORMAL. ESF.', 'C. LAB. ORG. NORMAL ESF. 10.00', 0, 'VIGENTE', '273521872815', 0),
('C. LAB. ORG. NORMAL. ESF.', 'C. LAB. ORG. NORMAL ESF. 14.00', 0, 'VIGENTE', '273521872816', 0),
('C. LAB. ORG. NORMAL. ESF.', 'C. LAB. ORG. NORMAL ESF. 2.00', 0, 'VIGENTE', '273521872811', 0),
('C. LAB. ORG. NORMAL. ESF.', 'C. LAB. ORG. NORMAL ESF. 4.00', 0, 'VIGENTE', '273521872812', 0),
('C. LAB. ORG. NORMAL. ESF.', 'C. LAB. ORG. NORMAL ESF. 6.00', 0, 'VIGENTE', '273521872813', 0),
('C. LAB. ORG. NORMAL. ESF.', 'C. LAB. ORG. NORMAL ESF. 8.00', 0, 'VIGENTE', '273521872814', 0),
('C. MINE. BIFOCAL CIL.', 'C. MINE. BIFOCAL CIL. 2.00/4.00', 0, 'VIGENTE', '519236683163', 0),
('C. MINE. BIFOCAL CIL.', 'C. MINE. BIFOCAL CIL. 4.00/4.00', 0, 'VIGENTE', '519236683164', 0),
('C. MINE. BIFOCAL CIL.', 'C. MINE. BIFOCAL CIL. 6.00/4.00', 0, 'VIGENTE', '519236683165', 0),
('C. MINE. BIFOCAL CIL.', 'C. MINE. BIFOCAL CIL. 8.00/4.00', 0, 'VIGENTE', '519236683166', 0),
('C. MINE. BIFOCAL ESF.', 'C. MINE. BIFOCAL ESF. 2.00', 0, 'VIGENTE', '446768396973', 0),
('C. MINE. BIFOCAL ESF.', 'C. MINE. BIFOCAL ESF. 4.00', 0, 'VIGENTE', '446768396974', 0),
('C. MINE. BIFOCAL ESF.', 'C. MINE. BIFOCAL ESF. 6.00', 0, 'VIGENTE', '446768396975', 0),
('C. MINE. BIFOCAL ESF.', 'C. MINE. BIFOCAL ESF. 8.00', 0, 'VIGENTE', '446768396976', 0),
('C. MINE. PROGRE. CILINDRICO', 'C. MINE. PROGRE. CIL. 2.00/4.00', 0, 'VIGENTE', '978653376569', 0),
('C. MINE. PROGRE. CILINDRICO', 'C. MINE. PROGRE. CIL. 4.00/4.00', 0, 'VIGENTE', '736598157324', 0),
('C. MINE. PROGRE. CILINDRICO', 'C. MINE. PROGRE. CIL. 6.00/4.00', 0, 'VIGENTE', '593476157543', 0),
('C. MINE. PROGRE. ESFERICO', 'C. MINE. PROGRE. ESF. 2.00', 0, 'VIGENTE', '643343725758', 0),
('C. MINE. PROGRE. ESFERICO', 'C. MINE. PROGRE. ESF. 4.00', 0, 'VIGENTE', '643343725759', 0),
('C. MINE. PROGRE. ESFERICO', 'C. MINE. PROGRE. ESF. 6.00', 0, 'VIGENTE', '643343725760', 0),
('C. ORG. BIFOCAL CIL.', 'C. ORG. BIFOCAL CIL. 2.00/4.00', 0, 'VIGENTE', '562137394484', 0),
('C. ORG. BIFOCAL CIL.', 'C. ORG. BIFOCAL CIL. 4.00/4.00', 0, 'VIGENTE', '562137394485', 0),
('C. ORG. BIFOCAL CIL.', 'C. ORG. BIFOCAL CIL. 6.00/4.00', 0, 'VIGENTE', '562137394486', 0),
('C. ORG. BIFOCAL CIL.', 'C. ORG. BIFOCAL CIL. 8.00/4.00', 0, 'VIGENTE', '562137394487', 0),
('C. ORG. BIFOCAL ESF.', 'C. ORG. BIFOCAL ESF. 2.00', 0, 'VIGENTE', '574744358459', 0),
('C. ORG. BIFOCAL ESF.', 'C. ORG. BIFOCAL ESF. 4.00', 0, 'VIGENTE', '574744358460', 0),
('C. ORG. BIFOCAL ESF.', 'C. ORG. BIFOCAL ESF. 6.00', 0, 'VIGENTE', '574744358461', 0),
('C. ORG. BIFOCAL ESF.', 'C. ORG. BIFOCAL ESF. 8.00', 0, 'VIGENTE', '574744358462', 0),
('C. ORG. MONO. COMBINADO', 'C. ORG. MONO. COMBINADO 2.00/2.00', 0, 'VIGENTE', '647114857189', 0),
('C. ORG. MONO. COMBINADO', 'C. ORG. MONO. COMBINADO 4.00/2.00', 0, 'VIGENTE', '647114857190', 0),
('C. ORG. MONO. COMBINADO', 'C. ORG. MONO. COMBINADO 6.00/2.00', 0, 'VIGENTE', '647114857191', 0),
('C. ORG. MONO. ESFERICO', 'C. ORG. MONO. ESFERICO 2.00', 0, 'VIGENTE', '647114857185', 0),
('C. ORG. MONO. ESFERICO', 'C. ORG. MONO. ESFERICO 4.00', 0, 'VIGENTE', '647114857186', 0),
('C. ORG. MONO. ESFERICO', 'C. ORG. MONO. ESFERICO 6.00', 0, 'VIGENTE', '647114857187', 0),
('C. ORG. MONO. ESFERICO', 'C. ORG. MONO. ESFERICO 8.00', 0, 'VIGENTE', '647114857188', 0),
('C. ORG. PROGRE. CIL.', 'C. ORG. PROGRE. CIL. 2.00/4.00', 0, 'VIGENTE', '888671633223', 0),
('C. ORG. PROGRE. CIL.', 'C. ORG. PROGRE. CIL. 4.00/4.00', 0, 'VIGENTE', '888671633224', 0),
('C. ORG. PROGRE. CIL.', 'C. ORG. PROGRE. CIL. 6.00/4.00', 0, 'VIGENTE', '888671633225', 0),
('C. ORG. PROGRE. ESF.', 'C. ORG. PROGRE. ESF. 2.00', 0, 'VIGENTE', '616376472521', 0),
('C. ORG. PROGRE. ESF.', 'C. ORG. PROGRE. ESF. 4.00', 0, 'VIGENTE', '616376472522', 0),
('C. ORG. PROGRE. ESF.', 'C. ORG. PROGRE. ESF. 6.00', 0, 'VIGENTE', '616376472523', 0),
('C. POLI. BIFOCAL CIL. ', 'C. POLI. BIFOCAL CIL. 2.00/2.00', 0, 'VIGENTE', '363839368934', 0),
('C. POLI. BIFOCAL CIL. ', 'C. POLI. BIFOCAL CIL. 4.00/2.00', 0, 'VIGENTE', '363839368935', 0),
('C. POLI. BIFOCAL CIL. ', 'C. POLI. BIFOCAL CIL. 6.00/2.00', 0, 'VIGENTE', '363839368936', 0),
('C. POLI. BIFOCAL. ESF.', 'C. POLI. BIFOCAL ESF. 2.00', 0, 'VIGENTE', '531345146141', 0),
('C. POLI. BIFOCAL. ESF.', 'C. POLI. BIFOCAL ESF. 4.00', 0, 'VIGENTE', '531345146142', 0),
('C. POLI. BIFOCAL. ESF.', 'C. POLI. BIFOCAL ESF. 6.00', 0, 'VIGENTE', '531345146143', 0),
('C. POLI. PROGRE. CIL.', 'C. POLI. PROGRE. CIL. 2.00/2.00', 0, 'VIGENTE', '563228576644', 0),
('C. POLI. PROGRE. CIL.', 'C. POLI. PROGRE. CIL. 4.00/2.00', 0, 'VIGENTE', '563228576645', 0),
('C. POLI. PROGRE. CIL.', 'C. POLI. PROGRE. CIL. 6.00/2.00', 0, 'VIGENTE', '563228576646', 0),
('C. POLI. PROGRE. ESF.', 'C. POLI. PROGRE. ESF. 2.00', 0, 'VIGENTE', '474365826521', 0),
('C. POLI. PROGRE. ESF.', 'C. POLI. PROGRE. ESF. 4.00', 0, 'VIGENTE', '474365826522', 0),
('C. POLI. PROGRE. ESF.', 'C. POLI. PROGRE. ESF. 6.00', 0, 'VIGENTE', '474365826523', 0),
('C.MINE.MONO. CILINDRICO', 'C.MINE.MONO CILINDRICO 2.00/2.00', 0, 'VIGENTE', '535511199430', 0),
('C.MINE.MONO. CILINDRICO', 'C.MINE.MONO CILINDRICO 4.00/2.00', 0, 'VIGENTE', '535511199431', 0),
('C.MINE.MONO. CILINDRICO', 'C.MINE.MONO CILINDRICO 6.00/2.00', 0, 'VIGENTE', '535511199432', 0),
('C.MINE.MONO. ESFERICO', 'C.MINE.MONO ESFERICO 2.00', 0, 'VIGENTE', '535511199426', 0),
('C.MINE.MONO. ESFERICO', 'C.MINE.MONO ESFERICO 4.00', 0, 'VIGENTE', '535511199427', 0),
('C.MINE.MONO. ESFERICO', 'C.MINE.MONO ESFERICO 6.00', 0, 'VIGENTE', '535511199428', 0),
('C.MINE.MONO. ESFERICO', 'C.MINE.MONO ESFERICO 8.00', 0, 'VIGENTE', '535511199429', 0),
('C.POLI. MONO. COMBINADO', 'C. POLI. MONO. COMBINADO 2.00/2.00', 0, 'VIGENTE', '481362449249', 0),
('C.POLI. MONO. COMBINADO', 'C. POLI. MONO. COMBINADO 2.00/4.00', 0, 'VIGENTE', '221442526164', 0),
('C.POLI. MONO. COMBINADO', 'C. POLI. MONO. COMBINADO 4.00/2.00', 0, 'VIGENTE', '429395217469', 0),
('C.POLI. MONO. COMBINADO', 'C. POLI. MONO. COMBINADO 4.00/4.00', 0, 'VIGENTE', '177816948611', 0),
('C.POLI. MONO. ESFERICO', 'C. POLI. MONO. ESFERICO 2.00', 0, 'VIGENTE', '894143419673', 0),
('C.POLI. MONO. ESFERICO', 'C. POLI. MONO. ESFERICO 4.00', 0, 'VIGENTE', '114946511231', 0),
('C.POLI. MONO. ESFERICO', 'C. POLI. MONO. ESFERICO 6.00', 0, 'VIGENTE', '162371978845', 0),
('C.POLI. MONO. ESFERICO', 'C. POLI. MONO. ESFERICO 8.00', 0, 'VIGENTE', '134184642716', 0),
('COLORACION', 'COLORACION CAFE', 0, 'VIGENTE', '452381212467', 0),
('COLORACION', 'COLORACION GRIS', 0, 'VIGENTE', '788973823148', 0),
('COLORACION', 'COLORACION NEGRO', 0, 'VIGENTE', '811462383287', 0),
('COLORACION', 'COLORACION ROSA', 0, 'VIGENTE', '677362668375', 0),
('COLORACION', 'COLORACION VERDE', 0, 'VIGENTE', '491145574343', 0),
('ENDURECIMIENTOS', 'ENDURECIMIENTO', 0, 'VIGENTE', '591886663615', 0),
('FILTRO UV', 'FILTRO UV', 0, 'VIGENTE', '431582959372', 0),
('FOTOCOMATICOS', 'FOTOCROMATICO', 0, 'VIGENTE', '965657183689', 0),
('POLARIZADO', 'POLARIZADO', 0, 'VIGENTE', '786785182665', 0),
('RECETAS', 'COPIA DE RECETA', 0, 'VIGENTE', '582491798966', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rpt_productos_proveedor`
--

CREATE TABLE `rpt_productos_proveedor` (
  `PROVEEDOR` varchar(255) NOT NULL,
  `PRODUCTO` varchar(255) NOT NULL,
  `VALOR_VENTA` int(12) NOT NULL,
  `VIGENCIA` varchar(30) NOT NULL,
  `CODIGO` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brc_cajas`
--
ALTER TABLE `brc_cajas`
  ADD PRIMARY KEY (`DIA`,`USUARIO`);

--
-- Indices de la tabla `brc_codigos`
--
ALTER TABLE `brc_codigos`
  ADD PRIMARY KEY (`TIPO`,`CODIGO`);

--
-- Indices de la tabla `brc_codigos_web`
--
ALTER TABLE `brc_codigos_web`
  ADD PRIMARY KEY (`TIPO`,`CODIGO`);

--
-- Indices de la tabla `brc_compra`
--
ALTER TABLE `brc_compra`
  ADD PRIMARY KEY (`FOLIO`,`USUARIO`);

--
-- Indices de la tabla `brc_folio`
--
ALTER TABLE `brc_folio`
  ADD PRIMARY KEY (`RUT_USUARIO`,`OPERACION`);

--
-- Indices de la tabla `brc_operativos`
--
ALTER TABLE `brc_operativos`
  ADD PRIMARY KEY (`DIA`,`HORA`,`RUT_DOCTOR`);

--
-- Indices de la tabla `brc_operativos_detalle`
--
ALTER TABLE `brc_operativos_detalle`
  ADD PRIMARY KEY (`DIA`,`HORA`,`RUT_DOCTOR`,`RUT_CLIENTE`);

--
-- Indices de la tabla `brc_perfiles`
--
ALTER TABLE `brc_perfiles`
  ADD PRIMARY KEY (`ID_PADRE`,`ID_HIJO`);

--
-- Indices de la tabla `brc_persona`
--
ALTER TABLE `brc_persona`
  ADD PRIMARY KEY (`RUT`,`DV`,`CAT_PERSONA`);

--
-- Indices de la tabla `brc_producto`
--
ALTER TABLE `brc_producto`
  ADD PRIMARY KEY (`ID_PADRE`,`ID_HIJO`);

--
-- Indices de la tabla `brc_producto_proveedor`
--
ALTER TABLE `brc_producto_proveedor`
  ADD PRIMARY KEY (`ID_PADRE`,`ID_HIJO`,`ID_PROVEEDOR`);

--
-- Indices de la tabla `brc_producto_web`
--
ALTER TABLE `brc_producto_web`
  ADD PRIMARY KEY (`CODIGO`);

--
-- Indices de la tabla `brc_proveedor`
--
ALTER TABLE `brc_proveedor`
  ADD PRIMARY KEY (`ID_PROVEEDOR`);

--
-- Indices de la tabla `brc_usuarios`
--
ALTER TABLE `brc_usuarios`
  ADD PRIMARY KEY (`RUT`);

--
-- Indices de la tabla `brc_usuarios_perfiles`
--
ALTER TABLE `brc_usuarios_perfiles`
  ADD PRIMARY KEY (`RUT_USUARIO`,`ID_PADRE`,`ID_HIJO`);

--
-- Indices de la tabla `brc_venta`
--
ALTER TABLE `brc_venta`
  ADD PRIMARY KEY (`FOLIO`,`USUARIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
