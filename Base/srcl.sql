-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-07-2015 a las 01:29:20
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

INSERT INTO `cursos` (`ID_CURSO`, `ID_CATEGORIA`, `CI_EMPLEADO`, `NOMBRE_CURSO`, `HORA_INICIO`, `HORA_FIN`, `PRECIO`) VALUES
(1, 2, 1, 'Base de Datos', '14:00', '18:00', '40'),
(2, 2, 3, 'Ingenieria de Software', '12:00', '15:00', '50'),
(3, 2, 1, 'Sistemas Operativos', '14:00', '16:00', '60'),
(4, 1, NULL, 'Robótica Básica', '15:00', '16:00', '70'),
(5, 3, NULL, 'Gestión de Proyectos', NULL, NULL, '100');

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
  `TIPO_EMP` varchar(1024) DEFAULT NULL,
  `usuario` varchar(10) NOT NULL,
  `contrasena` varchar(15) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`CI_EMPLEADO`, `NOMBRE_EMP`, `APELLIDO_EMP`, `CORREO_EMP`, `TITULO`, `TIPO_EMP`, `usuario`, `contrasena`) VALUES
(1, 'Jaime', 'García', 'jgarcia@utpl.edu.ec', 'Ingeniero Industrial', 'tutor', 'jgarcia', '1111'),
(2, 'Ana', 'Rodriguez', 'arodriguez@utpl.edu.ec', 'Ingeniera en Empresas', 'secretaria', 'arodriguez', '2222'),
(3, 'Carlos', 'Jumbo', 'cjumbo@utpl.edu.ec', 'Ingeniero en Sistemas', 'tutor', 'cjumbo', '3333');

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
('1104876147', 'Alexander', 'Sanchez', '1995-09-05', 'alexsajona@hotmail.com'),
('2222', 'Bryan', 'Quezada', '1994-07-13', 'bryque19@gmail.com'),
('5555', 'Priscila', 'Vargas', '1994-12-20', 'luisjose13794@hotmail.com'),
('6666', 'Marco', 'Hernandez', '1995-07-07', 'alexsajona@hotmail.com');

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
  `NOTA_FINAL` int(11) DEFAULT NULL,
  `FECHA_MAT` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `matriculas`
--

INSERT INTO `matriculas` (`ID_MATRICULA`, `CI`, `ID_PERIODO`, `ID_CURSO`, `ESTADO`, `NOTA_FINAL`, `FECHA_MAT`) VALUES
(1, '1104876147', 1, 1, NULL, NULL, '2015-07-23'),
(2, '2222', 1, 2, NULL, NULL, '2015-07-23'),
(3, '5555', 1, 2, NULL, NULL, '2015-07-23'),
(4, '5555', 1, 1, NULL, NULL, '2015-07-23'),
(5, '6666', 1, 3, NULL, NULL, '2015-07-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE IF NOT EXISTS `notas` (
  `ID_NOTA` int(11) NOT NULL,
  `NOTA` decimal(10,0) NOT NULL,
  `ID_MATRICULA` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`ID_NOTA`, `NOTA`, `ID_MATRICULA`) VALUES
(1, '20', 1),
(2, '15', 1),
(3, '17', 1),
(4, '19', 1),
(5, '14', 3),
(6, '16', 3),
(7, '15', 5),
(8, '18', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE IF NOT EXISTS `pagos` (
  `ID_PAGO` int(11) NOT NULL,
  `ID_MATRICULA` int(11) DEFAULT NULL,
  `ID_TIPO_PAGO` int(11) DEFAULT NULL,
  `MONTO` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`ID_PAGO`, `ID_MATRICULA`, `ID_TIPO_PAGO`, `MONTO`) VALUES
(1, 41, 2, '50'),
(2, 42, 2, '100'),
(3, 43, 1, '70'),
(4, 44, 2, '50'),
(5, 44, 2, '50'),
(6, 44, 2, '50'),
(7, 45, 2, '50'),
(8, 46, 2, '50'),
(9, 47, 1, '100'),
(10, 48, 2, '50'),
(11, 49, 2, '50'),
(12, 50, 2, '50'),
(13, 51, 2, '70'),
(14, 51, 2, '70'),
(15, 52, 2, '50'),
(16, 53, 2, '50'),
(17, 54, 2, '50'),
(18, 55, 2, '50'),
(19, 56, 2, '50'),
(20, 57, 2, '50'),
(21, 58, 2, '50'),
(22, 59, 2, '60'),
(23, 60, 2, '50'),
(24, 61, 2, '50'),
(25, 62, 2, '70'),
(26, 63, 2, '60'),
(27, 64, 2, '50'),
(28, 65, 2, '50'),
(29, 66, 2, '50'),
(30, 1, 2, '40'),
(31, 2, 1, '50'),
(32, 3, 2, '50'),
(33, 4, 2, '40'),
(34, 5, 1, '60');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`ID`, `CI`, `NOMBRES`, `APELLIDOS`, `FECHA_NAC`) VALUES
(2, '1104876147', 'Alexander', 'Sanchez', '1995-09-05'),
(3, '2222', 'Bryan', 'Quezada', '1994-07-13'),
(4, '3333', 'Erick', 'Perez', '2000-07-08'),
(5, '4444', 'Javato', 'Jones', '1990-04-15'),
(6, '5555', 'Priscila', 'Vargas', '1994-12-20'),
(7, '6666', 'Marco', 'Hernandez', '1995-07-07');

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
-- Indices de la tabla `categoria_curso`
--
ALTER TABLE `categoria_curso`
  ADD PRIMARY KEY (`ID_CATEGORIA`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`ID_CURSO`),
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
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `CI_EMPLEADO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `ID_MATRICULA` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `ID_NOTA` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `ID_PAGO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `periodos`
--
ALTER TABLE `periodos`
  MODIFY `ID_PERIODO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  MODIFY `ID_TIPO_PAGO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
