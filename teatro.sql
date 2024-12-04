-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2024 a las 11:23:34
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
-- Base de datos: `teatro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `description` varchar(65) NOT NULL,
  `startAt` varchar(20) NOT NULL,
  `endAt` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `title`, `description`, `startAt`, `endAt`, `color`) VALUES
(6, 'hola', 'caracola', '2024-01-01T00:00', '2024-01-02T00:00', '#3e6565'),
(8, 'Workshop Angular', 'eventooooo', '2024-11-05T10:00', '2024-11-06T13:00', '#e441e6'),
(10, 'Reunión de equipo', 'Planificación mensual del equipo de desarrollo.', '2024-12-10T14:00', '2024-12-10T15:30', '#ff5c33'),
(11, 'Hackathon Local', 'Competencia de programación para resolver retos de la comunidad.', '2024-12-15T09:00:00', '2024-12-15T21:00:00', '#3357FF'),
(14, 'Hackathon Local', 'Competencia de programación para resolver retos de la comunidad.', '2024-12-18T09:00', '2024-12-19T21:00', '#052566'),
(20, 'Nochebuena', 'Celebración de la víspera de Navidad.', '2024-12-24T18:00', '2024-12-24T23:59', '#ff0000'),
(21, 'Navidad', 'Celebración del día de Navidad.', '2024-12-25T00:00:00', '2024-12-25T23:59:59', '#33FFAA'),
(22, 'Nochevieja', 'Despedida del año viejo.', '2024-12-31T20:00:00', '2024-12-31T23:59:59', '#FFC300'),
(23, 'Año Nuevo', 'Bienvenida al nuevo año.', '2025-01-01T00:00:00', '2025-01-01T23:59:59', '#33AFFF'),
(24, 'Taller de Innovación', 'Aprender nuevas técnicas para resolver problemas creativos.', '2025-01-10T10:00:00', '2025-01-10T16:00:00', '#FF33F5'),
(25, 'Reunión Anual', 'Planificación y proyección de metas del año.', '2025-01-15T09:00:00', '2025-01-15T12:00:00', '#FF5733'),
(26, 'Entrega Proyecto final', 'Presentación de proyectos creados en el mes.', '2025-01-20T14:00', '2025-01-20T18:00', '#3387FF'),
(27, 'Cumpleaños Miranda', 'Cumpleaños Miranda', '2025-01-13T00:00', '2025-01-13T23:05', '#3e6565'),
(28, 'Vacaciones  a Bora Bora', 'Vacaciones a Bora Bora', '2025-01-21T00:00', '2025-01-31T11:10', '#0e5d17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `address` varchar(65) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `seat_count` int(11) NOT NULL,
  `accessible` tinyint(1) NOT NULL,
  `latitude` decimal(7,5) DEFAULT NULL,
  `longitude` decimal(7,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` (`id`, `name`, `address`, `phone`, `seat_count`, `accessible`, `latitude`, `longitude`) VALUES
(32, 'Gran Teatre del Lice', 'La Rambla, 51-59, 08002 Barcelona', '+34 934 859 900', 2292, 1, 41.38095, 2.17380),
(33, 'Teatre Poliorama', 'La Rambla, 115, 08002 Barcelona', '+34 933 013 195', 700, 1, 41.38425, 2.17005),
(34, 'Teatre Apolo', 'Av. del Paral·lel, 59, 08004 Barcelona', '+34 933 428 920', 1080, 1, 41.37473, 2.16331),
(35, 'Teatre Condal', 'Av. del Paral·lel, 91, 08004 Barcelona', '+34 933 248 419', 945, 0, 41.37622, 2.16484),
(36, 'Teatre Goya', 'Carrer de Joaquín Costa, 68, 08001 Barcelona', '+34 933 229 140', 520, 0, 41.38102, 2.16385),
(37, 'Teatre Tívoli', 'Carrer de Casp, 8, 08010 Barcelona', '+34 933 196 986', 1643, 1, 41.38866, 2.17021),
(38, 'Sala Pangolí', 'Carrer de Sant Pere Més Baix, 55, 08003 Barcelona', '+34 932 105 674', 55, 0, 41.38705, 2.18034),
(39, 'Periferia', 'Carrer de Joaquín Costa, 27, 08001 Barcelona', '+34 934 128 916', 200, 1, 41.38259, 2.16298),
(40, 'Sala Ars', 'Carrer de les Jonqueres, 15, 08003 Barcelona', '+34 933 102 675', 165, 1, 41.38789, 2.17423),
(42, 'Sala Pangolí', 'Carrer del Progrés, 20, 08901 L\'Hospitalet de Llobregat', '+34 934 328 111', 250, 0, 41.36018, 2.10289),
(43, 'Sala Ars', 'Carrer de les Jonqueres, 15, 08003 Barcelona', '+34 933 102 675', 120, 1, 41.38789, 2.17423),
(44, 'Teatre Nacional de Catalunya', 'Plaça de les Arts, 1, 08013 Barcelona', '+34 933 065 720', 870, 1, 41.39864, 2.18613),
(45, 'Teatre Lliure - Montjuïc', 'Pg. de Santa Madrona, 40-46, 08038 Barcelona', '+34 932 289 747', 450, 1, 41.36845, 2.16069),
(46, 'Teatre Poliorama', 'La Rambla, 115, 08002 Barcelona', '+34 933 177 599', 700, 1, 41.38544, 2.17069),
(48, 'Teatre Kursaal', 'Passeig de Pere III, 35, 08241 Manresa', '+34 938 725 800', 850, 0, 41.72407, 1.82677),
(51, 'Teatre Auditori Sant Cugat', 'Av. del Pla del Vinyet, 48, 08172 Sant Cugat del Vallès', '935 891 370', 800, 1, 41.46911, 2.08874),
(69, 'Sala Pangolí', 'Carrer Bailén 194 – Local 1, Barcelona', '934 328 111', 250, 0, 41.36018, 2.10289),
(70, 'Sala Pangolí', 'Carrer Bailén 194 – Local 1, Barcelona', '934 328 111', 250, 0, 41.36018, 2.10289),
(71, 'Teatre Estrella', 'Carrer de la Lluna 45, Barcelona', '933 456 789', 180, 1, 41.38289, 2.16341),
(72, 'Auditorio Gaia', 'Av. Diagonal 640, Barcelona', '932 145 678', 1200, 1, 41.39321, 2.17400),
(73, 'Sala Eclipse', 'Carrer de l’Eclipse 23, Hospitalet', '934 987 654', 350, 0, 41.36217, 2.10045),
(74, 'Espai Nova Era', 'Passeig de Gràcia 110, Barcelona', '935 123 999', 500, 1, 41.39479, 2.16123),
(75, 'MiniTeatre Central', 'Carrer de Sant Joan 12, Badalona', '936 222 888', 120, 0, 41.45015, 2.24785),
(76, 'Gran Escenari', 'Plaça de la Cultura 4, Terrassa', '937 333 777', 800, 1, 41.56125, 2.02078);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `salas`
--
ALTER TABLE `salas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
