-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/11/2026 às 00:15
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco_gymos`
--
CREATE DATABASE IF NOT EXISTS `banco_gymos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `banco_gymos`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(125) NOT NULL,
  `data_nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `nome`, `cpf`, `telefone`, `email`, `data_nascimento`) VALUES
(1, 'Lucas Almeida', '000.000.000-01', '11999990001', 'lucas.almeida@example.com', '2002-05-14'),
(2, 'Mariana Oliveira', '000.000.000-02', '11999990002', 'mariana.oliveira@example.com', '2001-08-22'),
(3, 'Pedro Henrique Santos', '000.000.000-03', '11999990003', 'pedro.santos@example.com', '2003-02-10'),
(4, 'Ana Clara Costa', '000.000.000-04', '11999990004', 'ana.costa@example.com', '2000-11-30'),
(5, 'Gabriel Souza', '000.000.000-05', '11999990005', 'gabriel.souza@example.com', '2002-07-19'),
(6, 'Julia Ferreira', '000.000.000-06', '11999990006', 'julia.ferreira@example.com', '2004-01-05'),
(7, 'Rafael Rodrigues', '000.000.000-07', '11999990007', 'rafael.rodrigues@example.com', '1999-04-17'),
(8, 'Beatriz Martins', '000.000.000-08', '11999990008', 'beatriz.martins@example.com', '2001-12-09'),
(9, 'Matheus Lima', '000.000.000-09', '11999990009', 'matheus.lima@example.com', '2003-06-25'),
(10, 'Larissa Gomes', '000.000.000-10', '11999990010', 'larissa.gomes@example.com', '2002-09-13'),
(11, 'Felipe Ribeiro', '000.000.000-11', '11999990011', 'felipe.ribeiro@example.com', '1998-03-21'),
(12, 'Camila Carvalho', '000.000.000-12', '11999990012', 'camila.carvalho@example.com', '2000-07-08'),
(13, 'Bruno Mendes', '000.000.000-13', '11999990013', 'bruno.mendes@example.com', '2001-10-16'),
(14, 'Isabela Barbosa', '000.000.000-14', '11999990014', 'isabela.barbosa@example.com', '2004-04-28'),
(15, 'Thiago Nunes', '000.000.000-15', '11999990015', 'thiago.nunes@example.com', '1999-12-03'),
(16, 'Amanda Castro', '000.000.000-16', '11999990016', 'amanda.castro@example.com', '2002-02-18'),
(17, 'Vinicius Moreira', '000.000.000-17', '11999990017', 'vinicius.moreira@example.com', '2003-08-11'),
(18, 'Leticia Cardoso', '000.000.000-18', '11999990018', 'leticia.cardoso@example.com', '2000-05-26'),
(19, 'Eduardo Araujo', '000.000.000-19', '11999990019', 'eduardo.araujo@example.com', '1997-09-07'),
(20, 'Sofia Fernandes', '000.000.000-20', '11999990020', 'sofia.fernandes@example.com', '2004-06-15'),
(21, 'Gustavo Batista', '000.000.000-21', '11999990021', 'gustavo.batista@example.com', '2001-01-23'),
(22, 'Manuela Dias', '000.000.000-22', '11999990022', 'manuela.dias@example.com', '2003-11-04'),
(23, 'Leonardo Freitas', '000.000.000-23', '11999990023', 'leonardo.freitas@example.com', '1998-08-29'),
(24, 'Valentina Melo', '000.000.000-24', '11999990024', 'valentina.melo@example.com', '2002-03-12'),
(25, 'Henrique Lopes', '000.000.000-25', '11999990025', 'henrique.lopes@example.com', '2000-10-20'),
(26, 'Isadora Monteiro', '000.000.000-26', '11999990026', 'isadora.monteiro@example.com', '2004-09-02'),
(27, 'Daniel Correia', '000.000.000-27', '11999990027', 'daniel.correia@example.com', '1999-06-14'),
(28, 'Clara Machado', '000.000.000-28', '11999990028', 'clara.machado@example.com', '2001-02-27'),
(29, 'André Pires', '000.000.000-29', '11999990029', 'andre.pires@example.com', '2003-12-19'),
(30, 'Nicole Teixeira', '000.000.000-30', '11999990030', 'nicole.teixeira@example.com', '2002-04-06');

-- --------------------------------------------------------

--
-- Estrutura para tabela `matricula`
--

CREATE TABLE `matricula` (
  `id_matricula` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_plano` int(11) NOT NULL,
  `id_modalidade` int(11) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `matricula`
