-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 06 Lut 2025, 12:18
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `dane_firmy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `IDKlienta` int(11) DEFAULT NULL,
  `ImieKlienta` text DEFAULT NULL,
  `NazwiskoKlienta` text DEFAULT NULL,
  `OsobaKontaktowa` text DEFAULT NULL,
  `Adres` varchar(30) DEFAULT NULL,
  `Miasto` text DEFAULT NULL,
  `KodPocztowy` varchar(20) DEFAULT NULL,
  `Kraj` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`IDKlienta`, `ImieKlienta`, `NazwiskoKlienta`, `OsobaKontaktowa`, `Adres`, `Miasto`, `KodPocztowy`, `Kraj`) VALUES
(1, 'Paweł', 'Nowak', 'Iwo Łyk iwo@wp.pl_600456123', 'ul. Fiołkowa', 'Warszawa', '00-795', 'Polska'),
(2, 'Igor', 'Wojcik', 'igor Mik ig@wp.pl 623456123', 'Wincentego Kadłubka 28', 'Szczecin', '70-456', 'Polska'),
(3, 'Dominik', 'Sliwa', 'Marta Sliwa martasliw@gmail.com 123421456', 'ul.Bitwy pod Plowcami', 'Sopot', '81-730', 'Polska'),
(4, 'Adolf', 'Hitlrich', 'Ewa Brm ewabr@gmail.com 142342789', '85 Landsberger Allee', 'Berlin', '10369', 'Niemcy'),
(5, 'Thomas', 'Krankstisch', 'David Hortez davhort@gmail.com 564723211', '30 Kattensteert', 'Hamburg', '22525', 'Niemcy'),
(6, 'Hannah', 'Linkst', 'Joshua Kimmerz kimmerzjosh@gmail.com 454547332', '86 Georgenstraße', 'monachium', '80331', 'Niemcy'),
(7, 'Kylian', 'Nkunku', 'Paul Pogba paul@gmail.com 363636666', '22 Av. du Corail', 'Marsylia', '13000', 'Francja'),
(8, 'Jon', 'LaParticle', 'Louis Verde louisver@gmail.com 554545536', '5 Av. Henri Barbusse', 'Tuluza', '31000', 'Francja'),
(9, 'Emporio', 'Armani', 'Donatela Versace donavrs@gmail.com 545463722', 'Rue Honoré Sauvan', 'Nicea', '06000', 'Francja'),
(10, 'John', 'Cena', 'George Wshington georgy@gmail.com 210037420', '1600 H St NW', 'Washington', '20 500', 'USA'),
(11, 'Kanye', 'West', 'Travis Scott travis@gmail.com 234435266', '193 W Adams St', 'Phoenix', '85 001', 'USA'),
(12, 'Playboi', 'Carti', 'Yeat yeat@gmail.com777777777', '1246 W Catalpa Ave', 'Chicago', '60007', 'USA');

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
(1, 1, '2024-12-04', 12.58, 'Poznan', 'Polska'),
(2, 2, '2024-12-05', 15.45, 'Gdansk', 'Polska'),
(3, 3, '2024-12-06', 20.3, 'Krakow', 'Polska'),
(4, 4, '2024-12-07', 25.6, 'Frankfurt', 'Niemcy'),
(5, 5, '2024-12-08', 30.9, '', 'Niemcy'),
(6, 6, '2024-12-09', 12.4, 'Stuttgart', 'Niemcy'),
(7, 7, '2024-12-10', 18.75, 'Paris', 'Francja'),
(8, 8, '2024-12-11', 22, 'Lyon', 'Francja'),
(9, 9, '2024-12-12', 14.5, 'Marseille', 'Francja'),
(10, 10, '2024-12-13', 28.99, 'New York', 'USA'),
(11, 11, '2024-12-14', 17.8, 'Los Angeles', 'USA'),
(12, 12, '2024-12-15', 25.5, 'Los santos', 'USA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
