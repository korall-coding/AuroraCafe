-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Okt 19. 19:10
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `aurora_cafe_db`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `categories`
--

INSERT INTO `categories` (`Id`, `Name`) VALUES
(1, 'Kávék'),
(3, 'Péksütemények'),
(2, 'Sütemények');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` text NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `ImageUrl` varchar(255) DEFAULT NULL,
  `CategoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `products`
--

INSERT INTO `products` (`Id`, `Name`, `Description`, `Price`, `ImageUrl`, `CategoryId`) VALUES
(1, 'Espresso', 'Intenzív, karakteres kávé egyetlen adagban.', 890.00, 'espresso.webp', 1),
(2, 'Espresso Doppio', 'Dupla espresso azoknak, akik erősebben szeretik.', 1190.00, 'espresso-doppio.webp', 1),
(3, 'Americano', 'Espresso forró vízzel, lágyabb és hosszabb kávéélményhez.', 990.00, 'americano.webp', 1),
(4, 'Cappuccino', 'Espresso, gőzölt tej és selymes tejhab.', 1290.00, 'cappuccino.webp', 1),
(5, 'Latte Macchiato', 'Krémes, lágy tejes kávé három rétegben.', 1390.00, 'latte-macchiato.webp', 1),
(6, 'Flat White', 'Intenzív espresso selymes, mikrohabosított tejjel.', 1490.00, 'flat-white.webp', 1),
(7, 'Mocha', 'Espresso, csokoládé és gőzölt tej.', 1490.00, 'mocha.webp', 1),
(8, 'Csokoládétorta', 'Gazdag, krémes csokoládétorta étcsokoládéval.', 1490.00, 'chocolate-cake.webp', 2),
(9, 'Sajttorta', 'Krémes sajttorta ropogós kekszalappal.', 1390.00, 'cheesecake.webp', 2),
(10, 'Almás pite', 'Házi almás pite fahéjas almával és omlós tésztával.', 1190.00, 'apple-pie.webp', 2),
(11, 'Brownie', 'Puha, csokoládés brownie ropogós dióval.', 1090.00, 'brownie.webp', 2),
(12, 'Mandulás croissant', 'Ropogós, vajas croissant pirított mandulával és finom mandulás töltelékkel.', 890.00, 'almond-croissant.webp', 3),
(13, 'Csokoládés croissant', 'Réteges, vajas croissant gazdag étcsokoládé-töltelékkel.', 790.00, 'chocolate-croissant.webp', 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reviews`
--

CREATE TABLE `reviews` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `Rating` tinyint(4) NOT NULL,
  `IsVisible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `reviews`
--

INSERT INTO `reviews` (`Id`, `Name`, `Description`, `Rating`, `IsVisible`) VALUES
(1, 'Kovács Anna', 'Nagyon hangulatos kávézó, kedves kiszolgálással és finom cappuccinóval. Biztosan visszatérünk!', 5, 1),
(2, 'Nagy Péter', 'A kávé kiváló volt, a sütemény pedig friss és ízletes. Kellemes hely egy délutáni beszélgetéshez.', 5, 1),
(3, 'Tóth Eszter', 'Szép környezet, finom italok. Kicsit sokat kellett várnunk, de összességében elégedettek voltunk.', 4, 0),
(4, 'Szabó Dóra', 'A forró csoki fantasztikus, a kiszolgálás pedig nagyon figyelmes. Csak ajánlani tudom!', 5, 1),
(5, 'Farkas Gábor', 'Jó kávé, kellemes zene és nyugodt légkör. Ideális hely a reggeli kávézáshoz.', 4, 0),
(6, 'Varga Lilla', 'A sütemény finom volt, de az árakat kissé magasnak találtam.', 3, 0),
(7, 'Molnár Bence', 'Barátságos személyzet és remek latte. Még biztosan jövök!', 5, 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- A tábla indexei `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CategoryId` (`CategoryId`);

--
-- A tábla indexei `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`Id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `reviews`
--
ALTER TABLE `reviews`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
