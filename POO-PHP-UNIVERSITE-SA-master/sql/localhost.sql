-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 30 Juin 2019 à 13:03
-- Version du serveur :  5.7.26-0ubuntu0.16.04.1
-- Version de PHP :  7.0.33-0ubuntu0.16.04.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Universite`
--
CREATE DATABASE IF NOT EXISTS `Universite` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `Universite`;

-- --------------------------------------------------------

--
-- Structure de la table `Batiment`
--

CREATE TABLE `Batiment` (
  `ID_BATIMENT` int(11) NOT NULL,
  `NOM_BAT` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Batiment`
--

INSERT INTO `Batiment` (`ID_BATIMENT`, `NOM_BAT`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'D'),
(4, 'E'),
(5, 'F'),
(6, 'E');

-- --------------------------------------------------------

--
-- Structure de la table `Boursier`
--

CREATE TABLE `Boursier` (
  `ID_ETUDIANT` int(11) NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Boursier`
--

INSERT INTO `Boursier` (`ID_ETUDIANT`, `id_type`) VALUES
(189, 1),
(192, 1),
(193, 1),
(197, 1),
(209, 1),
(219, 1),
(226, 1),
(227, 1),
(179, 2),
(180, 2),
(182, 2),
(184, 2),
(187, 2),
(188, 2),
(190, 2),
(191, 2),
(194, 2),
(195, 2),
(198, 2),
(199, 2),
(201, 2),
(207, 2),
(210, 2),
(212, 2),
(213, 2),
(215, 2),
(216, 2),
(217, 2),
(218, 2),
(220, 2),
(223, 2),
(224, 2),
(225, 2),
(229, 2),
(230, 2);

-- --------------------------------------------------------

--
-- Structure de la table `Chambre`
--

CREATE TABLE `Chambre` (
  `NUM_CHAMBRE` int(11) NOT NULL,
  `ID_BATIMENT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Chambre`
--

INSERT INTO `Chambre` (`NUM_CHAMBRE`, `ID_BATIMENT`) VALUES
(1, 2),
(3, 3),
(8, 3),
(2, 4),
(4, 4),
(5, 5),
(6, 6),
(7, 6);

-- --------------------------------------------------------

--
-- Structure de la table `Etudiant`
--

CREATE TABLE `Etudiant` (
  `ID_ETUDIANT` int(11) NOT NULL,
  `MATRICULE` varchar(10) NOT NULL,
  `NOMETUDIANT` varchar(30) NOT NULL,
  `PRENOMETUDIANT` varchar(30) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `TELEPHONE` int(11) NOT NULL,
  `DATE_DE_NAISSANCE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Etudiant`
--

INSERT INTO `Etudiant` (`ID_ETUDIANT`, `MATRICULE`, `NOMETUDIANT`, `PRENOMETUDIANT`, `EMAIL`, `TELEPHONE`, `DATE_DE_NAISSANCE`) VALUES
(179, 'RK2014976', 'Camara', 'Aboubacar', 'babacamara91@gmail.com', 778584822, '1991-11-23'),
(180, 'CI202079', 'Faye', 'Astou', 'fayeastou@gmail.com', 775765479, '1951-09-11'),
(181, 'KP201016', 'Diouf', 'Cheikh', 'cheikh@gmail.com', 777206002, '1975-10-12'),
(182, 'ZQ2010188', 'Fall', 'Soumaiya', 'SoumaFall@gmail.com', 774156238, '1995-04-01'),
(183, 'DE2018136', 'Bah', 'Rama', 'ramcess@gmail.com', 778523641, '1995-01-04'),
(184, 'SX2014461', 'GUEYE', 'Ababacar', 'sadikh@gmail.com', 778412356, '1998-05-04'),
(185, 'XL2013206', 'Ndiaye Lokho', 'Bitty', 'bitty@gmail.com', 771235689, '1999-08-07'),
(187, 'OT2019421', 'Wagne', 'Babacar', 'wagne@gmail.com', 775765488, '2000-05-01'),
(188, 'HT2019587', 'GuissÃ©', 'Ibrahima', 'guisszo@gmail.com', 778963214, '1992-04-05'),
(189, 'KB2019147', 'Fall', 'Ngagne', 'ngagne@gmail.com', 771234586, '1993-08-07'),
(190, '2019260JZ', 'Lo', 'Mama', 'lomama@gmail.com', 774125896, '1995-04-05'),
(191, '2019691KZ', 'maal', 'modou', 'maal@gmail.com', 771234567, '1998-05-04'),
(192, '2019325XL', 'Mbaye', 'Mbacke', 'mbaye@gmail.com', 778523691, '1999-05-04'),
(193, '2019338TX', 'Senghor', 'Coly', 'coly@gmail.com', 778523694, '1999-04-04'),
(194, '2019108TB', 'Seck', 'Aliou', 'seck@gmail.com', 774102563, '1995-08-04'),
(195, '2019563BN', 'kone', 'laye', 'konelaye@gmail.com', 774123698, '1996-09-08'),
(196, '2019518XD', 'kary', 'Pape', 'kary@gmail.com', 774153698, '1998-05-04'),
(197, '2019788LX', 'Sy', 'Alima', 'alima@gmail.com', 778419632, '1995-05-07'),
(198, '2019850QD', 'Diom', 'Hawa', 'diom@gmail.com', 771896425, '1994-03-05'),
(199, '2019652NP', 'Diagne', 'Ndioba', 'ndioba@gmail.com', 778485698, '1999-08-04'),
(200, '2019433AT', 'Ndiaye', 'Kimora', 'guissendiaye@gmail.com', 771589643, '1998-06-24'),
(201, '2019218RX', 'Loum', 'Khady', 'loum@gmail.com', 774123659, '1998-04-04'),
(202, '2019859GY', 'Balde', 'Lama', 'lamabalde@gmail.com', 774153695, '1993-05-04'),
(203, '2019439HF', 'camara', 'Fatoumata', 'mata@gmail.com', 778456321, '1994-04-05'),
(205, '2019927LU', 'DramÃ©', 'Makenzy', 'makenzy@gmail.com', 774562314, '1988-07-04'),
(206, '2019757YK', 'Ngom', 'Vieux', 'elemine@gmail.com', 774859632, '1992-08-07'),
(207, '2019534WF', 'hksdjk', 'kfjzb', 'kfsf@gmail.com', 444461, '1998-05-04'),
(209, '2019350NJ', 'rrrrrrrrr', 'fffffff', 'zdkl@gmail.com', 778459632, '1998-05-04'),
(210, '2019343HB', 'Diallo', 'Binetou', 'binetou@gmail.com', 774562310, '1995-03-28'),
(211, '2019308RU', 'Ndiaye', 'Hawa', 'hawa@gmail.com', 774474896, '1994-08-07'),
(212, '2019355FZ', 'Camara', 'Pape Diene', 'dienecamara@gmail.com', 778914632, '1998-05-04'),
(213, '2019869RV', 'Cooper', 'Bradley', 'cooper@gmail.com', 770339685, '1995-05-04'),
(214, '2019846RY', 'slsasj', 'jsla', 'asas@gmail.com', 778456224, '1998-05-04'),
(215, '2019160ML', 'wallll', 'waly', 'waly@gmail.com', 770052314, '1996-04-08'),
(216, '2019234AW', 'sow', 'amadou', 'sowamadou@gmail.com', 760315489, '1993-05-15'),
(217, '2019786HZ', 'esswxx', 'yghtv', 'mpolk@gmail.com', 120251140, '1994-08-05'),
(218, '2019412TY', 'ModY Faya', 'Ndeye AWA', 'awamody@gmail.com', 789514362, '1991-12-12'),
(219, '2019543ZO', 'Ali', 'legend', 'alison@gmail.com', 714569834, '1989-08-07'),
(220, '2019722ZB', 'kaire', 'salah', 'salhs@gmail.com', 258963, '1992-01-05'),
(221, '2019930KL', 'ericksen', 'crisyian', 'crisdd@gmail.com', 250147795, '1991-05-04'),
(222, '2019879YF', 'Toure', 'kolo', 'zolkol@gmail.com', 65412308, '1997-11-08'),
(223, '2019517JX', 'adele', 'love', 'adellove@gmail.com', 4635622, '2004-05-04'),
(224, '2019611OA', 'james', 'arthur', 'jamesarthur@gmail.com', 330012255, '1992-05-15'),
(225, '2019767QR', 'scoot', 'calum', 'scottcal@gmail.com', 66884422, '1990-02-04'),
(226, '2019515VA', 'sia', 'pink', 'siapk@gmail.com', 88526314, '1993-04-08'),
(227, '2019536PV', 'yite', 'niit', 'nittyite@gmail.com', 48866332, '1998-05-04'),
(228, '2019776MJ', 'niass', 'baye', 'bniass@gmail.com', 11228853, '2018-08-07'),
(229, '2019773VD', 'Irene', 'Toubia', 'irene@gmail.com', 760255412, '1996-01-01'),
(230, '2019511RV', 'Lo', 'Mame', 'lomame@gmail.com', 763012000, '1996-04-05');

-- --------------------------------------------------------

--
-- Structure de la table `Loge`
--

CREATE TABLE `Loge` (
  `ID_ETUDIANT` int(11) NOT NULL,
  `NUM_CHAMBRE` int(255) NOT NULL,
  `id_type` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Loge`
--

INSERT INTO `Loge` (`ID_ETUDIANT`, `NUM_CHAMBRE`, `id_type`) VALUES
(179, 1, 2),
(184, 2, 2),
(188, 5, 2),
(195, 5, 2),
(198, 4, 2),
(223, 8, 2),
(225, 7, 2),
(229, 5, 2);

-- --------------------------------------------------------

--
-- Structure de la table `Non_Boursier`
--

CREATE TABLE `Non_Boursier` (
  `ID_ETUDIANT` int(11) NOT NULL,
  `ADRESSE` varchar(93) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Non_Boursier`
--

INSERT INTO `Non_Boursier` (`ID_ETUDIANT`, `ADRESSE`) VALUES
(181, 'Keur Massar'),
(183, 'Parcelle'),
(185, 'Keur Massar'),
(196, 'Dakar'),
(200, 'ben tally'),
(202, ' Sante km'),
(203, 'Adresse'),
(205, 'Adresse'),
(206, 'keur massar'),
(214, 'sicap'),
(221, 'england'),
(228, 'sonatel academy');

-- --------------------------------------------------------

--
-- Structure de la table `Type`
--

CREATE TABLE `Type` (
  `id_type` int(11) NOT NULL,
  `libelle` varchar(30) NOT NULL,
  `montant` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Type`
--

INSERT INTO `Type` (`id_type`, `libelle`, `montant`) VALUES
(1, 'demi', 20000),
(2, 'entiere', 40000);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Batiment`
--
ALTER TABLE `Batiment`
  ADD PRIMARY KEY (`ID_BATIMENT`);

--
-- Index pour la table `Boursier`
--
ALTER TABLE `Boursier`
  ADD PRIMARY KEY (`ID_ETUDIANT`),
  ADD KEY `ID_ETUDIANT` (`ID_ETUDIANT`),
  ADD KEY `id_type` (`id_type`);

--
-- Index pour la table `Chambre`
--
ALTER TABLE `Chambre`
  ADD PRIMARY KEY (`NUM_CHAMBRE`),
  ADD KEY `FK_Chambre_Batiment` (`ID_BATIMENT`);

--
-- Index pour la table `Etudiant`
--
ALTER TABLE `Etudiant`
  ADD PRIMARY KEY (`ID_ETUDIANT`),
  ADD UNIQUE KEY `MATRICULE` (`MATRICULE`),
  ADD UNIQUE KEY `MATRICULE_2` (`MATRICULE`),
  ADD UNIQUE KEY `TELEPHONE` (`TELEPHONE`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Index pour la table `Loge`
--
ALTER TABLE `Loge`
  ADD PRIMARY KEY (`ID_ETUDIANT`),
  ADD KEY `FK_Loge_Chambre0` (`NUM_CHAMBRE`),
  ADD KEY `ID_ETUDIANT` (`ID_ETUDIANT`),
  ADD KEY `id_type` (`id_type`);

--
-- Index pour la table `Non_Boursier`
--
ALTER TABLE `Non_Boursier`
  ADD PRIMARY KEY (`ID_ETUDIANT`),
  ADD KEY `ID_ETUDIANT` (`ID_ETUDIANT`);

--
-- Index pour la table `Type`
--
ALTER TABLE `Type`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Batiment`
--
ALTER TABLE `Batiment`
  MODIFY `ID_BATIMENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `Chambre`
--
ALTER TABLE `Chambre`
  MODIFY `NUM_CHAMBRE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `Etudiant`
--
ALTER TABLE `Etudiant`
  MODIFY `ID_ETUDIANT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT pour la table `Type`
--
ALTER TABLE `Type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Boursier`
--
ALTER TABLE `Boursier`
  ADD CONSTRAINT `Boursier_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `Type` (`id_type`),
  ADD CONSTRAINT `FK_Boursier_Etudiant` FOREIGN KEY (`ID_ETUDIANT`) REFERENCES `Etudiant` (`ID_ETUDIANT`);

--
-- Contraintes pour la table `Chambre`
--
ALTER TABLE `Chambre`
  ADD CONSTRAINT `FK_Chambre_Batiment` FOREIGN KEY (`ID_BATIMENT`) REFERENCES `Batiment` (`ID_BATIMENT`);

--
-- Contraintes pour la table `Loge`
--
ALTER TABLE `Loge`
  ADD CONSTRAINT `FK_Loge_Boursier` FOREIGN KEY (`ID_ETUDIANT`) REFERENCES `Boursier` (`ID_ETUDIANT`),
  ADD CONSTRAINT `FK_Loge_Chambre0` FOREIGN KEY (`NUM_CHAMBRE`) REFERENCES `Chambre` (`NUM_CHAMBRE`),
  ADD CONSTRAINT `FK_Loge_type` FOREIGN KEY (`id_type`) REFERENCES `Type` (`id_type`);

--
-- Contraintes pour la table `Non_Boursier`
--
ALTER TABLE `Non_Boursier`
  ADD CONSTRAINT `FK_Non_Boursier_Etudiant` FOREIGN KEY (`ID_ETUDIANT`) REFERENCES `Etudiant` (`ID_ETUDIANT`);
--
-- Base de données :  `agenda`
--
CREATE DATABASE IF NOT EXISTS `agenda` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `agenda`;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `tel` char(10) NOT NULL,
  `mel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`id`, `nom`, `prenom`, `tel`, `mel`) VALUES
(1, 'camara', 'babacar', '778584822', 'babacamara91@gmail.com'),
(2, 'faye', 'astou', '775765479', 'astoufaye@gmail.com'),
(3, 'sow', 'jam', '774412369', 'jamsow@gmail.com');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Base de données :  `employee`
--
CREATE DATABASE IF NOT EXISTS `employee` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `employee`;

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `employees`
--

INSERT INTO `employees` (`id`, `name`, `city`, `designation`) VALUES
(1, 'JOHN DOE', 'LONDON', 'PROJECT MANAGER'),
(2, 'JACK SMITH', 'NEW YORK', 'SALES MANAGER');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Base de données :  `essay`
--
CREATE DATABASE IF NOT EXISTS `essay` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `essay`;

-- --------------------------------------------------------

--
-- Structure de la table `creation`
--

CREATE TABLE `creation` (
  `id` int(11) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`) VALUES
(1, 'Chris', 'chris@gmail.com', '778952363'),
(2, 'Chris', 'chris@gmail.com', '778952363'),
(3, 'baba', 'babacamara91@gmail.com', '778584822');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `creation`
--
ALTER TABLE `creation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `creation`
--
ALTER TABLE `creation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Base de données :  `mydatabase`
--
CREATE DATABASE IF NOT EXISTS `mydatabase` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mydatabase`;

-- --------------------------------------------------------

--
-- Structure de la table `mytable`
--

CREATE TABLE `mytable` (
  `id` int(11) NOT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`);
