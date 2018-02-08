-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  jeu. 08 fév. 2018 à 17:39
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `restaurant`
--

-- --------------------------------------------------------

--
-- Structure de la table `Aperitifs`
--

CREATE TABLE `Aperitifs` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  `Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Aperitifs`
--

INSERT INTO `Aperitifs` (`Id`, `Name`, `Description`, `Price`) VALUES
(1, 'Cocktail de fruits', ' 20cl', 4.5),
(2, 'Cocktail exotique', ' 14cl', 5.5),
(3, 'Cocktail maison\r\n', ' 14cl', 5.5),
(4, 'Kir Vin blanc ', '16cl (Cassis, Mûre, Pêche, Framboise)	\r\n', 5),
(5, 'Kir Royal ', '16cl (Cassis, Mûre, Pêche, Framboise)	\r\n', 6.5),
(6, 'Porto, Suze\r\n', ' 8cl', 5),
(7, 'Martini Gin\r\n', ' 8cl', 6),
(8, 'Martini rouge ou blanc', ' 8cl\r\n', 5),
(9, 'Mauresque', ' 4cl\r\n', 5),
(10, 'Muscat\r\n', ' 8cl', 5),
(11, 'Ricard, Pastis, Anisette', ' 2cl\r\n', 5),
(12, 'Americano maison\r\n', ' 16cl', 5.5),
(13, 'Gin Tonic', ' 8cl\r\n', 6.5),
(14, 'Malibus & jus de fruits\r\n', ' 8cl', 6.5),
(15, 'Boukha orange\r\n', ' 8cl', 6.5),
(16, 'Vodka orange\r\n', ' 8cl', 6.5),
(17, 'Coupe de Champagne\r\n', ' 15cl', 7),
(18, 'Whisky', ' 4cl\r\n', 5),
(19, 'Whisky J&B, Johnnie Walker\r\n', ' 4cl', 6),
(20, 'Whisky Chivas\r\n', ' 4cl', 7.5);

-- --------------------------------------------------------

--
-- Structure de la table `Booking`
--

