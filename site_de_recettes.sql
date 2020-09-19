-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Sam 19 Septembre 2020 à 20:47
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

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
(40, 'Can view user profile', 10, 'view_userprofile');

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

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
(10, 'UserProfile', 'userprofile');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

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
(21, 'sessions', '0001_initial', '2020-09-19 04:22:31.081548');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `preferences_preference`
--

CREATE TABLE IF NOT EXISTS `preferences_preference` (
`id` int(11) NOT NULL,
  `aimeOuPas` tinyint(1) NOT NULL,
  `ingrediants_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `recette_ingredient`
--

CREATE TABLE IF NOT EXISTS `recette_ingredient` (
`id` int(11) NOT NULL,
  `nomIngredient` varchar(50) NOT NULL,
  `famille_alimentaire` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `recette_recette`
--

CREATE TABLE IF NOT EXISTS `recette_recette` (
`id` int(11) NOT NULL,
  `nomRecettes` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `préparation` longtext NOT NULL,
  `ingredients_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
 ADD PRIMARY KEY (`id`), ADD KEY `preferences_preference_ingrediants_id_d5363385` (`ingrediants_id`);

--
-- Index pour la table `recette_ingredient`
--
ALTER TABLE `recette_ingredient`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recette_recette`
--
ALTER TABLE `recette_recette`
 ADD PRIMARY KEY (`id`), ADD KEY `recette_recette_ingredients_id_4561db2b` (`ingredients_id`);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `preferences_preference`
--
ALTER TABLE `preferences_preference`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `recette_ingredient`
--
ALTER TABLE `recette_ingredient`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `recette_recette`
--
ALTER TABLE `recette_recette`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `userprofile_userprofile`
--
ALTER TABLE `userprofile_userprofile`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
