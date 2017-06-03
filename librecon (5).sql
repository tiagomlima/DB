-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03-Jun-2017 às 21:06
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
  `idioma` varchar(30) NOT NULL,
  `autor_id` int(11) NOT NULL,
  `editora_id` int(11) NOT NULL,
  `tipoItem_id` int(11) NOT NULL,
  `secao_id` int(11) NOT NULL,
  `colecao_id` int(11) NOT NULL,
  `categoria_id` int(2) NOT NULL,
  `img_acervo` varchar(255) DEFAULT NULL,
  `descricao` text,
  `status` varchar(20) DEFAULT NULL,
  `palavra_chave` varchar(120) DEFAULT NULL,
  `dataAquisicao` date NOT NULL,
  `origemAquisicao` varchar(100) NOT NULL,
  `observacaoAquisicao` varchar(200) NOT NULL,
  `preco` double NOT NULL,
  `tabelaCutter` varchar(100) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `anoEdicao` date NOT NULL,
  `artigo` varchar(50) NOT NULL,
  `notas` varchar(100) DEFAULT NULL,
  `numero_paginas` int(6) NOT NULL,
  `formato` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `acervos`
--

INSERT INTO `acervos` (`idAcervos`, `titulo`, `tombo`, `estoque`, `idioma`, `autor_id`, `editora_id`, `tipoItem_id`, `secao_id`, `colecao_id`, `categoria_id`, `img_acervo`, `descricao`, `status`, `palavra_chave`, `dataAquisicao`, `origemAquisicao`, `observacaoAquisicao`, `preco`, `tabelaCutter`, `isbn`, `anoEdicao`, `artigo`, `notas`, `numero_paginas`, `formato`) VALUES
(11, 'Alibaba e os 40 ladrões', '69875', 3, 'Português', 12, 3, 1, 4, 3, 1, 'http://localhost/Librecon/assets/uploads/a57ab86776df5e88ea37cdc7ca3dddd1.jpg', '							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pretium lectus vitae sapien feugiat ultricies. Cras volutpat vitae lorem a accumsan. Aliquam ullamcorper ornare ex. Quisque luctus nunc dui, ut mollis augue volutpat eu. Suspendisse potenti. Mauris gravida varius lacinia. Aliquam tempor mauris felis, id viverra nisl condimentum quis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur venenatis lorem magna, at sodales quam laoreet eget.								\r\n								\r\n							', NULL, 'alibaba, ficção, 40, ladrão', '2016-02-05', 'Saraiva', 'teste', 55, '111', '9782123456803', '2015-10-10', 'Teste', 'teste', 250, 'Teste'),
(12, 'Harry Potter', '789', 3, 'Ingles', 13, 4, 1, 5, 4, 2, 'http://localhost/Librecon/assets/uploads/d9188aa96a89a99e7839ab30e0c613d8.jpg', '																																																																																												\r\n								\r\n								\r\n								\r\n								\r\n								\r\n								\r\n								\r\n								\r\n								\r\n								\r\n								\r\n								\r\n							', NULL, 'harry,magico, potter, magia', '2014-03-22', 'Saraiva', '', 88, '111aaa', '1459874', '2000-02-10', 'seila', '', 680, 'sei la');

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `idAutor` int(11) NOT NULL,
  `autor` varchar(55) NOT NULL,
  `descricao` text NOT NULL,
  `dataCadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`idAutor`, `autor`, `descricao`, `dataCadastro`) VALUES
(12, 'Ze Celso', '', '2017-04-29'),
(13, 'J.K', '', '2017-06-02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(2) NOT NULL,
  `nomeCategoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `nomeCategoria`) VALUES
