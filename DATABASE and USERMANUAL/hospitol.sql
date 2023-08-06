-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 21 mai 2023 à 22:08
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hospitol`
--

-- --------------------------------------------------------

--
-- Structure de la table `admit_invo_db`
--

CREATE TABLE `admit_invo_db` (
  `Invo_no` int(11) NOT NULL,
  `pet_no` int(11) NOT NULL,
  `pet_name` varchar(100) NOT NULL,
  `p_age` int(3) NOT NULL,
  `price_of_med` int(11) NOT NULL,
  `price_of_doc` int(11) NOT NULL,
  `day_count` int(11) NOT NULL,
  `price_of_room` int(11) NOT NULL,
  `ser_char` int(11) NOT NULL,
  `totl` int(11) NOT NULL,
  `invo_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admit_invo_db`
--

INSERT INTO `admit_invo_db` (`Invo_no`, `pet_no`, `pet_name`, `p_age`, `price_of_med`, `price_of_doc`, `day_count`, `price_of_room`, `ser_char`, `totl`, `invo_date`) VALUES
(1, 3, 'Narjes BOUGUERRA', 24, 1, 1, 1000, 1000000, 500, 1000502, '2022-06-29 16:25:15');

-- --------------------------------------------------------

--
-- Structure de la table `admit_pet`
--

CREATE TABLE `admit_pet` (
  `admit_petid` int(11) NOT NULL,
  `admit_name` varchar(500) NOT NULL,
  `admit_age` int(3) NOT NULL,
  `admit_con` varchar(15) NOT NULL,
  `admit_bg` varchar(3) NOT NULL,
  `admit_rn` varchar(10) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `admit_date` date NOT NULL,
  `pet_des` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admit_pet`
--

INSERT INTO `admit_pet` (`admit_petid`, `admit_name`, `admit_age`, `admit_con`, `admit_bg`, `admit_rn`, `pet_id`, `admit_date`, `pet_des`) VALUES
(3, 'Narjes BOUGUERRA', 24, '+94 267900140', 'B+', '1', 3, '2022-06-29', 'douleur de tete'),
(4, 'nour nour', 35, '+94 123456789', 'AB+', '3', 5, '2022-06-29', 'yeux');

-- --------------------------------------------------------

--
-- Structure de la table `hospi_room`
--

