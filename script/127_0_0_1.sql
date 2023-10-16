-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2023 a las 18:16:16
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
CREATE DATABASE IF NOT EXISTS `biblioteca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `biblioteca`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--
-- Creación: 16-10-2023 a las 00:57:12
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `author` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `year` date NOT NULL,
  `ISBN` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `name`, `author`, `category`, `year`, `ISBN`) VALUES
(1, 'El Gran Gatsby', 'F. Scott Fitzgerald', 'Ficción', '1925-10-06', '978-3-16-1484'),
(2, 'Cien años de soledad', 'Gabriel García Márquez', 'Ficción', '1982-05-20', '978-0-307-259'),
(3, 'Don Quijote de la Mancha', 'Miguel de Cervantes', 'Clásico', '1605-01-20', '978-1-03-3811'),
(4, '1984', 'George Orwell', 'Ciencia ficción', '1948-07-15', '978-0-452-284'),
(5, 'Harry Potter 1', 'J.K. Rowling', 'Fantasía', '2001-10-07', '978-0-7475-32'),
(6, 'Orgullo y prejuicio', 'Jane Austen', 'Romance', '1813-04-14', '978-0-14-1439'),
(7, 'Matar un ruiseñor', 'Harper Lee', 'Drama', '1960-07-23', '978-84-9838-3'),
(8, 'La sombra del viento', 'Carlos Ruiz Zafón', 'Misterio', '2001-05-01', '978-84-08-037'),
(9, 'El código Da Vinci', 'Dan Brown', 'Suspense', '2003-08-29', '978-84-08-037'),
(10, 'Los juegos del hambre', 'Suzanne Collins', 'Ciencia ficción', '2008-10-14', '978-84-253-46');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
