-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 20-Maio-2017 às 21:48
-- Versão do servidor: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librecon`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acervos`
--

CREATE TABLE `acervos` (
  `idAcervos` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `tombo` varchar(55) NOT NULL,
  `estoque` int(2) NOT NULL,
  `idioma` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `acervos`
--

INSERT INTO `acervos` (`idAcervos`, `titulo`, `tombo`, `estoque`, `idioma`) VALUES
(2, 'Cueca Veia', '963', 10, 'Inglês'),
(3, 'cubanacam', '741', 13, 'portugues');

-- --------------------------------------------------------

--
-- Estrutura da tabela `acervos_os`
--

CREATE TABLE `acervos_os` (
  `idAcervos_os` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `os_id` int(11) NOT NULL,
  `acervos_id` int(11) NOT NULL,
  `subTotal` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `anexos`
--

CREATE TABLE `anexos` (
  `idAnexos` int(11) NOT NULL,
  `anexo` varchar(45) DEFAULT NULL,
  `thumb` varchar(45) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `os_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `idAutor` int(11) NOT NULL,
  `autor` varchar(55) NOT NULL,
  `descricao` text NOT NULL,
  `dataCadastro` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`idAutor`, `autor`, `descricao`, `dataCadastro`) VALUES
(4, 'pavaroti', '', '2017-04-29'),
(5, 'Pavaroti', '', '2017-04-29'),
(6, 'teste', 'testado', '2017-04-29'),
(12, 'pavao', 'pavaozinho', '2017-04-29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('cdd4d3a3c8b309b906372587a9db04cc', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 1495311692, 'a:5:{s:9:"user_data";s:0:"";s:4:"nome";s:5:"admin";s:2:"id";s:1:"1";s:9:"permissao";s:1:"1";s:6:"logado";b:1;}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `colecao`
--

CREATE TABLE `colecao` (
  `idColecao` int(11) NOT NULL,
  `colecao` varchar(55) NOT NULL,
  `dataCadastro` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `idCursos` int(11) NOT NULL,
  `nomeCurso` varchar(80) NOT NULL,
  `dataCadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`idCursos`, `nomeCurso`, `dataCadastro`) VALUES
(2, 'Gestão da Tecnologia da Informação', '2017-04-17'),
(4, 'Gestão da Produção Industrial', '2017-04-17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `idDisciplina` int(11) NOT NULL,
  `nomeDisciplina` varchar(100) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `dataCadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`idDisciplina`, `nomeDisciplina`, `curso_id`, `dataCadastro`) VALUES
(2, 'Marketing', 2, '2017-04-17'),
(3, 'Fundamentos de T.I', 2, '2017-04-17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE `documentos` (
  `idDocumentos` int(11) NOT NULL,
  `documento` varchar(70) DEFAULT NULL,
  `descricao` text,
  `file` varchar(100) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `idEditora` int(11) NOT NULL,
  `editora` varchar(55) NOT NULL,
  `email_editora` varchar(55) NOT NULL,
  `site` varchar(55) NOT NULL,
  `dataCadastro` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emitente`
--

CREATE TABLE `emitente` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cnpj` varchar(45) DEFAULT NULL,
  `ie` varchar(50) DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `url_logo` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `emitente`
--

INSERT INTO `emitente` (`id`, `nome`, `cnpj`, `ie`, `rua`, `numero`, `bairro`, `cidade`, `uf`, `telefone`, `email`, `url_logo`) VALUES
(1, 'FATEC Itapira', '36978956321', '456576868', 'Rua Tereza Lera Paoletti', '570', 'Jardim Bela Vista', 'Itapira', 'SP', '(19) 3843-1996', 'http://www.fatecitapira.edu.br', 'http://localhost/librecon/assets/uploads/a5b3f076b6cfe2b2649d8588eec5095d.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `idEmprestimos` int(11) NOT NULL,
  `dataEmprestimo` date NOT NULL,
  `dataDevolucao` date NOT NULL,
  `leitores_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupos`
--

CREATE TABLE `grupos` (
  `idGrupo` int(11) NOT NULL,
  `nomeGrupo` varchar(80) NOT NULL,
  `duracao_dias` int(4) NOT NULL,
  `qtde_max_exemplares` int(3) NOT NULL,
  `qtde_max_renovacao` int(3) NOT NULL,
  `qtde_max_reserva` int(3) NOT NULL,
  `validade_reserva` int(2) NOT NULL,
  `multa` float NOT NULL,
  `observacoes` text NOT NULL,
  `dataCadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `grupos`
--

INSERT INTO `grupos` (`idGrupo`, `nomeGrupo`, `duracao_dias`, `qtde_max_exemplares`, `qtde_max_renovacao`, `qtde_max_reserva`, `validade_reserva`, `multa`, `observacoes`, `dataCadastro`) VALUES
(1, 'Leitor Comum', 7, 6, 1, 3, 7, 7.5, 'Cadastro de teste', '2017-04-17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_de_emprestimos`
--

CREATE TABLE `itens_de_emprestimos` (
  `idItens` int(11) NOT NULL,
  `emprestimos_id` int(11) NOT NULL,
  `acervos_id` int(11) NOT NULL,
  `quantidade` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lancamentos`
--

CREATE TABLE `lancamentos` (
  `idLancamentos` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` varchar(15) NOT NULL,
  `data_vencimento` date NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `baixado` tinyint(1) DEFAULT NULL,
  `cliente_fornecedor` varchar(255) DEFAULT NULL,
  `forma_pgto` varchar(100) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `anexo` varchar(250) DEFAULT NULL,
  `leitores_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitores`
--

CREATE TABLE `leitores` (
  `idLeitores` int(11) NOT NULL,
  `nomeLeitor` varchar(80) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `dataCadastro` date DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `sexo` varchar(20) NOT NULL,
  `situacao` tinyint(1) NOT NULL,
  `observacoes` text,
  `matricula` varchar(100) NOT NULL,
  `datanasc` date DEFAULT NULL,
  `senha` varchar(25) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `grupo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `leitores`
--

INSERT INTO `leitores` (`idLeitores`, `nomeLeitor`, `cpf`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `sexo`, `situacao`, `observacoes`, `matricula`, `datanasc`, `senha`, `curso_id`, `grupo_id`) VALUES
(4, 'André Luis Alves Pedroso', '436.581.558-09', '(19)3863-4433', '(19)98233-1438', 'andre@user.com', '2017-04-18', 'Rua Cherubim Graciatto', '22', 'Nosso Teto', 'Itapira', 'SP', '13976233', 'Masculino', 1, '', '1423007', '1994-11-21', '3f36ae4f5bb4e6a9591c782ca', 2, 1),
(6, 'Tiago Lima', '4442554113', '19983604243', '', 'teste@teste.com', '2017-05-19', 'Vera Macaco', '33', 'Nosso Teto', 'Itapira', 'SP', '13976233', 'Masculino', 1, '', '1423030', '0000-00-00', '29282467330a8ecca534dc31d', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `os`
--

CREATE TABLE `os` (
  `idOs` int(11) NOT NULL,
  `dataInicial` date DEFAULT NULL,
  `dataFinal` date DEFAULT NULL,
  `garantia` varchar(45) DEFAULT NULL,
  `descricaoAcervo` text,
  `defeito` text,
  `status` varchar(45) DEFAULT NULL,
  `observacoes` text,
  `laudoTecnico` text,
  `valorTotal` varchar(15) DEFAULT NULL,
  `leitores_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `lancamento` int(11) DEFAULT NULL,
  `faturado` tinyint(1) NOT NULL,
  `acervos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissoes`
--

CREATE TABLE `permissoes` (
  `idPermissao` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `permissoes` text,
  `situacao` tinyint(1) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `permissoes`
--

INSERT INTO `permissoes` (`idPermissao`, `nome`, `permissoes`, `situacao`, `data`) VALUES
(1, 'Administrador', 'a:74:{s:6:"aCurso";s:1:"1";s:6:"eCurso";s:1:"1";s:6:"dCurso";s:1:"1";s:6:"vCurso";s:1:"1";s:11:"aDisciplina";s:1:"1";s:11:"eDisciplina";s:1:"1";s:11:"dDisciplina";s:1:"1";s:11:"vDisciplina";s:1:"1";s:6:"aGrupo";s:1:"1";s:6:"eGrupo";s:1:"1";s:6:"dGrupo";s:1:"1";s:6:"vGrupo";s:1:"1";s:7:"aLeitor";s:1:"1";s:7:"eLeitor";s:1:"1";s:7:"dLeitor";s:1:"1";s:7:"vLeitor";s:1:"1";s:7:"aAcervo";s:1:"1";s:7:"eAcervo";s:1:"1";s:7:"dAcervo";s:1:"1";s:7:"vAcervo";s:1:"1";s:6:"aAutor";b:0;s:6:"eAutor";b:0;s:6:"dAutor";b:0;s:6:"vAutor";b:0;s:8:"aEditora";b:0;s:8:"eEditora";b:0;s:8:"dEditora";b:0;s:8:"vEditora";b:0;s:9:"aTipoItem";s:1:"1";s:9:"eTipoItem";s:1:"1";s:9:"dTipoItem";s:1:"1";s:9:"vTipoItem";s:1:"1";s:6:"aSecao";b:0;s:6:"eSecao";b:0;s:6:"dSecao";b:0;s:6:"vSecao";b:0;s:8:"aColecao";b:0;s:8:"eColecao";b:0;s:8:"dColecao";b:0;s:8:"vColecao";b:0;s:8:"aServico";s:1:"1";s:8:"eServico";s:1:"1";s:8:"dServico";s:1:"1";s:8:"vServico";s:1:"1";s:3:"aOs";b:0;s:3:"eOs";b:0;s:3:"dOs";b:0;s:3:"vOs";b:0;s:6:"aTeste";b:0;s:6:"eTeste";b:0;s:6:"dTeste";b:0;s:6:"vTeste";b:0;s:11:"aEmprestimo";s:1:"1";s:11:"eEmprestimo";s:1:"1";s:11:"dEmprestimo";s:1:"1";s:11:"vEmprestimo";s:1:"1";s:8:"aArquivo";s:1:"1";s:8:"eArquivo";s:1:"1";s:8:"dArquivo";s:1:"1";s:8:"vArquivo";s:1:"1";s:11:"aLancamento";s:1:"1";s:11:"eLancamento";s:1:"1";s:11:"dLancamento";s:1:"1";s:11:"vLancamento";s:1:"1";s:8:"cUsuario";s:1:"1";s:9:"cEmitente";s:1:"1";s:10:"cPermissao";s:1:"1";s:7:"cBackup";s:1:"1";s:7:"rLeitor";s:1:"1";s:7:"rAcervo";s:1:"1";s:8:"rServico";s:1:"1";s:3:"rOs";b:0;s:11:"rEmprestimo";s:1:"1";s:11:"rFinanceiro";s:1:"1";}', 1, '2014-09-03'),
(2, 'Leitor', 'a:78:{s:6:"aCurso";s:1:"1";s:6:"eCurso";s:1:"1";s:6:"dCurso";s:1:"1";s:6:"vCurso";s:1:"1";s:11:"aDisciplina";s:1:"1";s:11:"eDisciplina";s:1:"1";s:11:"dDisciplina";s:1:"1";s:11:"vDisciplina";s:1:"1";s:6:"aGrupo";s:1:"1";s:6:"eGrupo";s:1:"1";s:6:"dGrupo";s:1:"1";s:6:"vGrupo";s:1:"1";s:7:"aLeitor";s:1:"1";s:7:"eLeitor";s:1:"1";s:7:"dLeitor";s:1:"1";s:7:"vLeitor";s:1:"1";s:8:"aProduto";s:1:"1";s:8:"eProduto";s:1:"1";s:8:"dProduto";s:1:"1";s:8:"vProduto";s:1:"1";s:7:"aAcervo";b:0;s:7:"eAcervo";b:0;s:7:"dAcervo";b:0;s:7:"vAcervo";b:0;s:6:"aAutor";b:0;s:6:"eAutor";b:0;s:6:"dAutor";b:0;s:6:"vAutor";b:0;s:8:"aEditora";b:0;s:8:"eEditora";b:0;s:8:"dEditora";b:0;s:8:"vEditora";b:0;s:9:"aTipoItem";s:1:"1";s:9:"eTipoItem";s:1:"1";s:9:"dTipoItem";s:1:"1";s:9:"vTipoItem";s:1:"1";s:6:"aSecao";b:0;s:6:"eSecao";b:0;s:6:"dSecao";b:0;s:6:"vSecao";b:0;s:8:"aColecao";b:0;s:8:"eColecao";b:0;s:8:"dColecao";b:0;s:8:"vColecao";b:0;s:8:"aServico";s:1:"1";s:8:"eServico";s:1:"1";s:8:"dServico";s:1:"1";s:8:"vServico";s:1:"1";s:3:"aOs";s:1:"1";s:3:"eOs";s:1:"1";s:3:"dOs";s:1:"1";s:3:"vOs";s:1:"1";s:6:"aTeste";b:0;s:6:"eTeste";b:0;s:6:"dTeste";b:0;s:6:"vTeste";b:0;s:6:"aVenda";s:1:"1";s:6:"eVenda";s:1:"1";s:6:"dVenda";s:1:"1";s:6:"vVenda";s:1:"1";s:8:"aArquivo";s:1:"1";s:8:"eArquivo";s:1:"1";s:8:"dArquivo";s:1:"1";s:8:"vArquivo";s:1:"1";s:11:"aLancamento";s:1:"1";s:11:"eLancamento";s:1:"1";s:11:"dLancamento";s:1:"1";s:11:"vLancamento";s:1:"1";s:8:"cUsuario";s:1:"1";s:9:"cEmitente";s:1:"1";s:10:"cPermissao";s:1:"1";s:7:"cBackup";s:1:"1";s:7:"rLeitor";s:1:"1";s:8:"rProduto";s:1:"1";s:8:"rServico";s:1:"1";s:3:"rOs";b:0;s:6:"rVenda";s:1:"1";s:11:"rFinanceiro";s:1:"1";}', 1, '2017-04-10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idProdutos` int(11) NOT NULL,
  `descricao` varchar(80) NOT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `precoCompra` decimal(10,2) DEFAULT NULL,
  `precoVenda` decimal(10,2) NOT NULL,
  `estoque` int(11) NOT NULL,
  `estoqueMinimo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_os`
--

CREATE TABLE `produtos_os` (
  `idProdutos_os` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `os_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL,
  `subTotal` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `secao`
--

CREATE TABLE `secao` (
  `idSecao` int(11) NOT NULL,
  `secao` varchar(55) NOT NULL,
  `dataCadastro` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `secao`
--

INSERT INTO `secao` (`idSecao`, `secao`, `dataCadastro`) VALUES
(2, 't55', '2017-04-12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `idServicos` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`idServicos`, `nome`, `descricao`, `preco`) VALUES
(1, 'teste', 'teste', '12.50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos_os`
--

CREATE TABLE `servicos_os` (
  `idServicos_os` int(11) NOT NULL,
  `os_id` int(11) NOT NULL,
  `servicos_id` int(11) NOT NULL,
  `subTotal` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_de_item`
--

CREATE TABLE `tipo_de_item` (
  `idTipoItem` int(11) NOT NULL,
  `nomeTipo` varchar(55) NOT NULL,
  `dataCadastro` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipo_de_item`
--

INSERT INTO `tipo_de_item` (`idTipoItem`, `nomeTipo`, `dataCadastro`) VALUES
(1, 'Livro', '2017-04-11'),
(2, 'CD', '2017-04-11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  `permissoes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `nome`, `cpf`, `email`, `senha`, `telefone`, `celular`, `situacao`, `dataCadastro`, `permissoes_id`) VALUES
(1, 'admin', '600.021.520-87', 'admin@admin.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '0000-0000', '', 1, '2013-11-22', 1),
(3, 'Andre', '4442554113', 'andre@admin.com', '3d8de13b88f2de25407e83878df4749f5fc20a8d', '19983604243', '', 1, '2017-04-03', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acervos`
--
ALTER TABLE `acervos`
  ADD PRIMARY KEY (`idAcervos`);

--
-- Indexes for table `acervos_os`
--
ALTER TABLE `acervos_os`
  ADD PRIMARY KEY (`idAcervos_os`),
  ADD KEY `fk_produtos_os_os1` (`os_id`),
  ADD KEY `fk_produtos_os_produtos1` (`acervos_id`);

--
-- Indexes for table `anexos`
--
ALTER TABLE `anexos`
  ADD PRIMARY KEY (`idAnexos`),
  ADD KEY `fk_anexos_os1` (`os_id`);

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`idAutor`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `colecao`
--
ALTER TABLE `colecao`
  ADD PRIMARY KEY (`idColecao`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idCursos`);

--
-- Indexes for table `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`idDisciplina`),
  ADD KEY `fk_disciplinas_curso_idx` (`curso_id`);

--
-- Indexes for table `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`idDocumentos`);

--
-- Indexes for table `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`idEditora`);

--
-- Indexes for table `emitente`
--
ALTER TABLE `emitente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD PRIMARY KEY (`idEmprestimos`),
  ADD KEY `fk_emprestimos_leitores1` (`leitores_id`),
  ADD KEY `fk_emprestimos_usuarios1` (`usuarios_id`);

--
-- Indexes for table `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`idGrupo`);

--
-- Indexes for table `itens_de_emprestimos`
--
ALTER TABLE `itens_de_emprestimos`
  ADD PRIMARY KEY (`idItens`),
  ADD KEY `fk_itens_de_emprestimos_acervos1` (`acervos_id`),
  ADD KEY `fk_itens_de_emprestimos1` (`emprestimos_id`);

--
-- Indexes for table `lancamentos`
--
ALTER TABLE `lancamentos`
  ADD PRIMARY KEY (`idLancamentos`),
  ADD KEY `fk_lancamentos_clientes1` (`leitores_id`);

--
-- Indexes for table `leitores`
--
ALTER TABLE `leitores`
  ADD PRIMARY KEY (`idLeitores`),
  ADD KEY `fk_leitores_curso_idx` (`curso_id`),
  ADD KEY `fk_leitores_grupo_idx` (`grupo_id`);

--
-- Indexes for table `os`
--
ALTER TABLE `os`
  ADD PRIMARY KEY (`idOs`),
  ADD KEY `fk_os_clientes1` (`leitores_id`),
  ADD KEY `fk_os_usuarios1` (`usuarios_id`),
  ADD KEY `fk_os_lancamentos1` (`lancamento`),
  ADD KEY `fk_os_acervos_idx` (`acervos_id`);

--
-- Indexes for table `permissoes`
--
ALTER TABLE `permissoes`
  ADD PRIMARY KEY (`idPermissao`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idProdutos`);

--
-- Indexes for table `produtos_os`
--
ALTER TABLE `produtos_os`
  ADD PRIMARY KEY (`idProdutos_os`),
  ADD KEY `fk_produtos_os_os1` (`os_id`),
  ADD KEY `fk_produtos_os_produtos1` (`produtos_id`);

--
-- Indexes for table `secao`
--
ALTER TABLE `secao`
  ADD PRIMARY KEY (`idSecao`);

--
-- Indexes for table `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`idServicos`);

--
-- Indexes for table `servicos_os`
--
ALTER TABLE `servicos_os`
  ADD PRIMARY KEY (`idServicos_os`),
  ADD KEY `fk_servicos_os_os1` (`os_id`),
  ADD KEY `fk_servicos_os_servicos1` (`servicos_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`),
  ADD KEY `fk_usuarios_permissoes1_idx` (`permissoes_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acervos`
--
ALTER TABLE `acervos`
  MODIFY `idAcervos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `acervos_os`
--
ALTER TABLE `acervos_os`
  MODIFY `idAcervos_os` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `anexos`
--
ALTER TABLE `anexos`
  MODIFY `idAnexos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `idAutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `colecao`
--
ALTER TABLE `colecao`
  MODIFY `idColecao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `idCursos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `idDisciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `documentos`
--
ALTER TABLE `documentos`
  MODIFY `idDocumentos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `editora`
--
ALTER TABLE `editora`
  MODIFY `idEditora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `emitente`
--
ALTER TABLE `emitente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `emprestimos`
--
ALTER TABLE `emprestimos`
  MODIFY `idEmprestimos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `grupos`
--
ALTER TABLE `grupos`
  MODIFY `idGrupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `itens_de_emprestimos`
--
ALTER TABLE `itens_de_emprestimos`
  MODIFY `idItens` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lancamentos`
--
ALTER TABLE `lancamentos`
  MODIFY `idLancamentos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leitores`
--
ALTER TABLE `leitores`
  MODIFY `idLeitores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `os`
--
ALTER TABLE `os`
  MODIFY `idOs` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissoes`
--
ALTER TABLE `permissoes`
  MODIFY `idPermissao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idProdutos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produtos_os`
--
ALTER TABLE `produtos_os`
  MODIFY `idProdutos_os` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `secao`
--
ALTER TABLE `secao`
  MODIFY `idSecao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `servicos`
--
ALTER TABLE `servicos`
  MODIFY `idServicos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `servicos_os`
--
ALTER TABLE `servicos_os`
  MODIFY `idServicos_os` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `anexos`
--
ALTER TABLE `anexos`
  ADD CONSTRAINT `fk_anexos_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD CONSTRAINT `fk_disciplinas_curso` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`idCursos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `itens_de_emprestimos`
--
ALTER TABLE `itens_de_emprestimos`
  ADD CONSTRAINT `fk_itens_de_emprestimos_acervos1` FOREIGN KEY (`acervos_id`) REFERENCES `acervos` (`idAcervos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_itens_de_emprestimos_emprestimos1` FOREIGN KEY (`emprestimos_id`) REFERENCES `emprestimos` (`idEmprestimos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `lancamentos`
--
ALTER TABLE `lancamentos`
  ADD CONSTRAINT `fk_lancamentos_clientes1` FOREIGN KEY (`leitores_id`) REFERENCES `leitores` (`idLeitores`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `leitores`
--
ALTER TABLE `leitores`
  ADD CONSTRAINT `fk_leitores_curso` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`idCursos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_leitores_grupo` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`idGrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `os`
--
ALTER TABLE `os`
  ADD CONSTRAINT `fk_os_acervos` FOREIGN KEY (`acervos_id`) REFERENCES `acervos` (`idAcervos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_os_clientes1` FOREIGN KEY (`leitores_id`) REFERENCES `leitores` (`idLeitores`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_os_lancamentos1` FOREIGN KEY (`lancamento`) REFERENCES `lancamentos` (`idLancamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_os_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produtos_os`
--
ALTER TABLE `produtos_os`
  ADD CONSTRAINT `fk_produtos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produtos_os_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`idProdutos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `servicos_os`
--
ALTER TABLE `servicos_os`
  ADD CONSTRAINT `fk_servicos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_servicos_os_servicos1` FOREIGN KEY (`servicos_id`) REFERENCES `servicos` (`idServicos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_permissoes1` FOREIGN KEY (`permissoes_id`) REFERENCES `permissoes` (`idPermissao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