CREATE TABLE `hospi_room` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `room_avilabl` varchar(20) DEFAULT NULL,
  `rc_time_mo` varchar(10) NOT NULL DEFAULT '11.30 AM',
  `rc_time_ev` varchar(10) DEFAULT '06.30 PM',
  `room_drid` int(11) DEFAULT NULL,
  `eroom_drid` int(11) DEFAULT NULL,
  `room_petID` varchar(11) DEFAULT 'No Patient'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hospi_room`
--

INSERT INTO `hospi_room` (`room_id`, `room_name`, `room_avilabl`, `rc_time_mo`, `rc_time_ev`, `room_drid`, `eroom_drid`, `room_petID`) VALUES
(1, 'Room No: 1', 'NAV', '11.30 AM', '06.30 PM', 1, 4, '3'),
(2, 'Room No: 2', 'AV', '11.30 AM', '06.30 PM', 1, 3, 'No Patient'),
(3, 'Room No: 3', 'NAV', '11.30 AM', '06.30 PM', 3, 3, '5'),
(4, 'Room No: 4', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient'),
(5, 'Room No: 5', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient'),
(6, 'Room No: 6', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient'),
(7, 'Room No: 7', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient'),
(8, 'Room No: 8', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient'),
(9, 'Room No: 9', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient'),
(10, 'Room No: 10', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient');

-- --------------------------------------------------------

--
-- Structure de la table `lvl2_admin`
--

CREATE TABLE `lvl2_admin` (
  `lvtwname` varchar(100) NOT NULL,
  `lvtwusern` varchar(100) NOT NULL,
  `lvtwemail` varchar(200) NOT NULL,
  `lvtwpass` varchar(50) NOT NULL,
  `lvtwid` int(11) NOT NULL,
  `lvtwcdate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lvl2_admin`
--

INSERT INTO `lvl2_admin` (`lvtwname`, `lvtwusern`, `lvtwemail`, `lvtwpass`, `lvtwid`, `lvtwcdate`) VALUES
('Jayendra', 'BasicAdmin', 'test@gmail.com', '202cb962ac59075b964b07152d234b70', 1, '2017-10-04'),
('safe', 'safe', 'safe@gmail.com', '9dfc8dce7280fd49fc6e7bf0436ed325', 2, '2022-06-29');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `pet_id` int(11) NOT NULL,
  `pet_reg_date` datetime DEFAULT current_timestamp(),
  `pet_fn` varchar(100) DEFAULT NULL,
  `pet_sn` varchar(100) DEFAULT NULL,
  `pet_addr` varchar(500) DEFAULT NULL,
  `pet_ac` varchar(3) DEFAULT '+94',
  `pet_con` int(10) DEFAULT NULL,
  `pet_em` varchar(1000) DEFAULT NULL,
  `pet_gen` varchar(10) DEFAULT NULL,
  `pet_bd` date DEFAULT NULL,
  `pet_age` int(3) DEFAULT NULL,
  `pet_bg` varchar(3) DEFAULT NULL,
  `Pet_opdid` int(11) DEFAULT NULL,
  `Insert_admunname` varchar(100) DEFAULT NULL,
  `Update_sadmunname` varchar(100) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`pet_id`, `pet_reg_date`, `pet_fn`, `pet_sn`, `pet_addr`, `pet_ac`, `pet_con`, `pet_em`, `pet_gen`, `pet_bd`, `pet_age`, `pet_bg`, `Pet_opdid`, `Insert_admunname`, `Update_sadmunname`, `update_date`) VALUES
(2, '2022-06-28 21:53:33', 'safe', 'safe', 'kairouan', '+94', 123456789, 'safe@gmail.com', 'Female', '2000-05-20', 22, 'B+', 1, 'superadmin', 'superadmin', '2022-06-29 02:25:45'),
(3, '2022-06-29 17:05:11', 'jous', 'jous', 'sfax', '+94', 123456789, 'jous@gmail.com', 'Female', '1998-01-30', 24, 'B+', 4, 'superadmin', NULL, NULL),
(4, '2022-06-29 18:34:50', 'abir', 'abir', 'tunis', '+94', 222856934, 'sebri@gmail.com', 'Male', '2022-06-14', 0, 'B-', 4, 'safe', NULL, NULL),
(5, '2022-06-29 18:48:17', 'nour', 'nour', 'kairouan', '+94', 123456789, 'nour99@gmail.com', 'Female', '1987-02-12', 35, 'AB+', 4, 'safe', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `pet_invo`
--

CREATE TABLE `pet_invo` (
  `invo_id` int(11) NOT NULL,
  `invo_Pet_name` varchar(500) NOT NULL,
  `invo_pet_id` int(100) NOT NULL DEFAULT 1,
  `invo_pet_age` int(3) NOT NULL,
  `invo_date` date NOT NULL,
  `medi_charge` int(10) NOT NULL,
  `doc_charge` int(10) NOT NULL,
  `hos_charge` int(10) NOT NULL DEFAULT 1500,
  `total_charge` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pet_invo`
--

