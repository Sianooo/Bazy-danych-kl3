-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Wrz 2024, 12:12
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
-- Baza danych: `snekstore`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `Model` int(11) NOT NULL,
  `Zamowienie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item`
--

CREATE TABLE `item` (
  `Model` text NOT NULL,
  `Cena` int(11) NOT NULL,
  `Opis` text NOT NULL,
  `Zdjecie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `item`
--

INSERT INTO `item` (`Model`, `Cena`, `Opis`, `Zdjecie`) VALUES
('Air Jordan 1 Low x Travis Scott Black Phantom', 3599, 'Nowe, fabrycznie zapakowane. Sprawdzone pod kątem oryginalności przez zespół naszych specjalistów.', 'https://grailpoint.com/wp-content/uploads/2022/12/jordan-1-low-travis-scott-phantom-black.jpg'),
('Travis Scott Special Box Limited Edition', 14699, 'Nike SB Dunk Low Travis Scott Special Box - Limited Edition. ', 'https://static.miinto.net/940c7bdc612f57fb92b17b110a1d4b94.avif?width=693&height=842'),
('Air Jordan 1 Low Fragment x Travis Scott', 10500, 'Nowe, fabrycznie zapakowane. Sprawdzone pod kątem oryginalności przez zespół naszych specjalistów.', 'https://kicksite.pl/cdn/shop/products/air-jordan-1-low-fragment-x-travis-scott-kicksite-dm7866-140-733446.png?v=1705535412&width=1200'),
('\r\nRetro 1 x Off White Chicago\r\nAir Jordan', 40000, 'Model: JORDAN RETRO 1 X OFF WHITE CHICAGO\r\nKolorystyka: White/Black-Varsity Red\r\nSKU: AA3834-101\r\nData premiery: 09.11.2017\r\n \r\nEkskluzywna współpraca Jordan Retro 1 x Off White\r\n\r\nModel JORDAN RETRO 1 X OFF WHITE CHICAGO to wyjątkowe połączenie ekskluzywnej współpracy i nowoczesnego designu, które przyciąga uwagę swoją elegancją i wyrazistymi barwami. Premiera, która miała miejsce 9 listopada 2017 roku, szybko zdobyła uznanie wśród miłośników sneakersów oraz entuzjastów mody ulicznej. Jordan Retro 1 x Off White Chicago to model, który łączy w sobie estetyczny wygląd z funkcjonalnością i wygodą, tworząc obuwie, które jest zarówno stylowe, jak i komfortowe. Te buty doskonale wpisują się w różnorodne stylizacje, oferując użytkownikom wyjątkowy wygląd i komfort noszenia na co dzień.', 'https://grailpoint.com/wp-content/uploads/2022/05/jordan-1-off-white-chicago.jpg'),
('\r\nAir Force I Low x Off White ‘Black’\r\nNike', 8000, 'Obuwie Nike z kolekcji Air Force zapisało się na stałe w historii streetwearu, za sprawą innowacyjnej technologii Nike Air, oferującej absolutnie nowy wymiar wygody. Stworzona pierwotnie z myślą o zapewnieniu najwyższego komfortu zawodnikom podczas wyczynowej gry w koszykówkę, gwarantuje niesamowitą lekkość i nieograniczoną wygodę w codziennym użytkowaniu. Seria nazwana na cześć amerykańskiego samolotu prezydenckiego od razu wzbudzała ogromne zainteresowanie i w momencie debiutu na rynku było wiadomo, że pozostanie z nami na długo. Za sukcesem serii Air Force oprócz ponadprzeciętnej wygody stoi również niebanalny styl i unikatowe wzornictwo, które z pewnością będzie ciekawym dopełnieniem wielu miejskich outfitów i sprawdzi się podczas wielu różnych okazji. ', 'https://grailpoint.com/wp-content/uploads/2024/04/air-force-1-off-white-black.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `koszyk`
--

CREATE TABLE `koszyk` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `ilosc` int(11) NOT NULL DEFAULT 1,
  `status` varchar(20) NOT NULL DEFAULT 'w koszyku'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `koszyk`
--

INSERT INTO `koszyk` (`id`, `user`, `model`, `ilosc`, `status`) VALUES
(1, '', 'Air Jordan 1 Low x Travis Scott Black Phantom', 1, 'w koszyku');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `Model` text NOT NULL,
  `Cena` int(11) NOT NULL,
  `Opis` text NOT NULL,
  `Zdjecie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`Model`, `Cena`, `Opis`, `Zdjecie`) VALUES
('Air Jordan 1 Low x Travis Scott Black Phantom', 3599, 'Nowe, fabrycznie zapakowane. Sprawdzone pod kątem oryginalności przez zespół naszych specjalistów.', 0),
('Air Jordan 1 Low x Travis Scott Black Phantom', 3599, 'Nowe, fabrycznie zapakowane. Sprawdzone pod kątem oryginalności przez zespół naszych specjalistów.', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Login` text NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `Login`, `Password`) VALUES
(1, 'patryk', 'snekstore');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `ilosc` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'oczekujące',
  `data_zamowienia` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `user`, `model`, `ilosc`, `status`, `data_zamowienia`) VALUES
(1, 'anonimowy', 'Air Jordan 1 Low x Travis Scott Black Phantom', 3, 'oczekujące', '2024-09-26 12:02:29'),
(2, 'anonimowy', 'Travis Scott Special Box Limited Edition', 1, 'oczekujące', '2024-09-26 12:02:59'),
(3, 'anonimowy', 'Air Jordan 1 Low x Travis Scott Black Phantom', 1, 'oczekujące', '2024-09-26 12:06:54'),
(4, 'anonimowy', 'Air Jordan 1 Low x Travis Scott Black Phantom', 1, 'oczekujące', '2024-09-26 12:11:22');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