--
-- Base de données :  `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Contenu de la table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{"angular_direct":"direct","snap_to_grid":"off","relation_lines":"true"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Contenu de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"Universite","table":"Etudiant"},{"db":"Universite","table":"Loge"},{"db":"Universite","table":"Boursier"},{"db":"Universite","table":"Non_Boursier"},{"db":"Universite","table":"Chambre"},{"db":"Universite","table":"Type"},{"db":"Universite","table":"Batiment"},{"db":"agenda","table":"contact"},{"db":"mydatabase","table":"mytable"},{"db":"essay","table":"customers"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Contenu de la table `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('Universite', 'Loge', 'id_type', 'Universite', 'Loge', 'id_type');

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Contenu de la table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'Universite', 'Chambre', '{"sorted_col":"`Chambre`.`NUM_CHAMBRE`  ASC"}', '2019-06-26 03:15:02'),
('root', 'Universite', 'Etudiant', '{"sorted_col":"`Etudiant`.`PRENOMETUDIANT` ASC"}', '2019-06-27 18:55:43'),
('root', 'Universite', 'Type', '{"sorted_col":"`Type`.`id_type`  DESC"}', '2019-06-25 07:48:18');

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Contenu de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-03-06 11:33:35', '{"lang":"fr","collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables exportées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Base de données :  `tableau`
--
CREATE DATABASE IF NOT EXISTS `tableau` DEFAULT CHARACTER SET utf16 COLLATE utf16_general_ci;
USE `tableau`;

-- --------------------------------------------------------

--
-- Structure de la table `tab`
--

CREATE TABLE `tab` (
  `id` int(10) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `ville` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Contenu de la table `tab`
--

INSERT INTO `tab` (`id`, `prenom`, `nom`, `ville`) VALUES
(1, 'Pierre', 'Dupond', 'Paris'),
(2, 'Babacar', 'camara', 'Dakar'),
(3, 'Ali', 'Faye', 'Londre'),
(4, 'Aissata', 'Ba', 'Conackry'),
(5, 'Paolo', 'Siz', 'Rome');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `tab`
--
ALTER TABLE `tab`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `tab`
--
ALTER TABLE `tab`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;--
-- Base de données :  `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(150) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `mail` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `mail`) VALUES
(1, 'Giraud', 'Pierre', 'pierre.giraud@gmail.com'),
(2, 'Camara', 'Babacar', 'babacamara91@gmail.com');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Base de données :  `test1`
--
CREATE DATABASE IF NOT EXISTS `test1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test1`;
--
-- Base de données :  `test2`
--
CREATE DATABASE IF NOT EXISTS `test2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test2`;

-- --------------------------------------------------------

--
-- Structure de la table `Visiteurs`
--

CREATE TABLE `Visiteurs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Visiteurs`
--
ALTER TABLE `Visiteurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Visiteurs`
--
ALTER TABLE `Visiteurs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
