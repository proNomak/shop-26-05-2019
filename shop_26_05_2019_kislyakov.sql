-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 15 2019 г., 13:21
-- Версия сервера: 10.1.35-MariaDB
-- Версия PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop_26_05_2019_kislyakov`
--
CREATE DATABASE IF NOT EXISTS `shop_26_05_2019_kislyakov` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shop_26_05_2019_kislyakov`;

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE IF NOT EXISTS `catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(100) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `price`, `text`, `pic`, `creation_date`) VALUES
(1, 'Куртка синяя', 5400, 'Синяя кожаная куртка с рукавами', '1.jpg', '2019-09-08 10:25:14'),
(2, 'Кожаная куртка', 22500, '', '2.jpg', '2019-09-08 10:25:14'),
(3, 'Куртка с карманами', 9200, '', '3.png', '2019-09-08 10:27:45'),
(4, 'Куртка с капюшоном', 6100, '', '4.jpg', '2019-09-08 10:27:45'),
(5, 'Куртка Casual', 8800, '', '5.jpg', '2019-09-09 09:09:33'),
(6, 'Стильная кожаная куртка', 12800, '', '6.jpg', '2019-09-09 09:09:33'),
(7, 'Кеды серые', 2900, '', '7.jpg', '2019-09-09 09:11:05'),
(8, 'Кеды чёрные', 4500, '', '8.jpg', '2019-09-09 09:11:05'),
(9, 'Кеды Casual', 5900, '', '9.jpg', '2019-09-09 09:13:54'),
(10, 'Кеды всепогодные', 9200, '', '10.jpg', '2019-09-09 09:13:54'),
(11, 'Джинсы', 4800, '', '11.jpg', '2019-09-09 09:15:24'),
(12, 'Джинсы голубые', 4200, '', '12.jpg', '2019-09-09 09:15:24');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `login`, `password`, `reg_date`) VALUES
(1, 'Алексей', 'Соколов', 'alex', '1f32aa4c9a1d2ea010adcf2348166a04', '2019-09-15 12:14:47');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
