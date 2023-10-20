-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2023 a las 15:52:28
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
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `author` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `year` date NOT NULL,
  `isbn` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `name`, `author`, `category`, `year`, `isbn`) VALUES
(1, 'Cien años de soledad', 'Gabriel García Márquez', 'Realismo mágico', '1967-01-01', '9788437604947'),
(2, '1984', 'George Orwell', 'Distopía', '1949-01-01', '9788437604947'),
(3, 'Amor en el cólera', 'Gabriel García Márquez', 'Realismo mágico', '1985-01-01', '9788437604947'),
(4, 'Matar a un ruiseñor', 'Harper Lee', 'Novela de aprendizaje', '1960-01-01', '9788437604947'),
(5, 'Don Quijote', 'Miguel de Cervantes', 'Novela clásica', '1605-01-01', '9788437604947'),
(6, 'Los juegos del hambre', 'Suzanne Collins', 'Ciencia ficción', '2008-01-01', '9788437604947'),
(7, 'Harry Potter y la piedra', 'J.K. Rowling', 'Fantasía', '1997-01-01', '9788437604947'),
(8, 'El Señor de los Anillos', 'J.R.R. Tolkien', 'Fantasía', '1954-01-01', '9788437604947'),
(9, 'Crimen y castigo', 'Fyodor Dostoevsky', 'Novela psicológica', '1866-01-01', '9788437604947'),
(10, 'En busca del tiempo', 'Marcel Proust', 'Novela modernista', '1913-01-01', '9788437604947');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
