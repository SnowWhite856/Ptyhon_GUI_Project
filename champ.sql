-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 14 Paź 2021, 14:12
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `lol`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `champ`
--

CREATE TABLE `champ` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Role` varchar(30) NOT NULL,
  `Rase` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `champ`
--

INSERT INTO `champ` (`Id`, `Name`, `Role`, `Rase`) VALUES
(1, 'Aatrox', 'TOP', 'Darkin'),
(3, 'Aatrox', 'TOP', 'Darkin'),
(4, 'Ahri', 'MID', 'Vastaya'),
(5, 'Akali', 'MID', 'Human'),
(6, 'Akhsan', 'MID/ADC', 'Human'),
(7, 'Alistar', 'SUP', 'Minotaur'),
(8, 'Amumu', 'JG/SUP', 'Unknown'),
(9, 'Anivia', 'MID', 'Spirit God'),
(10, 'Annie', 'MID', 'Human'),
(11, 'Aphelios', 'ADC', 'Human'),
(12, 'Ashe', 'ADC', 'Human'),
(13, 'Aurelion Sol', 'MID', 'Celestial Dragon'),
(14, 'Azir', 'MID', 'God-Warrior'),
(15, 'Bard', 'SUP', 'Celestial'),
(16, 'Blitzcrank', 'SUP', 'Golem'),
(17, 'Brand', 'MID/SUP', 'Human'),
(18, 'Braum', 'SUP', 'Human'),
(19, 'Caitlyn', 'ADC', 'Human'),
(20, 'Camille', 'TOP', 'Human'),
(21, 'Cassiopeia', 'MID', 'Human'),
(22, 'Cho\'Gath', 'TOP', 'Voidborn'),
(23, 'Corki', 'MID', 'Yordle'),
(24, 'Darius', 'TOP', 'Human'),
(25, 'Diana', 'MID/JG', 'Human'),
(26, 'Dr Mundo', 'TOP', 'Human'),
(27, 'Draven', 'ADC', 'Human'),
(28, 'Ekko', 'MID/JG', 'Human'),
(29, 'Elise', 'JG', 'Human'),
(30, 'Evelynn', 'JG', 'Demon'),
(31, 'Ezreal', 'ADC', 'Human'),
(32, 'Fiddlesticks', 'JG', 'Demon'),
(33, 'Fiora', 'TOP', 'Human'),
(34, 'Fizz', 'MID', 'Yordle'),
(35, 'Galio', 'MID/SUP', 'Golem'),
(36, 'Gangplank', 'MID/TOP', 'Human'),
(37, 'Garen', 'TOP', 'Human'),
(38, 'Gnar', 'TOP', 'Yordle'),
(39, 'Gragas', 'JG', 'Human'),
(40, 'Graves', 'MID/JG', 'Human'),
(41, 'Gwen', 'TOP', 'Human'),
(42, 'Hecarim', 'JG', 'Wraith'),
(43, 'Heimerdinger', 'MID/TOP', 'Yordle'),
(44, 'Illaoi', 'TOP', 'Human'),
(45, 'Irelia', 'MID/TOP', 'Human'),
(46, 'Ivern', 'JG', 'Human'),
(47, 'Janna', 'SUP', 'Spirit God'),
(48, 'Jarvan IV', 'JG', 'Human'),
(49, 'Jax', 'TOP/JG', 'Unknown'),
(50, 'Jayce', 'TOP', 'Human'),
(51, 'Jhin', 'ADC', 'Human'),
(52, 'Jinx', 'ADC', 'Human'),
(53, 'Kai\'Sa', 'ADC', 'Human'),
(54, 'Kalista', 'ADC', 'Wraith'),
(55, 'Karma', 'SUP', 'Human'),
(56, 'Karthus', 'JG', 'Wraith'),
(57, 'Kassadin', 'MID', 'Human'),
(58, 'Katarina', 'MID', 'Human'),
(59, 'Kayle', 'TOP', 'Human'),
(60, 'Kayn', 'JG', 'Human'),
(61, 'Kennen', 'TOP', 'Yordle'),
(62, 'Kha\'Zix', 'JG', 'Voidborn'),
(63, 'Kindred', 'JG', 'Spirit God'),
(64, 'Kled', 'TOP', 'Yordle'),
(65, 'Kog\'Maw', 'ADC', 'Voidborn'),
(66, 'LeBlanc', 'MID', 'Human'),
(67, 'Lee Sin', 'JG', 'Human'),
(68, 'Leona', 'SUP', 'Human'),
(69, 'Lillia', 'TOP/JG', 'Fae Fawn'),
(70, 'Lissandra', 'MID', 'Human'),
(71, 'Lucian', 'ADC', 'Human'),
(72, 'Lulu', 'SUP', 'Yordle'),
(73, 'Lux', 'MID/SUP', 'Human'),
(74, 'Malphite', 'TOP', 'Golem'),
(75, 'Malzahar', 'MID', 'Human'),
(76, 'Maokai', 'TOP/SUP', 'Treant'),
(77, 'Master Yi', 'JG', 'Human'),
(78, 'Miss Fortune', 'ADC', 'Human'),
(79, 'Mordekaiser', 'TOP', 'Revenant'),
(80, 'Morgana', 'SUP', 'Human'),
(81, 'Nami', 'SUP', 'Marai'),
(82, 'Nasus', 'TOP', 'God-Warrior'),
(83, 'Nautilus', 'SUP', 'Revenant'),
(84, 'Neeko', 'MID', 'Vastaya'),
(85, 'Nidalee', 'JG', 'Human'),
(86, 'Nocturne', 'JG', 'Demon'),
(87, 'Nunu and Willump', 'JG', 'Human/Yeti'),
(88, 'Olaf', 'JG', 'Human'),
(89, 'Orianna', 'MID', 'Golem'),
(90, 'Ornn', 'TOP', 'Spirit God'),
(91, 'Pantheon', 'TOP/SUP', 'Human'),
(92, 'Poppy', 'TOP/JG', 'Yordle'),
(93, 'Pyke', 'SUP', 'Revenant'),
(94, 'Qiyana', 'MID', 'Human'),
(95, 'Quinn', 'TOP', 'Human'),
(96, 'Rakan', 'SUP', 'Vastaya'),
(97, 'Rammus', 'JG', 'Unknown'),
(98, 'Rek\'Sai', 'JG', 'Voidborn'),
(99, 'Rell', 'SUP', 'Human'),
(100, 'Renekton', 'TOP', 'God-Warrior'),
(101, 'Rengar', 'JG', 'Vastaya'),
(102, 'Riven', 'TOP', 'Human'),
(103, 'Rumble', 'TOP', 'Yordle'),
(104, 'Ryze', 'MID', 'Human'),
(105, 'Samira', 'ADC', 'Human'),
(106, 'Sejuani', 'JG', 'Human'),
(107, 'Senna', 'SUP', 'Wraith'),
(108, 'Seraphine', 'SUP', 'Human'),
(109, 'Sett', 'TOP/SUP', 'Human/Vastayan'),
(110, 'Shaco', 'JG', 'Spirit'),
(111, 'Shen', 'TOP', 'Human'),
(112, 'Shyvana', 'JG', 'Terrestrial Dragon'),
(113, 'Singed', 'TOP', 'Human'),
(114, 'Sion', 'TOP', 'Revenant'),
(115, 'Sivir', 'ADC', 'Human'),
(116, 'Skarner', 'JG', 'Brackern'),
(117, 'Sona', 'SUP', 'Human'),
(118, 'Swain', 'SUP', 'Human'),
(119, 'Sylas', 'MID', 'Human'),
(120, 'Syndra', 'MID', 'Human'),
(121, 'Tahm Kench', 'TOP', 'Demon'),
(122, 'Taliyah', 'JG', 'Human'),
(123, 'Talon', 'MID', 'Human'),
(124, 'Taric', 'SUP', 'Human'),
(125, 'Teemo', 'TOP', 'Yordle'),
(126, 'Thresh', 'SUP', 'Wraith'),
(127, 'Tristana', 'ADC', 'Yordle'),
(128, 'Trundle', 'JG', 'Troll'),
(129, 'Tryndamere', 'TOP/JG', 'Human'),
(130, 'Twisted Fate', 'MID', 'Human'),
(131, 'Twitch', 'ADC', 'Plague Rat'),
(132, 'Udyr', 'JG', 'Human'),
(133, 'Urgot', 'TOP', 'Human'),
(134, 'Varus', 'ADC', 'Darkin'),
(135, 'Vayne', 'ADC', 'Human'),
(136, 'Veigar', 'MID', 'Yordle'),
(137, 'Vel\'Koz', 'SUP', 'Voidborn'),
(138, 'Vex', 'MID', 'Yordle'),
(139, 'Vi', 'JG', 'Human'),
(140, 'Viego', 'JG', 'Wraith'),
(141, 'Viktor', 'MID', 'Human'),
(142, 'Volivear', 'TOP/JG', 'Spirit God'),
(143, 'Warwick', 'JG', 'Human'),
(144, 'Wukong', 'TOP', 'Vastaya'),
(145, 'Xayah', 'ADC', 'Vastaya'),
(146, 'Xerath', 'SUP', 'God-Warrior'),
(147, 'Xin Zhao', 'JG', 'Human'),
(148, 'Yasuo', 'MID', 'Human'),
(149, 'Yone', 'MID', 'Human'),
(150, 'Yorick', 'TOP', 'Human'),
(151, 'Yuumi', 'SUPP', 'Cat'),
(152, 'Zac', 'JG', 'Golem'),
(153, 'Zed', 'MID', 'Human'),
(154, 'Ziggs', 'MID/ADC', 'Yordle'),
(155, 'Zilean', 'SUP', 'Human'),
(156, 'Zoe', 'MID', 'Human'),
(157, 'Zyra', 'SUP', 'Unknown');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `champ`
--
ALTER TABLE `champ`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `champ`
--
ALTER TABLE `champ`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
