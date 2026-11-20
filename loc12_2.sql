-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 20 nov. 2026 à 08:34
-- Version du serveur : 8.0.31
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `loc12`
--

-- --------------------------------------------------------

--
-- Structure de la table `table_client`
--

CREATE TABLE `table_client` (
  `id_client` int NOT NULL,
  `nom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `num_permis` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `table_client`
--

INSERT INTO `table_client` (`id_client`, `nom`, `prenom`, `num_permis`) VALUES
(12, 'Alonso', 'Pedro', 5646154);

-- --------------------------------------------------------

--
-- Structure de la table `table_locations`
--

CREATE TABLE `table_locations` (
  `num_location` int NOT NULL,
  `date_location` date NOT NULL,
  `id_client` int NOT NULL,
  `immatriculation` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `table_locations`
--

INSERT INTO `table_locations` (`num_location`, `date_location`, `id_client`, `immatriculation`) VALUES
(33, '2026-11-18', 12, '300 DB 300');

-- --------------------------------------------------------

--
-- Structure de la table `table_reparation`
--

CREATE TABLE `table_reparation` (
  `num_rep` int NOT NULL,
  `date_rep` date NOT NULL,
  `type_panne` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `lieu_rep` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `prix_rep` int NOT NULL,
  `nbre_jours_rep` int NOT NULL,
  `adresse_mecanicien` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `immatriculation` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `table_reparation`
--

INSERT INTO `table_reparation` (`num_rep`, `date_rep`, `type_panne`, `lieu_rep`, `prix_rep`, `nbre_jours_rep`, `adresse_mecanicien`, `immatriculation`) VALUES
(642785419, '2026-11-30', 'huile de moteur', 'Paris', 150, 15, 'Paris', '300 DB 300');

-- --------------------------------------------------------

--
-- Structure de la table `table_voiture`
--

CREATE TABLE `table_voiture` (
  `immatriculation` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `marque` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `kilometrage` int NOT NULL,
  `date_circulation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `table_voiture`
--

INSERT INTO `table_voiture` (`immatriculation`, `marque`, `kilometrage`, `date_circulation`) VALUES
('300 DB 300', 'peugeot 508', 200000, '2026-11-18');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `table_client`
--
ALTER TABLE `table_client`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `num_permis` (`num_permis`);

--
-- Index pour la table `table_locations`
--
ALTER TABLE `table_locations`
  ADD PRIMARY KEY (`immatriculation`),
  ADD KEY `id_client` (`id_client`);

--
-- Index pour la table `table_reparation`
--
ALTER TABLE `table_reparation`
  ADD PRIMARY KEY (`immatriculation`);

--
-- Index pour la table `table_voiture`
--
ALTER TABLE `table_voiture`
  ADD PRIMARY KEY (`immatriculation`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `table_locations`
--
ALTER TABLE `table_locations`
  ADD CONSTRAINT `table_locations_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `table_client` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `table_locations_ibfk_2` FOREIGN KEY (`immatriculation`) REFERENCES `table_voiture` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `table_reparation`
--
ALTER TABLE `table_reparation`
  ADD CONSTRAINT `table_reparation_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `table_voiture` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
