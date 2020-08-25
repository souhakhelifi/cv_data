-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 25 Août 2020 à 11:04
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `stage`
--

-- --------------------------------------------------------

--
-- Structure de la table `centreinteret`
--

CREATE TABLE IF NOT EXISTS `centreinteret` (
  `numcondidat` bigint(20) NOT NULL AUTO_INCREMENT,
  `interet` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`numcondidat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `competences`
--

CREATE TABLE IF NOT EXISTS `competences` (
  `numcondidat` bigint(20) NOT NULL AUTO_INCREMENT,
  `langages_de_programmation` varchar(255) DEFAULT NULL,
  `soft_skills` varchar(255) DEFAULT NULL,
  `développement_front_end` varchar(255) DEFAULT NULL,
  `développement_back_end` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`numcondidat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `donneespersonnelles`
--

CREATE TABLE IF NOT EXISTS `donneespersonnelles` (
  `numcondidat` bigint(20) NOT NULL AUTO_INCREMENT,
  `adresse` varchar(255) DEFAULT NULL,
  `datedenaissance` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `lieudenaissance` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `numtelf` int(11) NOT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `situationfamiliale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`numcondidat`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `donneespersonnelles`
--

INSERT INTO `donneespersonnelles` (`numcondidat`, `adresse`, `datedenaissance`, `email`, `lieudenaissance`, `nom`, `numtelf`, `prenom`, `situationfamiliale`) VALUES
(1, 'sfax', '2020-08-04', 'hgjhg@gghghg.com', 'vbnvn', 'nngfng', 1458962, 'nbhh', 'vhgg');

-- --------------------------------------------------------

--
-- Structure de la table `experienceprofessionnelle`
--

CREATE TABLE IF NOT EXISTS `experienceprofessionnelle` (
  `numcondidat` bigint(20) NOT NULL AUTO_INCREMENT,
  `dates` date DEFAULT NULL,
  `localisation` varchar(255) DEFAULT NULL,
  `metierexercé` varchar(255) DEFAULT NULL,
  `nomentreprise` varchar(255) DEFAULT NULL,
  `resultatseventuels` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`numcondidat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE IF NOT EXISTS `formation` (
  `numcondidat` bigint(20) NOT NULL AUTO_INCREMENT,
  `annee` date DEFAULT NULL,
  `diplome` varchar(255) DEFAULT NULL,
  `ecole` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`numcondidat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `langues`
--

CREATE TABLE IF NOT EXISTS `langues` (
  `numcondidat` bigint(20) NOT NULL AUTO_INCREMENT,
  `langues` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`numcondidat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `titre`
--

CREATE TABLE IF NOT EXISTS `titre` (
  `numcondidat` bigint(20) NOT NULL AUTO_INCREMENT,
  `titrecv` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`numcondidat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

CREATE TABLE IF NOT EXISTS `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
