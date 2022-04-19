-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 19 avr. 2022 à 17:04
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `symfony-blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `slug`) VALUES
(1, NULL, 'Surf', 'surf');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220412114742', '2022-04-12 11:55:51', 763),
('DoctrineMigrations\\Version20220412131004', '2022-04-12 13:12:54', 114),
('DoctrineMigrations\\Version20220413095056', '2022-04-14 07:08:18', 1319),
('DoctrineMigrations\\Version20220413101745', '2022-04-14 07:08:20', 2199),
('DoctrineMigrations\\Version20220414091137', '2022-04-14 09:11:57', 725);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `user_id`, `category_id`, `title`, `slug`, `content`, `image`, `created_at`, `active`) VALUES
(1, 5, 1, 'titre 2', 'titre-2', 'contenu 2', 'https://www.leparisien.fr/resizer/LjfQdowFD9P41GaqTLvKLUDdot4=/932x582/cloudfront-eu-central-1.images.arcpublishing.com/leparisien/IRGRVPHIVZQM3M4EPI6AK6MTBA.jpg', '2022-04-19 08:38:30', 0),
(2, 5, 1, 'titre 2', 'titre-2-1', 'contenu 2', 'https://www.leparisien.fr/resizer/LjfQdowFD9P41GaqTLvKLUDdot4=/932x582/cloudfront-eu-central-1.images.arcpublishing.com/leparisien/IRGRVPHIVZQM3M4EPI6AK6MTBA.jpg', '2022-04-19 08:38:51', 0),
(3, 5, 1, 'titre 3', 'titre-3', 'contenu 3', 'https://www.leparisien.fr/resizer/LjfQdowFD9P41GaqTLvKLUDdot4=/932x582/cloudfront-eu-central-1.images.arcpublishing.com/leparisien/IRGRVPHIVZQM3M4EPI6AK6MTBA.jpg', '2022-04-19 08:40:42', 0),
(4, 5, 1, 'titre 3', 'titre-3-1', '<p><img alt=\"Une personne faisant du surf face au coucher du soleil\" src=\"https://cdn.radiofrance.fr/s3/cruiser-production/2021/08/696b8bea-3893-4a18-b549-515a4c641d93/838_gettyimages-982747408.jpg\" /></p>\r\n\r\n<p>Peut-on dater l&#39;invention du surf ? Que repr&eacute;sente cette pratique dans la culture hawa&iuml;enne ? Comment est n&eacute;e la surf culture ? Dans quelle mesure peut-on consid&eacute;rer qu&#39;elle a touch&eacute; tous les domaines artistiques ? Comment ont &eacute;volu&eacute; les planches de surf ?</p>\r\n\r\n\r\n\r\n<p>Une personne faisant du surf face au coucher du soleil&bull;&nbsp;Cr&eacute;dits :&nbsp;<em>Marco Petracci</em>&nbsp;-&nbsp;<em>Getty</em></p>\r\n\r\n<p><em>&ldquo;Glisser sur la vague et se fondre avec elle&rdquo;</em>&nbsp;tel est le sens du mot&nbsp;<em>&ldquo;he&rsquo;enalu&rdquo;</em>, l&rsquo;anc&ecirc;tre hawa&iuml;en de ce qui est devenu un sport de masse&nbsp;: le surf.</p>\r\n\r\n<p>De l&rsquo;archipel perdu dans le Pacifique, aux c&ocirc;tes californiennes, puis aux rivages houleux du monde entier, le surf est devenu en deux si&egrave;cles un symbole&nbsp;: celui d&rsquo;un sport en harmonie avec les &eacute;l&eacute;ments et celui d&rsquo;une culture globale.</p>\r\n\r\n<p>C&rsquo;est donc dans l&rsquo;histoire d&rsquo;une vague sportive et culturelle que nous allons plonger.</p>', 'https://cdn.radiofrance.fr/s3/cruiser-production/2021/08/696b8bea-3893-4a18-b549-515a4c641d93/838_gettyimages-982747408.webp', '2022-04-19 09:48:10', 0);

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reset_password_request`
--

INSERT INTO `reset_password_request` (`id`, `user_id`, `selector`, `hashed_token`, `requested_at`, `expires_at`) VALUES
(1, 5, 'rBX7GRGareSBeFGLeA9C', 'UkLD7jpuWL5Z2kasUknx3vfwACazzwPQlBOxKD9D+DM=', '2022-04-14 09:13:56', '2022-04-14 10:13:56'),
(2, 4, 'cMxKj5zEP7mDHH0H8pbN', 'qQmAH7LB/cgEsiKWNDaj8Uh4Eu5Bdt3MQ/6F7UVcFls=', '2022-04-14 09:17:56', '2022-04-14 10:17:56'),
(3, 6, 'ay9UhI8N8eyseBbiSy2P', 'fFS32E8ae5G17e8IA7I4VAxudOxc9Ryl2ZzGBdC/6NM=', '2022-04-14 09:48:25', '2022-04-14 10:48:25'),
(4, 5, 'zvjLLLdtpl3hFK6BWlfz', 'AxLUsmFU5AiNKaMectN6yRHUAlUOWkPyaIUbkvp4V4g=', '2022-04-14 11:21:08', '2022-04-14 12:21:08'),
(5, 6, 'sVeAmoNs27RL1or2Uzjz', 'dh9aiU7n9V9l4CrMGl1bBYuwugJ6MjlX7VNsyOGpQCw=', '2022-04-14 11:34:34', '2022-04-14 12:34:34'),
(6, 4, 'UVxhgy2tVBqnrrU0iUek', 'gSVj0gQ4KPWleGzPJY7GMZDgN/1I53BCVr159td9Naw=', '2022-04-14 11:37:13', '2022-04-14 12:37:13');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`) VALUES
(1, 'test1@test.com', '[]', '$2y$13$iwrEJsq9xQaFXSwC5IvQQuNfexXn0oCiU8HVTdCxAcNbjD6abOBEi', 0),
(2, 'salut.bonsoir@free.fr', '[]', '$2y$13$h6VjVASFkf81JkMwxF0Q3umfrq1Iw2Nn2T/xVuoPu3zaTeSVuoGRu', 0),
(3, 'philippe@gmail.com', '[]', '$2y$13$6J8Rs.wbsHDQtdabNQYhTuYBdWDx6.bgRaSOV.SZK8qwFX3FWXdom', 0),
(4, 'rafael.koebell@gmail.com', '[]', '$2y$13$FLI2psS7QtNj4V7zEmYEN.i/39kaEyBi0GkbSWzX3kzWryrFPhhN.', 0),
(5, 'salimatou@free.fr', '[]', '$2y$13$EuliDIA/klD4dLL.3nJJ7uUsfwDqQ.ptpmlI.3/vXJphbXZKCdUFa', 1),
(6, 'salut.bonsoir@gmail.com', '[]', '$2y$13$8iBq909gZxRLX5/Yabiiau1QGrQvG72XDlR1YVd/ksSWxUMORdowG', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_64C19C1727ACA70` (`parent_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5A8A6C8DA76ED395` (`user_id`),
  ADD KEY `IDX_5A8A6C8D12469DE2` (`category_id`);

--
-- Index pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `FK_64C19C1727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_5A8A6C8D12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_5A8A6C8DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