(1, 'Tecnologia da Informação'),
(2, 'Outros');

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
('529f0650bd50ac83b5598f85605eefab', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 1496523445, 'a:7:{s:9:"user_data";s:0:"";s:4:"nome";s:5:"admin";s:2:"id";s:1:"9";s:9:"permissao";s:1:"1";s:6:"logado";b:1;s:12:"tipo_usuario";s:1:"0";s:5:"grupo";N;}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `colecao`
--

CREATE TABLE `colecao` (
  `idColecao` int(11) NOT NULL,
  `colecao` varchar(55) NOT NULL,
  `dataCadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `colecao`
--

INSERT INTO `colecao` (`idColecao`, `colecao`, `dataCadastro`) VALUES
(3, 'Vol.1', '2017-05-28'),
(4, 'Classicos', '2017-06-02');

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

--
-- Extraindo dados da tabela `documentos`
--

INSERT INTO `documentos` (`idDocumentos`, `documento`, `descricao`, `file`, `path`, `url`, `cadastro`, `categoria`, `tipo`, `tamanho`) VALUES
(1, 'imagem', 'imagem do livro alibaba', 'd9e5e3e3046c6f84899693533e82b544.jpg', 'C:/wamp64/www/Librecon/assets/arquivos/28-05-2017/d9e5e3e3046c6f84899693533e82b544.jpg', 'http://localhost/librecon/assets/arquivos/28-05-2017/d9e5e3e3046c6f84899693533e82b544.jpg', '2017-05-28', NULL, '.jpg', '216.51');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`idEditora`, `editora`, `email_editora`, `site`, `dataCadastro`) VALUES
(3, 'Galo de Kalsa', '', '', '2017-05-28'),
(4, 'Nova', '', '', '2017-06-02');

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
  `site` varchar(255) DEFAULT NULL,
  `url_logo` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `emitente`
--

INSERT INTO `emitente` (`id`, `nome`, `cnpj`, `ie`, `rua`, `numero`, `bairro`, `cidade`, `uf`, `telefone`, `site`, `url_logo`) VALUES
(2, 'FATEC Itapira', '71.654.108/0001-46', 'teste', 'Rua Tereza Lera Paoletti', '570', 'Jardim Bela Vista', 'Itapira', 'SP', '(19) 3843-1996', 'http://fatecitapira.edu.br/', 'http://localhost/librecon/assets/uploads/41d028c23123fb716034cc40f2e3f48f.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `idEmprestimos` int(11) NOT NULL,
  `dataEmprestimo` date NOT NULL,
  `dataDevolucao` date DEFAULT NULL,
  `dataVencimento` date NOT NULL,
  `leitor_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `grupo_id` int(11) NOT NULL,
  `qtde_item` int(2) DEFAULT NULL,
  `qtde_renovacao` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `emprestimos`
--

INSERT INTO `emprestimos` (`idEmprestimos`, `dataEmprestimo`, `dataDevolucao`, `dataVencimento`, `leitor_id`, `usuarios_id`, `status`, `grupo_id`, `qtde_item`, `qtde_renovacao`) VALUES
(5, '2017-06-03', '2017-06-03', '2017-06-10', 11, 9, 'Devolvido', 1, 1, NULL),
(6, '2017-06-03', NULL, '2017-06-10', 7, 9, 'Emprestado', 1, 2, NULL),
(7, '2017-06-03', NULL, '2017-06-10', 7, 9, 'Renovado', 1, 1, NULL),
(8, '2017-06-03', NULL, '2017-06-10', 11, 9, 'Emprestado', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupos`
--

CREATE TABLE `grupos` (
  `idGrupo` int(11) NOT NULL,
  `nomeGrupo` varchar(80) NOT NULL,
  `duracao_dias` int(4) NOT NULL,
  `qtde_max_item` int(3) NOT NULL,
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

INSERT INTO `grupos` (`idGrupo`, `nomeGrupo`, `duracao_dias`, `qtde_max_item`, `qtde_max_renovacao`, `qtde_max_reserva`, `validade_reserva`, `multa`, `observacoes`, `dataCadastro`) VALUES
(1, 'Leitor Comum', 7, 4, 1, 3, 7, 7.5, 'Cadastro de teste', '2017-04-17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_de_emprestimos`
--

CREATE TABLE `itens_de_emprestimos` (
  `idItens` int(11) NOT NULL,
  `emprestimos_id` int(11) NOT NULL,
  `acervos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itens_de_emprestimos`
--

INSERT INTO `itens_de_emprestimos` (`idItens`, `emprestimos_id`, `acervos_id`) VALUES
(4, 5, 11),
(5, 6, 11),
(6, 6, 12),
(7, 7, 11),
(8, 8, 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_de_reserva`
--

CREATE TABLE `itens_de_reserva` (
  `idItem` int(11) NOT NULL,
  `reserva_id` int(11) NOT NULL,
  `acervos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itens_de_reserva`
--

INSERT INTO `itens_de_reserva` (`idItem`, `reserva_id`, `acervos_id`) VALUES
(40, 40, 12),
(41, 40, 11),
(45, 43, 12),
(46, 44, 12),
(47, 45, 12),
(48, 46, 11),
(49, 47, 12),
(50, 47, 11),
(51, 48, 12),
(52, 49, 11),
(53, 49, 12),
(54, 50, 11),
(56, 52, 11),
(57, 52, 12),
(58, 53, 12),
(59, 54, 11);

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
(1, 'Administrador', 'a:78:{s:6:"aCurso";s:1:"1";s:6:"eCurso";s:1:"1";s:6:"dCurso";s:1:"1";s:6:"vCurso";s:1:"1";s:11:"aDisciplina";s:1:"1";s:11:"eDisciplina";s:1:"1";s:11:"dDisciplina";s:1:"1";s:11:"vDisciplina";s:1:"1";s:6:"aGrupo";s:1:"1";s:6:"eGrupo";s:1:"1";s:6:"dGrupo";s:1:"1";s:6:"vGrupo";s:1:"1";s:7:"aLeitor";s:1:"1";s:7:"eLeitor";s:1:"1";s:7:"dLeitor";s:1:"1";s:7:"vLeitor";s:1:"1";s:7:"aAcervo";s:1:"1";s:7:"eAcervo";s:1:"1";s:7:"dAcervo";s:1:"1";s:7:"vAcervo";s:1:"1";s:6:"aAutor";s:1:"1";s:6:"eAutor";s:1:"1";s:6:"dAutor";s:1:"1";s:6:"vAutor";s:1:"1";s:8:"aEditora";s:1:"1";s:8:"eEditora";s:1:"1";s:8:"dEditora";s:1:"1";s:8:"vEditora";s:1:"1";s:9:"aTipoItem";s:1:"1";s:9:"eTipoItem";s:1:"1";s:9:"dTipoItem";s:1:"1";s:9:"vTipoItem";s:1:"1";s:10:"aCategoria";s:1:"1";s:10:"eCategoria";s:1:"1";s:10:"dCategoria";s:1:"1";s:10:"vCategoria";s:1:"1";s:6:"aSecao";s:1:"1";s:6:"eSecao";s:1:"1";s:6:"dSecao";s:1:"1";s:6:"vSecao";s:1:"1";s:8:"aColecao";s:1:"1";s:8:"eColecao";s:1:"1";s:8:"dColecao";s:1:"1";s:8:"vColecao";s:1:"1";s:8:"aReserva";s:1:"1";s:8:"eReserva";s:1:"1";s:8:"dReserva";s:1:"1";s:8:"vReserva";s:1:"1";s:3:"aOs";s:1:"1";s:3:"eOs";s:1:"1";s:3:"dOs";s:1:"1";s:3:"vOs";s:1:"1";s:6:"aTeste";b:0;s:6:"eTeste";b:0;s:6:"dTeste";b:0;s:6:"vTeste";b:0;s:11:"aEmprestimo";s:1:"1";s:11:"eEmprestimo";s:1:"1";s:11:"dEmprestimo";s:1:"1";s:11:"vEmprestimo";s:1:"1";s:8:"aArquivo";s:1:"1";s:8:"eArquivo";s:1:"1";s:8:"dArquivo";s:1:"1";s:8:"vArquivo";s:1:"1";s:11:"aLancamento";s:1:"1";s:11:"eLancamento";s:1:"1";s:11:"dLancamento";s:1:"1";s:11:"vLancamento";s:1:"1";s:8:"cUsuario";s:1:"1";s:9:"cEmitente";s:1:"1";s:10:"cPermissao";s:1:"1";s:7:"cBackup";s:1:"1";s:7:"rLeitor";s:1:"1";s:7:"rAcervo";s:1:"1";s:8:"rReserva";s:1:"1";s:3:"rOs";b:0;s:11:"rEmprestimo";s:1:"1";s:11:"rFinanceiro";s:1:"1";}', 1, '2014-09-03'),
(2, 'Leitor', 'a:78:{s:6:"aCurso";b:0;s:6:"eCurso";b:0;s:6:"dCurso";b:0;s:6:"vCurso";b:0;s:11:"aDisciplina";b:0;s:11:"eDisciplina";b:0;s:11:"dDisciplina";b:0;s:11:"vDisciplina";b:0;s:6:"aGrupo";b:0;s:6:"eGrupo";b:0;s:6:"dGrupo";b:0;s:6:"vGrupo";b:0;s:7:"aLeitor";b:0;s:7:"eLeitor";b:0;s:7:"dLeitor";b:0;s:7:"vLeitor";b:0;s:7:"aAcervo";b:0;s:7:"eAcervo";b:0;s:7:"dAcervo";b:0;s:7:"vAcervo";s:1:"1";s:6:"aAutor";b:0;s:6:"eAutor";b:0;s:6:"dAutor";b:0;s:6:"vAutor";b:0;s:8:"aEditora";b:0;s:8:"eEditora";b:0;s:8:"dEditora";b:0;s:8:"vEditora";b:0;s:9:"aTipoItem";b:0;s:9:"eTipoItem";b:0;s:9:"dTipoItem";b:0;s:9:"vTipoItem";b:0;s:10:"aCategoria";b:0;s:10:"eCategoria";b:0;s:10:"dCategoria";b:0;s:10:"vCategoria";b:0;s:6:"aSecao";b:0;s:6:"eSecao";b:0;s:6:"dSecao";b:0;s:6:"vSecao";b:0;s:8:"aColecao";b:0;s:8:"eColecao";b:0;s:8:"dColecao";b:0;s:8:"vColecao";b:0;s:8:"aReserva";b:0;s:8:"eReserva";s:1:"1";s:8:"dReserva";b:0;s:8:"vReserva";s:1:"1";s:3:"aOs";b:0;s:3:"eOs";b:0;s:3:"dOs";b:0;s:3:"vOs";b:0;s:6:"aTeste";b:0;s:6:"eTeste";b:0;s:6:"dTeste";b:0;s:6:"vTeste";b:0;s:11:"aEmprestimo";b:0;s:11:"eEmprestimo";b:0;s:11:"dEmprestimo";b:0;s:11:"vEmprestimo";s:1:"1";s:8:"aArquivo";b:0;s:8:"eArquivo";b:0;s:8:"dArquivo";b:0;s:8:"vArquivo";b:0;s:11:"aLancamento";b:0;s:11:"eLancamento";b:0;s:11:"dLancamento";b:0;s:11:"vLancamento";b:0;s:8:"cUsuario";b:0;s:9:"cEmitente";b:0;s:10:"cPermissao";b:0;s:7:"cBackup";b:0;s:7:"rLeitor";b:0;s:7:"rAcervo";b:0;s:8:"rReserva";b:0;s:3:"rOs";b:0;s:11:"rEmprestimo";b:0;s:11:"rFinanceiro";b:0;}', 1, '2017-04-10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

CREATE TABLE `reserva` (
  `idReserva` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `dataReserva` date NOT NULL,
  `dataPrazo` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `qtde_item` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `secao`
--

CREATE TABLE `secao` (
  `idSecao` int(11) NOT NULL,
  `secao` varchar(55) NOT NULL,
  `dataCadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `secao`
--

INSERT INTO `secao` (`idSecao`, `secao`, `dataCadastro`) VALUES
(4, 'UFO', '2017-05-28'),
(5, 'Ficção', '2017-06-02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_de_item`
--

CREATE TABLE `tipo_de_item` (
  `idTipoItem` int(11) NOT NULL,
  `nomeTipo` varchar(55) NOT NULL,
  `dataCadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipo_de_item`
--

INSERT INTO `tipo_de_item` (`idTipoItem`, `nomeTipo`, `dataCadastro`) VALUES
(1, 'Livro', '2017-05-28'),
(2, 'CD', '2017-05-28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `tipo_usuario` tinyint(1) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `datanasc` date DEFAULT NULL,
  `cpf` varchar(20) NOT NULL,
  `matricula` varchar(100) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `rua` varchar(80) DEFAULT NULL,
  `numero` varchar(5) DEFAULT NULL,
  `bairro` varchar(75) DEFAULT NULL,
  `cidade` varchar(75) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `observacoes` varchar(200) DEFAULT NULL,
  `situacao` varchar(20) DEFAULT NULL,
  `dataCadastro` date NOT NULL,
  `permissoes_id` int(11) NOT NULL,
  `grupo_id` int(11) DEFAULT NULL,
  `curso_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `tipo_usuario`, `nome`, `datanasc`, `cpf`, `matricula`, `email`, `senha`, `telefone`, `celular`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `sexo`, `observacoes`, `situacao`, `dataCadastro`, `permissoes_id`, `grupo_id`, `curso_id`) VALUES
(5, 0, 'André Pedroso', NULL, '436.581.558-09', NULL, 'andre@admin.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', '(19)3863-4433', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2017-05-26', 1, NULL, NULL),
(7, 1, 'Tiago Lima', '1990-10-31', '433.458.789-21', '1423030', 'tiago@leitor.com', '12fd5311017d4b8faf7abc6d7fa13d182f519a13', '(19)3843-9689', '(19)98978-6989', 'Vera Macaco', '25', 'Della Rocha', 'Itapira', 'SP', '13976-400', 'Masculino', '0', '1', '2017-05-26', 2, 1, 4),
(9, 0, 'admin', NULL, '000.000.00-00', NULL, 'admin@admin.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '(xx)0000-0000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2017-05-28', 1, NULL, NULL),
(11, 1, 'André Pedroso', '1994-11-21', '436.581.558-10', '1423007', 'andre@leitor.com', 'bc9800b9d52a24cce72a73dd528afed53f10e5fc', '(19)3863-4433', '', 'Cherubim Graciatto', '22', 'Nosso Teto', 'Itapira', 'SP', '13976-233', 'Masculino', '', '1', '2017-06-02', 2, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acervos`
--
ALTER TABLE `acervos`
  ADD PRIMARY KEY (`idAcervos`),
  ADD KEY `fk_acervos_autor1` (`autor_id`),
  ADD KEY `fk_acervos_editora1` (`editora_id`),
  ADD KEY `fk_acervos_tipoItem1` (`tipoItem_id`),
  ADD KEY `fk_acervos_secao1` (`secao_id`),
  ADD KEY `fk_acervos_colecao1` (`colecao_id`),
  ADD KEY `fk_acervos_categoria` (`categoria_id`);

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`idAutor`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

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
  ADD KEY `fk_emprestimos_usuarios1` (`usuarios_id`),
  ADD KEY `fk_emprestimos_grupos1` (`grupo_id`);

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
-- Indexes for table `itens_de_reserva`
--
ALTER TABLE `itens_de_reserva`
  ADD PRIMARY KEY (`idItem`),
  ADD KEY `fk_itens_de_reserva_reserva` (`reserva_id`),
  ADD KEY `fk_itens_de_reserva_acervos` (`acervos_id`);

--
-- Indexes for table `permissoes`
--
ALTER TABLE `permissoes`
  ADD PRIMARY KEY (`idPermissao`);

--
-- Indexes for table `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`idReserva`),
  ADD KEY `fk_reserva_usuario_idx` (`usuario_id`);

--
-- Indexes for table `secao`
--
ALTER TABLE `secao`
  ADD PRIMARY KEY (`idSecao`);

--
-- Indexes for table `tipo_de_item`
--
ALTER TABLE `tipo_de_item`
  ADD PRIMARY KEY (`idTipoItem`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`),
  ADD KEY `fk_usuarios_permissoes1_idx` (`permissoes_id`),
  ADD KEY `fk_usuarios_curso_idx` (`curso_id`),
  ADD KEY `fk_usuarios_grupo_idx` (`grupo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acervos`
--
ALTER TABLE `acervos`
  MODIFY `idAcervos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `idAutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `colecao`
--
ALTER TABLE `colecao`
  MODIFY `idColecao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `idDocumentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `editora`
--
ALTER TABLE `editora`
  MODIFY `idEditora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `emitente`
--
ALTER TABLE `emitente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `emprestimos`
--
ALTER TABLE `emprestimos`
  MODIFY `idEmprestimos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `grupos`
--
ALTER TABLE `grupos`
  MODIFY `idGrupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `itens_de_emprestimos`
--
ALTER TABLE `itens_de_emprestimos`
  MODIFY `idItens` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `itens_de_reserva`
--
ALTER TABLE `itens_de_reserva`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `permissoes`
--
ALTER TABLE `permissoes`
  MODIFY `idPermissao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `reserva`
--
ALTER TABLE `reserva`
  MODIFY `idReserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `secao`
--
ALTER TABLE `secao`
  MODIFY `idSecao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tipo_de_item`
--
ALTER TABLE `tipo_de_item`
  MODIFY `idTipoItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `acervos`
--
ALTER TABLE `acervos`
  ADD CONSTRAINT `fk_acervos_autor1` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`idAutor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_acervos_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_acervos_colecao1` FOREIGN KEY (`colecao_id`) REFERENCES `colecao` (`idColecao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_acervos_editora1` FOREIGN KEY (`editora_id`) REFERENCES `editora` (`idEditora`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_acervos_secao1` FOREIGN KEY (`secao_id`) REFERENCES `secao` (`idSecao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_acervos_tipoItem1` FOREIGN KEY (`tipoItem_id`) REFERENCES `tipo_de_item` (`idTipoItem`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD CONSTRAINT `fk_disciplinas_curso` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`idCursos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD CONSTRAINT `fk_emprestimos_grupos1` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`idGrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `itens_de_emprestimos`
--
ALTER TABLE `itens_de_emprestimos`
  ADD CONSTRAINT `fk_itens_de_emprestimos_acervos1` FOREIGN KEY (`acervos_id`) REFERENCES `acervos` (`idAcervos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_itens_de_emprestimos_emprestimos1` FOREIGN KEY (`emprestimos_id`) REFERENCES `emprestimos` (`idEmprestimos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `fk_reserva_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_curso` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`idCursos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuarios_grupo` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`idGrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuarios_permissoes1` FOREIGN KEY (`permissoes_id`) REFERENCES `permissoes` (`idPermissao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
