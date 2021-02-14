-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 14 fév. 2021 à 18:03
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecom`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat`
--

CREATE TABLE `achat` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `achat_id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(30) NOT NULL DEFAULT 'Waiting'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `achat`
--

INSERT INTO `achat` (`user_id`, `product_id`, `achat_id`, `quantity`, `adress`, `date`, `status`) VALUES
(2, 22, 6077, 2, 'Rabat', '2021-02-14 09:13:53', 'Rejected'),
(7, 5, 40361061687, 4, 'Rabat', '2021-02-14 09:35:43', 'Accepted'),
(9, 20, 56900235443774, 3, 'Rabat', '2021-02-11 21:17:23', 'Waiting'),
(9, 4, 203246356407102596, 2, 'Rabat', '2021-02-14 10:16:10', 'Accepted'),
(10, 22, 522058, 3, 'Rabat', '2021-02-12 09:52:34', 'Waiting'),
(2, 29, 397522212690, 3, 'Rabat', '2021-02-14 09:24:07', 'Rejected'),
(10, 36, 9223372036854775807, 4, 'Rabat', '2021-02-13 10:24:53', 'Waiting'),
(2, 29, 81604388223062, 1, 'tokyo', '2021-02-14 09:24:56', 'Accepted'),
(3, 25, 1392648619, 5, 'Rabat', '2021-02-14 10:15:59', 'Accepted'),
(7, 6, 186528, 4, 'Tanger', '2021-02-14 10:16:05', 'Accepted'),
(9, 27, 8105, 2, 'Rabat', '2021-02-14 10:16:02', 'Accepted'),
(7, 27, 81039384, 1, 'Rabat', '2021-02-14 15:49:02', 'Rejected');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
