-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 06 Lut 2025, 12:06
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
-- Baza danych: `danefirmy`
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
(1, 'Jan', 'Kowalski', 'Marta Kowalska, Telefon: 123-456-789, Email: marta.kowalska@example.com', 'ul. Przykładowa 1', 'Warszawa', '00-001', 'Polska'),
(2, 'Katarzyna', 'Nowak', 'Adam Nowak, Telefon: 987-654-321, Email: adam.nowak@example.com', 'ul. Testowa 2', 'Szczecin', '30-001', 'Polska'),
(3, 'Michał', 'Wiśniewski', 'Ewa Wiśniewska, Telefon: 456-789-123, Email: ewa.wisniewska@example.com', 'ul. Fikcyjna 3', 'Sopot', '50-001', 'Polska'),
(4, 'Hans', 'Müller', 'Anna Müller, Telefon: 030-1234567, Email: anna.mueller@example.com', 'Musterstraße 1', 'Berlin', '10115', 'Niemcy'),
(5, 'Sophie', 'Schmidt', 'Thomas Schmidt, Telefon: 040-7654321, Email: thomas.schmidt@example.com', 'Beispielweg 2', 'Hamburg', '20095', 'Niemcy'),
(6, 'Maximilian', 'Fischer', 'Laura Fischer, Telefon: 089-123456, Email: laura.fischer@example.com', 'Straße 3', 'Monachium', '80331', 'Niemcy'),
(7, 'John', 'Smith', 'Emily Johnson, Telefon: 212-555-1234, Email: emily.johnson@example.com', '123 Main St', 'Washington', '10001', 'USA'),
(8, 'Michael', 'Johnson', 'Sarah Parker, Telefon: 310-555-5678, Email: sarah.parker@example.com', '456 Elm St', 'Phoenix', '90001', 'USA'),
(9, 'Jessica', 'Williams', 'David Brown, Telefon: 202-555-8765, Email: david.brown@example.com', '789 Maple Ave', 'Chicago', '20001', 'USA'),
(10, 'Jean', 'Dupont', 'Claire Martin, Telefon: 01-23-45-67-89, Email: claire.martin@example.com', '1 Rue de Exemple', 'Marsylia', '75001', 'Francja'),
(11, 'Marie', 'Dubois', 'Pierre Lefevre, Telefon: 04-56-78-90-12, Email: pierre.lefevre@example.com', '2 Avenue de Test', 'Tuluza', '69001', 'Francja'),
(12, 'Louis', 'Martin', 'Sophie Lambert, Telefon: 03-12-34-56-78, Email: sophie.lambert@example.com', '3 Boulevard de Fictif', 'Nicea', '13001', 'Francja');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `IdKlienta` int(11) DEFAULT NULL,
  `IdZamowienia` int(11) NOT NULL,
  `DataZamowienia` date DEFAULT NULL,
  `WartoscZamowienia` double DEFAULT NULL,
  `Miasto` text DEFAULT NULL,
  `Kraj` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`IdKlienta`, `IdZamowienia`, `DataZamowienia`, `WartoscZamowienia`, `Miasto`, `Kraj`) VALUES
(1, 1, '2025-01-04', 100, 'Krakow', 'Polska'),
(2, 2, '2025-01-05', 150, 'Rzeszow', 'Polska'),
(3, 3, '2025-03-04', 100, 'Przemysl', 'Polska'),
(4, 4, '2025-01-11', 400, 'Berlin', 'Niemcy'),
(5, 5, '2025-05-10', 350, 'Hamburg', 'Niemcy'),
(6, 6, '2025-05-11', 200, 'Monachium', 'Niemcy'),
(7, 7, '2025-01-12', 350, 'Paryz', 'Francja'),
(8, 8, '2025-01-13', 500, 'Marsylia', 'Francja'),
(9, 9, '2025-01-14', 450, 'Lyon', 'Francja'),
(10, 10, '2025-01-15', 600, 'Nowy Jork', 'USA'),
(11, 11, '2025-01-16', 550, 'Los Angeles', 'USA'),
(12, 12, '2025-01-17', 700, 'Chicago', 'USA');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`IdZamowienia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
