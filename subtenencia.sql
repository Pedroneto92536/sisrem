-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 04-Ago-2023 às 22:09
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
-- Banco de dados: `subtenencia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfuncoes`
--

DROP TABLE IF EXISTS `tbfuncoes`;
CREATE TABLE IF NOT EXISTS `tbfuncoes` (
  `id_funcao` int NOT NULL AUTO_INCREMENT,
  `nome_funcao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_funcao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbmateriais`
--

DROP TABLE IF EXISTS `tbmateriais`;
CREATE TABLE IF NOT EXISTS `tbmateriais` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  `qtd_total` int DEFAULT NULL,
  `qtd_cautela` int DEFAULT NULL,
  `qtd_disponivel` int DEFAULT NULL,
  `carga` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbmilitares`
--

DROP TABLE IF EXISTS `tbmilitares`;
CREATE TABLE IF NOT EXISTS `tbmilitares` (
  `id_militar` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `id_OM` int DEFAULT NULL,
  `id_SU` int DEFAULT NULL,
  `id_posto_grad` int DEFAULT NULL,
  `nome_completo` varchar(50) DEFAULT NULL,
  `nome_guerra` varchar(50) DEFAULT NULL,
  `identidade` varchar(20) DEFAULT NULL,
  `contato` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_militar`),
  UNIQUE KEY `id_user` (`id_user`),
  KEY `id_OM` (`id_OM`),
  KEY `id_SU` (`id_SU`),
  KEY `id_posto_grad` (`id_posto_grad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tboms`
--

DROP TABLE IF EXISTS `tboms`;
CREATE TABLE IF NOT EXISTS `tboms` (
  `id_om` int NOT NULL AUTO_INCREMENT,
  `nome_om` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_om`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbperfis`
--

DROP TABLE IF EXISTS `tbperfis`;
CREATE TABLE IF NOT EXISTS `tbperfis` (
  `id_perfil` int NOT NULL AUTO_INCREMENT,
  `nome_perfil` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpermissoes`
--

DROP TABLE IF EXISTS `tbpermissoes`;
CREATE TABLE IF NOT EXISTS `tbpermissoes` (
  `id_permissao` int NOT NULL AUTO_INCREMENT,
  `nome_permissao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_permissao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpostosgrad`
--

DROP TABLE IF EXISTS `tbpostosgrad`;
CREATE TABLE IF NOT EXISTS `tbpostosgrad` (
  `id_posto_grad` int NOT NULL AUTO_INCREMENT,
  `nome_posto_grad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_posto_grad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbsu`
--

DROP TABLE IF EXISTS `tbsu`;
CREATE TABLE IF NOT EXISTS `tbsu` (
  `id_su` int NOT NULL AUTO_INCREMENT,
  `nome_su` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_su`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusers`
--

DROP TABLE IF EXISTS `tbusers`;
CREATE TABLE IF NOT EXISTS `tbusers` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(50) DEFAULT NULL,
  `id_funcao` int DEFAULT NULL,
  `id_om` int DEFAULT NULL,
  `id_su` int DEFAULT NULL,
  `id_perfil` int DEFAULT NULL,
  `id_posto_grad` int DEFAULT NULL,
  `id_permissao` int DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`),
  KEY `id_funcao` (`id_funcao`),
  KEY `id_om` (`id_om`),
  KEY `id_su` (`id_su`),
  KEY `id_perfil` (`id_perfil`),
  KEY `id_posto_grad` (`id_posto_grad`),
  KEY `id_permissao` (`id_permissao`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbusers`
--

INSERT INTO `tbusers` (`id_user`, `nome_completo`, `id_funcao`, `id_om`, `id_su`, `id_perfil`, `id_posto_grad`, `id_permissao`, `password`, `username`) VALUES
(2, 'Pedro neto', 1, 2, 3, 1, 4, 1, '12345', 'PedroNeto');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
