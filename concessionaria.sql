-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--

--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cli_codigo` int(11) NOT NULL,
  `cli_nome` varchar(50) DEFAULT NULL,
  `cli_cpf` varchar(50) DEFAULT NULL,
  `cli_email` varchar(50) DEFAULT NULL,
  `cli_telefone` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cli_codigo`, `cli_nome`, `cli_cpf`, `cli_email`, `cli_telefone`) VALUES
(1, 'João', '452738639', 'joao@email.com', '93243516'),
(2, 'Felipe', '347659346', 'felipe@email.com', '912435652'),
(3, 'Gustavo', '149121555', 'gustavo@email.com', '987965879');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE `compra` (
  `com_codigo` int(11) NOT NULL,
  `data_compra` varchar(50) DEFAULT NULL,
  `metodo_compra` varchar(55) DEFAULT NULL,
  `veic_codigo` int(11) DEFAULT NULL,
  `fab_codigo` int(11) DEFAULT NULL,
  `cli_codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `compra`
--

INSERT INTO `compra` (`com_codigo`, `data_compra`, `metodo_compra`, `veic_codigo`, `fab_codigo`, `cli_codigo`) VALUES
(50, '25/12/2022', 'Crédito', 13, 10, 1),
(51, '02/12/2021', 'Crédito', 14, 12, 2),
(52, '25/10/2020', 'Débito', 15, 11, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fabricante`
--

CREATE TABLE `fabricante` (
  `fab_codigo` int(11) NOT NULL,
  `fab_nome` varchar(50) DEFAULT NULL,
  `fab_cnpj` varchar(55) DEFAULT NULL,
  `fab_telefone` varchar(50) DEFAULT NULL,
  `fab_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fabricante`
--

INSERT INTO `fabricante` (`fab_codigo`, `fab_nome`, `fab_cnpj`, `fab_telefone`, `fab_email`) VALUES
(10, 'Mercedes-Benz', '467624889', 'mercedesbenz@email.com', '975414352'),
(11, 'BMW', '2546795523', 'bmw@email.com', '912425253'),
(12, 'Audi', '93787952', 'audi@email.com', '965143224');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `fun_codigo` int(11) NOT NULL,
  `fun_nome` varchar(50) DEFAULT NULL,
  `fun_cpf` varchar(55) DEFAULT NULL,
  `fun_email` varchar(50) DEFAULT NULL,
  `fun_telefone` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`fun_codigo`, `fun_nome`, `fun_cpf`, `fun_email`, `fun_telefone`) VALUES
(7, 'Pedro', '346237956', 'pedro@email.com', '94454373'),
(8, 'Alberto', '3123890776', 'alberto@email.com', '923495782'),
(9, 'Denis', '856353562', 'denis@email.com', '9142356343');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `veic_codigo` int(11) NOT NULL,
  `veic_nome` varchar(50) DEFAULT NULL,
  `veic_modelo` varchar(50) DEFAULT NULL,
  `data_fabricacao` varchar(50) DEFAULT NULL,
  `cor` varchar(50) DEFAULT NULL,
  `peso` varchar(99) DEFAULT NULL,
  `fab_codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `veiculos`
--

INSERT INTO `veiculos` (`veic_codigo`, `veic_nome`, `veic_modelo`, `data_fabricacao`, `cor`, `peso`, `fab_codigo`) VALUES
(13, 'C180', 'Classe C - 2016', '01/07/1993', 'Preto', '1.495 KG', 10),
(14, 'A4', 'Performance Black - 2021', '1994', 'Prata', '1.640 KG', 12),
(15, '320i', 'GP 2023 - Série 3', '10/2014', 'Preto/Azul/Prata', '1.495 KG', 11);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cli_codigo`);

--
-- Índices para tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`com_codigo`),
  ADD KEY `veic_codigo` (`veic_codigo`),
  ADD KEY `fab_codigo` (`fab_codigo`),
  ADD KEY `cli_codigo` (`cli_codigo`);

--
-- Índices para tabela `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`fab_codigo`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`fun_codigo`);

--
-- Índices para tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`veic_codigo`),
  ADD KEY `fab_codigo` (`fab_codigo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cli_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `com_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `fabricante`
--
ALTER TABLE `fabricante`
  MODIFY `fab_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `fun_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `veic_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`veic_codigo`) REFERENCES `veiculos` (`veic_codigo`),
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`fab_codigo`) REFERENCES `fabricante` (`fab_codigo`),
  ADD CONSTRAINT `compra_ibfk_3` FOREIGN KEY (`cli_codigo`) REFERENCES `cliente` (`cli_codigo`);

--
-- Limitadores para a tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD CONSTRAINT `veiculos_ibfk_1` FOREIGN KEY (`fab_codigo`) REFERENCES `fabricante` (`fab_codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