--

INSERT INTO `matricula` (`id_matricula`, `id_aluno`, `id_plano`, `id_modalidade`, `data_inicio`, `data_fim`, `status`) VALUES
(1, 12, 1, 3, '2026-11-16', '2026-12-16', 'ATIVO'),
(2, 3, 4, 1, '2026-11-16', '2027-11-16', 'ATIVO'),
(3, 13, 3, 1, '2026-11-16', '2027-05-16', 'ATIVO'),
(4, 16, 1, 1, '2026-11-16', '2026-12-16', 'ATIVO'),
(5, 11, 2, 2, '2026-11-16', '2027-02-16', 'ATIVO'),
(6, 17, 2, 2, '2026-11-16', '2027-02-16', 'ATIVO'),
(7, 19, 2, 8, '2026-11-16', '2027-02-16', 'ATIVO'),
(8, 20, 2, 8, '2026-11-16', '2027-02-16', 'ATIVO'),
(9, 15, 1, 2, '2026-11-16', '2026-12-16', 'ATIVO'),
(10, 21, 4, 4, '2026-11-16', '2027-11-16', 'ATIVO'),
(11, 23, 3, 6, '2026-11-16', '2027-05-16', 'ATIVO'),
(12, 10, 2, 7, '2026-11-16', '2027-02-16', 'ATIVO'),
(13, 25, 2, 2, '2026-11-16', '2027-02-16', 'ATIVO'),
(14, 26, 1, 2, '2026-11-16', '2026-12-16', 'ATIVO'),
(15, 8, 4, 3, '2026-11-16', '2027-11-16', 'ATIVO'),
(16, 27, 4, 5, '2026-11-16', '2027-11-16', 'ATIVO'),
(17, 28, 1, 5, '2026-11-16', '2026-12-16', 'ATIVO');

-- --------------------------------------------------------

--
-- Estrutura para tabela `modalidade`
--

CREATE TABLE `modalidade` (
  `id_modalidade` int(11) NOT NULL,
  `nome_modalidade` varchar(100) NOT NULL,
  `descricao` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modalidade`
--

INSERT INTO `modalidade` (`id_modalidade`, `nome_modalidade`, `descricao`) VALUES
(1, 'Musculação', 'Treinamento físico com pesos e equipamentos para \ndesenvolvimento muscular e fortalecimento do corpo.'),
(2, 'Crossfit', 'Treinamento funcional de alta intensidade \nque combina força, resistência e condicionamento físico.'),
(3, 'Pilates', 'Atividade que trabalha flexibilidade, equilíbrio, postura\n e fortalecimento muscular.'),
(4, 'Spinning', 'Aula de ciclismo indoor com foco em resistência cardiovascular e queima de calorias.'),
(5, 'Zumba', 'Aulas de dança que misturam movimentos coreografados\n e exercícios aeróbicos.'),
(6, 'Funcional', 'Exercícios que trabalham movimentos naturais do \ncorpo, equilíbrio, força e coordenação motora.'),
(7, 'Yoga', 'Prática que combina posturas,\nrespiração e concentração para promover equilíbrio físico e mental.'),
(8, 'Muay Thai', 'Modalidade de combate que desenvolve\n força, resistência, agilidade e disciplina.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `plano`
--

CREATE TABLE `plano` (
  `id_plano` int(11) NOT NULL,
  `nome_plano` varchar(150) NOT NULL,
  `valor_plano` decimal(10,2) NOT NULL,
  `duracao_meses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `plano`
--

INSERT INTO `plano` (`id_plano`, `nome_plano`, `valor_plano`, `duracao_meses`) VALUES
(1, 'Plano Mensal', 99.90, 1),
(2, 'Plano Trimestral', 269.90, 3),
(3, 'Plano Semestral', 499.90, 6),
(4, 'Plano Anual', 899.90, 12);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Índices de tabela `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id_matricula`);

--
-- Índices de tabela `modalidade`
--
ALTER TABLE `modalidade`
  ADD PRIMARY KEY (`id_modalidade`);

--
-- Índices de tabela `plano`
--
ALTER TABLE `plano`
  ADD PRIMARY KEY (`id_plano`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id_matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `modalidade`
--
ALTER TABLE `modalidade`
  MODIFY `id_modalidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `plano`
--
ALTER TABLE `plano`
  MODIFY `id_plano` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
