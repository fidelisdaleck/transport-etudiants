-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 17 juin 2025 à 08:00
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lelaatrans`
--

-- --------------------------------------------------------

--
-- Structure de la table `bus`
--

DROP TABLE IF EXISTS `bus`;
CREATE TABLE IF NOT EXISTS `bus` (
  `Numero_bus` int NOT NULL,
  `Heure_depart` int DEFAULT NULL,
  `Arret_bus` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Numero_bus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `chauffeur`
--

DROP TABLE IF EXISTS `chauffeur`;
CREATE TABLE IF NOT EXISTS `chauffeur` (
  `Matricule` int NOT NULL,
  `NomC` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Matricule`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `Emailcont` varchar(50) NOT NULL,
  `NomCont` varchar(50) DEFAULT NULL,
  `PrenomEtu` varchar(50) DEFAULT NULL,
  `Information` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Emailcont`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`Emailcont`, `NomCont`, `PrenomEtu`, `Information`) VALUES
('seishironagi@icloud.com', 'seishiro', 'nagi', 'je vis non loin de Makepe. Pouvez-vous passer par la?');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `Mot_de_passe` varchar(40) NOT NULL,
  `NomEtu` varchar(40) DEFAULT NULL,
  `EmailEtu` varchar(49) DEFAULT NULL,
  PRIMARY KEY (`Mot_de_passe`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`Mot_de_passe`, `NomEtu`, `EmailEtu`) VALUES
('glander', 'Nagi Seishiro', 'seishironagi@icloud.com'),
('aigri', 'Dicka', 'dicka@gmail.com'),
('soft', 'Eishi', 'eishi@gmail.com'),
('hello', 'Dicka', 'fidelisdaleck386@gmail.com'),
('biface', 'lithina', 'lithina@gmail.com'),
('bb', 'mama  eureka', 'mamaeureka@gmail.com'),
('1234', 'Amadou ', 'amadou69mendouga@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
