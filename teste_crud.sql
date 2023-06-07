-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 07-Jun-2023 às 03:53
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teste_crud`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairro_line`
--

DROP TABLE IF EXISTS `bairro_line`;
CREATE TABLE IF NOT EXISTS `bairro_line` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cidade` int NOT NULL,
  `bairro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `bairro_line`
--

INSERT INTO `bairro_line` (`id`, `id_cidade`, `bairro`, `created_at`, `updated_at`) VALUES
(16, 28, 'numero 5', NULL, NULL),
(15, 27, 'bairro 1', NULL, NULL),
(14, 26, 'Forte', NULL, NULL),
(13, 25, 'castelo', NULL, NULL),
(17, 29, 'numero 5', NULL, NULL),
(18, 30, 'numero 8', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade_line`
--

DROP TABLE IF EXISTS `cidade_line`;
CREATE TABLE IF NOT EXISTS `cidade_line` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `cidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inicio_fundacao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fim_fundacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cidade_line`
--

INSERT INTO `cidade_line` (`id`, `cidade`, `inicio_fundacao`, `fim_fundacao`, `estado`, `created_at`, `updated_at`) VALUES
(29, 'Fortaleza', '06/08/2023  00:00:00', '07/24/2023  23:59:59', 'Ceará', NULL, NULL),
(30, 'Goiânia', '06/29/2023  00:00:00', '07/25/2023  23:59:59', 'Goiás', NULL, NULL),
(28, 'Bahia', '06/13/2023  00:00:00', '07/19/2023  23:59:59', 'Amazonas', NULL, NULL),
(27, 'Ribranco', '06/07/2023  00:00:00', '07/17/2023  23:59:59', 'Acre', NULL, NULL),
(26, 'Cabo frio', '06/13/2023  00:00:00', '07/17/2023  23:59:59', 'Rio de Janeiro', NULL, NULL),
(25, 'belo horizonte', '06/04/2023  00:00:00', '07/17/2023  23:59:59', 'Minas Gerais', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2022_06_06_215308_create_users', 1),
(8, '2023_06_06_174545_create_cidade_line', 1),
(9, '2023_06_06_174607_create_bairro_line', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jonatas Castro Salomão', 'jonatascastro@yahoo.com.br', NULL, '$2y$10$p9X7yggjXziBXu0FyXmeKe5b8U2BPTM.pNru5MXOV7ePTgcLjuO42', NULL, '2023-06-06 23:25:39', '2023-06-06 23:25:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_line`
--

DROP TABLE IF EXISTS `usuario_line`;
CREATE TABLE IF NOT EXISTS `usuario_line` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complemento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