CREATE TABLE `Booking` (
  `Id` int(11) NOT NULL,
  `BookingDate` date NOT NULL,
  `NumberOfSeats` tinyint(60) NOT NULL,
  `CreationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `BookingHour` time NOT NULL,
  `FirstName` text NOT NULL,
  `LastName` text NOT NULL,
  `Email` text NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Booking`
--

INSERT INTO `Booking` (`Id`, `BookingDate`, `NumberOfSeats`, `CreationTimestamp`, `BookingHour`, `FirstName`, `LastName`, `Email`, `Phone`, `Message`) VALUES
(1, '2018-01-22', 2, '2018-01-22 16:47:28', '20:00:00', 'rheda', 'enahal', 'lala@lolo', '127', 'flkheRFAZJFOARZKORIEZAO%PRK'),
(5, '2018-01-26', 3, '2018-01-24 15:28:52', '19:45:00', 'rheda', 'enahal', 'lala@lolo', '127', 'f:knsf,clSQ,flksf`;sqùmf;ùsfkl'),
(6, '2018-01-28', 10, '2018-01-24 16:55:51', '11:00:00', 'lool', 'blabla', 'lala@lolo', '127', 'ljfdmùl,slfel'),
(7, '2018-01-30', 5, '2018-01-24 17:05:24', '18:55:00', 'rheda', 'enahal', 'lala@lolo', '0617603356', '');

-- --------------------------------------------------------

--
-- Structure de la table `Contact`
--

CREATE TABLE `Contact` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Mail` varchar(60) NOT NULL,
  `Content` text NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Contact`
--

INSERT INTO `Contact` (`Id`, `Name`, `Mail`, `Content`, `Date`) VALUES
(1, 'reda', 'lala@lolo', 'fkljlsmqdjcfmzqkm', '0000-00-00'),
(2, 'reda', 'lala@lolo', 'fkljlsmqdjcfmzqkm', '0000-00-00'),
(3, 'reda', 'lala@lolo', 'jmfjzamùkfùaz', '0000-00-00'),
(4, 'reda', 'lala@lolo', ',fkezjfkjezlmùf', '0000-00-00'),
(5, 'reda', 'lala@lolo', 'bfjhafhiazjpfoù', '0000-00-00'),
(6, 'reda', 'lala@lolo', 'klchzklmajcmùas', '0000-00-00'),
(7, 'reda', 'lala@lolo', 'fjizfjzaoùpkfazk', '0000-00-00'),
(8, 'lala', 'lala@lolo', 'jdzpùjrpozakp', '2018-01-24');

-- --------------------------------------------------------

--
-- Structure de la table `Couscous`
--

CREATE TABLE `Couscous` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  `Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Couscous`
--

INSERT INTO `Couscous` (`Id`, `Name`, `Description`, `Price`) VALUES
(1, 'Légumes', '', 10.5),
(2, 'Merguez', '', 13),
(3, 'Poulet\r\n', '', 12.5),
(4, 'Boulettes\r\n', '', 13),
(5, 'Agneau', '', 14.5),
(6, 'Brochettes d\'agneau', '', 14.5),
(7, 'Côtes d\'agneau\r\n', '', 15.5),
(8, 'Maison ', '(Poulet, agneau, merguez, boulette)	\r\n', 16),
(9, 'Royal', ' (Brochette, poulet, agneau, merguez, boulette)', 18.5),
(10, 'Méchoui', ' (Morceau d\'épaule d\'agneau au four)	', 16),
(11, 'Fassi Poulet ', '(Poulet, oignons confits, pois chiches, raisins, cannelle, miel)', 14.5),
(12, 'Fassi Agneau ', '(Agneau, oignons confits, pois chiches, raisins, cannelle, miel)\r\n', 15.5),
(13, 'Merguez', ' (2)\r\n', 3),
(14, 'Brochette ', '(1)\r\n', 5),
(15, 'Boulettes ', '(3)', 4.5);

-- --------------------------------------------------------

--
-- Structure de la table `Dessert`
--

CREATE TABLE `Dessert` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  `Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Dessert`
--

INSERT INTO `Dessert` (`Id`, `Name`, `Description`, `Price`) VALUES
(1, 'Glace 3 boules\r\n', '', 5.5),
(2, 'Café ou Chocolat Liégeois', ' (Glace Café ou Chocolat, sauce café ou chocolat)\r\n', 5.5),
(3, 'Coupe Maison', ' (Glace vanille, fraise, chocolat, salade de fruits, Crème fouettée)', 6.5),
(4, 'Banana Split', ' (Banane, Glace Vanille, Fraise, Chocolat, Crème fouettée)', 6.5),
(5, 'Pêche Melba', ' (Pêche, glace fraise, Vanille, Crème fouettée, Coulis de fruits rouges)	\r\n', 6),
(6, 'Fraise Melba\r\n', '(Selon saison)', 6.5),
(7, 'Nougat Glacé\r\n', '', 6.5),
(8, 'Mystère	', '', 5.5),
(9, 'Poire Belle Hélène', '', 6),
(10, 'Profiteroles Glacées ', '(Choux, Glace vanille, sauce chocolat)	\r\n', 6.5),
(11, '1/2 Coco givrée\r\n', '', 6.5),
(12, 'Orange ou citron givrés\r\n', '', 6),
(13, 'Sorbet exotique', '(Glace cassis, citron, passion)\r\n', 5.5),
(14, 'Parfait glacé\r\n', '', 5.5),
(15, 'Glace rhum-raisins', '', 7),
(16, 'Colonel', '(Sorbet citron arrosé de vodka)', 7),
(17, 'Sergent', ' (Glace Chocolat noir, Menthe avec Get 27)	\r\n', 7),
(18, 'Pacha\r\n', '(Sorbet citron arrosé de boukha)	', 7),
(19, 'Maréchal ', '(Glace cassis arrosée de vodka)\r\n', 7),
(20, 'Saveur du désert', '(Glace vanille, dattes, liqueur de dattes)	\r\n', 7),
(21, 'Ananas frais', '', 5.5),
(22, 'Ananas au kirsh	\r\n', '', 6.5),
(23, 'Salade d\'oranges à la marocaine ', '(Quartiers d\'orange, cannelle, eau de fleur d\'oranger)\r\n', 5.5),
(24, 'Dattes en branches', '', 5.5),
(25, 'Fruits rafraichis à la fleur d\'oranger	\r\n', '', 5),
(26, 'Pastilla au lait\r\n', '(Feuilleté à la crème vanille, amandes, cannelle, sucre)', 7.5),
(27, 'Pâtisserie orientale', ' (1 pièce)', 3),
(28, 'Irish Coffee', '', 8),
(29, 'Café Gourmand / Thé Gourmand	', '', 7.5);

-- --------------------------------------------------------

--
-- Structure de la table `Digestive`
--

CREATE TABLE `Digestive` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  `Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Digestive`
--

INSERT INTO `Digestive` (`Id`, `Name`, `Description`, `Price`) VALUES
(1, 'Boukha ', '(alcool de figues), Poire, Bailey\'s 4cl	\r\n', 6.5),
(2, 'Marie Brizard, Grand Marnier ', '4cl\r\n', 6.5),
(3, 'Get 27\r\n', '4cl', 6.5),
(4, 'Cognac, Armagnac', '4cl\r\n', 6.5),
(5, 'Calvados', '4cl', 6.5),
(6, 'Saveur du désert', ' 4cl', 6.5);

-- --------------------------------------------------------

--
-- Structure de la table `Dish`
--

CREATE TABLE `Dish` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  `Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Dish`
--

INSERT INTO `Dish` (`Id`, `Name`, `Description`, `Price`) VALUES
(1, 'Grillades Maison ', '(Côte d\'agneau, brochette, poulet, merguez)	\r\n', 18),
(2, 'Brochettes d\'agneau', '', 14.5),
(3, 'Boulettes', '', 13.5),
(4, 'Merguez	', '', 12.5),
(5, 'Méchoui', '(Morceau d\'épaule d\'agneau au four)	', 15.5),
(6, 'Côte d\'agneau\r\n', '', 15.5),
(7, 'Poulet Grillé	', '', 13);

-- --------------------------------------------------------

--
-- Structure de la table `FreshDrinks`
--

CREATE TABLE `FreshDrinks` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  `Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `FreshDrinks`
--

INSERT INTO `FreshDrinks` (`Id`, `Name`, `Description`, `Price`) VALUES
(1, 'Jus de fruits, Coca-Cola, Orangina, Ice Tea	\r\n', '', 3.5),
(2, 'Eaux minérales Vittel, Evian, Badoit, San Pellegrino ', '50cl', 3),
(3, 'Eaux minérales Vittel, Evian, Badoit, San Pellegrino \r\n', '1l', 5.5),
(4, 'Diabolo', '(menthe ou grenadine)\r\n', 4),
(5, 'Orange ou citron pressés', '', 5),
(6, 'Bières Heineken, 1664', '25cl\r\n', 4.5),
(7, 'Bière marocaine Casablanca', '33cl\r\n', 6),
(8, 'Bière pression du moment ', '25cl', 4.5);

-- --------------------------------------------------------

--
-- Structure de la table `HotDrinks`
--

CREATE TABLE `HotDrinks` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  `Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `HotDrinks`
--

INSERT INTO `HotDrinks` (`Id`, `Name`, `Description`, `Price`) VALUES
(1, 'Thé à la menthe\r\n', '', 2.5),
(2, 'Thé au jasmin ou aux pignons', '', 3.5),
(3, 'Café Expresso, Décaféiné\r\n', '', 2.5),
(4, 'Café Oriental', '', 4);

-- --------------------------------------------------------

--
-- Structure de la table `Starter`
--

CREATE TABLE `Starter` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  `Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Starter`
--

INSERT INTO `Starter` (`Id`, `Name`, `Description`, `Price`) VALUES
(1, 'Salade marocaine', '(Tomates, poivrons, oignons)', 5.5),
(2, 'Tchakchouka', '', 5),
(3, 'Tchakchouka, Merguez', '', 6.5),
(4, 'Brick à l’œuf\r\n', '', 5.5),
(5, 'Brick au thon', ' (Oeufs)', 6),
(6, 'Brick aux crevettes', ' (Oeufs)', 6),
(7, 'Brick au crabe', ' (Oeufs)\r\n', 6),
(8, 'Pastilla au poulet', '', 8),
(9, 'Salade de tomates au thon', '', 5.5),
(10, 'Brochette d\'agneau servie avec salade marocaine', '', 8.5),
(11, 'Merguez servies avec salade marocaine	', '', 6),
(12, 'Briouate Kefta servie avec salade marocaine	', '', 6.5);

-- --------------------------------------------------------

--
-- Structure de la table `TajineAgneau`
--

CREATE TABLE `TajineAgneau` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  `Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `TajineAgneau`
--

INSERT INTO `TajineAgneau` (`Id`, `Name`, `Description`, `Price`) VALUES
(1, 'Pommes de terre, Olives, Citron confit	\r\n', '', 14.5),
(2, 'Pruneaux, Amandes	\r\n', '', 14.5),
(3, 'Petits pois, artichauts	\r\n', '', 14.5),
(4, 'Raisin, oignons	', '', 14.5),
(5, 'Aubergines', '', 14.5),
(6, 'Haricots verts', '', 14.5),
(7, 'Pois chiche et riz', '', 14.5),
(8, 'Berbère aux 7 légumes\r\n', '', 15.5),
(9, 'Maison ', '(Amandes, raisins, dattes, pruneaux)	\r\n', 15),
(10, 'Kefta et œufs', ' (Poivrons, petits pois, boulettes de viande)\r\n', 14),
(11, 'Pruneaux, amandes Kebab', '(Poivrons, petits pois, Dés d\'agneau, œufs, oignons)', 15.5);

-- --------------------------------------------------------

--
-- Structure de la table `TajinesPoulet`
--

CREATE TABLE `TajinesPoulet` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  `Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `TajinesPoulet`
--

INSERT INTO `TajinesPoulet` (`Id`, `Name`, `Description`, `Price`) VALUES
(1, 'Pommes de terre, Olives, Citron confit	\r\n', '', 13.5),
(2, 'Pruneaux, amandes\r\n', '', 13.5),
(3, 'Petits pois, artichauts\r\n', '', 13.5),
(4, 'Raisins, oignons', '', 13.5),
(5, 'Aubergines\r\n', '', 13.5),
(6, 'Haricots verts\r\n', '', 13.5),
(7, 'Berbère aux 7 légumes\r\n', '', 14.5),
(8, 'Maison', ' (Amandes, raisins, dattes, pruneaux)	', 14);

-- --------------------------------------------------------

--
-- Structure de la table `Wines`
--

CREATE TABLE `Wines` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Price37` double NOT NULL,
  `Price75` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Wines`
--

INSERT INTO `Wines` (`Id`, `Name`, `Price37`, `Price75`) VALUES
(1, 'Guerrouane A.O.G. gris ou rouge	\r\n', 10.5, 16.5),
(2, 'Béni M\'Tir A.O.G. rouge ou rosé	\r\n', 11, 18),
(3, 'Boulaoune gris ou rouge\r\n', 9.5, 15.5),
(4, 'Béni M\'Tir Syrah A.O.G. rouge		\r\n\r\n', 0, 24),
(5, 'Cuvée du Président rouge		\r\n', 0, 15.5),
(6, 'Côtes de Provence rosé', 10.5, 15.5),
(7, 'Saumur Champigny rouge', 10.5, 17.5),
(8, 'St Emilion rouge\r\n', 16, 24),
(9, 'Sélection maison', 0, 45),
(10, 'Mumm Cordon rouge', 0, 55);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Aperitifs`
--
ALTER TABLE `Aperitifs`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Contact`
--
ALTER TABLE `Contact`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Couscous`
--
ALTER TABLE `Couscous`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Dessert`
--
ALTER TABLE `Dessert`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Digestive`
--
ALTER TABLE `Digestive`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Dish`
--
ALTER TABLE `Dish`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `FreshDrinks`
--
ALTER TABLE `FreshDrinks`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `HotDrinks`
--
ALTER TABLE `HotDrinks`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Starter`
--
ALTER TABLE `Starter`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `TajineAgneau`
--
ALTER TABLE `TajineAgneau`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `TajinesPoulet`
--
ALTER TABLE `TajinesPoulet`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Wines`
--
ALTER TABLE `Wines`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Aperitifs`
--
ALTER TABLE `Aperitifs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `Booking`
--
ALTER TABLE `Booking`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `Contact`
--
ALTER TABLE `Contact`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `Couscous`
--
ALTER TABLE `Couscous`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `Dessert`
--
ALTER TABLE `Dessert`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `Digestive`
--
ALTER TABLE `Digestive`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `Dish`
--
ALTER TABLE `Dish`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `FreshDrinks`
--
ALTER TABLE `FreshDrinks`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `HotDrinks`
--
ALTER TABLE `HotDrinks`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Starter`
--
ALTER TABLE `Starter`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `TajineAgneau`
--
ALTER TABLE `TajineAgneau`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `TajinesPoulet`
--
ALTER TABLE `TajinesPoulet`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `Wines`
--
ALTER TABLE `Wines`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
