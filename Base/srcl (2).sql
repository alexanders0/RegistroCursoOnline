-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 22-07-2015 a las 23:23:06
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `srcl`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_curso`
--

CREATE TABLE IF NOT EXISTS `area_curso` (
  `ID_AREA` int(11) NOT NULL,
  `NOMBRE_AREA` varchar(1024) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `area_curso`
--

INSERT INTO `area_curso` (`ID_AREA`, `NOMBRE_AREA`) VALUES
(1, 'Administrativa'),
(2, 'Biológica'),
(3, 'Socio-Humanística'),
(4, 'Técnica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_curso`
--

CREATE TABLE IF NOT EXISTS `categoria_curso` (
  `ID_CATEGORIA` int(11) NOT NULL,
  `NOMBRE_CATEGORIA` varchar(1024) DEFAULT NULL,
  `RANGO_INICIO` int(11) DEFAULT NULL,
  `RANGO_FIN` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria_curso`
--

INSERT INTO `categoria_curso` (`ID_CATEGORIA`, `NOMBRE_CATEGORIA`, `RANGO_INICIO`, `RANGO_FIN`) VALUES
(1, 'Junior', 12, 16),
(2, 'Jovenes', 17, 22),
(3, 'Adultos', 23, 50),
(4, 'Tercera Edad', 51, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
  `ID_CURSO` int(11) NOT NULL,
  `ID_AREA` int(11) DEFAULT NULL,
  `ID_CATEGORIA` int(11) DEFAULT NULL,
  `CI_EMPLEADO` int(11) DEFAULT NULL,
  `NOMBRE_CURSO` varchar(1024) DEFAULT NULL,
  `HORA_INICIO` varchar(1024) DEFAULT NULL,
  `HORA_FIN` varchar(1024) DEFAULT NULL,
  `PRECIO` decimal(11,0) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`ID_CURSO`, `ID_AREA`, `ID_CATEGORIA`, `CI_EMPLEADO`, `NOMBRE_CURSO`, `HORA_INICIO`, `HORA_FIN`, `PRECIO`) VALUES
(1, 4, 2, NULL, 'Base de Datos', '14:00', '18:00', '40'),
(2, 4, 2, NULL, 'Ingenieria de Software', '12:00', '15:00', '50'),
(3, 4, 2, NULL, 'Sistemas Operativos', '14:00', '16:00', '60'),
(4, 4, 1, NULL, 'Robótica Básica', '15:00', '16:00', '70'),
(5, 1, 3, NULL, 'Gestión de Proyectos', NULL, NULL, '100');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE IF NOT EXISTS `empleados` (
  `CI_EMPLEADO` int(11) NOT NULL,
  `NOMBRE_EMP` varchar(1024) DEFAULT NULL,
  `APELLIDO_EMP` varchar(1024) DEFAULT NULL,
  `CORREO_EMP` varchar(1024) DEFAULT NULL,
  `TITULO` text,
  `TIPO_EMP` varchar(1024) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE IF NOT EXISTS `estudiantes` (
  `CI` varchar(11) NOT NULL,
  `NOMBRES` text,
  `APELLIDOS` text,
  `FECHA_NAC` date DEFAULT NULL,
  `E_MAIL` varchar(1024) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`CI`, `NOMBRES`, `APELLIDOS`, `FECHA_NAC`, `E_MAIL`) VALUES
('1104183247', 'Priscila', 'Vargas', '1994-12-20', 'pyvargas@utpl.edu.ec'),
('1111', 'Bryan', 'Quezada', '2015-07-14', 'bequezada@utpl.edu.ec'),
('2', 'Alexander', 'Sanchez', '1995-09-05', 'ajsanchez9@utpl.edu.ec'),
('3', 'Priscila', 'Vargas', '2015-07-22', 'pyvargas@utpl.edu.ec'),
('3333', 'Erick', 'Perez', '2000-07-08', 'alexsajona@hotmail.com'),
('4444', 'Javato', 'Jones', '1990-04-15', 'alexsajona@hotmail.com'),
('1104876147', 'Alexander', 'Sanchez', '1995-09-05', 'alexsajona@hotmail.com'),
('2222', 'Bryan', 'Quezada', '1994-07-13', 'alexsajona@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculas`
--

CREATE TABLE IF NOT EXISTS `matriculas` (
  `ID_MATRICULA` int(11) NOT NULL,
  `CI` varchar(11) DEFAULT NULL,
  `ID_PERIODO` int(11) DEFAULT '1',
  `ID_CURSO` int(11) DEFAULT NULL,
  `ESTADO` varchar(1024) DEFAULT NULL,
  `NOTA_FINAL` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `matriculas`
--

INSERT INTO `matriculas` (`ID_MATRICULA`, `CI`, `ID_PERIODO`, `ID_CURSO`, `ESTADO`, `NOTA_FINAL`) VALUES
(1, '1111', 1, 1, 'Aprobado', 22),
(7, '1104876147', 1, 5, NULL, NULL),
(6, '4444', 1, 5, NULL, NULL),
(8, '1104876147', 1, 2, NULL, NULL),
(9, '1104876147', 1, 0, NULL, NULL),
(10, '1104876147', 1, 0, NULL, NULL),
(11, '1104876147', 1, 0, NULL, NULL),
(12, '1104876147', 1, 0, NULL, NULL),
(13, '1104876147', 1, 0, NULL, NULL),
(14, '1104876147', 1, 0, NULL, NULL),
(15, '2222', 1, 0, NULL, NULL),
(16, '2222', 1, 0, NULL, NULL),
(17, '1104876147', 1, 0, NULL, NULL),
(18, '2222', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE IF NOT EXISTS `notas` (
  `ID_NOTA` int(11) NOT NULL,
  `NOTA` decimal(10,0) NOT NULL,
  `ID_MATRICULA` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE IF NOT EXISTS `pagos` (
  `ID_PAGO` int(11) NOT NULL,
  `ID_MATRICULA` int(11) DEFAULT NULL,
  `ID_TIPO_PAGO` int(11) DEFAULT NULL,
  `MONTO` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
--

CREATE TABLE IF NOT EXISTS `periodos` (
  `ID_PERIODO` int(11) NOT NULL,
  `NOMBRE_PERIODO` varchar(1024) DEFAULT NULL,
  `FECHA_INICIO` date DEFAULT NULL,
  `FECHA_FIN` date DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `periodos`
--

INSERT INTO `periodos` (`ID_PERIODO`, `NOMBRE_PERIODO`, `FECHA_INICIO`, `FECHA_FIN`) VALUES
(1, '2015', '2015-08-01', '2015-11-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE IF NOT EXISTS `registro` (
  `ID` int(11) NOT NULL,
  `CI` varchar(11) NOT NULL,
  `NOMBRES` text NOT NULL,
  `APELLIDOS` text NOT NULL,
  `FECHA_NAC` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`ID`, `CI`, `NOMBRES`, `APELLIDOS`, `FECHA_NAC`) VALUES
(2, '1104876147', 'Alexander', 'Sanchez', '1995-09-05'),
(3, '2222', 'Bryan', 'Quezada', '1994-07-13'),
(4, '3333', 'Erick', 'Perez', '2000-07-08'),
(5, '4444', 'Javato', 'Jones', '1990-04-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pago`
--

CREATE TABLE IF NOT EXISTS `tipo_pago` (
  `ID_TIPO_PAGO` int(11) NOT NULL,
  `NOMBRE_PAGO` varchar(1024) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_pago`
--

INSERT INTO `tipo_pago` (`ID_TIPO_PAGO`, `NOMBRE_PAGO`) VALUES
(1, 'Tarjeta de Crédito'),
(2, 'PayPal');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area_curso`
--
ALTER TABLE `area_curso`
  ADD PRIMARY KEY (`ID_AREA`);

--
-- Indices de la tabla `categoria_curso`
--
ALTER TABLE `categoria_curso`
  ADD PRIMARY KEY (`ID_CATEGORIA`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`ID_CURSO`),
  ADD KEY `FK_PERTENECEN_A` (`ID_AREA`),
  ADD KEY `FK_PERTENECE_A_UN` (`ID_CATEGORIA`),
  ADD KEY `FK_SE_ASIGNA_A` (`CI_EMPLEADO`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`CI_EMPLEADO`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`CI`);

--
-- Indices de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`ID_MATRICULA`),
  ADD KEY `FK_PERTENECE` (`ID_PERIODO`),
  ADD KEY `FK_PERTENECEN_A_UN` (`ID_CURSO`),
  ADD KEY `FK_REGISTRA` (`CI`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`ID_NOTA`,`NOTA`),
  ADD KEY `FK_GENERA` (`ID_MATRICULA`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`ID_PAGO`),
  ADD KEY `FK_RELATIONSHIP_10` (`ID_MATRICULA`),
  ADD KEY `FK_SON_DE_UN` (`ID_TIPO_PAGO`);

--
-- Indices de la tabla `periodos`
--
ALTER TABLE `periodos`
  ADD PRIMARY KEY (`ID_PERIODO`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  ADD PRIMARY KEY (`ID_TIPO_PAGO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area_curso`
--
ALTER TABLE `area_curso`
  MODIFY `ID_AREA` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `categoria_curso`
--
ALTER TABLE `categoria_curso`
  MODIFY `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `ID_CURSO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `ID_MATRICULA` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `ID_NOTA` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `ID_PAGO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `periodos`
--
ALTER TABLE `periodos`
  MODIFY `ID_PERIODO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  MODIFY `ID_TIPO_PAGO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
