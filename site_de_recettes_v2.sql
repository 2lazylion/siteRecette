-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 29 Septembre 2020 à 03:05
-- Version du serveur :  5.6.20-log
-- Version de PHP :  5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `site_de_recettes`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Contenu de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add preference', 7, 'add_preference'),
(26, 'Can change preference', 7, 'change_preference'),
(27, 'Can delete preference', 7, 'delete_preference'),
(28, 'Can view preference', 7, 'view_preference'),
(29, 'Can add ingredient', 8, 'add_ingredient'),
(30, 'Can change ingredient', 8, 'change_ingredient'),
(31, 'Can delete ingredient', 8, 'delete_ingredient'),
(32, 'Can view ingredient', 8, 'view_ingredient'),
(33, 'Can add recette', 9, 'add_recette'),
(34, 'Can change recette', 9, 'change_recette'),
(35, 'Can delete recette', 9, 'delete_recette'),
(36, 'Can view recette', 9, 'view_recette'),
(37, 'Can add user profile', 10, 'add_userprofile'),
(38, 'Can change user profile', 10, 'change_userprofile'),
(39, 'Can delete user profile', 10, 'delete_userprofile'),
(40, 'Can view user profile', 10, 'view_userprofile'),
(41, 'Can add ingredient recette', 11, 'add_ingredientrecette'),
(42, 'Can change ingredient recette', 11, 'change_ingredientrecette'),
(43, 'Can delete ingredient recette', 11, 'delete_ingredientrecette'),
(44, 'Can view ingredient recette', 11, 'view_ingredientrecette'),
(45, 'Can add etape preparation', 12, 'add_etapepreparation'),
(46, 'Can change etape preparation', 12, 'change_etapepreparation'),
(47, 'Can delete etape preparation', 12, 'delete_etapepreparation'),
(48, 'Can view etape preparation', 12, 'view_etapepreparation');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$jiaaeKqCkjNF$No3AoE4bDoY578XfWEhA8fEmY44xG51yvO9E0sCZvYU=', '2020-09-23 13:43:19.392319', 1, 'edward', '', '', '', 1, 1, '2020-09-23 01:29:03.579994'),
(2, 'pbkdf2_sha256$216000$8R9wIMEdP8Gu$Pf5v92fuDLRMPzpG1KN3iY07kfC54zGyt4nSh4sDtes=', '2020-09-23 13:40:24.907209', 0, 'testeur', 'testeur1', '', '', 1, 1, '2020-09-23 01:31:17.000000');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Contenu de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-09-23 01:31:17.403411', '2', 'testeur', 1, '[{"added": {}}]', 4, 1),
(2, '2020-09-23 01:32:09.014201', '2', 'testeur', 2, '[{"changed": {"fields": ["First name", "Staff status"]}}]', 4, 1),
(3, '2020-09-23 12:46:54.489146', '1', 'Ingredient object (1)', 1, '[{"added": {}}]', 8, 1),
(4, '2020-09-23 12:47:17.526062', '2', 'Ingredient object (2)', 1, '[{"added": {}}]', 8, 1),
(5, '2020-09-23 12:47:26.369900', '3', 'Ingredient object (3)', 1, '[{"added": {}}]', 8, 1),
(6, '2020-09-23 12:47:36.974772', '4', 'Ingredient object (4)', 1, '[{"added": {}}]', 8, 1),
(7, '2020-09-23 12:48:02.702004', '5', 'Ingredient object (5)', 1, '[{"added": {}}]', 8, 1),
(8, '2020-09-23 12:48:24.697342', '6', 'Ingredient object (6)', 1, '[{"added": {}}]', 8, 1),
(9, '2020-09-23 15:09:32.535233', '7', 'ail', 1, '[{"added": {}}]', 8, 1),
(10, '2020-09-23 16:37:10.895149', '8', 'sauce hoison', 1, '[{"added": {}}]', 8, 1),
(11, '2020-09-23 16:37:33.594894', '9', 'piment de Cayenne broyé', 1, '[{"added": {}}]', 8, 1),
(12, '2020-09-23 16:38:02.029392', '10', 'vin blanc', 1, '[{"added": {}}]', 8, 1),
(13, '2020-09-23 16:39:29.791855', '5', 'poulet', 2, '[{"changed": {"fields": ["NomIngredient"]}}]', 8, 1),
(14, '2020-09-29 01:19:59.529311', '2', '3 c. à soupe', 1, '[{"added": {}}]', 11, 1),
(15, '2020-09-29 02:26:47.308142', '1', 'sauté asiatique légumes et poulet', 1, '[{"added": {}}]', 9, 1),
(16, '2020-09-29 02:27:52.941650', '1', '3.00 c. à soupe huile de tournesol', 3, '', 11, 1),
(17, '2020-09-29 02:28:19.145535', '2', '3.00 c. à soupe huile de tournesol', 2, '[{"changed": {"fields": ["Recette"]}}]', 11, 1),
(18, '2020-09-29 02:28:44.601983', '11', 'piment vert', 1, '[{"added": {}}]', 8, 1),
(19, '2020-09-29 02:44:08.287400', '6', '1 piment vert', 1, '[{"added": {}}]', 11, 1),
(20, '2020-09-29 02:44:50.372624', '7', '1 piment rouge', 1, '[{"added": {}}]', 11, 1),
(21, '2020-09-29 02:44:56.073977', '8', '2 oignons', 1, '[{"added": {}}]', 11, 1),
(22, '2020-09-29 02:46:44.191033', '9', '8 oz champignons', 1, '[{"added": {}}]', 11, 1),
(23, '2020-09-29 02:47:00.745749', '10', '2 poitrines de poulet', 1, '[{"added": {}}]', 11, 1),
(24, '2020-09-29 02:47:25.307796', '11', '2 c. à soupe gingembre', 1, '[{"added": {}}]', 11, 1),
(25, '2020-09-29 02:47:59.556116', '12', 'gousses d''ail', 1, '[{"added": {}}]', 8, 1),
(26, '2020-09-29 02:48:05.127479', '12', '2 gousses d''ail', 1, '[{"added": {}}]', 11, 1),
(27, '2020-09-29 02:48:24.969238', '13', '4 c. à soupe sauce hoison', 1, '[{"added": {}}]', 11, 1),
(28, '2020-09-29 02:48:55.359051', '14', '0.25 c. à thé piment de Cayenne broyé', 1, '[{"added": {}}]', 11, 1),
(29, '2020-09-29 02:49:12.061267', '15', '0.5 tasse vin blanc', 1, '[{"added": {}}]', 11, 1),
(30, '2020-09-29 02:49:55.335762', '13', 'arachides grillées, broyées', 1, '[{"added": {}}]', 8, 1),
(31, '2020-09-29 02:50:09.867268', '16', '0.25 tasse arachides grillées, broyées', 1, '[{"added": {}}]', 11, 1),
(32, '2020-09-29 02:59:02.788060', '1', 'EtapePreparation object (1)', 1, '[{"added": {}}]', 12, 1),
(33, '2020-09-29 03:03:16.234325', '3', 'Étape 2 - sauté asiatique légumes et poulet', 1, '[{"added": {}}]', 12, 1),
(34, '2020-09-29 03:03:36.084967', '4', 'Étape 3 - sauté asiatique légumes et poulet', 1, '[{"added": {}}]', 12, 1),
(35, '2020-09-29 03:03:48.742398', '5', 'Étape 4 - sauté asiatique légumes et poulet', 1, '[{"added": {}}]', 12, 1),
(36, '2020-09-29 03:03:56.993714', '6', 'Étape 5 - sauté asiatique légumes et poulet', 1, '[{"added": {}}]', 12, 1),
(37, '2020-09-29 03:04:12.217699', '7', 'Étape 6 - sauté asiatique légumes et poulet', 1, '[{"added": {}}]', 12, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'preferences', 'preference'),
(8, 'recette', 'ingredient'),
(9, 'recette', 'recette'),
(10, 'UserProfile', 'userprofile'),
(11, 'recette', 'ingredientrecette'),
(12, 'recette', 'etapepreparation');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Contenu de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'recette', '0001_initial', '2020-09-19 04:22:30.526356'),
(2, 'preferences', '0001_initial', '2020-09-19 04:22:30.572393'),
(3, 'contenttypes', '0001_initial', '2020-09-19 04:22:30.608409'),
(4, 'auth', '0001_initial', '2020-09-19 04:22:30.675409'),
(5, 'UserProfile', '0001_initial', '2020-09-19 04:22:30.840467'),
(6, 'admin', '0001_initial', '2020-09-19 04:22:30.882481'),
(7, 'admin', '0002_logentry_remove_auto_add', '2020-09-19 04:22:30.924493'),
(8, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-19 04:22:30.930496'),
(9, 'contenttypes', '0002_remove_content_type_name', '2020-09-19 04:22:30.957508'),
(10, 'auth', '0002_alter_permission_name_max_length', '2020-09-19 04:22:30.971523'),
(11, 'auth', '0003_alter_user_email_max_length', '2020-09-19 04:22:30.983535'),
(12, 'auth', '0004_alter_user_username_opts', '2020-09-19 04:22:30.988535'),
(13, 'auth', '0005_alter_user_last_login_null', '2020-09-19 04:22:31.002535'),
(14, 'auth', '0006_require_contenttypes_0002', '2020-09-19 04:22:31.004538'),
(15, 'auth', '0007_alter_validators_add_error_messages', '2020-09-19 04:22:31.009537'),
(16, 'auth', '0008_alter_user_username_max_length', '2020-09-19 04:22:31.023536'),
(17, 'auth', '0009_alter_user_last_name_max_length', '2020-09-19 04:22:31.036535'),
(18, 'auth', '0010_alter_group_name_max_length', '2020-09-19 04:22:31.050535'),
(19, 'auth', '0011_update_proxy_permissions', '2020-09-19 04:22:31.056536'),
(20, 'auth', '0012_alter_user_first_name_max_length', '2020-09-19 04:22:31.069548'),
(21, 'sessions', '0001_initial', '2020-09-19 04:22:31.081548'),
(22, 'recette', '0002_auto_20200923_0902', '2020-09-23 13:02:14.374914'),
(23, 'preferences', '0002_auto_20200923_0917', '2020-09-23 13:17:54.910349'),
(24, 'recette', '0003_auto_20200923_0917', '2020-09-23 13:17:54.942349'),
(25, 'recette', '0004_auto_20200923_1111', '2020-09-23 15:11:18.207253'),
(26, 'recette', '0005_auto_20200923_1222', '2020-09-23 16:22:22.732429'),
(27, 'recette', '0006_ingredientrecette_metrique', '2020-09-23 16:29:16.211154'),
(28, 'recette', '0007_auto_20200923_1300', '2020-09-23 17:00:58.622788'),
(29, 'recette', '0008_auto_20200928_2043', '2020-09-29 00:43:34.567683'),
(30, 'recette', '0009_auto_20200928_2114', '2020-09-29 01:14:41.790329'),
(31, 'recette', '0010_auto_20200928_2145', '2020-09-29 01:45:11.681836'),
(32, 'recette', '0011_auto_20200928_2146', '2020-09-29 01:46:59.696208'),
(33, 'recette', '0012_etapepreparation', '2020-09-29 02:23:47.088246'),
(34, 'recette', '0013_remove_recette_préparation', '2020-09-29 02:24:41.540576'),
(35, 'recette', '0014_auto_20200928_2302', '2020-09-29 03:02:21.026252');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5zdjwb48998s7lgzst7x6y4ndmg98atb', 'e30:1kKujX:z_4iW9iPKWHxDdoC1BY7DMTPWeb5FON6rMMsfEEgXK4', '2020-10-07 02:42:15.385627'),
('tzr8lks85ltgj9184dtiitkwti6ntccz', 'e30:1kKuls:9omDZFBHigtTs5aRON17UGBJuZA9hXmgmUE4TaPWPWY', '2020-10-07 02:44:40.106723'),
('n2od5fegkwd7ga0uq90d6vexqcqu0voi', '.eJxVjDsOgzAQRO_iOrL8N6RMzxmsXe86kERYwlBFuXtAoki60bw38xYJtnVMW-MlTSSuQovLb4eQnzwfgB4w36vMdV6XCeWhyJM2OVTi1-10_w5GaOO-DrHH3JP1AcFnHxRRNOCM3mMovUGOBVl1WnfaRa_Id2DJcHGWChctPl_YfjfV:1kL53H:4vqdxjG0dkm591X4gnvpmPWBzAQ97aL4uVJAY0FeAxA', '2020-10-07 13:43:19.393321');

-- --------------------------------------------------------

--
-- Structure de la table `preferences_preference`
--

CREATE TABLE IF NOT EXISTS `preferences_preference` (
`id` int(11) NOT NULL,
  `aimeOuPas` tinyint(1) NOT NULL,
  `ingredients_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `recette_etapepreparation`
--

CREATE TABLE IF NOT EXISTS `recette_etapepreparation` (
`id` int(11) NOT NULL,
  `no_etape` int(11) NOT NULL,
  `etape` longtext NOT NULL,
  `recette_id` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `recette_etapepreparation`
--

INSERT INTO `recette_etapepreparation` (`id`, `no_etape`, `etape`, `recette_id`) VALUES
(1, 1, 'Dans un wok, chauffer l''huile à feu élevé.', 1),
(2, 2, 'Faire revenir les légumes environ 4 minutes. Retirer du wok. Égoutter. Réserver.', 1),
(3, 2, 'Faire revenir les légumes environ 4 minutes. Retirer du wok. Égoutter. Réserver.', 1),
(4, 3, 'Réduire le feu à moyen-élevé. Faire sauter le poulet environ 4 minutes. Retirer. Réserver.', 1),
(5, 4, 'Faire revenir le gingembre et l''ail une minute. Ajouter la sauce hoisin, le vin et le piment de Cayenne. Faire réduire pendant 2 à 3 minutes.', 1),
(6, 5, 'Remettre les légumes et le poulet. Réchauffer 2 minutes en remuant. Ajouter les arachides.', 1),
(7, 6, 'Servir sur des pâtes chinoises ou avec du riz.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `recette_ingredient`
--

CREATE TABLE IF NOT EXISTS `recette_ingredient` (
`id` int(11) NOT NULL,
  `nomIngredient` varchar(50) NOT NULL,
  `famille_alimentaire` varchar(25) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `recette_ingredient`
--

INSERT INTO `recette_ingredient` (`id`, `nomIngredient`, `famille_alimentaire`) VALUES
(1, 'huile de tournesol', 'matiere grasse'),
(2, 'piment rouge', 'fruit/legume'),
(3, 'oignons', 'fruit/legume'),
(4, 'champignons', 'fruit/legume'),
(5, 'poulet', 'viande'),
(6, 'gingembre', 'fruit/legume'),
(7, 'ail', 'assaisonnement'),
(8, 'sauce hoison', 'sauce'),
(9, 'piment de Cayenne broyé', 'assaisonnement'),
(10, 'vin blanc', 'boissson'),
(11, 'piment vert', 'fruit/legume'),
(12, 'gousses d''ail', 'assaisonnement'),
(13, 'arachides grillées, broyées', 'proteine vegetarienne');

-- --------------------------------------------------------

--
-- Structure de la table `recette_ingredientrecette`
--

CREATE TABLE IF NOT EXISTS `recette_ingredientrecette` (
`id` int(11) NOT NULL,
  `quantite` decimal(4,2) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `coupe_de_viande` varchar(25) DEFAULT NULL,
  `mesure` varchar(25) DEFAULT NULL,
  `recette_id` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `recette_ingredientrecette`
--

INSERT INTO `recette_ingredientrecette` (`id`, `quantite`, `ingredient_id`, `coupe_de_viande`, `mesure`, `recette_id`) VALUES
(2, '3.00', 1, NULL, 'c. à soupe', 1),
(3, '1.00', 11, NULL, NULL, 1),
(4, '1.00', 11, NULL, NULL, 1),
(5, '1.00', 11, NULL, NULL, 1),
(6, '1.00', 11, NULL, NULL, 1),
(7, '1.00', 2, NULL, NULL, 1),
(8, '2.00', 3, NULL, NULL, 1),
(9, '8.00', 4, NULL, 'oz', 1),
(10, '2.00', 5, 'poitrines', NULL, 1),
(11, '2.00', 6, NULL, 'c. à soupe', 1),
(12, '2.00', 12, NULL, NULL, 1),
(13, '4.00', 8, NULL, 'c. à soupe', 1),
(14, '0.25', 9, NULL, 'c. à thé', 1),
(15, '0.50', 10, NULL, 'tasse', 1),
(16, '0.25', 13, NULL, 'tasse', 1);

-- --------------------------------------------------------

--
-- Structure de la table `recette_recette`
--

CREATE TABLE IF NOT EXISTS `recette_recette` (
`id` int(11) NOT NULL,
  `nomRecette` varchar(50) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `recette_recette`
--

INSERT INTO `recette_recette` (`id`, `nomRecette`, `description`) VALUES
(1, 'sauté asiatique légumes et poulet', '');

-- --------------------------------------------------------

--
-- Structure de la table `userprofile_userprofile`
--

CREATE TABLE IF NOT EXISTS `userprofile_userprofile` (
`id` int(11) NOT NULL,
  `preferences_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`), ADD KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`), ADD KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`), ADD KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`), ADD KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`), ADD KEY `auth_user_groups_group_id_97559544` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`), ADD KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`), ADD KEY `django_admin_log_user_id_c564eba6` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `preferences_preference`
--
ALTER TABLE `preferences_preference`
 ADD PRIMARY KEY (`id`), ADD KEY `preferences_preference_ingrediants_id_d5363385` (`ingredients_id`);

--
-- Index pour la table `recette_etapepreparation`
--
ALTER TABLE `recette_etapepreparation`
 ADD PRIMARY KEY (`id`), ADD KEY `recette_etapepreparation_recette_id_cc80b03f` (`recette_id`);

--
-- Index pour la table `recette_ingredient`
--
ALTER TABLE `recette_ingredient`
 ADD PRIMARY KEY (`id`), ADD KEY `recette_ingredient_nomIngredient_5dd12dd9` (`nomIngredient`);

--
-- Index pour la table `recette_ingredientrecette`
--
ALTER TABLE `recette_ingredientrecette`
 ADD PRIMARY KEY (`id`), ADD KEY `recette_ingredientrecette_ingredient_id_32b867c3` (`ingredient_id`), ADD KEY `recette_ingredientrecette_recette_id_9691b2bf` (`recette_id`);

--
-- Index pour la table `recette_recette`
--
ALTER TABLE `recette_recette`
 ADD PRIMARY KEY (`id`), ADD KEY `recette_recette_nomRecettes_e4bf9127` (`nomRecette`);

--
-- Index pour la table `userprofile_userprofile`
--
ALTER TABLE `userprofile_userprofile`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`), ADD KEY `UserProfile_userprofile_preferences_id_824c550c` (`preferences_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT pour la table `preferences_preference`
--
ALTER TABLE `preferences_preference`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `recette_etapepreparation`
--
ALTER TABLE `recette_etapepreparation`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `recette_ingredient`
--
ALTER TABLE `recette_ingredient`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `recette_ingredientrecette`
--
ALTER TABLE `recette_ingredientrecette`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `recette_recette`
--
ALTER TABLE `recette_recette`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `userprofile_userprofile`
--
ALTER TABLE `userprofile_userprofile`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
