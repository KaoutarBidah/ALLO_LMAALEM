-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 12 fév. 2021 à 20:24
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `web_s1`
--

-- --------------------------------------------------------

--
-- Structure de la table `maalems`
--

CREATE TABLE `maalems` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `fonction` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `maalems`
--

INSERT INTO `maalems` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `fonction`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'mohammed123@gmail.com', '1234', 2, 'mohammed', 'aitlahssen', 'pppppppppppppppppppppppppp', 'Plombier', '0978543214', 'banner-1.png', 1, '\' \'', '\' \'', '2021-02-12'),
(2, 'driss123@gmail.com', '1234', 2, 'Driss', 'Amadour', 'aaaaaaaaaaaaaaaaaaaa', 'Plombier', '123456789', 'avatar6.png', 2, '\' \'', '\' \'', '2021-02-12'),
(3, 'ahmed123@gmal.com', '0908', 2, 'Ahmed', 'Khalid', 'xcvbnblkjhhdfuyty', 'Plombier', '12345678', 'avatar4.png', 2, '\' \'', '\' \'', '2021-02-12'),
(4, 'mohammed098@gmail.com', '5678', 2, 'Mohammed', 'El mallahi', 'AZERYTUIOP', 'Electricien', '123456789', 'avatar2.png', 2, '\' \'', '\' \'', '2021-02-12');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `idServ` int(11) NOT NULL,
  `typeServ` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`idServ`, `typeServ`) VALUES
(1, 'Plomberie'),
(2, 'Electricité'),
(3, 'Peinture'),
(4, 'Alluminium'),
(5, 'Maconnerie'),
(6, 'Menuiserie');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'Christine', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09'),
(0, 'alen123@gmail.com', '$2y$10$ia66b1TmV8D5LI3SMyojo.CD7/fbaqvA70cDzyLdUjdrUn/us0Ek.', 0, 'Alen', 'QSDFGHJ', 'YYYYYYYYYYYYYYYY', '0666666790', 'female3.jpg', 1, '', '', '2021-02-12'),
(0, 'alen123@gmail.com', '$2y$10$ia66b1TmV8D5LI3SMyojo.CD7/fbaqvA70cDzyLdUjdrUn/us0Ek.', 0, 'Alen', 'QSDFGHJ', 'YYYYYYYYYYYYYYYY', '0666666790', 'banner-1.png', 1, '', '', '2021-02-12'),
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Admin', 'KAFI', '', '', 'avatar6.png', 1, '', '', '2018-05-01'),
(0, 'alen123@gmail.com', '$2y$10$ia66b1TmV8D5LI3SMyojo.CD7/fbaqvA70cDzyLdUjdrUn/us0Ek.', 0, 'Alen', 'QSDFGHJ', 'YYYYYYYYYYYYYYYY', '0666666790', 'avatar2.png', 1, '', '', '2021-02-12');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`idServ`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
