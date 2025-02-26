-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Lut 2025, 19:47
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `f`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `IdKlienta` int(11) DEFAULT NULL,
  `ImieKlienta` varchar(255) DEFAULT NULL,
  `NazwiskoKlienta` varchar(255) DEFAULT NULL,
  `OsobaKontaktowa` varchar(250) DEFAULT NULL,
  `Adres` text DEFAULT NULL,
  `Miasto` text DEFAULT NULL,
  `KodPocztowy` varchar(20) DEFAULT NULL,
  `Kraj` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`IdKlienta`, `ImieKlienta`, `NazwiskoKlienta`, `OsobaKontaktowa`, `Adres`, `Miasto`, `KodPocztowy`, `Kraj`) VALUES
(1, 'Adam', 'Nowicki', 'Monika Nowicka, Telefon: 321-654-987, Email: monika.nowicka@example.com', 'ul. Wzorcowa 1', 'Gdańsk', '80-001', 'Polska'),
(2, 'Zofia', 'Kaczmarek', 'Tomasz Kaczmarek, Telefon: 654-321-789, Email: tomasz.kaczmarek@example.com', 'ul. Przykładowa 5', 'Łódź', '90-001', 'Polska'),
(3, 'Piotr', 'Wojciechowski', 'Kinga Wojciechowska, Telefon: 987-321-654, Email: kinga.wojciechowska@example.com', 'ul. Wirtualna 3', 'Kraków', '31-001', 'Polska'),
(4, 'Lukas', 'Schneider', 'Marie Schneider, Telefon: 040-7654321, Email: marie.schneider@example.com', 'Bahnhofstraße 7', 'Hamburg', '20099', 'Niemcy'),
(5, 'Emilia', 'Schulz', 'Robert Schulz, Telefon: 030-9876543, Email: robert.schulz@example.com', 'Hauptstraße 9', 'Berlin', '10179', 'Niemcy'),
(6, 'Felix', 'Meier', 'Lena Meier, Telefon: 089-5432167, Email: lena.meier@example.com', 'Ringstraße 12', 'München', '80333', 'Niemcy'),
(7, 'James', 'Brown', 'Sophia Davis, Telefon: 617-555-4321, Email: sophia.davis@example.com', '987 Park Ave', 'Boston', '02118', 'USA'),
(8, 'William', 'Taylor', 'Olivia Clark, Telefon: 415-555-6789, Email: olivia.clark@example.com', '789 Market St', 'San Francisco', '94103', 'USA'),
(9, 'Elizabeth', 'Wilson', 'George Hall, Telefon: 718-555-3456, Email: george.hall@example.com', '654 Broadway', 'New York', '10003', 'USA'),
(10, 'Antoine', 'Durand', 'Camille Dubois, Telefon: 02-98-76-54-32, Email: camille.dubois@example.com', '4 Rue du Test', 'Bordeaux', '33000', 'Francja'),
(11, 'Chloé', 'Moreau', 'Alexandre Garnier, Telefon: 03-21-54-76-98, Email: alexandre.garnier@example.com', '6 Allée des Champs', 'Lille', '59000', 'Francja'),
(12, 'Lucas', 'Rousseau', 'Julie Bernard, Telefon: 01-45-67-89-10, Email: julie.bernard@example.com', '10 Avenue des Arbres', 'Lyon', '69001', 'Francja');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `IdKlienta` int(11) DEFAULT NULL,
  `IdZamowienia` int(11) DEFAULT NULL,
  `DataZamowienia` date DEFAULT NULL,
  `WartoscZamowienia` double DEFAULT NULL,
  `Miasto` text DEFAULT NULL,
  `Kraj` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`IdKlienta`, `IdZamowienia`, `DataZamowienia`, `WartoscZamowienia`, `Miasto`, `Kraj`) VALUES
(1, 1, '2024-12-04', 18.58, 'Zakopane', 'Polska'),
(2, 2, '2024-11-05', 15.45, 'Gdansk', 'Polska'),
(3, 3, '2024-10-06', 22.3, 'Rzeszow', 'Polska'),
(4, 4, '2024-09-07', 25.6, 'Frankfurt', 'Niemcy'),
(5, 5, '2024-12-08', 32.9, 'Stuttgart', 'Niemcy'),
(6, 6, '2024-04-09', 12.4, 'Dortmund', 'Niemcy'),
(7, 7, '2024-01-13', 26.99, 'Detroit', 'USA'),
(8, 8, '2024-03-14', 20.8, 'Los Angeles', 'USA'),
(9, 9, '2024-12-15', 23.5, 'Los santos', 'USA'),
(10, 10, '2024-03-10', 18.75, 'Paris', 'Francja'),
(11, 11, '2024-02-11', 22, 'Tuluza', 'Francja'),
(12, 12, '2024-12-12', 144.5, 'Marsylia', 'Francja');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
