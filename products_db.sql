-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 09:43 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `products_db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dailyfood_tb`
--

CREATE TABLE `dailyfood_tb` (
  `id_jedzenia` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `calories` int(50) NOT NULL,
  `proteins` int(11) NOT NULL,
  `carbohydrates` int(11) NOT NULL,
  `fats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `dailyfood_tb`
--

INSERT INTO `dailyfood_tb` (`id_jedzenia`, `name`, `calories`, `proteins`, `carbohydrates`, `fats`) VALUES
(34, 'Jajecznica', 700, 150, 50, 20),
(35, 'Gruszka', 100, 50, 50, 50),
(36, 'Kotlet schabowy z ziemniakami ', 700, 300, 200, 60);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `drinks_tb`
--

CREATE TABLE `drinks_tb` (
  `drink_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `calories` int(11) NOT NULL,
  `proteins` int(11) NOT NULL,
  `carbohydrates` int(11) NOT NULL,
  `fats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `drinks_tb`
--

INSERT INTO `drinks_tb` (`drink_id`, `name`, `calories`, `proteins`, `carbohydrates`, `fats`) VALUES
(1, 'Sok z buraka', 50, 5, 20, 1),
(2, 'Sok z marchwi', 30, 3, 15, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `maindishes_tb`
--

CREATE TABLE `maindishes_tb` (
  `dish_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `calories` int(11) NOT NULL,
  `proteins` int(11) NOT NULL,
  `carbohydrates` int(11) NOT NULL,
  `fats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `maindishes_tb`
--

INSERT INTO `maindishes_tb` (`dish_id`, `name`, `calories`, `proteins`, `carbohydrates`, `fats`) VALUES
(1, 'Łosoś z ryżem i surówką', 600, 223, 123, 50),
(2, 'Kotlet schabowy z ziemniakami i surówką', 700, 300, 200, 60),
(7, 'Jajecznica', 700, 150, 50, 20);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `snacks_tb`
--

CREATE TABLE `snacks_tb` (
  `snack_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `calories` int(11) NOT NULL,
  `proteins` int(11) NOT NULL,
  `carbohydrates` int(11) NOT NULL,
  `fats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `snacks_tb`
--

INSERT INTO `snacks_tb` (`snack_id`, `name`, `calories`, `proteins`, `carbohydrates`, `fats`) VALUES
(2, 'jabłko', 60, 5, 20, 3),
(5, 'Gruszka', 100, 50, 50, 50);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users_tb`
--

CREATE TABLE `users_tb` (
  `id_uzytkownika` int(11) NOT NULL,
  `zapotrzebowanie` float NOT NULL,
  `bmi` float NOT NULL,
  `waga` int(11) NOT NULL,
  `wiek` int(11) NOT NULL,
  `wzrost` int(11) NOT NULL,
  `plec` tinyint(1) NOT NULL,
  `aktywnosc` int(11) NOT NULL,
  `praca` varchar(30) NOT NULL,
  `cel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `users_tb`
--

INSERT INTO `users_tb` (`id_uzytkownika`, `zapotrzebowanie`, `bmi`, `waga`, `wiek`, `wzrost`, `plec`, `aktywnosc`, `praca`, `cel`) VALUES
(13, 2356, 21.91, 75, 21, 185, 0, 37, 'Siedząca', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dailyfood_tb`
--
ALTER TABLE `dailyfood_tb`
  ADD PRIMARY KEY (`id_jedzenia`);

--
-- Indeksy dla tabeli `drinks_tb`
--
ALTER TABLE `drinks_tb`
  ADD PRIMARY KEY (`drink_id`);

--
-- Indeksy dla tabeli `maindishes_tb`
--
ALTER TABLE `maindishes_tb`
  ADD PRIMARY KEY (`dish_id`);

--
-- Indeksy dla tabeli `snacks_tb`
--
ALTER TABLE `snacks_tb`
  ADD PRIMARY KEY (`snack_id`);

--
-- Indeksy dla tabeli `users_tb`
--
ALTER TABLE `users_tb`
  ADD PRIMARY KEY (`id_uzytkownika`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dailyfood_tb`
--
ALTER TABLE `dailyfood_tb`
  MODIFY `id_jedzenia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `drinks_tb`
--
ALTER TABLE `drinks_tb`
  MODIFY `drink_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `maindishes_tb`
--
ALTER TABLE `maindishes_tb`
  MODIFY `dish_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `snacks_tb`
--
ALTER TABLE `snacks_tb`
  MODIFY `snack_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_tb`
--
ALTER TABLE `users_tb`
  MODIFY `id_uzytkownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
