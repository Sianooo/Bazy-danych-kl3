-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 03, 2024 at 11:08 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `danefirmy`
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
-- Dumping data for table `klienci`
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