INSERT INTO `pet_invo` (`invo_id`, `invo_Pet_name`, `invo_pet_id`, `invo_pet_age`, `invo_date`, `medi_charge`, `doc_charge`, `hos_charge`, `total_charge`) VALUES
(1, 'fouazi ', 0, 56, '2022-06-28', 1, 1, 500, 502),
(2, 'jous, 1, 24, '2022-06-29', 1, 1, 500, 502),
(3, 'atef ', 0, 27, '2022-06-29', 1, 1, 500, 502),
(4, 'Narjes BOUGUERRA', 3, 24, '2022-06-29', 1, 1, 500, 502),
(5, 'atef ', 0, 24, '2022-06-29', 1, 1, 500, 502),
(6, 'atef ', 0, 24, '2022-06-29', 1, 1, 500, 502),
(7, 'Narjes BOUGUERRA', 3, 24, '2022-06-29', 1, 1, 500, 502),
(8, 'nour nour', 5, 35, '2022-06-29', 1, 1, 500, 502);

-- --------------------------------------------------------

--
-- Structure de la table `staff`
--

CREATE TABLE `staff` (
  `staffID` int(11) NOT NULL,
  `smfname` varchar(50) NOT NULL,
  `smlname` varchar(50) NOT NULL,
  `smtype` varchar(20) NOT NULL,
  `smbd` date NOT NULL,
  `telcode` varchar(3) NOT NULL DEFAULT '+94',
  `smtel` varchar(15) NOT NULL,
  `smemail` varchar(200) NOT NULL,
  `smgender` varchar(6) NOT NULL,
  `smwoti` varchar(10) NOT NULL,
  `smaddr` varchar(600) NOT NULL,
  `instetd_by` varchar(100) DEFAULT NULL,
  `insterted_date` timestamp NULL DEFAULT current_timestamp(),
  `update_by` varchar(100) DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `staff`
--

INSERT INTO `staff` (`staffID`, `smfname`, `smlname`, `smtype`, `smbd`, `telcode`, `smtel`, `smemail`, `smgender`, `smwoti`, `smaddr`, `instetd_by`, `insterted_date`, `update_by`, `update_date`) VALUES
(1, 'atef', 'atef', 'Doctor', '1987-02-26', '+94', '123456789', 'doctor@gmail.com', 'Male', 'Full', 'sfax', 'superadmin', '2022-06-28 17:28:03', 'superadmin', '2022-06-29 00:40:39'),
(2, 'azer', 'azer', 'Nurse', '1999-03-12', '+94', '852741963', 'azer@gmail.com', 'Male', 'Morning', 'sousse', 'superadmin', '2022-06-28 20:02:25', 'superadmin', '2022-06-29 00:40:04'),
(3, 'houssem', 'rhif', 'Doctor', '1988-02-21', '+94', '123456789', 'houssem@gmail.com', 'Male', 'Full', 'sousse', 'superadmin', '2022-06-29 16:02:21', NULL, '2022-06-29 16:02:21'),
(4, 'mohamed', 'abelmasoud', 'Doctor', '1965-03-01', '+94', '203698521', 'mohamed@gmail.com', 'Male', 'Evening', 'sfax', 'superadmin', '2022-06-29 16:03:31', NULL, '2022-06-29 16:03:31');

-- --------------------------------------------------------

--
-- Structure de la table `sup_admin`
--

CREATE TABLE `sup_admin` (
  `sadid` int(11) NOT NULL,
  `sadiun` varchar(20) NOT NULL,
  `sadipw` varchar(500) NOT NULL,
  `sadem` varchar(50) NOT NULL,
  `saname` varchar(100) DEFAULT NULL,
  `cret_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sup_admin`
--

INSERT INTO `sup_admin` (`sadid`, `sadiun`, `sadipw`, `sadem`, `saname`, `cret_date`) VALUES
(3, 'superAdmin', '202cb962ac59075b964b07152d234b70', 'bouguerra.narjes99@gmail.com', 'superAdmin', '2023-02-26 18:41:53'),
(2, 'nour', 'ccbc1770bb10486495d127a7d65c252b', 'nour@gmail.com', 'nour', '2022-06-29 22:50:34');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admit_invo_db`
--
ALTER TABLE `admit_invo_db`
  ADD PRIMARY KEY (`Invo_no`),
  ADD KEY `pet_no` (`pet_no`);

--
-- Index pour la table `admit_pet`
--
ALTER TABLE `admit_pet`
  ADD PRIMARY KEY (`admit_petid`),
  ADD KEY `pet_id` (`pet_id`);

--
-- Index pour la table `hospi_room`
--
ALTER TABLE `hospi_room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_drid` (`room_drid`),
  ADD KEY `eroom_id` (`eroom_drid`),
  ADD KEY `room_petID` (`room_petID`);

--
-- Index pour la table `lvl2_admin`
--
ALTER TABLE `lvl2_admin`
  ADD PRIMARY KEY (`lvtwid`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pet_id`),
  ADD KEY `Pet_opdid` (`Pet_opdid`);

--
-- Index pour la table `pet_invo`
--
ALTER TABLE `pet_invo`
  ADD PRIMARY KEY (`invo_id`),
  ADD KEY `invo_pet_id` (`invo_pet_id`);

--
-- Index pour la table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`);

--
-- Index pour la table `sup_admin`
--
ALTER TABLE `sup_admin`
  ADD PRIMARY KEY (`sadid`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admit_invo_db`
--
ALTER TABLE `admit_invo_db`
  MODIFY `Invo_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `admit_pet`
--
ALTER TABLE `admit_pet`
  MODIFY `admit_petid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `hospi_room`
--
ALTER TABLE `hospi_room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `lvl2_admin`
--
ALTER TABLE `lvl2_admin`
  MODIFY `lvtwid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `pet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `pet_invo`
--
ALTER TABLE `pet_invo`
  MODIFY `invo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `sup_admin`
--
ALTER TABLE `sup_admin`
  MODIFY `sadid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
