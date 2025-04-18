-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 18 avr. 2025 à 09:23
-- Version du serveur : 8.0.41-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `SAE203`
--

-- --------------------------------------------------------

--
-- Structure de la table `Category`
--

CREATE TABLE `Category` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `Category`
--

INSERT INTO `Category` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Comédie'),
(3, 'Drame'),
(4, 'Science-fiction'),
(5, 'Animation'),
(6, 'Thriller'),
(7, 'Horreur'),
(8, 'Aventure'),
(9, 'Fantaisie'),
(10, 'Documentaire');

-- --------------------------------------------------------

--
-- Structure de la table `Favorites`
--

CREATE TABLE `Favorites` (
  `id` int NOT NULL,
  `id_profil` int NOT NULL,
  `id_movie` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Favorites`
--

INSERT INTO `Favorites` (`id`, `id_profil`, `id_movie`) VALUES
(3, 2, 7),
(4, 4, 49),
(5, 1, 49),
(6, 4, 44),
(8, 1, 41);

-- --------------------------------------------------------

--
-- Structure de la table `Movie`
--

CREATE TABLE `Movie` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int DEFAULT NULL,
  `length` int DEFAULT NULL,
  `description` text,
  `director` varchar(255) DEFAULT NULL,
  `id_category` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `min_age` int DEFAULT NULL,
  `featured` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `Movie`
--

INSERT INTO `Movie` (`id`, `name`, `year`, `length`, `description`, `director`, `id_category`, `image`, `trailer`, `min_age`, `featured`) VALUES
(7, 'Interstellar', 2014, 169, 'Un groupe d\'explorateurs voyage à travers un trou de ver pour sauver l\'humanité.', 'Christopher Nolan', 4, 'interstellar.jpg', 'https://www.youtube.com/embed/VaOijhK3CRU?si=76Ke4uw4LYjuLuQ6', 12, 0),
(12, 'La Liste de Schindler', 1993, 195, 'Un industriel allemand sauve des milliers de Juifs pendant l\'Holocauste.', 'Steven Spielberg', 3, 'schindler.webp', 'https://www.youtube.com/embed/ONWtyxzl-GE?si=xC3ASGGPy5Ib-aPn', 16, 0),
(17, 'Your Name', 2016, 107, 'Deux adolescents échangent leurs corps de manière mystérieuse.', 'Makoto Shinkai', 5, 'your_name.jpg', 'https://www.youtube.com/embed/AROOK45LXXg?si=aUQyGk2VMCb_ToUL', 10, 1),
(27, 'Le Bon, la Brute et le Truand', 1966, 161, 'Trois hommes se lancent à la recherche d\'un trésor caché.', 'Sergio Leone', 8, 'bon_brute_truand.jpg', 'https://www.youtube.com/embed/WA1hCZFOPqs?si=TwNZAoM4oj4KpGja', 12, 0),
(32, 'Suzume', 2023, 122, 'Dans une petite ville paisible de Kyushu, une jeune fille de 17 ans, Suzume, rencontre un homme qui dit voyager à la recherche d’une porte. Décidant de le suivre dans les montagnes, elle découvre une porte délabrée trônant au milieu des ruines, seul vestige ayant survécu au passage du temps. Cédant à une inexplicable impulsion, Suzume tourne la poignée, et d’autres portes s’ouvrent alors aux quatre coins du Japon, laissant passer toutes les catastrophes qu’elles renfermaient. L’homme est formel : toute porte ouverte doit être refermée. Suzume s’est égarée où se trouvent les étoiles, le crépuscule et l’aube, une voûte céleste où tous les temps se confondent. Guidée par des portes nimbées de mystère, elle entame un périple afin de toutes les refermer.', 'Makoto Shinkai', 5, 'Suzume_no_Tojimari_poster.jpg', 'https://www.youtube.com/embed/5pTcio2hTSw?si=mQuH0sOU-zg2t90E', 14, 0),
(33, 'Legacy, notre héritage', 2021, 100, 'Dix ans après le film Home, Yann Arthus-Bertrand revient sur sa vie et cinquante ans de carrière, tout en racontant l\'histoire de l\'homme et de la nature. Il dévoile une planète plus que jamais en souffrance, une humanité déboussolée, se mentant à elle-même depuis des décennies, incapable de prendre au sérieux la menace qui pèse sur elle et sur tous les êtres vivants. Aujourd\'hui, nul ne peut plus ignorer la catastrophe écologique en cours. L\'Homme, en voulant transformer, dominer et détourner l\'énergie, cette source incroyable de progrès, a déséquilibré l\'ordre naturel des choses. Le déni n\'est plus une option. C\'est notre survie sur Terre qui est en jeu et nous en sommes tous responsables.', 'Yann Arthus-Bertrand', 10, 'legacy-notre-heritage.jpg', 'https://www.youtube.com/embed/WMHNCQpCB6Y?si=dcNoSMwbhWQXuiEb', 5, 0),
(34, 'Inception', 2010, 148, 'Un voleur utilise la technologie du rêve partagé pour infiltrer des esprits.', 'Christopher Nolan', 4, 'inception.jpg', 'https://www.youtube.com/embed/YoHD9XEInc0', 12, 0),
(35, 'Le Voyage de Chihiro', 2001, 125, 'Une fillette se retrouve piégée dans un monde magique dirigé par des esprits.', 'Hayao Miyazaki', 5, 'chihiro.jpg', 'https://www.youtube.com/embed/ByXuk9QqQkk', 8, 0),
(36, 'Parasite', 2019, 132, 'Une famille pauvre infiltre une famille riche, menant à une tension sociale explosive.', 'Bong Joon-ho', 2, 'parasite.jpg', 'https://www.youtube.com/embed/SEUXfv87Wpk', 14, 1),
(37, 'Gladiator', 2000, 155, 'Un général romain trahi revient en gladiateur pour se venger de l\'empereur.', 'Ridley Scott', 6, 'gladiator.jpg', 'https://www.youtube.com/embed/owK1qxDselE', 16, 0),
(38, 'Coco', 2017, 105, 'Un jeune garçon passionné de musique explore le monde des morts.', 'Lee Unkrich', 5, 'coco.jpg', 'https://www.youtube.com/embed/Rvr68u6k5sI', 6, 1),
(39, 'The Dark Knight', 2008, 152, 'Batman affronte le Joker, un criminel imprévisible qui veut plonger Gotham dans le chaos.', 'Christopher Nolan', 4, 'dark_knight.jpg', 'https://www.youtube.com/embed/EXeTwQWrcwY', 14, 0),
(40, 'Titanic', 1997, 195, 'Une romance naît entre deux passagers de classes opposées à bord du Titanic.', 'James Cameron', 3, 'titanic.jpg', 'https://www.youtube.com/embed/kVrqfYjkTdQ', 10, 0),
(41, 'Forrest Gump', 1994, 142, 'L\'histoire touchante d\'un homme simple qui traverse les grands moments de l\'histoire américaine.', 'Robert Zemeckis', 3, 'forrest_gump.jpg', 'https://www.youtube.com/embed/bLvqoHBptjg', 10, 0),
(42, 'Pulp Fiction', 1994, 154, 'Un mélange d\'histoires interconnectées de criminels à Los Angeles.', 'Quentin Tarantino', 2, 'pulp_fiction.jpg', 'https://www.youtube.com/embed/s7EdQ4FqbhY', 16, 0),
(43, 'Le Roi Lion', 1994, 88, 'Un lionceau exilé revient reprendre sa place légitime sur le trône de la savane.', 'Roger Allers, Rob Minkoff', 5, 'le_roi_lion.jpg', 'https://www.youtube.com/embed/4sj1MT05lAA', 6, 0),
(44, 'Avengers: Endgame', 2019, 181, 'Les Avengers restants tentent d’inverser les effets du snap de Thanos.', 'Anthony et Joe Russo', 1, 'avengers_endgame.jpg', 'https://www.youtube.com/embed/TcMBFSGVi1c', 12, 0),
(45, 'The Matrix', 1999, 136, 'Un hacker découvre la vérité sur sa réalité : elle est une simulation.', 'Lana et Lilly Wachowski', 4, 'matrix.jpg', 'https://www.youtube.com/embed/vKQi3bBA1y8', 14, 0),
(46, 'Fight Club', 1999, 139, 'Un homme fonde un club secret où des hommes se battent pour se sentir vivants.', 'David Fincher', 2, 'fight_club.jpg', 'https://www.youtube.com/embed/qtRKdVHc-cE', 16, 0),
(47, 'Les Évadés', 1994, 142, 'Un homme innocent en prison noue une amitié forte et lutte pour sa liberté.', 'Frank Darabont', 3, 'les_evades.jpg', 'https://www.youtube.com/embed/NmzuHjWmXOc', 12, 0),
(48, 'Le Parrain', 1972, 175, 'Le chef d\'une famille mafieuse doit préparer son fils à prendre la relève.', 'Francis Ford Coppola', 2, 'le_parrain.jpg', 'https://www.youtube.com/embed/UaVTIH8mujA', 16, 0),
(49, 'Avatar', 2009, 162, 'Un marine découvre le monde de Pandora et rejoint les Na\'vis.', 'James Cameron', 1, 'avatar.jpg', 'https://www.youtube.com/embed/5PSNL1qE6VY', 10, 0),
(50, 'La La Land', 2016, 128, 'Deux artistes en quête de succès tombent amoureux à Los Angeles.', 'Damien Chazelle', 3, 'la_la_land.jpg', 'https://www.youtube.com/embed/0pdqf4P9MB8', 10, 0),
(51, 'The Grand Budapest Hotel', 2014, 100, 'Un concierge d\'hôtel s\'implique dans un vol de tableau au cœur d\'un complot familial.', 'Wes Anderson', 3, 'grand_budapest.jpg', 'https://www.youtube.com/embed/1Fg5iWmQjwk', 10, 0),
(52, 'Le Fabuleux Destin d’Amélie Poulain', 2001, 122, 'Amélie, jeune serveuse parisienne, décide de changer la vie des gens autour d\'elle.', 'Jean-Pierre Jeunet', 3, 'amelie.jpg', 'https://www.youtube.com/embed/HUECWi5pX7o', 6, 0),
(53, 'Joker', 2019, 122, 'Un homme marginalisé sombre dans la folie et devient une figure anarchiste.', 'Todd Phillips', 2, 'joker.jpg', 'https://www.youtube.com/embed/zAGVQLHvwOY', 16, 0);

-- --------------------------------------------------------

--
-- Structure de la table `Profil`
--

CREATE TABLE `Profil` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `min_age` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Profil`
--

INSERT INTO `Profil` (`id`, `name`, `avatar`, `min_age`) VALUES
(1, 'Anna', 'profil1.jpg', 11),
(2, 'hugo', 'profil2.jpg', 21),
(4, 'cloe', 'profil3.jpg', 14),
(5, 'Timothé', 'profil4.jpg', 11),
(6, 'nana', 'profil5.jpg', 14);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Favorites`
--
ALTER TABLE `Favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`id_profil`),
  ADD KEY `movie_id` (`id_movie`);

--
-- Index pour la table `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Index pour la table `Profil`
--
ALTER TABLE `Profil`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `Favorites`
--
ALTER TABLE `Favorites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `Movie`
--
ALTER TABLE `Movie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `Profil`
--
ALTER TABLE `Profil`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Favorites`
--
ALTER TABLE `Favorites`
  ADD CONSTRAINT `Favorites_ibfk_1` FOREIGN KEY (`id_profil`) REFERENCES `Profil` (`id`),
  ADD CONSTRAINT `Favorites_ibfk_2` FOREIGN KEY (`id_movie`) REFERENCES `Movie` (`id`);

--
-- Contraintes pour la table `Movie`
--
ALTER TABLE `Movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `Category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
