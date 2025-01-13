-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Jan 31. 11:29
-- Kiszolgáló verziója: 10.4.11-MariaDB
-- PHP verzió: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `fezoo`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `allatkert`
--

CREATE TABLE `allatkert` (
  `id` int(11) NOT NULL,
  `nev` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `cim` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `elerhetoseg` varchar(25) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `allatkert`
--

INSERT INTO `allatkert` (`id`, `nev`, `cim`, `elerhetoseg`) VALUES
(1, 'Fővárosi Állat- és Növénykert', '1146 Budapest, Állatkerti krt. 6-12', '06-1-273-4900'),
(2, 'Pécsi Állatkert és Akvárium-terrárium', '7635 Pécs, Ángyán János u. 1', '06-72-312-788'),
(3, 'Miskolci Állatkert és Kultúrpark', '3535 Miskolc, Csanyik-völgy', '06-46-332-121'),
(4, 'Debreceni Állatkert és Vidámpark', '4032 Debrecen, Ady Endre u. 1', '06-52-310-065'),
(5, 'Szegedi Vadaspark', '6725 Szeged, Cserepes sor 47', '06-62-542-530');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `allatok`
--

CREATE TABLE `allatok` (
  `Azonosito` int(11) NOT NULL,
  `Fajta` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `Kor` int(11) NOT NULL,
  `Nev` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `Darab` int(11) NOT NULL,
  `Allatkert` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `allatkert_azonosito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `allatok`
--

INSERT INTO `allatok` (`Azonosito`, `Fajta`, `Kor`, `Nev`, `Darab`, `Allatkert`, `allatkert_azonosito`) VALUES
(1, 'Oroszlán', 2, 'Szimba', 0, ' 	Fővárosi Állat- és Növénykert', 1),
(2, 'Sivatagi Kutya', 1, 'Pista', 0, ' 	Fővárosi Állat- és Növénykert', 1),
(3, 'Zsiráf', 5, 'Nyakas', 0, ' 	Fővárosi Állat- és Növénykert', 2),
(4, 'Hiéna', 1, 'Bözsi', 0, ' 	Fővárosi Állat- és Növénykert', 2),
(5, 'Gazella', 3, 'Gizella', 0, ' 	Fővárosi Állat- és Növénykert', 1),
(6, 'Barna medve', 1, 'Laci', 0, ' 	Fővárosi Állat- és Növénykert', 3),
(7, 'Szirti Sas', 7, 'Jakab', 0, ' 	Fővárosi Állat- és Növénykert', 2),
(8, 'Szarvasmarha', 2, 'Béla', 0, ' 	Fővárosi Állat- és Növénykert', 4),
(9, 'Görög teknős', 14, 'Fürge', 0, ' 	Fővárosi Állat- és Növénykert', 2),
(10, 'Hiúz', 4, 'Cirmi', 0, ' 	Fővárosi Állat- és Növénykert', 1),
(11, 'Hernyó', 21, 'Csernyó', 0, ' 	Fővárosi Állat- és Növénykert', 3),
(13, 'Bölény', 32, 'Kuka', 0, ' 	Fővárosi Állat- és Növénykert', 4);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `azonosito` int(11) NOT NULL,
  `felhasznalonev` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `jelszo` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `jogosultsag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`azonosito`, `felhasznalonev`, `jelszo`, `jogosultsag`) VALUES
(1, 'igazgato', 'igazgato123', 1),
(2, 'ugyintezo', 'ugyintezo123', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `megrendelesek`
--

CREATE TABLE `megrendelesek` (
  `azonosito` int(11) NOT NULL,
  `tipus` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `fajta` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `kor` int(11) NOT NULL,
  `nev` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `darab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `megrendelesek`
--

INSERT INTO `megrendelesek` (`azonosito`, `tipus`, `fajta`, `kor`, `nev`, `darab`) VALUES
(1, 'Eladás', 'Zsiráf', 12, 'Nyakas', 1),
(2, 'Vétel', 'Héja', 2, 'Jani', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `allatkert`
--
ALTER TABLE `allatkert`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `allatok`
--
ALTER TABLE `allatok`
  ADD PRIMARY KEY (`Azonosito`);

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`azonosito`);

--
-- A tábla indexei `megrendelesek`
--
ALTER TABLE `megrendelesek`
  ADD PRIMARY KEY (`azonosito`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `allatkert`
--
ALTER TABLE `allatkert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `allatok`
--
ALTER TABLE `allatok`
  MODIFY `Azonosito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `azonosito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `megrendelesek`
--
ALTER TABLE `megrendelesek`
  MODIFY `azonosito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
