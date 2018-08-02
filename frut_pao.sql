-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 02-Ago-2018 às 20:43
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `frut&pao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contacto`
--

CREATE TABLE `contacto` (
  `endereco` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `homegaleria`
--

CREATE TABLE `homegaleria` (
  `id` int(11) NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `descricao` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja`
--

CREATE TABLE `loja` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `endereco` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `promocaogaleria`
--

CREATE TABLE `promocaogaleria` (
  `id` int(11) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `descricao` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `promocaogaleria`
--

INSERT INTO `promocaogaleria` (`id`, `imagem`, `descricao`) VALUES
(1, 'Capturar.png', 'Olá, meu nome é Carlos Moreno e eu estou começando a conheçer melhor o Yii.\r\nNo meu projeto, eu desejo que a página inicial seja a tela de login. No entanto, quando eu criei a aplicação no Yii, percebi que a tela inicial não é a de login.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `publicacao`
--

CREATE TABLE `publicacao` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `publicacao`
--

INSERT INTO `publicacao` (`id`, `image`, `titulo`, `descricao`) VALUES
(1, 'projeto.png', 'RESOLVIDO!', 'Não to sabendo usar a propriedade visible do CButtonColumn. Coloquei um botão pra fazer download de um arquivo no CGridView, mas preciso que só fique disponivel, caso o arquivo exista no diretório. Aí pensei em usar o visible, mas nao to sabendo como, veja como está o botão\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) NOT NULL,
  `auth_key` int(32) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `username`, `email`, `password_hash`, `password_reset_token`, `auth_key`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Emanuel', 'djonylopes@hotmail.com', '$2y$13$N63Eidm7nUpNmnMz80TrF.TVck3V4P/iVo0emmKJUUsPFZrSV7ERe', '', 0, 10, 1533210480, 1533210480);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`endereco`);

--
-- Indexes for table `homegaleria`
--
ALTER TABLE `homegaleria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loja`
--
ALTER TABLE `loja`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `endereco` (`endereco`);

--
-- Indexes for table `promocaogaleria`
--
ALTER TABLE `promocaogaleria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publicacao`
--
ALTER TABLE `publicacao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `homegaleria`
--
ALTER TABLE `homegaleria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loja`
--
ALTER TABLE `loja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `promocaogaleria`
--
ALTER TABLE `promocaogaleria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `publicacao`
--
ALTER TABLE `publicacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
