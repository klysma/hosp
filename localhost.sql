-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 23-Mar-2018 às 22:15
-- Versão do servidor: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banco_tutorial_laravel`
--
CREATE DATABASE IF NOT EXISTS `banco_tutorial_laravel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `banco_tutorial_laravel`;
--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `conteudo` text COLLATE utf8_unicode_ci NOT NULL,
  `autor` text COLLATE utf8_unicode_ci,
  `imagem` text COLLATE utf8_unicode_ci,
  `categoria_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jardel Nathan', 'jardelnathan22@hotmail.com', '$2y$10$nxMj../pt0qiPbO4EvzESu1383lbDaGNnOsSJ1mO439c2CmgF/.7q', 'RHfWDJkrILdSgwCypl9RuePSasKArsQkXC1CGJo5ZM9GpJRu89R9D1CnE0ho', '2017-12-16 23:45:30', '2017-12-29 02:14:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `meritus`
--
CREATE DATABASE IF NOT EXISTS `meritus` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `meritus`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `area_atuacao`
--

CREATE TABLE `area_atuacao` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `area_atuacao`
--

INSERT INTO `area_atuacao` (`id`, `descricao`) VALUES
(1, 'Presidente'),
(2, 'Senador(a)'),
(3, 'Deputado(a) Federal'),
(4, 'Governador(a)'),
(5, 'Deputado(a) Estadual'),
(6, 'Prefeito(a)'),
(7, 'Vereador(a)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `imagem` varchar(40) NOT NULL,
  `titulo` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatos_oficiais`
--

CREATE TABLE `candidatos_oficiais` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `partidos_id` int(11) DEFAULT NULL,
  `perfis_id` int(11) DEFAULT NULL,
  `eleicao_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `candidatos_oficiais`
--

INSERT INTO `candidatos_oficiais` (`id`, `nome`, `foto`, `partidos_id`, `perfis_id`, `eleicao_id`) VALUES
(25, 'Koala', 'dc73f8634d2ca07e29ff28da9e439b5d.jpg', 2, 5, 40),
(26, 'Pinguim', '50f73395f7cf8ba236b594a3ea2efadf.jpg', 7, 7, 40),
(29, 'Jair Bolsonaro', '0e772292d86d752f68b8272d28084ada.jpg', 33, 57, 41),
(30, 'Lula', '8c49bab639ec4a10288cfd8fda60ad56.jpg', 1, 58, 41);

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatos_oficiais_votos`
--

CREATE TABLE `candidatos_oficiais_votos` (
  `id` int(11) NOT NULL,
  `perfis_id` int(11) NOT NULL,
  `candidatos_oficiais_id` int(11) NOT NULL,
  `justificativa` varchar(255) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL COMMENT '0 - oculto\n1 - público'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `candidatos_oficiais_votos`
--

INSERT INTO `candidatos_oficiais_votos` (`id`, `perfis_id`, `candidatos_oficiais_id`, `justificativa`, `tipo`) VALUES
(203, 3, 29, 'teste', 1),
(213, 6, 26, '', 1),
(217, 2, 30, '', 0),
(220, 1, 29, 'Pode ver sim porque as urnas não funcionam mesmo', 1),
(225, 6, 30, NULL, 0),
(229, 62, 29, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(1, 'roupas'),
(5, 'Teste Categoria'),
(6, 'Eletronicos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `certificacao`
--

CREATE TABLE `certificacao` (
  `id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `certificacao`
--

INSERT INTO `certificacao` (`id`, `descricao`, `imagem`) VALUES
(1, '<h3>Selo de certificação</h3>\r\n						<!-- <ul class="post-meta">\r\n							<li>Novemer 9, 2016</li>\r\n							<li><a href="#">5 Comments</a></li>\r\n						</ul> -->\r\n							<p>O Certificado Meritus atesta à sociedade quais as empresas que apoiam a proposta do portal, cujo ponto principal é a qualificação dos eleitores e dos próprios candidatos por meios das diversas ferramentas disponibilizadas pelo sistema, em especial a elevação do nível de debate político por meio de fóruns em rede social especializada, a disponibilização de artigos instrutivos, notícias, módulos de ensino à distância-EAD, leis, bem como a divulgação de exemplos diversos que deram certo no exercício de cargos públicos ou que representem gestos da cidadania saudável.</p><h4>Benefícios do Selo de Certificação Meritus</h4><p>O Selo de Certificação Meritus define quais as empresas estão comprometidas com a boa conscientização política, lastreada no conhecimento para o bom exercício do direito ao voto bem como, na capacitação daqueles que exercerão cargos públicos legislativos ou executivos.</p><p>Trata-se de um selo que visa traduzir a responsabilidade social inerente à empresa quanto a educação política, a fim de promover uma mudança nos cidadãos eleitores ou candidatos que serão os responsáveis pela condução dos principais cargos públicos que movem a engrenagem do país.</p><p>Os consumidores/eleitores destinarão esforços para aquisição de produtos e serviços das empresas com a responsabilidade social política em análise, sendo que a empresa poderá obter o selo mediante uma contribuição anual que será destinada ao desenvolvimento das atividades e conteúdos propostos pelo Portal.</p><p>A vigência do selo será de um ano após solicitado, somente encerrando-se a sua concessão por decurso do prazo ou por prática de atos contrários aos princípios defendidos pelo Portal.</p>', 'certificacao.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidades`
--

CREATE TABLE `cidades` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `estados_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`id`, `descricao`, `estados_id`) VALUES
(1, 'Montes Claros', 1),
(2, 'Buffalo', 3),
(3, 'Amityville', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `codigo_eleitoral`
--

CREATE TABLE `codigo_eleitoral` (
  `id` int(11) NOT NULL,
  `descricao` text,
  `imagem` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios_projetos`
--

CREATE TABLE `comentarios_projetos` (
  `id` int(11) NOT NULL,
  `perfis_id` int(11) NOT NULL,
  `projetos_lei_id` int(11) NOT NULL,
  `comentario` mediumtext,
  `data` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `comentarios_projetos`
--

INSERT INTO `comentarios_projetos` (`id`, `perfis_id`, `projetos_lei_id`, `comentario`, `data`) VALUES
(36, 6, 52, 'Mauris ac justo vitae est porttitor aliquet. Aliquam at fringilla sapien, in pharetra eros. Aenean dignissim sit amet tortor in bibendum.', '1499966970'),
(37, 6, 52, 'rew', '1501156933');

-- --------------------------------------------------------

--
-- Estrutura da tabela `denuncia_perfil`
--

CREATE TABLE `denuncia_perfil` (
  `id` int(11) NOT NULL,
  `tipos_denuncia_id` int(11) NOT NULL,
  `perfis_id_denunciado` int(11) NOT NULL,
  `perfis_id_delator` int(11) NOT NULL,
  `mensagem` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `denuncia_perfil`
--

INSERT INTO `denuncia_perfil` (`id`, `tipos_denuncia_id`, `perfis_id_denunciado`, `perfis_id_delator`, `mensagem`) VALUES
(32, 5, 6, 3, NULL),
(33, 6, 3, 5, NULL),
(34, 5, 3, 5, NULL),
(35, 5, 5, 3, NULL),
(36, 3, 5, 3, NULL),
(37, 5, 5, 3, NULL),
(38, 5, 5, 3, NULL),
(39, 5, 5, 3, NULL),
(40, 5, 5, 3, NULL),
(41, 5, 5, 3, NULL),
(42, 5, 5, 8, NULL),
(43, 5, 5, 3, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ead`
--

CREATE TABLE `ead` (
  `id` int(11) NOT NULL,
  `descricao` mediumtext,
  `video` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ead`
--

INSERT INTO `ead` (`id`, `descricao`, `video`) VALUES
(1, '<p><font face="Arial">Serão disponibilizadas vídeo aulas, materiais para cursos online, entre outros. O usuário ou candidato acessa o curso e assiste vídeo aulas, acessa materiais para downloads, obtém certificados, aumentando seu conhecimento, melhorando gradativamente o seu perfil e a sua avaliação dentro do Portal.</font></p>', 'ead.mp4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `eleicao`
--

CREATE TABLE `eleicao` (
  `id` int(11) NOT NULL,
  `periodo` varchar(105) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL COMMENT '"1">Presidente "2">Governador  "3">Senador "4" >Deputado Federal "5" >Deputado Estadual "6" >Prefeito "7" >Vereador',
  `cidades_id` int(11) DEFAULT NULL,
  `estados_id` int(11) DEFAULT NULL,
  `paises_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `eleicao`
--

INSERT INTO `eleicao` (`id`, `periodo`, `tipo`, `cidades_id`, `estados_id`, `paises_id`) VALUES
(40, '2018', '2', NULL, 1, 1),
(41, '2018', '1', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `enquete`
--

CREATE TABLE `enquete` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `pergunta` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - Bloqueada\n1 - Aberta',
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `enquete`
--

INSERT INTO `enquete` (`id`, `titulo`, `pergunta`, `status`, `data`) VALUES
(13, '12123123', '<p>uai</p>', 0, '2017-07-20 11:59:52'),
(14, 'Enquete principal', '<p>Você acha válida a proposta do portal para conhecermos e capacitarmos melhor os candidatos nos quais iremos votar?</p>', 1, '2017-07-26 16:12:40'),
(15, 'teste', '<p>fsdfd</p>', 0, '2017-07-11 10:43:17'),
(16, 'asd', '<p>asd</p>', 0, '2017-07-14 11:42:03'),
(38, 'Você concorda com a maioridade penal?', '<p>Você concorda com a maioridade penal?<br></p>', 0, '2017-07-20 10:48:18'),
(39, 'Você concorda com a pena de morte?', '<p><font face="Arial">Você concorda com a pena de morte?</font><br></p>', 0, '2017-07-27 10:06:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `paises_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`id`, `descricao`, `paises_id`) VALUES
(1, 'Minas Gerais', 1),
(2, 'Rio de janeiro', 1),
(3, 'Nova Iorque', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `imagem` varchar(40) DEFAULT NULL,
  `titulo` text,
  `data` bigint(20) DEFAULT NULL,
  `conteudo` longtext,
  `nome_url` varchar(255) DEFAULT NULL,
  `introducao` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `experiencias_internacionais`
--

CREATE TABLE `experiencias_internacionais` (
  `id` int(11) NOT NULL,
  `perfis_candidato_id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descricao` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `experiencias_internacionais`
--

INSERT INTO `experiencias_internacionais` (`id`, `perfis_candidato_id`, `titulo`, `descricao`) VALUES
(1, 2, 'Havard EUA', 'Faculdade de Direito'),
(2, 21, 'asd', 'asd'),
(3, 35, 'Teste', 'Experiencia 1'),
(4, 44, 'mandela', 'experiencia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `forum_topicos`
--

CREATE TABLE `forum_topicos` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `data` bigint(20) DEFAULT NULL,
  `perfis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `forum_topicos`
--

INSERT INTO `forum_topicos` (`id`, `titulo`, `data`, `perfis_id`) VALUES
(37, 'hello world!', 1497989515, 3),
(40, 'novo', 1497991891, 3),
(41, 'teste', 1497994139, 5),
(46, 'pode criar?', 1498069371, 3),
(49, 'hello world!', 1498079582, 6),
(52, 'Teste ', 1498150598, 6),
(55, 'O que vocês acham da lavajato?', 1498169234, 3),
(57, 'dasda', 1498243974, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `forum_topicos_respostas`
--

CREATE TABLE `forum_topicos_respostas` (
  `id` int(11) NOT NULL,
  `resposta` mediumtext NOT NULL,
  `data` bigint(20) DEFAULT NULL,
  `forum_topicos_id` int(11) NOT NULL,
  `perfis_id` int(11) NOT NULL,
  `id_citacao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `forum_topicos_respostas`
--

INSERT INTO `forum_topicos_respostas` (`id`, `resposta`, `data`, `forum_topicos_id`, `perfis_id`, `id_citacao`) VALUES
(121, 'Esse é o fórum do momento!', 1497989515, 37, 6, NULL),
(122, '<blockquote><p>Esse é o fórum do momento!</p><p class="escritoPor" style="display: none;">   Escrito por: herberth</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=6">   Escrito por: herberth</a></em></blockquote><p><ul><li>ok</li><li>correto&nbsp;</li><li>lista</li><li>ok</li></ul><ol><li>kkkkkk</li><li>çççççç</li><li>asdasdas</li></ol><h1><ol><li>sadasdasdasd</li></ol></h1></p>', 1497989619, 37, 1, NULL),
(123, '<blockquote><blockquote><p>Esse é o fórum do momento!</p><p class="escritoPor" style="display: none;">   Escrito por: herberth</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=6">   Escrito por: herberth</a></em></blockquote><ul><li>ok</li><li>correto&nbsp;</li><li>lista</li><li>ok</li></ul><ol><li>kkkkkk</li><li>çççççç</li><li>asdasdas</li></ol><h1><ol><li>sadasdasdasd</li></ol></h1><p class="escritoPor" style="display: none;">   Escrito por: Marcos Vinicius</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=1">   Escrito por: Marcos Vinicius</a></em></blockquote><p>ok!</p>', 1497989695, 37, 6, NULL),
(125, '<blockquote><p></p><blockquote><blockquote><p>Esse é o fórum do momento!</p><p class="escritoPor" style="display: none;">   Escrito por: herberth</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=6">   Escrito por: herberth</a></em></blockquote><ul><li>ok</li><li>correto&nbsp;</li><li>lista</li><li>ok</li></ul><ol><li>kkkkkk</li><li>çççççç</li><li>asdasdas</li></ol><h1><ol><li>sadasdasdasd</li></ol></h1><p class="escritoPor" style="display: none;">   Escrito por: Marcos Vinicius</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=1">   Escrito por: Marcos Vinicius</a></em></blockquote><p>ok!</p><p></p><div class="escritoPor" style="display: none;">   Escrito por: herberth</div><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=6">   Escrito por: herberth</a></em></blockquote>', 1497990259, 37, 6, NULL),
(127, 'avião para salinas, o que vcs acham ?', 1497991891, 40, 6, NULL),
(128, 'muito<p><br></p>', 1497991912, 40, 3, NULL),
(129, 'testesss', 1497994139, 41, 5, NULL),
(130, '<blockquote><p>testesss</p><p class="escritoPor" style="display: none;">   Escrito por: Jardel Nathan</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=5">   Escrito por: Jardel Nathan</a></em></blockquote><p>adadsasda</p>', 1497994286, 41, 6, NULL),
(131, '<blockquote><p></p><blockquote><p></p><blockquote><blockquote><p>Esse é o fórum do momento!</p><p class="escritoPor" style="display: none;">   Escrito por: herberth</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=6">   Escrito por: herberth</a></em></blockquote><ul><li>ok</li><li>correto&nbsp;</li><li>lista</li><li>ok</li></ul><ol><li>kkkkkk</li><li>çççççç</li><li>asdasdas</li></ol><h1><ol><li>sadasdasdasd</li></ol></h1><p class="escritoPor" style="display: none;">   Escrito por: Marcos Vinicius</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=1">   Escrito por: Marcos Vinicius</a></em></blockquote><p>ok!</p><p></p><div class="escritoPor" style="display: none;">   Escrito por: herberth</div><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=6">   Escrito por: herberth</a></em></blockquote><p></p><div class="escritoPor" style="display: none;">   Escrito por: herberth</div><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=6">   Escrito por: herberth</a></em></blockquote>', 1497998036, 37, 6, NULL),
(132, 'adsasda', 1497998122, 37, 6, NULL),
(140, '223asdas', 1498000049, 37, 6, NULL),
(142, 'aaaadsda', 1498069371, 46, 3, NULL),
(143, '<blockquote><p>muito</p><br><p class="escritoPor" style="display: none;">   Escrito por: Getúlio Dornelles  Vargas</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=3">   Escrito por: Getúlio Dornelles  Vargas</a></em></blockquote><p>llallallalala</p>', 1498070714, 40, 6, NULL),
(144, '<blockquote><blockquote><p>muito</p><br><p class="escritoPor" style="display: none;">   Escrito por: Getúlio Dornelles  Vargas</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=3">   Escrito por: Getúlio Dornelles  Vargas</a></em></blockquote><p>llallallalala</p><p class="escritoPor" style="display: none;">   Escrito por: herberth</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=6">   Escrito por: herberth</a></em></blockquote><p>asdasdasda</p>', 1498070735, 40, 6, NULL),
(164, 'OI! companheiros!', 1498079582, 49, 6, NULL),
(170, '<blockquote><p>aaaadsda</p><p class="escritoPor" style="display: none;">   Escrito por: Getúlio Dornelles  Vargas</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=3">   Escrito por: Getúlio Dornelles  Vargas</a></em></blockquote><p>mito!</p><p><br></p>', 1498080554, 46, 6, NULL),
(171, 'oi', 1498147780, 46, 6, NULL),
(172, '<blockquote><p>oi</p><p class="escritoPor" style="display: none;">   Escrito por: herberth</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=6">   Escrito por: herberth</a></em></blockquote><p>tudo bem ?</p><p><br></p><blockquote><p></p><blockquote><p>aaaadsda</p><p class="escritoPor" style="display: none;">   Escrito por: Getúlio Dornelles  Vargas</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=3">   Escrito por: Getúlio Dornelles  Vargas</a></em></blockquote><p>mito!</p><p><br></p><p></p><div class="escritoPor" style="display: none;">   Escrito por: herberth</div><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=6">   Escrito por: herberth</a></em></blockquote>', 1498147812, 46, 6, NULL),
(173, '<blockquote><span style="color: rgb(112, 112, 112); font-size: 15px; background-color: rgb(248, 248, 248);">tudo bem ?</span><br></blockquote>', 1498147873, 46, 6, NULL),
(174, 'asdasdas', 1498150169, 49, 6, NULL),
(176, '<blockquote>vvvvvvvvvvvvvvvvv</blockquote>', 1498150353, 49, 6, NULL),
(178, 'dfgdfg', 1498151595, 49, 6, NULL),
(185, 'dd', 1498156338, 49, 6, NULL),
(187, '<blockquote><p>oi</p><p class="escritoPor" style="display: none;">   Escrito por: herberth</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=6">   Escrito por: herberth</a></em></blockquote><p>teste citar</p>', 1498156670, 46, 6, NULL),
(194, '<blockquote><blockquote><p>oi</p><p class="escritoPor" style="display: none;">   Escrito por: herberth</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=6">   Escrito por: herberth</a></em></blockquote><p>teste citar</p><p class="escritoPor" style="display: none;">   Escrito por: herberth</p><em style="font-size:13px;"><a href="http://tectotum60-pc/meritus/perfil?id=6">   Escrito por: herberth</a></em></blockquote><p><br></p>', 1498157700, 46, 6, NULL),
(196, 'Lula foi indiciado nesta sexta feira.. o que vocês acham, estou elaborando um projeto de lei que irá acelerar este processo, pensando no bem do nosso país... dê seu comentário', 1498169234, 55, 3, NULL),
(197, 'Por mim todos devem ser presos... cadeia neles...', 1498169297, 55, 2, NULL),
(198, 'asdas<p><br></p>', 1498236081, 52, 6, NULL),
(199, 'ee', 1498236086, 52, 6, NULL),
(200, 'ttttt', 1498236092, 52, 6, NULL),
(201, 'yyy', 1498236098, 52, 6, NULL),
(202, 'ttt', 1498236104, 52, 6, NULL),
(203, 'dsff', 1498236109, 52, 6, NULL),
(204, '444', 1498236116, 52, 6, NULL),
(205, 'aaaa', 1498236123, 52, 6, NULL),
(206, 'eee', 1498236131, 52, 6, NULL),
(207, 'r', 1498243282, 49, 6, NULL),
(213, 'teste', 1498245086, 57, 6, NULL),
(214, 'asdasd', 1498245103, 57, 6, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos_galerias`
--

CREATE TABLE `fotos_galerias` (
  `id` int(11) NOT NULL,
  `galerias_id` int(11) NOT NULL,
  `imagem` varchar(40) DEFAULT NULL,
  `small_thumb` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `galerias`
--

CREATE TABLE `galerias` (
  `id` int(11) NOT NULL,
  `imagem` varchar(40) NOT NULL,
  `titulo` text,
  `nome_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `graus_formacao`
--

CREATE TABLE `graus_formacao` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `graus_formacao`
--

INSERT INTO `graus_formacao` (`id`, `descricao`) VALUES
(1, 'Sem escolaridade'),
(2, 'Fundamental completo'),
(3, 'Fundamental incompleto'),
(4, 'Médio completo'),
(5, 'Médio incompleto'),
(6, 'Superior completo'),
(7, 'Superior incompleto'),
(8, 'Pós-graduação (Lato sensu) - Incompleto'),
(9, 'Pós-graduação (Lato senu) - Completo'),
(10, 'Pós-graduação (Stricto sensu, nível mestrado) - Incompleto'),
(11, 'Pós-graduação (Stricto sensu, nível mestrado) - Completo'),
(12, 'Pós-graduação (Stricto sensu, nível doutor) - Incompleto'),
(13, 'Pós-graduação (Stricto sensu, nível doutor) - Completo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_enquete`
--

CREATE TABLE `itens_enquete` (
  `id` int(11) NOT NULL,
  `texto_item` text,
  `enquete_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `itens_enquete`
--

INSERT INTO `itens_enquete` (`id`, `texto_item`, `enquete_id`) VALUES
(2, 'Sim', 14),
(3, 'Não', 14),
(4, 'Sem Opinião', 14),
(5, '123', 15),
(6, '123', 15),
(18, 'Sim', 38),
(19, 'Não', 38),
(20, 'Talvez', 38),
(21, 'Sim', 39),
(22, 'Nao ', 39),
(23, 'Só  em casos extremos', 39),
(24, 'Talvez', 39);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_enquete_respostas`
--

CREATE TABLE `itens_enquete_respostas` (
  `id` int(11) NOT NULL,
  `itens_enquete_id` int(11) NOT NULL,
  `perfis_id` int(11) NOT NULL,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `itens_enquete_respostas`
--

INSERT INTO `itens_enquete_respostas` (`id`, `itens_enquete_id`, `perfis_id`, `data`) VALUES
(5, 3, 6, '2017-07-19 09:40:18'),
(6, 6, 6, NULL),
(7, 5, 5, '2017-07-19 09:58:48'),
(27, 4, 3, '2017-07-19 13:38:59'),
(30, 3, 5, '2017-07-20 09:11:58'),
(31, 19, 5, '2017-07-20 10:57:40'),
(32, 18, 37, '2017-07-20 11:57:51'),
(33, 23, 5, '2017-07-20 11:57:59'),
(34, 23, 3, '2017-07-20 13:00:43'),
(35, 21, 6, '2017-07-20 13:00:58'),
(36, 2, 32, '2017-07-20 15:23:22'),
(38, 4, 45, '2017-07-21 17:48:13'),
(39, 2, 53, '2017-07-25 10:22:25'),
(40, 3, 54, '2017-07-25 11:00:38'),
(41, 2, 37, '2017-07-27 10:10:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `log_intencoes_voto`
--

CREATE TABLE `log_intencoes_voto` (
  `id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1 - Deu intenção de voto, 0 - Removeu intenção de voto',
  `data` bigint(20) DEFAULT NULL,
  `perfis_id_candidato` int(11) NOT NULL,
  `perfis_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `log_intencoes_voto`
--

INSERT INTO `log_intencoes_voto` (`id`, `status`, `data`, `perfis_id_candidato`, `perfis_id_usuario`) VALUES
(60, 1, 1496694599, 3, 1),
(61, 1, 1496696000, 3, 2),
(62, 1, 1496764149, 3, 3),
(63, 0, 1496764151, 3, 3),
(64, 1, 1496764157, 3, 3),
(65, 0, 1496841681, 3, 2),
(66, 1, 1496841682, 3, 2),
(67, 0, 1496841682, 3, 2),
(68, 1, 1496841683, 3, 2),
(69, 1, 1496941118, 3, 5),
(70, 0, 1497020378, 3, 3),
(71, 1, 1497020379, 3, 3),
(72, 1, 1498760286, 8, 8),
(73, 0, 1498760288, 8, 8),
(74, 0, 1499354045, 3, 1),
(75, 1, 1499354048, 3, 1),
(76, 0, 1499354051, 3, 1),
(77, 1, 1499359333, 3, 1),
(78, 1, 1499359690, 8, 5),
(79, 0, 1499359692, 8, 5),
(80, 1, 1499359694, 8, 5),
(81, 0, 1499359695, 8, 5),
(82, 1, 1499359697, 8, 5),
(83, 1, 1499360513, 6, 5),
(84, 0, 1499362612, 8, 5),
(85, 0, 1499362629, 3, 5),
(86, 0, 1499362629, 3, 5),
(87, 1, 1499362634, 3, 5),
(88, 0, 1499362647, 3, 5),
(89, 1, 1499363663, 3, 5),
(90, 0, 1499363685, 3, 5),
(91, 1, 1499363815, 3, 5),
(92, 0, 1499363816, 3, 5),
(93, 1, 1499363819, 3, 5),
(94, 0, 1499363958, 3, 5),
(95, 1, 1499364150, 3, 5),
(96, 0, 1499364223, 3, 5),
(97, 1, 1499364232, 8, 5),
(98, 0, 1499364344, 3, 1),
(99, 1, 1499364347, 3, 1),
(100, 1, 1499364365, 3, 6),
(101, 0, 1499364402, 3, 6),
(102, 1, 1499364405, 3, 6),
(103, 0, 1499364531, 3, 1),
(104, 1, 1499364535, 3, 1),
(105, 1, 1499364615, 3, 1),
(106, 1, 1502043104, 3, 1),
(107, 1, 1502043239, 3, 7),
(108, 1, 1499365527, 6, 6),
(109, 0, 1499365562, 3, 6),
(110, 1, 1499365565, 3, 6),
(111, 0, 1499426853, 6, 6),
(112, 1, 1499429395, 3, 5),
(113, 0, 1499429432, 3, 5),
(114, 1, 1499429444, 3, 5),
(115, 1, 1499431008, 30, 5),
(116, 1, 1499431027, 6, 5),
(117, 1, 1499431034, 7, 5),
(118, 1, 1499431059, 29, 5),
(119, 1, 1499689127, 6, 1),
(120, 1, 1499689724, 8, 3),
(121, 0, 1499689726, 8, 3),
(122, 1, 1499711201, 7, 1),
(123, 1, 1499776071, 3, 2),
(124, 0, 1499776072, 3, 2),
(125, 1, 1499776075, 3, 2),
(126, 0, 1499784053, 30, 5),
(127, 1, 1499784055, 30, 5),
(128, 0, 1499784163, 30, 5),
(129, 1, 1499784165, 30, 5),
(130, 0, 1499784244, 30, 5),
(131, 1, 1499784245, 30, 5),
(132, 0, 1499784311, 30, 5),
(133, 1, 1499784312, 30, 5),
(134, 0, 1499784316, 30, 5),
(135, 1, 1499784318, 30, 5),
(136, 0, 1499784324, 30, 5),
(137, 1, 1499784326, 30, 5),
(138, 0, 1499784330, 30, 5),
(139, 1, 1499784331, 30, 5),
(140, 0, 1499785224, 3, 5),
(141, 1, 1499785226, 3, 5),
(143, 0, 1499964355, 3, 1),
(144, 1, 1499964359, 3, 1),
(145, 0, 1499964397, 3, 1),
(146, 1, 1499964399, 3, 1),
(147, 1, 1500046425, 6, 6),
(148, 1, 1500391117, 5, 5),
(149, 1, 1500391302, 5, 3),
(150, 1, 1500391380, 6, 3),
(151, 1, 1500482457, 8, 8),
(152, 1, 1500554871, 36, 36),
(153, 0, 1500556715, 36, 36),
(154, 1, 1500556718, 36, 36),
(155, 0, 1500556742, 36, 36),
(156, 1, 1500556796, 36, 36),
(157, 0, 1500556798, 36, 36),
(158, 1, 1500556840, 36, 36),
(159, 0, 1500556843, 36, 36),
(160, 1, 1500556851, 36, 36),
(161, 1, 1500559537, 3, 36),
(162, 0, 1500559672, 3, 36),
(163, 1, 1500560173, 3, 36),
(164, 1, 1500562428, 3, 37),
(165, 0, 1500570050, 3, 3),
(166, 1, 1500570052, 3, 3),
(167, 0, 1500661067, 30, 5),
(168, 1, 1500661069, 30, 5),
(169, 0, 1500670649, 3, 2),
(170, 1, 1500993674, 7, 6),
(171, 1, 1501085296, 37, 37),
(172, 1, 1501085323, 30, 37),
(173, 1, 1501097858, 8, 56),
(174, 1, 1501161103, 8, 37),
(175, 1, 1501163501, 6, 37),
(176, 0, 1501163503, 6, 37),
(177, 1, 1501247967, 8, 2),
(178, 1, 1501254856, 57, 6),
(179, 0, 1501254884, 57, 6),
(180, 1, 1501255488, 57, 6),
(181, 0, 1501258639, 57, 6),
(182, 1, 1501258649, 57, 6),
(183, 0, 1501261010, 57, 6),
(184, 1, 1501261012, 57, 6),
(185, 0, 1501261036, 57, 6),
(186, 1, 1501261049, 57, 6),
(187, 0, 1501261072, 57, 6),
(188, 1, 1501261074, 57, 6),
(189, 0, 1501261081, 57, 6),
(190, 1, 1501261083, 57, 6),
(191, 0, 1501261134, 57, 6),
(192, 1, 1501261141, 57, 6),
(193, 0, 1501261332, 57, 6),
(194, 1, 1501261334, 57, 6),
(195, 0, 1501261341, 57, 6),
(196, 1, 1501261343, 57, 6),
(197, 0, 1501261374, 57, 6),
(198, 1, 1501261376, 57, 6),
(199, 0, 1501261419, 57, 6),
(200, 1, 1501261420, 57, 6),
(201, 0, 1501262002, 57, 6),
(202, 1, 1501262003, 57, 6),
(203, 0, 1501262392, 57, 6),
(204, 0, 1501262893, 57, 6),
(205, 1, 1501262896, 57, 6),
(206, 0, 1501263196, 57, 6),
(207, 1, 1501263198, 57, 6),
(208, 0, 1501263258, 57, 6),
(209, 1, 1501263259, 57, 6),
(210, 0, 1501264157, 57, 6),
(211, 1, 1501264162, 57, 6),
(212, 0, 1501264187, 57, 6),
(213, 1, 1501264191, 57, 6),
(214, 0, 1501264738, 57, 6),
(215, 1, 1501264740, 57, 6),
(216, 0, 1501264791, 57, 6),
(217, 1, 1501264830, 57, 6),
(218, 0, 1501264910, 57, 6),
(219, 1, 1501264912, 57, 6),
(220, 0, 1501265211, 57, 6),
(221, 1, 1501265218, 57, 6),
(222, 1, 1501265259, 57, 6),
(223, 0, 1501265811, 57, 6),
(224, 1, 1501265814, 57, 6),
(225, 0, 1501265945, 57, 6),
(226, 1, 1501265947, 57, 6),
(227, 0, 1501265978, 57, 6),
(228, 1, 1501265980, 57, 6),
(229, 1, 1501266445, 57, 6),
(230, 0, 1501266472, 57, 6),
(231, 1, 1501266474, 57, 6),
(232, 0, 1501266604, 57, 6),
(233, 1, 1501266606, 57, 6),
(234, 0, 1501266618, 57, 6),
(235, 1, 1501266654, 57, 6),
(236, 0, 1501266703, 57, 6),
(237, 1, 1501266705, 57, 6),
(238, 0, 1501266814, 57, 6),
(239, 1, 1501266823, 57, 6),
(240, 0, 1501266842, 57, 6),
(241, 1, 1501266868, 57, 6),
(242, 1, 1501266974, 57, 6),
(243, 0, 1501267022, 57, 6),
(244, 1, 1501267024, 57, 6),
(245, 1, 1501267085, 58, 5),
(246, 0, 1501267844, 57, 6),
(247, 1, 1501267850, 57, 6),
(248, 0, 1501267988, 57, 6),
(249, 1, 1501268002, 57, 6),
(250, 1, 1501268695, 37, 5),
(251, 0, 1501268698, 37, 5),
(252, 1, 1501268704, 7, 5),
(253, 1, 1501278535, 8, 6),
(254, 1, 1501282122, 6, 2),
(255, 1, 1501503685, 8, 5),
(256, 1, 1501504357, 30, 5),
(257, 1, 1501504517, 6, 5),
(258, 1, 1501510030, 62, 62),
(259, 1, 1501511770, 30, 6),
(260, 1, 1501514109, 5, 6),
(261, 0, 1501514122, 5, 6),
(262, 1, 1501514125, 5, 6),
(263, 0, 1501526140, 30, 5),
(264, 1, 1501526143, 30, 5),
(265, 0, 1501526203, 30, 5),
(266, 1, 1501526208, 30, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `meritadores_perfil`
--

CREATE TABLE `meritadores_perfil` (
  `id` int(11) NOT NULL,
  `data` bigint(20) DEFAULT NULL,
  `perfis_id` int(11) NOT NULL,
  `perfis_id_amigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `meritadores_perfil`
--

INSERT INTO `meritadores_perfil` (`id`, `data`, `perfis_id`, `perfis_id_amigo`) VALUES
(27, 1501511275, 3, 8),
(29, 1501511443, 3, 32),
(30, 1501511491, 3, 30),
(33, 1501511832, 6, 30),
(40, 1501516329, 6, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `news_letter`
--

CREATE TABLE `news_letter` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `imagem` varchar(40) DEFAULT NULL,
  `titulo` text,
  `conteudo` longtext,
  `data` bigint(20) DEFAULT NULL,
  `nome_url` varchar(255) DEFAULT NULL,
  `introducao` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `imagem`, `titulo`, `conteudo`, `data`, `nome_url`, `introducao`) VALUES
(3, 'e6a8445f6e64a4e0e9c76af73a2f7812.png', 'Notícia um', '<p><span style="font-family: "Open Sans", Arial, sans-serif; font-size: 14px; text-align: justify;">Sed vitae facilisis dui, ut suscipit eros. Etiam ut convallis arcu. Nullam et tortor vel purus luctus pellentesque sit amet a nisl. Nullam tempor dolor id massa blandit, nec faucibus nunc accumsan. Duis finibus augue vel nisl pellentesque eleifend. Suspendisse sed tincidunt nulla. Nulla ut mauris non nulla condimentum lobortis eu a neque. Cras vel urna commodo, dapibus quam at, varius eros. Nam vel nulla at metus elementum lobortis rhoncus in ligula. Aliquam vulputate, sapien in egestas bibendum, augue nulla consequat enim, ut rhoncus lacus dolor et leo. Etiam mollis venenatis volutpat. Fusce dapibus, urna in sagittis laoreet, sapien sem molestie nulla, at lacinia metus nunc a dolor. Nullam consequat fringilla scelerisque. Praesent ac risus enim. Vivamus mattis vulputate leo, sit amet iaculis nunc molestie a.</span><br></p>', 1499966485, 'noticia-um', NULL),
(4, '34fd81bf9368d110d6cf8cc6a7475214.jpg', 'Est mollis veritatis qui penatibus odio cursus curae optio pariatur cubilia', '<p>Est mollis veritatis qui penatibus odio cursus curae optio pariatur cubilia viverra commodo veritatis imperdiet doloribus, proin iste molestias fermentum vero ullamco nostrum perspiciatis nostrud hymenaeos wisi? Exercitation? Commodo rhoncus dis, ultricies pulvinar beatae omnis? Ligula sit dignissim sequi eligendi eveniet incidunt, enim expedita repellendus. Voluptas eius lacus natus dui molestias, potenti, dolore sapien maiores cras, etiam eveniet mattis enim nostrum morbi volutpat, dictum? Assumenda proin, fames nam euismod leo excepteur ultrices? Dolor nam consequatur molestiae inventore delectus explicabo, ad exercitationem senectus sagittis dictumst, hendrerit semper quia, magni, voluptas porta quidem eaque placerat sapiente incididunt quae accusamus vitae, reprehenderit facere.</p><p>noticia</p><p>Eum neque bibendum viverra excepteur commodo pretium conubia quis risus accumsan quasi molestias blandit mus. Iaculis cillum quas. Repellat soluta. Autem excepteur occaecat eius, est, nemo fugiat, voluptatibus phasellus magnis pariatur pretium accusamus provident, esse aptent, nostra etiam tristique, conubia condimentum feugiat optio nascetur! Eius, lorem soluta mus! Sociis mus voluptate egestas error lacinia ullamcorper. Minus, animi fringilla luctus provident dolores wisi torquent eum quis montes praesentium quia aute posuere, nemo odio? Soluta inceptos odit, mus, laudantium venenatis soluta qui, accusantium, inceptos quas proident! Morbi minim felis adipisicing, reiciendis in incidunt habitasse wisi, magni mollis ipsam! Quisquam autem laudantium facilis.</p><p><br></p><p>Iusto aptent dapibus tortor? Facere porro? Tristique, adipiscing egestas tempus, hac habitant, deleniti dolor curabitur cupidatat. Lobortis nisl viverra molestie deserunt mauris netus consequat nihil asperiores parturient adipisci occaecat posuere tristique diam ex per anim duis, lectus aliqua sagittis omnis, nec fames quam class urna per orci congue, odio quo magnam consequatur! Facilis? Posuere aperiam. Veritatis voluptas ultricies enim error. Porta interdum adipisci iure venenatis a! Assumenda fuga! Suspendisse saepe amet occaecat? Mi similique, molestie esse arcu, tempora, quia nemo asperiores incididunt rerum leo, curabitur at molestie metus porttitor, magnam! Nibh delectus mauris! Irure? Aperiam, porttitor, perferendis veniam euismod blandit.</p>', 1500492008, 'est-mollis-veritatis-qui-penatibus-odio-cursus-curae-optio-pariatur-cubilia-1', NULL),
(5, '20f8b71bf3a7bc995a92fc008ed51844.png', ' eaque curae? Ornare possimus alias cillum nonummy, aspernatur, convallis? ', '<p>Dignissim aute itaque? Reiciendis! Enim sequi voluptatem, tempora eos faucibus nonummy a, nulla fusce, dui quas magnis ex pariatur sit, nostra? Corrupti odio commodo culpa voluptates reprehenderit justo harum est tristique ultricies et nunc quis repellat potenti pharetra? Facere quo cras pretium natoque nostra! Fames cubilia mollis dolores, impedit eligendi ornare magni? Proident, inventore nisl, nihil. Elit laborum fringilla accumsan! Platea porttitor litora, voluptates, placerat elementum, libero cillum unde elementum, illo dicta explicabo autem suscipit praesentium autem, montes, eaque curae? Ornare possimus alias cillum nonummy, aspernatur, convallis? Eget adipisci ullamco iste asperiores adipisicing dictum omnis lobortis, consequatur cumque aliqua ante.</p><p><br></p><p>Condimentum deleniti pharetra nostrud, placeat repellendus! Iure massa eveniet molestie doloribus lectus! Quae, augue nemo! Temporibus possimus hac? Tortor ipsam! Facilisi occaecat? Ultrices dis? Volutpat aenean, sociis eligendi aute, penatibus magna diam nisl, autem beatae egestas cubilia perferendis exercitation laboriosam scelerisque vero, deleniti pede, netus optio eos incididunt? Porttitor dignissim, faucibus nisi, aenean dolorum, ornare. Risus, mollis lorem eveniet quisque, aspernatur debitis, lorem lacus repudiandae torquent massa ipsum facilis aut? Voluptate id dolorum similique magna iste, dignissim porro ipsa aliquam, tristique voluptatum facere explicabo adipiscing eget atque molestie modi pharetra. Excepturi optio dolore, mattis magna ex, senectus sapien tenetur tempora.</p><p><br></p><p>Aspernatur magni illo montes. Ullam soluta autem repellendus, orci perspiciatis, lacinia culpa corrupti? Turpis etiam ullamco facilisis aperiam. Numquam aute ullamco veniam voluptatibus fugit, ridiculus. Natoque asperiores sapiente eveniet pariatur? Voluptatibus proident morbi doloribus. Doloribus, delectus. Varius ornare cursus ac facere nec exercitationem eligendi ipsa iusto euismod dolores, blandit pharetra fermentum alias tenetur! Nec nullam hac. Tempore, repudiandae dui deserunt, exercitationem magnam nibh vivamus dolorum class, ullamco temporibus curabitur occaecat class impedit corrupti eos wisi eget quae parturient inceptos mollis. Quod, justo dolorem commodi! Tincidunt reprehenderit sapiente nulla ullam molestie, nunc soluta ab inventore. Nonummy diamlorem unde hic, interdum. Error.</p>', 1500492070, 'eaque-curae-ornare-possimus-alias-cillum-nonummy-aspernatur-convallis', NULL),
(6, 'e6e13fbe3e9c1fb363605c6e3aa233c0.jpg', 'Quidem cillum integer cras, venenatis laborum', '<p>Sapien! Posuere, ornare mi luctus veritatis, commodi itaque facilisis modi? Dolorem. Occaecati, culpa nullam pede pulvinar risus? Quasi condimentum minim mauris? Condimentum, arcu a, eum, quaerat, occaecat, magnis. Reiciendis urna? Luctus enim voluptatum sequi iure impedit? Dictum feugiat velit tristique? Sapien deleniti? Cumque dolorem elit occaecati consequatur, maecenas, pede proident montes nonummy facere tortor, corrupti conubia sed tempus, fugiat consequatur. Magnis possimus, quasi platea saepe vel! Nullam repellendus, illo, turpis! Magnam incidunt! Viverra dictumst sequi. Fames! Quas, nascetur delectus! Perspiciatis, dolore taciti facilis habitant? Quidem cillum integer cras, venenatis laborum, aliquam etiam mauris cras duis assumenda, cras ration<span style="color: rgb(0, 0, 0); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Quidem cillum integer cras, venenatis laborum, aliquam etiam mauris cras duis assumenda, cras ration</span>e, ullamco litora.</p><p><br></p><p>Aspernatur laudantium aliquip! Labore! Voluptatibus expedita litora provident nemo officiis nunc libero nesciunt primis torquent? Error, sequi egestas varius ipsam, quos augue quasi, nisl felis molestias ducimus autem aliquip facere, voluptas hendrerit, similique corrupti curabitur aptent ea vulputate. Wisi pulvinar eget hendrerit, proin elit viverra malesuada excepturi voluptates quisquam, lacus. Quibusdam torquent! Amet cumque? Hac reprehenderit tincidunt phasellus, velit fames non delectus provident vero morbi soluta, nisl per eiusmod. Iure suscipit necessitatibus! Eum molestiae est commodo occaecati habitasse urna quisquam? Phasellus! Voluptatibus iure voluptates. Quaerat sodales tempor! Aliqua, quis mattis! Arcu consequatur voluptatem voluptatibus cillum aspernatur, pariatur fusce vero. Distinctio.</p><p><br></p><p>Mollit habitant tempore praesentium quibusdam euismod augue iure optio vehicula laboriosam aliqua, commodi ut voluptatibus? Inventore, dolor, hic, fusce sagittis taciti sapien placeat commodi minus quisque aliquet? Fugit cubilia nisi! Tristique voluptatum dolorum qui libero deserunt beatae montes nulla voluptas bibendum auctor lectus delectus sunt irure iaculis qui! Placerat fugiat. Nobis, aliqua ultricies magnis, incidunt, placerat posuere tortor fugiat repellendus, vivamus, a deserunt exercitationem aute nibh, incididunt laborum, fuga morbi cupiditate ligula aut rhoncus. Totam egestas, ridiculus aliquip expedita dolor consectetuer? Hic iure fermentum, nullam, saepe massa voluptatum et sed suscipit urna similique inventore adipisicing mollis, donec, incidunt? Euismod suspendisse.</p>', 1500492116, 'quidem-cillum-integer-cras-venenatis-laborum', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias_comentarios`
--

CREATE TABLE `noticias_comentarios` (
  `id` int(11) NOT NULL,
  `comentario` mediumtext,
  `noticias_id` int(11) NOT NULL,
  `perfis_id` int(11) NOT NULL,
  `data` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `noticias_comentarios`
--

INSERT INTO `noticias_comentarios` (`id`, `comentario`, `noticias_id`, `perfis_id`, `data`) VALUES
(1, 'teste\r\n', 6, 1, 1501507743);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias_comentarios_respostas`
--

CREATE TABLE `noticias_comentarios_respostas` (
  `id` int(11) NOT NULL,
  `comentario` mediumtext,
  `comentarios_id` int(11) NOT NULL,
  `perfis_id` int(11) NOT NULL,
  `data` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `noticias_comentarios_respostas`
--

INSERT INTO `noticias_comentarios_respostas` (`id`, `comentario`, `comentarios_id`, `perfis_id`, `data`) VALUES
(1, 'resp teste', 1, 1, 1501507939);

-- --------------------------------------------------------

--
-- Estrutura da tabela `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `paises`
--

INSERT INTO `paises` (`id`, `descricao`) VALUES
(1, 'Brasil'),
(2, 'Estados Unidos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `partidos`
--

CREATE TABLE `partidos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `partidos`
--

INSERT INTO `partidos` (`id`, `descricao`) VALUES
(1, 'PT'),
(2, 'PMDB'),
(3, 'PSDB'),
(4, 'PTB'),
(5, 'PDT'),
(6, 'DEM'),
(7, 'PCdoB'),
(8, 'PSB'),
(9, 'PTC'),
(10, 'PSC'),
(11, 'PMN'),
(12, 'PRP'),
(13, 'PPS'),
(14, 'PV'),
(15, 'PTdoB'),
(16, 'PP'),
(17, 'PSTU'),
(18, 'PCB'),
(19, 'PRTB'),
(20, 'PHS'),
(21, 'PSDC'),
(22, 'PCO'),
(23, 'PODE'),
(24, 'PSL'),
(25, 'PRB'),
(26, 'PSOL'),
(27, 'PR'),
(28, 'PSD'),
(29, 'PPL'),
(30, 'PEN'),
(31, 'PROS'),
(32, 'SD'),
(33, 'NOVO'),
(34, 'REDE'),
(35, 'PMB');

-- --------------------------------------------------------

--
-- Estrutura da tabela `patrimonio_declarado`
--

CREATE TABLE `patrimonio_declarado` (
  `id` int(11) NOT NULL,
  `perfis_candidato_id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `patrimonio_declarado`
--

INSERT INTO `patrimonio_declarado` (`id`, `perfis_candidato_id`, `descricao`, `valor`) VALUES
(2, 4, 'nada', '151.00'),
(6, 18, 'asd', '123.67'),
(10, 19, 'Um hotel', '99999999.99'),
(11, 3, 'a123', '123.00'),
(12, 44, 'Teste', '1234.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `perfis_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valor` decimal(10,2) NOT NULL,
  `valor_frete` decimal(8,2) NOT NULL,
  `valor_total` decimal(10,2) NOT NULL,
  `data` bigint(20) NOT NULL,
  `tipo_frete` varchar(10) DEFAULT NULL COMMENT '41106 - PAC\n40010 - SEDEX\n40215 - SEDEX10',
  `codigo_rastreio` varchar(10) DEFAULT NULL,
  `forma_pagamento` tinyint(1) NOT NULL COMMENT '1 - pagseguro\n2 - boleto',
  `tipo_pagamento` tinyint(1) DEFAULT NULL COMMENT '1 - Cartão de crédito\n2 - Boleto\n3 - Débito online\n4 - Saldo PagSeguro\n5 - Oi Paggo\n7 - Depósito em conta\n',
  `codigo_pedido` varchar(50) DEFAULT NULL,
  `status_pedido` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - Pagamento não inicializado\n1 - Aguardando confirmacao do pagamento\n2 - Pago\n3 - Em Transporte\n4 - Finalizado\n9 - cancelado',
  `id_transacao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `perfis_id`, `produtos_id`, `quantidade`, `valor`, `valor_frete`, `valor_total`, `data`, `tipo_frete`, `codigo_rastreio`, `forma_pagamento`, `tipo_pagamento`, `codigo_pedido`, `status_pedido`, `id_transacao`) VALUES
(1, 1, 2, 5, '30.50', '23.00', '54.00', 0, '41106', NULL, 1, NULL, 'U1-5952571d2e368', 0, NULL),
(12, 5, 2, 50, '30.50', '29.20', '1554.20', 0, '40010', '234', 1, NULL, 'U5-5952a0680beec', 2, NULL),
(13, 1, 14, 2, '1000.00', '56.60', '2056.60', 0, '40010', NULL, 1, NULL, 'U1-5953a1bcd9478', 0, NULL),
(14, 1, 2, 3, '30.50', '24.90', '116.40', 0, '40010', NULL, 1, NULL, 'U1-5953af02427b4', 0, NULL),
(15, 1, 14, 10, '1000.00', '56.60', '10056.60', 0, '40010', NULL, 1, NULL, 'U1-5953af5adfa69', 0, NULL),
(16, 1, 2, 1, '30.50', '24.90', '55.40', 0, '40010', NULL, 1, NULL, 'U1-5953dfca3ffbc', 0, NULL),
(50, 1, 1, 1, '30.00', '22.00', '52.00', 0, '41106', NULL, 1, NULL, 'U1-597b3ada3b038', 0, NULL),
(51, 1, 1, 1, '30.00', '22.00', '52.00', 0, '41106', NULL, 1, NULL, 'U1-597b3afe5c9f8', 0, NULL),
(52, 1, 1, 1, '30.00', '22.00', '52.00', 20170728, '41106', '321654987', 1, NULL, 'U1-597b3b8d1a348', 1, NULL),
(53, 1, 1, 1, '30.00', '22.00', '52.00', 0, '41106', NULL, 1, NULL, 'U1-597b3bb4b4c36', 0, NULL),
(54, 1, 1, 1, '30.00', '22.00', '52.00', 20170728, '41106', NULL, 1, NULL, 'U1-597b3bfc17464', 0, NULL),
(55, 61, 1, 1, '30.00', '25.70', '55.70', 2017, '41106', NULL, 1, NULL, 'U61-597b904f24f60', 0, NULL),
(56, 5, 1, 3, '30.00', '23.60', '113.60', 2017, '41106', NULL, 1, NULL, 'U5-597f3c7564db8', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil_endereco`
--

CREATE TABLE `perfil_endereco` (
  `id` int(11) NOT NULL,
  `perfis_id` int(11) NOT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `cidade_natal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `perfil_endereco`
--

INSERT INTO `perfil_endereco` (`id`, `perfis_id`, `cep`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `uf`, `pais`, `cidade_natal`) VALUES
(1, 1, '39404-011', 'Rua República da Colômbia', '101', 'casa', 'Conjunto Residencial JK', 'Montes Claros', 'MG', NULL, NULL),
(2, 3, '39400-101', 'Rua Cônego Marcos', '157', 'casa', 'Centro', 'Montes Claros', 'MG', NULL, NULL),
(3, 2, '39401-001', 'Avenida Cula Mangabeira', '1538', '', 'Santo Expedito', 'Montes Claros', 'MG', NULL, NULL),
(5, 5, '39594-000', 'Manoel Ferreira Silva', '31', '', 'Alto da Boa Vista', 'Itacambira', 'MG', NULL, NULL),
(6, 4, '39400-364', 'Rua Gregório Veloso', '222', '', 'São José', 'Montes Claros', 'MG', NULL, NULL),
(7, 30, '39594-000', 'Rua 1', '130', '', 'Centro', 'Montes Claros', 'SP', NULL, NULL),
(8, 8, '39594000', 'Rua 1', '12', '', 'Centro', 'Itacambira', 'MG', NULL, NULL),
(9, 32, '39401-001', 'Avenida Cula Mangabeira', '21', '', 'Santo Expedito', 'Montes Claros', 'MG', NULL, NULL),
(10, 6, '49000-401', 'rua teste', '222', 'c', 'A dois', 'montes claros ', 'mg', NULL, NULL),
(11, 37, '04859-230', 'Rua Anita Malfatti', '32', '', 'Jardim Alvorada (Zona Sul)', 'São Paulo', 'SP', NULL, NULL),
(12, 60, '23088-390', 'Rua Anita Malfatti', '12', '', 'Campo Grande', 'Rio de Janeiro', 'RJ', NULL, NULL),
(13, 61, '23088-390', 'Rua Anita Malfatti', '21', '', 'Campo Grande', 'Rio de Janeiro', 'RJ', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfis`
--

CREATE TABLE `perfis` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `primeiro_nome` text,
  `ultimo_nome` text,
  `tipo` int(11) DEFAULT '1' COMMENT '1 - Perfil Usuário, 2 - Perfil Candidato',
  `sobre` mediumtext,
  `sexo` char(1) DEFAULT NULL,
  `profissoes_id` int(11) DEFAULT NULL,
  `graus_formacao_id` int(11) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `foto_perfil` varchar(255) DEFAULT NULL,
  `foto_capa` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `idiomas` text,
  `cidade_natal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `perfis`
--

INSERT INTO `perfis` (`id`, `nome`, `primeiro_nome`, `ultimo_nome`, `tipo`, `sobre`, `sexo`, `profissoes_id`, `graus_formacao_id`, `cpf`, `email`, `senha`, `foto_perfil`, `foto_capa`, `facebook`, `twitter`, `instagram`, `linkedin`, `token`, `data_nascimento`, `idiomas`, `cidade_natal`) VALUES
(1, 'Marcos Vinicius', 'Marco', 'Vinicius', 1, '<p style="margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;="" background-color:="" rgb(255,="" 255,="" 255);"=""><strong>Marcos Vinicius</strong></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;="" background-color:="" rgb(255,="" 255,="" 255);"="">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dictum quam nunc, eu scelerisque nulla cursus sollicitudin. Etiam quis placerat elit. Aliquam ut convallis odio. Maecenas molestie tincidunt tempus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas accumsan mauris vel elementum condimentum. Curabitur quis dapibus orci. Fusce quis est id urna ultrices ullamcorper eu ut diam. Nam interdum dolor arcu, eu rhoncus ipsum elementum sit amet. Donec dapibus feugiat augue sed gravida.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;="" background-color:="" rgb(255,="" 255,="" 255);"=""><strong>História</strong></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;="" background-color:="" rgb(255,="" 255,="" 255);"="">Etiam elementum mauris ut velit feugiat, in dignissim tortor consequat. Mauris eleifend est neque, non iaculis dui mollis ut. Nunc vel lacus vel nisl vulputate iaculis pellentesque ac nulla. Ut dignissim lobortis turpis, vitae scelerisque eros. In hac habitasse platea dictumst. Vestibulum placerat, lacus quis hendrerit pellentesque, nunc dui vulputate sem, et blandit augue eros pharetra tellus. Curabitur facilisis in justo eu porta. Integer malesuada ullamcorper venenatis. Praesent placerat dui et auctor placerat. Fusce porta in dolor nec ullamcorper. Phasellus in venenatis risus. Cras tincidunt felis odio, sit amet convallis sapien fringilla ac. Pellentesque faucibus orci sed turpis fermentum efficitur. Pellentesque egestas lectus vitae orci scelerisque, ac gravida orci porta. Aliquam efficitur, lectus non consequat convallis, elit eros efficitur ipsum, in placerat velit magna eget massa.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;="" background-color:="" rgb(255,="" 255,="" 255);"=""><strong>Currículo</strong></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;="" background-color:="" rgb(255,="" 255,="" 255);"="">In sem nisl, ultrices a euismod sed, porta quis eros. Vivamus dapibus venenatis orci a euismod. Maecenas non turpis magna. Nulla venenatis egestas cursus. Phasellus gravida auctor enim, vel tristique lectus sollicitudin sed. Fusce posuere quam at fringilla luctus. Phasellus ac vehicula purus. Proin et purus porttitor tortor convallis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent non lectus eros. Praesent tempus semper ante, a rhoncus turpis.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;="" background-color:="" rgb(255,="" 255,="" 255);"="">Mauris ut aliquet lorem. Mauris ut tempor velit, volutpat imperdiet ex. Fusce consequat non velit vel feugiat. Suspendisse egestas imperdiet sapien, id placerat neque dapibus eu. Integer viverra est sed neque tristique egestas. Proin porta metus et libero euismod, eget pellentesque risus vehicula. Vestibulum eget fermentum lorem. Nullam libero neque, molestie in ornare eget, mollis sed magna. Morbi egestas lobortis commodo. Cras non odio rhoncus ante condimentum iaculis non venenatis risus. Suspendisse luctus pharetra lectus sed pellentesque. Etiam nec velit eleifend, finibus massa nec, hendrerit purus. Ut finibus convallis odio nec elementum. Donec eget metus placerat, fermentum magna nec, pulvinar mauris. Proin ac luctus elit. Cras ultrices finibus ullamcorper.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;="" background-color:="" rgb(255,="" 255,="" 255);"=""><strong>Experiência</strong></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;="" background-color:="" rgb(255,="" 255,="" 255);"="">Curabitur in turpis elit. Pellentesque bibendum ultrices sem eget pharetra. In quis leo luctus, consequat velit vitae, pulvinar ligula. Integer eleifend feugiat est, vitae ultrices augue commodo ac. Curabitur cursus erat vel velit tristique tempus. Aliquam eu convallis erat. Nunc risus eros, vulputate vitae mi sed, auctor aliquam arcu. Integer sed nulla sed augue varius pulvinar ut vitae mi. Donec quis faucibus neque. Phasellus libero felis, accumsan id erat eleifend, iaculis efficitur velit.</p>', 'M', 1, 6, '115.800.856-28', 'marcos@tectotum.com.br', '202cb962ac59075b964b07152d234b70', 'marcos.jpg', 'c8fb68ab48639bec5282e9edf8968091.png', 'facebook.com', 'twitter.com', 'instagram.com', 'linkedin.com', '59b5990cf0a480f1c505a843edcef76be292e994', NULL, NULL, NULL),
(2, 'Kennedy Rafael', 'Kennedy', 'Rafael', 1, NULL, 'M', 1, 1, '089.147.906-65', 'kennedytectotum@gmail.com', '202cb962ac59075b964b07152d234b70', '123.jpg', 'capa_jair.jpg', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(3, 'Getúlio Dornelles  Vargas', 'Getúlio', 'Vargas', 1, '<p open="" style="box-sizing: border-box; margin: 0px 0px 15px; font-family: " varela="" round",="" helveticaneue,="" "helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 15px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" letter-spacing:="" orphans:="" 2;="" text-align:="" justify;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" text-decoration-style:="" initial;="" text-decoration-color:="" padding:="" color:="" rgb(0,="" 0,="" 0);"=""><strong style="box-sizing: border-box; font-weight: bold;">Getúlio <br></strong></p><p open="" style="box-sizing: border-box; margin: 0px 0px 15px; font-family: " varela="" round",="" helveticaneue,="" "helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 15px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" letter-spacing:="" orphans:="" 2;="" text-align:="" justify;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" text-decoration-style:="" initial;="" text-decoration-color:="" padding:="" color:="" rgb(0,="" 0,="" 0);"="">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dictum quam nunc, eu scelerisque nulla cursus sollicitudin. Etiam quis placerat elit. Aliquam ut convallis odio. Maecenas molestie tincidunt tempus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas accumsan mauris vel elementum condimentum. Curabitur quis dapibus orci. Fusce quis est id urna ultrices ullamcorper eu ut diam. Nam interdum dolor arcu, eu rhoncus ipsum elementum sit amet. Donec dapibus feugiat augue sed gravida.</p><p open="" style="box-sizing: border-box; margin: 0px 0px 15px; font-family: " varela="" round",="" helveticaneue,="" "helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 15px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" letter-spacing:="" orphans:="" 2;="" text-align:="" justify;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" text-decoration-style:="" initial;="" text-decoration-color:="" padding:="" color:="" rgb(0,="" 0,="" 0);"=""><strong style="box-sizing: border-box; font-weight: bold;">História</strong></p><p open="" style="box-sizing: border-box; margin: 0px 0px 15px; font-family: " varela="" round",="" helveticaneue,="" "helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 15px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" letter-spacing:="" orphans:="" 2;="" text-align:="" justify;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" text-decoration-style:="" initial;="" text-decoration-color:="" padding:="" color:="" rgb(0,="" 0,="" 0);"="">Etiam elementum mauris ut velit feugiat, in dignissim tortor consequat. Mauris eleifend est neque, non iaculis dui mollis ut. Nunc vel lacus vel nisl vulputate iaculis pellentesque ac nulla. Ut dignissim lobortis turpis, vitae scelerisque eros. In hac habitasse platea dictumst. Vestibulum placerat, lacus quis hendrerit pellentesque, nunc dui vulputate sem, et blandit augue eros pharetra tellus. Curabitur facilisis in justo eu porta. Integer malesuada ullamcorper venenatis. Praesent placerat dui et auctor placerat. Fusce porta in dolor nec ullamcorper. Phasellus in venenatis risus. Cras tincidunt felis odio, sit amet convallis sapien fringilla ac. Pellentesque faucibus orci sed turpis fermentum efficitur. Pellentesque egestas lectus vitae orci scelerisque, ac gravida orci porta. Aliquam efficitur, lectus non consequat convallis, elit eros efficitur ipsum, in placerat velit magna eget massa.</p><p open="" style="box-sizing: border-box; margin: 0px 0px 15px; font-family: " varela="" round",="" helveticaneue,="" "helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 15px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" letter-spacing:="" orphans:="" 2;="" text-align:="" justify;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" text-decoration-style:="" initial;="" text-decoration-color:="" padding:="" color:="" rgb(0,="" 0,="" 0);"=""><strong style="box-sizing: border-box; font-weight: bold;">Currículo</strong></p><p open="" style="box-sizing: border-box; margin: 0px 0px 15px; font-family: " varela="" round",="" helveticaneue,="" "helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 15px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" letter-spacing:="" orphans:="" 2;="" text-align:="" justify;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" text-decoration-style:="" initial;="" text-decoration-color:="" padding:="" color:="" rgb(0,="" 0,="" 0);"="">In sem nisl, ultrices a euismod sed, porta quis eros. Vivamus dapibus venenatis orci a euismod. Maecenas non turpis magna. Nulla venenatis egestas cursus. Phasellus gravida auctor enim, vel tristique lectus sollicitudin sed. Fusce posuere quam at fringilla luctus. Phasellus ac vehicula purus. Proin et purus porttitor tortor convallis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent non lectus eros. Praesent tempus semper ante, a rhoncus turpis.</p><p open="" style="box-sizing: border-box; margin: 0px 0px 15px; font-family: " varela="" round",="" helveticaneue,="" "helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 15px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" letter-spacing:="" orphans:="" 2;="" text-align:="" justify;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" text-decoration-style:="" initial;="" text-decoration-color:="" padding:="" color:="" rgb(0,="" 0,="" 0);"="">Mauris ut aliquet lorem. Mauris ut tempor velit, volutpat imperdiet ex. Fusce consequat non velit vel feugiat. Suspendisse egestas imperdiet sapien, id placerat neque dapibus eu. Integer viverra est sed neque tristique egestas. Proin porta metus et libero euismod, eget pellentesque risus vehicula. Vestibulum eget fermentum lorem. Nullam libero neque, molestie in ornare eget, mollis sed magna. Morbi egestas lobortis commodo. Cras non odio rhoncus ante condimentum iaculis non venenatis risus. Suspendisse luctus pharetra lectus sed pellentesque. Etiam nec velit eleifend, finibus massa nec, hendrerit purus. Ut finibus convallis odio nec elementum. Donec eget metus placerat, fermentum magna nec, pulvinar mauris. Proin ac luctus elit. Cras ultrices finibus ullamcorper.</p><p open="" style="box-sizing: border-box; margin: 0px 0px 15px; font-family: " varela="" round",="" helveticaneue,="" "helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 15px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" letter-spacing:="" orphans:="" 2;="" text-align:="" justify;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" text-decoration-style:="" initial;="" text-decoration-color:="" padding:="" color:="" rgb(0,="" 0,="" 0);"=""><strong style="box-sizing: border-box; font-weight: bold;">Experiência</strong></p><p open="" style="box-sizing: border-box; margin: 0px 0px 15px; font-family: " varela="" round",="" helveticaneue,="" "helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 15px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" letter-spacing:="" orphans:="" 2;="" text-align:="" justify;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" text-decoration-style:="" initial;="" text-decoration-color:="" padding:="" color:="" rgb(0,="" 0,="" 0);"="">Curabitur in turpis elit. Pellentesque bibendum ultrices sem eget pharetra. In quis leo luctus, consequat velit vitae, pulvinar ligula. Integer eleifend feugiat est, vitae ultrices augue commodo ac. Curabitur cursus erat vel velit tristique tempus. Aliquam eu convallis erat. Nunc risus eros, vulputate vitae mi sed, auctor aliquam arcu. Integer sed nulla sed augue varius pulvinar ut vitae mi. Donec quis faucibus neque. Phasellus libero felis, accumsan id erat eleifend, iaculis efficitur velit.</p>', 'M', 2, 6, '155.151.515-15', 'getulio@tectotum.com.br', '202cb962ac59075b964b07152d234b70', '73291f0628ae3a86b81a880ac1111385.png', 'capa_getulio.png', 'facebook.com', 'twitter.com', 'instagram0.com', 'linkedin.com', '', '1997-07-25', 'português', NULL),
(4, 'Adler Guerra', 'Adler', 'Guerra', 1, 'Lorem temporibus eiusmod voluptate deleniti habitant tenetur aptent? Rutrum cursus metus facilis? Eleifend ea. Rhoncus nostrud, feugiat dolores! Quos mollis, non unde repellendus recusandae distinctio suspendisse mi animi! Commodo voluptas sapien fugiat perferendis dignissimos ducimus magnam distinctio habitasse perferendis nullam dis? Magnis porro mauris maxime hic, voluptates quasi aute molestias praesentium ', 'M', NULL, NULL, NULL, 'adlerguerra@yahoo.com.br', '202cb962ac59075b964b07152d234b70', '8a6dafac1da8e88b7af0fc9761841977.png', 'd8ec5175ffb39f4a06ddb134dfdfa21d.jpg', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(5, 'Jardel Nathan de Soura Rodrigues', 'Jardel', 'Nathan', 2, '', 'M', 2, 10, '134.002.416-01', 'jardelnathan22@hotmail.com', '202cb962ac59075b964b07152d234b70', '3d5861c9f437cb62b5f670bff05f99c3.jpg', '73291f0628ae3a86b81a880ac1444385.jpg', 'www.facebook.com/jardel.nathan', 'twitter.com/jardelnathan', '', 'linkedin.com', '9a93cd470dcfd6cad8e7d06fc82562df4b9c0f6a', '1997-05-22', '', 'itacambira'),
(6, 'herberth', 'herberth', 'teste', 2, '', 'M', 1, NULL, '', 'teste@teste.com', '202cb962ac59075b964b07152d234b70', 'eca9cba5774ca109a16ed14db988af94.jpg', 'addba79d3112fc9787d6fe8524f893f0.png', '', '', '', '', '', '0000-00-00', '', ''),
(7, 'Teste', 'Teste', 'Teste', 2, NULL, 'F', 1, 3, '2312', '123@123.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(8, 'Obama', 'Barack', 'Obama', 2, NULL, 'M', NULL, 9, NULL, 'obama@email.com', '202cb962ac59075b964b07152d234b70', 'e651d5f96a4f26201ac57ddb1ad4552c.jpg', 'dc522dcb14a56d32389a3600ee6fa783.png', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(29, 'George Bush', 'George', 'Bush', 2, NULL, 'M', NULL, NULL, NULL, 'gwb@email.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(30, 'Donald Trump', 'Donald', 'Trump', 2, '', 'M', 1, 2, '', 'trump@email.com', '202cb962ac59075b964b07152d234b70', '5a4f92c1a01b57b347df4f11c3affa2b.jpg', '4611aca2efacae79ac840f25960a5e19.jpg', '', '', '', '', '', '1982-02-15', '', NULL),
(31, 'Eleitor', 'Eleitor', '', 1, NULL, 'M', NULL, NULL, NULL, 'email@email.xpm', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(32, 'Michel Temer', 'Michel', 'Temer', 2, '', 'M', 1, 4, '113.213.215-31', 'temer@email.com', '202cb962ac59075b964b07152d234b70', '768eb6edc5a199a4aca313b189846490.jpg', NULL, '', '', '', '', '', NULL, NULL, NULL),
(33, 'Tec 02', 'Tec', '02', 1, NULL, 'M', NULL, NULL, NULL, 'tec02@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(34, 'Teste 5', 'Teste', '5', 1, NULL, 'M', NULL, NULL, NULL, 'email@email2.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(35, 'José Serra', 'José', 'Serrra', 2, NULL, 'M', NULL, NULL, NULL, 'joseserra@teste.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(36, 'Magno Malta', 'Magno', 'Malta', 2, NULL, 'M', NULL, NULL, NULL, 'magnomalta@teste.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(37, 'Maria Do Rosário', 'Maria', 'Do Rosário', 2, '', 'F', 2, 3, '', 'maria@teste.com', '202cb962ac59075b964b07152d234b70', 'e77c0d787bef20797266c618dc6970ae.jpeg', NULL, '', '', '', '', '', '1970-02-22', '', 'Minas'),
(38, 'Perfil teste 3', 'Perfil', 'Perfil3', 2, NULL, 'M', NULL, NULL, NULL, 'perfil3@teste.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(39, 'teste tec02', 'Teste', 'Tec02', 1, NULL, 'M', NULL, NULL, NULL, 'testetec02@tectotum.com.br', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(40, 'Teste Tectotum03', 'teste', 'Tectoum03', 1, NULL, 'F', NULL, NULL, NULL, 'teste@tectotum.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(41, 'Teste Tectotum03', 'Teste', 'Tectoum03', 1, NULL, 'F', NULL, NULL, NULL, 'teste@tectotum.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(42, 'Teste Tectotum03', 'Teste', 'Tectoum03', 1, NULL, 'F', NULL, NULL, NULL, 'teste@tectotum.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(43, 'Teste Tectotum03', 'Teste', 'Tectoum', 1, NULL, 'F', NULL, NULL, NULL, 'teste@tectotum.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(44, 'Teste tectotum', 'Teste', 'Tectoum', 2, NULL, 'F', NULL, NULL, NULL, 'teste@tectotum03.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(45, 'teste email', 'Teste', 'Email', 2, NULL, 'M', NULL, NULL, NULL, 'herberth.caldeira@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, 'edb08c4613793e81ede26d42cf3c7b2f9105feea', NULL, NULL, NULL),
(52, 'last', 'last', 'last', 1, NULL, 'M', NULL, NULL, NULL, 'last@last.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(53, 'teste', 'teste', 'teste', 2, NULL, 'M', NULL, NULL, NULL, 'teste1@teste.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(54, 'teste2', 'teste2', 'teste', 2, NULL, 'F', NULL, NULL, NULL, 'teste2@teste.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(55, 'Jardel Nathan', 'primeiro', 'ultimo', 2, NULL, 'M', NULL, NULL, NULL, 'testenomes@email.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(56, 'Tectotum TEcnologia 03', 'Tectotum ', 'teste03', 1, NULL, 'M', NULL, NULL, NULL, 'gerencia03@tec.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(57, 'Jair Bolsonaro', 'Jair', 'Bolsonaro', 2, NULL, 'M', NULL, NULL, NULL, 'jair@teste.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(58, 'Luiz Inácio Lula da Silva', 'Luiz', ' Silva', 2, NULL, 'M', NULL, NULL, NULL, 'lula@teste.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(59, NULL, 'Nome1', 'Nome2', 2, NULL, 'F', NULL, NULL, NULL, 'nomesteste@email.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(60, 'Teste', 'teste', 'de nome', 2, '', 'M', 1, 1, '', 'teste132@email.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, '', '', '', '', '', '0000-00-00', '', ''),
(61, NULL, 'teste', 'nome', 2, '', 'M', NULL, NULL, '', 'testenome@teste.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, '', '', '', '', '', '0000-00-00', '', 'Montes Claros'),
(62, 'Nelson', 'Nelson', 'Mandela', 2, '', 'M', 1, 8, '', 'mandela@email.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, '', '', '', '', '', '1918-07-18', '', ' Mvezo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfis_candidato`
--

CREATE TABLE `perfis_candidato` (
  `id` int(11) NOT NULL,
  `perfis_id` int(11) NOT NULL,
  `partidos_id` int(11) DEFAULT NULL,
  `numero_empresas` int(11) DEFAULT NULL,
  `area_atuacao_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `perfis_candidato`
--

INSERT INTO `perfis_candidato` (`id`, `perfis_id`, `partidos_id`, `numero_empresas`, `area_atuacao_id`) VALUES
(2, 3, 1, 32, 4),
(3, 7, 1, 1, 1),
(4, 8, 1, 0, 4),
(18, 29, NULL, NULL, NULL),
(19, 30, 15, 0, 1),
(20, 32, 15, 21, 4),
(21, 4, 4, 1, 1),
(32, 5, 17, 0, 3),
(33, 35, NULL, NULL, NULL),
(34, 36, NULL, NULL, NULL),
(35, 37, 18, 0, 3),
(37, 2, NULL, NULL, NULL),
(38, 55, NULL, NULL, NULL),
(39, 57, NULL, NULL, NULL),
(40, 58, NULL, NULL, NULL),
(41, 59, NULL, NULL, NULL),
(42, 2, 2, 0, 1),
(43, 61, NULL, 0, NULL),
(44, 62, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfis_candidato_acoes_extracurriculares`
--

CREATE TABLE `perfis_candidato_acoes_extracurriculares` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descricao_completa` mediumtext,
  `perfis_candidato_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `perfis_candidato_acoes_extracurriculares`
--

INSERT INTO `perfis_candidato_acoes_extracurriculares` (`id`, `titulo`, `descricao_completa`, `perfis_candidato_id`) VALUES
(2, 'Formado em Direito', 'Descrição das açoes extra curriculares', 2),
(3, 'Intercâmbio na França', 'Etiam posuere quam ac quam. Maecenas aliquet accumsan leo. Nullam dapibus fermentum ipsum. Etiam quis quam. Integer lacinia. Nulla est. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Integer vulputate sem a nibh rutrum consequat. Maecenas lorem. Pellentesque pretium', 2),
(5, 'Participou da Guerra dos farrapos', 'Maecenas ipsum velit, consectetuer eu, lobortis ut, dictum at, dui. In rutrum. Sed ac dolor sit amet purus malesuada congue. In laoreet, magna id viverra tincidunt, sem odio bibendum justo, vel imperdiet sapien wisi sed libero. Suspendisse sagittis ultrices augue. Mauris metus.', 2),
(6, 'Colocou ordem no Brasil', 'Maecenas ipsum velit, consectetuer eu, lobortis ut, dictum at, dui. In rutrum. Sed ac dolor sit amet purus malesuada congue. In laoreet, magna id viverra tincidunt, sem odio bibendum justo, vel imperdiet sapien wisi sed libero. Suspendisse sagittis ultrices augue. Mauris metus.', 2),
(7, '12', '123123', 18),
(8, 'qweqwe', 'qwe', 20),
(9, 'teste', 'teste', 32);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfis_candidato_intencoes_voto`
--

CREATE TABLE `perfis_candidato_intencoes_voto` (
  `id` int(11) NOT NULL,
  `perfis_id_candidato` int(11) NOT NULL,
  `perfis_id_usuario` int(11) NOT NULL,
  `data` bigint(20) DEFAULT NULL,
  `justificativa` varchar(255) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL COMMENT '0- oculto\n1- público'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `perfis_candidato_intencoes_voto`
--

INSERT INTO `perfis_candidato_intencoes_voto` (`id`, `perfis_id_candidato`, `perfis_id_usuario`, `data`, `justificativa`, `tipo`) VALUES
(130, 57, 3, 1501265218, 'tttttt', 1),
(134, 57, 2, 1501265980, NULL, 0),
(141, 57, 4, 1501266868, 'rrrrrrr', 1),
(144, 58, 5, 1501267085, NULL, 0),
(146, 57, 6, 1501268002, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in tortor luctus neque laoreet blandit vitae accumsan enim. Nam eget magna id ipsum consectetur accumsan eu at dui. Nullam porttitor libero ut ullamcorper ultricies. Proin scelerisque a', 1),
(148, 7, 5, 1501268704, NULL, 0),
(149, 8, 6, 1501278535, NULL, 0),
(150, 6, 2, 1501282122, NULL, 0),
(151, 8, 5, 1501503685, NULL, 0),
(153, 6, 5, 1501504517, NULL, 0),
(154, 62, 62, 1501510030, NULL, 0),
(155, 30, 6, 1501511770, 'Mito!', 1),
(157, 5, 6, 1501514125, NULL, 0),
(159, 30, 5, 1501526208, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfis_candidato_processos`
--

CREATE TABLE `perfis_candidato_processos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descricao_completa` mediumtext,
  `perfis_candidato_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `perfis_candidato_processos`
--

INSERT INTO `perfis_candidato_processos` (`id`, `titulo`, `descricao_completa`, `perfis_candidato_id`) VALUES
(1, 'Caixa 2', 'Etiam posuere quam ac quam. Maecenas aliquet accumsan leo. Nullam dapibus fermentum ipsum. Etiam quis quam. Integer lacinia. Nulla est. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Integer vulputate sem a nibh rutrum consequat. Maecenas lorem. Pellentesque pretium', 2),
(2, 'Improbidade administrativa', 'Etiam posuere quam ac quam. Maecenas aliquet accumsan leo. Nullam dapibus fermentum ipsum. Etiam quis quam. Integer lacinia. Nulla est. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Integer vulputate sem a nibh rutrum consequat. Maecenas lorem. Pellentesque pretium', 2),
(4, 'Prorina', 'porro quisquam est qui dolorem ipsum quia dolor sporro quisquam est qui dolorem ipsum quia dolor sporro quisquam est qui dolorem ipsum quia dolor s', 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `periodos_eleitorais`
--

CREATE TABLE `periodos_eleitorais` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `perfis_id` int(11) NOT NULL,
  `tipo` int(11) DEFAULT NULL COMMENT '0 - Texto, 1 - Imagem, 2 - Vídeo, 3 - Galeria',
  `texto` mediumtext,
  `url` varchar(255) DEFAULT NULL,
  `data` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `perfis_id`, `tipo`, `texto`, `url`, `data`) VALUES
(1, 1, 0, 'Meritus a todo #valor', '', 1496185858),
(3, 1, 2, 'Teste post video', 'FhuZmiOcdjc', 1496185916),
(4, 1, 1, 'Meu presidente 2017...', '95f4c380073a24f9a97b1e1207410454.jpg', 1496239583),
(5, 1, 2, 'Senador magno malta...', 'gOOOmCTTUJA', 1496239706),
(8, 2, 1, 'mito...', '2cf7c219e7256525ee8de5398c29f232.jpg', 1496258875),
(9, 3, 2, 'Era vargas... exemplo de político', 'poGMPLG9PpU', 1496429608),
(10, 3, 2, 'Era vargas... exemplo de político', 'poGMPLG9PpU', 1496429634),
(11, 3, 1, '"Quero que saibam que lhes vou dizer as coisas na linguagem simples de companheiro! Nossa conversa será no jeito e estilo daqueles que os fazendeiros costumam fazer de pé, junto á porteira do curral". Getúlio possuía, em 1950, três estâncias: Itu e Espinilho, em Itaqui, e a estância Santos Reis, em São Borja"', '5de334b0c5aea10eae23704e88a985fc.jpg', 1496429798),
(12, 4, 1, 'ESTÁ INSATISFEITO COM A POLÍTICA ATUAL?\r\nPOR QUE VOCÊ NÃO LANÇA O SEU NOME? \r\n\r\nO Projeto Meritus oferece espaço de divulgação para quem pretende entrar na política para fazer diferente de tudo isso que está aí. Lance o seu nome e conte com o nosso apoio! \r\n\r\nEntre em breve em www.projetomeritus.com.br e faça o seu cadastro! \r\n\r\nwww.projetomeritus.com.br\r\nAbrace esta causa! \r\n\r\n#ProjetoMeritus\r\nA boa política depende de nós!', '5de3955190e917d2d8dc6b656fedcb75.png', 1496432579),
(13, 1, 0, 'Novo post', '', 1497479548),
(14, 6, 0, 'Hello world!', '', 1497646267),
(15, 3, 0, '#VamosBrasil', '', 1498080128),
(16, 6, 0, 'testes', '', 1500051367),
(17, 6, 0, 'testes', '', 1500051389),
(18, 6, 2, 'teste', 'j5-yKhDd64s', 1500551231),
(19, 35, 2, NULL, 'LlB6X3eYMWI', 1500553482),
(20, 35, 2, '', '8fKrlIZCuWw', 1500554552),
(21, 36, 2, '', 'LlB6X3eYMWI', 1500554658),
(22, 37, 2, '', 'LlB6X3eYMWI', 1500562397),
(23, 38, 2, '', 'LlB6X3eYMWI', 1500579285),
(24, 39, 2, '', 'LlB6X3eYMWI', 1500640811),
(25, 40, 2, '', 'LlB6X3eYMWI', 1500648322),
(26, 41, 2, '', 'LlB6X3eYMWI', 1500648708),
(27, 42, 2, '', 'LlB6X3eYMWI', 1500649116),
(28, 43, 2, '', 'LlB6X3eYMWI', 1500649150),
(37, 52, 2, '', 'LlB6X3eYMWI', 1500663650),
(38, 53, 2, '', 'LlB6X3eYMWI', 1500986640),
(39, 55, 2, '', 'LlB6X3eYMWI', 1501078556),
(40, 56, 2, '', 'LlB6X3eYMWI', 1501095557),
(41, 57, 2, '', 'LlB6X3eYMWI', 1501164880),
(42, 58, 2, '', 'LlB6X3eYMWI', 1501165011),
(43, 59, 2, '', 'LlB6X3eYMWI', 1501264150),
(44, 60, 2, '', 'LlB6X3eYMWI', 1501268834),
(45, 61, 2, '', 'LlB6X3eYMWI', 1501269967),
(46, 62, 2, '', 'LlB6X3eYMWI', 1501509209);

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts_comentarios`
--

CREATE TABLE `posts_comentarios` (
  `id` int(11) NOT NULL,
  `comentario` mediumtext,
  `posts_id` int(11) NOT NULL,
  `perfis_id` int(11) NOT NULL,
  `data` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `posts_comentarios`
--

INSERT INTO `posts_comentarios` (`id`, `comentario`, `posts_id`, `perfis_id`, `data`) VALUES
(3, 'adfasdf asdf adsf adsf', 8, 1, 1496345675),
(5, 'Olha o comentário', 8, 1, 1496345733),
(6, 'Meu comentário', 8, 1, 1496347744),
(7, 'after coment', 8, 1, 1496349120),
(8, 'Teste comentário', 8, 1, 1496349157),
(9, 'Olá', 8, 1, 1496349166),
(11, 'Esse é de respeito', 5, 1, 1496349531),
(12, 'brasil merece gente com magno malta...', 5, 2, 1496349595),
(13, 'Issso aí', 5, 1, 1496349800),
(25, 'olha', 8, 1, 1496351289),
(26, 'Teste', 5, 1, 1496352056),
(27, '#MITO', 8, 2, 1496358781),
(28, 'Nove', 8, 1, 1496405917),
(29, 'Dez', 8, 1, 1496405926),
(30, 'Onze', 8, 1, 1496405949),
(31, 'Doze', 8, 1, 1496406032),
(32, 'Treze', 8, 1, 1496406116),
(33, '14', 8, 1, 1496406225),
(34, '15', 8, 1, 1496406405),
(35, '16', 8, 1, 1496406457),
(36, '17', 8, 1, 1496406534),
(37, '18', 8, 1, 1496409101),
(38, '19', 8, 1, 1496409162),
(39, '20', 8, 1, 1496409181),
(40, '21', 8, 1, 1496415236),
(41, 'Teste funcionamento único', 5, 1, 1496415277),
(42, 'Está funcionando', 5, 2, 1496416972),
(43, 'massa', 3, 2, 1496425259),
(44, 'Muito Bom', 11, 4, 1496432872),
(45, '22', 8, 1, 1496442047),
(46, 'aasdfasdf', 11, 1, 1497356685),
(47, 'Oias', 9, 1, 1497452101),
(48, 'Up', 13, 1, 1497479563),
(49, '#TôComentando', 13, 6, 1497622168),
(50, 'asdfasdf', 8, 1, 1498074918),
(51, 'adsfasdf', 8, 1, 1498074933),
(52, '#NovoBrasil', 15, 1, 1498080202),
(53, 'oi', 14, 6, 1498164286),
(54, 'Owww', 15, 1, 1498169710),
(55, '#goBrasil', 15, 6, 1498831225),
(56, '#meritus', 15, 6, 1498831238),
(57, '#thebest', 15, 6, 1498831245),
(58, '#thebest', 15, 6, 1498831261),
(59, 'good', 15, 6, 1498831279),
(60, 'ok', 15, 3, 1498831354),
(61, 'oi', 14, 6, 1499437967),
(62, 'oi', 14, 6, 1499438045),
(63, 'teste', 14, 6, 1499438051),
(64, 'sasd', 14, 6, 1500051067),
(65, 'ok', 13, 6, 1500671568),
(66, 'Boa noite amigo!', 24, 6, 1500672365),
(67, 'comment', 43, 59, 1501266285),
(68, 'Isso ainda funciona?', 8, 1, 1501278170);

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts_comentarios_curtidas`
--

CREATE TABLE `posts_comentarios_curtidas` (
  `id` int(11) NOT NULL,
  `data` bigint(20) DEFAULT NULL,
  `posts_comentarios_id` int(11) NOT NULL,
  `perfis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `posts_comentarios_curtidas`
--

INSERT INTO `posts_comentarios_curtidas` (`id`, `data`, `posts_comentarios_id`, `perfis_id`) VALUES
(4, 1496358188, 11, 1),
(6, 1496358590, 3, 1),
(8, 1496407064, 5, 1),
(9, 1496409318, 39, 1),
(11, 1496414753, 6, 2),
(13, 1496415285, 41, 1),
(14, 1496416989, 42, 1),
(15, 1496417487, 6, 1),
(16, 1496422980, 11, 2),
(17, 1496422982, 12, 2),
(18, 1496432907, 3, 4),
(20, 1498075060, 44, 1),
(22, 1498167471, 48, 2),
(23, 1498231995, 49, 6),
(24, 1498575233, 48, 6),
(27, 1498736758, 52, 6),
(28, 1500040613, 52, 2),
(29, 1501278142, 53, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts_comentarios_respostas`
--

CREATE TABLE `posts_comentarios_respostas` (
  `id` int(11) NOT NULL,
  `posts_comentarios_id` int(11) NOT NULL,
  `perfis_id` int(11) NOT NULL,
  `comentario` mediumtext,
  `data` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts_compartilhamentos`
--

CREATE TABLE `posts_compartilhamentos` (
  `id` int(11) NOT NULL,
  `posts_id` int(11) NOT NULL,
  `data` bigint(20) DEFAULT NULL,
  `perfis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts_curtidas`
--

CREATE TABLE `posts_curtidas` (
  `id` int(11) NOT NULL,
  `posts_id` int(11) NOT NULL,
  `data` bigint(20) DEFAULT NULL,
  `perfis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `posts_curtidas`
--

INSERT INTO `posts_curtidas` (`id`, `posts_id`, `data`, `perfis_id`) VALUES
(8, 8, 1496414715, 2),
(12, 8, 1496416742, 1),
(14, 5, 1496416752, 1),
(17, 5, 1496422976, 2),
(18, 1, 1496430943, 1),
(19, 11, 1496432824, 4),
(20, 10, 1496432852, 4),
(21, 11, 1496442024, 1),
(22, 10, 1497356712, 1),
(24, 15, 1498169703, 1),
(28, 15, 1498736765, 6),
(29, 14, 1498827580, 6),
(30, 11, 1499438540, 5),
(31, 21, 1500555617, 36),
(33, 41, 1501507040, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `categorias_id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descricao` text,
  `valor` decimal(10,2) DEFAULT NULL,
  `valor_antigo` decimal(10,2) DEFAULT NULL,
  `estoque` int(11) NOT NULL,
  `comprimento_embalagem` int(11) NOT NULL,
  `altura_embalagem` int(11) NOT NULL,
  `largura_embalagem` int(11) NOT NULL,
  `peso` decimal(6,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `categorias_id`, `titulo`, `descricao`, `valor`, `valor_antigo`, `estoque`, `comprimento_embalagem`, `altura_embalagem`, `largura_embalagem`, `peso`) VALUES
(1, 5, 'Camisa Brasil teste', 'Morbi a metus. Phasellus enim erat, vestibulum vel, aliquam a, posuere eu, velit. Nullam sapien sem, ornare ac, nonummy non, lobortis a, enim. Nunc tincidunt ante vitae massa. Duis ante orci, molestie vitae, vehicula venenatis, tincidunt ac, pede. Nulla accumsan, elit sit amet varius semper, nulla mauris mollis quam, tempor', '30.00', '0.00', 3, 42, 15, 12, '0.123'),
(2, 1, 'camisa', 'camisa meritus', '30.50', '0.00', 0, 50, 32, 7, '1.231'),
(3, 1, 'bone', 'Boné Meritus', '15.00', '0.00', 10, 50, 12, 11, '0.000'),
(4, 0, 'garrafa', 'garrafa meritus', '50.00', '0.00', 1, 50, 12, 2, '0.000'),
(5, 1, 'camisa', 'Camisa azul', '20.00', '0.00', 3, 20, 5, 10, '0.012'),
(12, 1, 'produto teste', '<p>123</p>', '1.23', '1.23', 1, 60, 12, 20, '0.123'),
(13, 1, '123', '<p>123</p>', '1.23', '0.23', 123, 90, 6, 52, '0.123'),
(14, 6, 'pc', '<span style="font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"</span><br>', '1000.00', '0.00', 120, 50, 50, 50, '5.000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_fotos`
--

CREATE TABLE `produtos_fotos` (
  `id` int(11) NOT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `produtos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos_fotos`
--

INSERT INTO `produtos_fotos` (`id`, `foto`, `produtos_id`) VALUES
(2, 'bone.jpg', 3),
(3, 'garrafa.jpg', 4),
(4, 'camisa2.jpg', 2),
(5, 'camisa3.jpg', 5),
(8, 'bc634e96a8cef43b4dffcb07d11cc5c2.jpg', 12),
(10, 'c6ed9a7fde5ae891ffd971e8e30a624a.jpg', 13),
(14, '58783810b026d4f58fe17507904b1cd5.jpg', 1),
(15, '303f9e11097b1e9929b63ab66bee74e3.jpg', 1),
(16, 'd90b3dec18314b885b092d6d8cee4cf8.jpg', 14),
(17, 'a7d8d618a822232f8bbac882cbd51e95.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `profissoes`
--

CREATE TABLE `profissoes` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `profissoes`
--

INSERT INTO `profissoes` (`id`, `descricao`) VALUES
(1, 'Analista de Sistemas'),
(2, 'Advogado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto_meritus`
--

CREATE TABLE `projeto_meritus` (
  `id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `projeto_meritus`
--

INSERT INTO `projeto_meritus` (`id`, `descricao`, `imagem`) VALUES
(1, '<h3>O Projeto Meritus</h3>\r\n						<!-- <ul class="post-meta">\r\n							<li>Novemer 9, 2016</li>\r\n							<li><a href="#">5 Comments</a></li>\r\n						</ul> -->\r\n						<p>O que motivou a criação do Portal Méritus é a certeza de que pessoas &nbsp;capacitadas e com &nbsp;espírito solidário estão menos tentadas a atos de corrupção gerando um ambiente mais limpo onde não há espaço para falsas promessas. </p>\r\n						<p>\r\n							O Projeto Meritus nasce depois de assistirmos atônitos todos os escândalos envolvendo a casta política e as consequências devastadoras que uma má gestão vem causando à Sociedade Brasileira. Tais atitudes, originam-se em virtude dos desvios de caráter, em especial a corrupção que assola todos os poderes, da falta de ética para desempenhar cargos públicos e pela falência das ideologias partidárias. Desta forma, favorecer o desenvolvimento de um ponto comum que possa atender os anseios das alas direita, esquerda e de centro, dissipando o extremismo político, é nossa meta. \r\n						</p>\r\n						<p>\r\n							Pretende-se motivar os cidadãos competentes &nbsp;e de reputação ilibada, a estarem à disposição da comunidade local e/ou do estado e/ou país para acabar com o voto de cabresto e todos os abusos praticados na esfera política.</p><p>É uma mídia social exclusivamente política embasada em fatos, apartidária, com intenção de troca de conhecimentos e propagação da verdade.</p><p>O Portal Meritus tem como proposta buscar, captar e informar os dados (currículos) de pessoas disponíveis a ocupar cargos públicos, através de eleições diretas, detalhando para os eleitores o perfil de cada candidato, o cargo que pretende ocupar e índices virtuais, em tempo real, da aprovação dos próprios eleitores (usuários virtuais).</p>', 'projeto.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `projetos_lei`
--

CREATE TABLE `projetos_lei` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `texto` longtext,
  `imagem` varchar(40) DEFAULT NULL,
  `nome_url` varchar(255) NOT NULL,
  `data` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `projetos_lei`
--

INSERT INTO `projetos_lei` (`id`, `titulo`, `texto`, `imagem`, `nome_url`, `data`) VALUES
(52, 'Projeto um', '<p><span style="font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;="" text-align:="" justify;"="">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ac justo vitae est porttitor aliquet. Aliquam at fringilla sapien, in pharetra eros. Aenean dignissim sit amet tortor in bibendum. Phasellus viverra, justo a pharetra maximus, nisi nunc convallis neque, at imperdiet metus lectus vel neque. Nullam laoreet libero a lorem dapibus, a elementum urna porta. Mauris tempus neque lacus, eu pulvinar nunc ullamcorper in. Aliquam augue sem, faucibus id orci at, lacinia fermentum urna. Vestibulum purus sapien, fringilla et velit eget, eleifend sagittis enim. Aliquam erat volutpat. Aenean posuere, arcu sit amet suscipit rhoncus, orci dui lacinia sem, at condimentum tellus tellus non ex. Vestibulum lectus ex, aliquet ut lobortis sodales, congue sit amet purus. teste</span><br></p>', '6899488bb2311ddea35ef3e251eda667.png', 'projeto-um', 1499965236);

-- --------------------------------------------------------

--
-- Estrutura da tabela `projetos_lei_has_curtidas`
--

CREATE TABLE `projetos_lei_has_curtidas` (
  `id` int(11) NOT NULL,
  `projetos_lei_id` int(11) NOT NULL,
  `perfis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `projetos_lei_has_curtidas`
--

INSERT INTO `projetos_lei_has_curtidas` (`id`, `projetos_lei_id`, `perfis_id`) VALUES
(5, 52, 6),
(6, 52, 52),
(7, 52, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `repostas_comentarios_projetos`
--

CREATE TABLE `repostas_comentarios_projetos` (
  `id` int(11) NOT NULL,
  `perfis_id` int(11) NOT NULL,
  `comentarios_projetos_id` int(11) NOT NULL,
  `comentario` mediumtext,
  `data` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `repostas_comentarios_projetos`
--

INSERT INTO `repostas_comentarios_projetos` (`id`, `perfis_id`, `comentarios_projetos_id`, `comentario`, `data`) VALUES
(26, 6, 36, 'Mauris ac justo vitae est porttitor aliquet. Aliquam at fringilla sapien, in pharetra eros. ', '1499967019'),
(27, 52, 36, 'Tá certo!', '1500669980'),
(28, 1, 36, 'teste\r\n', '1501507654');

-- --------------------------------------------------------

--
-- Estrutura da tabela `secoes`
--

CREATE TABLE `secoes` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `titulo` text,
  `texto` longtext NOT NULL,
  `imagem` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `seguidores`
--

CREATE TABLE `seguidores` (
  `id` int(11) NOT NULL,
  `perfis_id` int(11) NOT NULL,
  `perfis_id_amigo` int(11) NOT NULL,
  `data` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `seguidores`
--

INSERT INTO `seguidores` (`id`, `perfis_id`, `perfis_id_amigo`, `data`) VALUES
(2, 2, 1, NULL),
(14, 1, 3, 1496430781),
(15, 4, 2, 1496432731),
(16, 4, 3, 1496432739),
(17, 1, 4, 1496443559),
(20, 6, 1, 1497614624),
(21, 6, 1, 1497614625),
(22, 6, 3, 1497969494),
(23, 3, 1, 1498079924),
(24, 2, 3, 1498169265),
(26, 5, 3, 1499949983),
(29, 3, 5, 1500570765),
(30, 6, 39, 1500672345),
(59, 37, 6, 1501164249),
(60, 37, 30, 1501164258),
(61, 37, 8, 1501164271),
(62, 37, 3, 1501164287),
(80, 5, 6, 1501243837),
(81, 6, 57, 1501268131),
(82, 2, 6, 1501282118),
(86, 1, 30, 1501506548),
(88, 1, 2, 1501506912),
(89, 6, 8, 1501508822),
(90, 62, 8, 1501510006),
(91, 6, 5, 1501514489),
(95, 5, 30, 1501526193);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos_publicos`
--

CREATE TABLE `servicos_publicos` (
  `id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servicos_publicos`
--

INSERT INTO `servicos_publicos` (`id`, `descricao`, `imagem`) VALUES
(1, '<h3 style="font-family: &quot;Varela Round&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 32px; color: rgb(51, 51, 51); margin: 0px; font-size: 20px;">Serviços Públicos</h3><p style="margin-top: 20px; margin-bottom: 20px; color: rgb(112, 112, 112); font-family: &quot;Varela Round&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;">Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p><p style="margin-top: 20px; margin-bottom: 20px; color: rgb(112, 112, 112); font-family: &quot;Varela Round&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;">In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p><p style="margin-top: 20px; margin-bottom: 20px; color: rgb(112, 112, 112); font-family: &quot;Varela Round&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;">Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio.</p>', 'servicos3.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `termos_de_uso`
--

CREATE TABLE `termos_de_uso` (
  `id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `termos` text NOT NULL,
  `imagem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `termos_de_uso`
--

INSERT INTO `termos_de_uso` (`id`, `descricao`, `termos`, `imagem`) VALUES
(1, '<h3>Termos de Uso</h3>\r\n						<!-- <ul class="post-meta">\r\n							<li>Novemer 9, 2016</li>\r\n							<li><a href="#">5 Comments</a></li>\r\n						</ul> -->\r\n						\r\n						<p>\r\n							Pelo presente instrumento, reconheço que, ao expressar o aceite eletrônico estou, na qualidade de usuário, aderindo e aceitando todos os termos e condições gerais de uso e todas as demais políticas e princípios que regem o website www.projetomeritus.com.br e seu respectivo aplicativo para dispositivos móveis.</p>\r\n						<p>\r\n							O aplicativo é uma PLATAFORMA mobile comunitária e colaborativa para que as pessoas possam se conectar, ler e postar notícias e artigos, indicar a si próprios ou a terceiros como potenciais nomes que representem novidades no cenário político, apresentando seus méritos e suas credenciais, além de ter acesso a cursos e treinamentos no modelo Ensino à Distância (EAD). O aplicativo está integrado com a PLATAFORMA web www.projetomertius.com.br, usando da tecnologia do Google Maps, Mobile, GPS e Internet, desenvolvido pelo PROJETO MERITUS, sendo referidos website (www.projetomeritus.com.br) e o aplicativo para dispositivos móveis doravante denominados “PLATAFORMA”, conforme segue:</p>', '<p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">A aceitação destes termos e condições\r\ngerais de uso é indispensável à utilização da plataforma e seus serviços.<o:p></o:p></p><p>\r\n\r\n</p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">nenhuma utilização da plataforma será\r\ncancelada por alegação de desconhecimento dos termos e condições de uso ou da\r\npolítica de privacidade. na hipótese de dúvida, esclarecimentos prévios à\r\noperação de uso poderão ser obtidos através do link: <a href="http://www.projetomeritus.com/TERMOS-DE-USO">www.projetomeritus.com.br/termos-de-uso</a><o:p></o:p></p>\r\n<p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">I – DO OBJETO<o:p></o:p></p><p class="MsoListParagraph" style="margin-left:18.75pt;mso-add-space:auto;\r\ntext-align:justify;text-justify:inter-ideograph;text-indent:-18.75pt;\r\nmso-list:l0 level2 lfo1"><!--[if !supportLists]-->1.1.<span style="font-variant-numeric: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: " times="" new="" roman";"="">&nbsp; </span><!--[endif]-->O objeto do presente instrumento consiste\r\nem estabelecer a política e regulamento para acesso de usuários à PLATAFORMA <o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">1.2. Para fins deste Termo, entende-se por:<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">1.2.1. “USUÁRIO”: qualquer usuário da\r\nPLATAFORMA;<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">1.2.2. “USUÁRIO CANDIDATO”: o usuário que\r\npreencher o cadastro para ter o seu nome avaliável pelos demais usuários de\r\nnossa plataforma. <o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">1.3. A PLATAFORMA tem como objetivo\r\nproporcionar facilidade para que as pessoas possam, através da formação de uma\r\nrede social cheia de méritos, encontrar e compartilhar informações que conduzam\r\nà formação de um novo conceito de se fazer política. Por meio da PLATAFORMA é\r\npossível que, de forma inteiramente gratuita, os usuários se cadastrem para\r\nmeritar. <o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">1.4. A PLATAFORMA poderá ser acessada por\r\npessoas físicas ou jurídicas, nacionais ou estrangeiras. Neste ato o usuário,\r\nsob as penas da lei, declara não se enquadrar em qualquer hipótese impeditiva,\r\nlegal ou contratual, para cadastrar-se na PLATAFORMA.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">1.5. Os dirigentes do PROJETO MERITUS podem\r\nconceder o acesso à PLATAFORMA, seja diretamente ou por meio de links ou feeds\r\nexpostos, a produtos, serviços, conteúdos, notícias, informações e dados\r\noperados e fornecidos por terceiros independentes e desvinculados do PROJETO\r\nMERITUS, sobre os quais eles não têm ingerência. O PROJETO MERITUS não endossa\r\ntais produtos, serviços, conteúdos, notícias, informações e dados operados de\r\nterceiros e não se responsabiliza porqualquer transação relativa a eles, ou por\r\nqualquer consequência que possa advir do uso destes produtos, serviços,\r\nconteúdos, notícias, informações e dados pelo Usuário.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">II – DO CADASTRAMENTO<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">2.1. Para uso dos serviços disponibilizados\r\npelo PROJETO MERITUS, os usuários deverão fornecer seus dados pessoais para\r\ncadastramento, sendo essencial, para tanto, preencher todos os campos de forma\r\ncompleta, clara e precisa (nome completo, telefone, e-mail, CPF, senha e\r\nconfirmar senha). Caso contrário não conseguirá se cadastrar na PLATAFORMA para\r\nusar os serviços disponibilizados. <o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">2.2. Como medida para impedir que cadastros\r\nirregulares sejam realizados, o IP do pretendente Usuário será temporariamente\r\nbloqueado quando exceder o número de tentativas sem conclusão válida de seu\r\ncadastro em curto período de tempo. Caso o IP do Usuário seja bloqueado\r\ntemporariamente mais de uma vez, o bloqueio será permanente.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">2.3. Verificada inconsistência nos dados\r\ninformados pelo Usuário e/ou qualquer pendência, o Cadastro do pretendente a\r\nUsuário será desconsiderado pela PLATAFORMA, podendo, se assim preferir, entrar\r\nem contato via e-mail, e outros meios de comunicação existentes ou que venham a\r\nser disponibilizados no futuro, para buscar os esclarecimentos pertinentes.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">2.4. Ao se cadastrar, o Usuário indicará um\r\nlogin para sua identificação na PLATAFORMA, bem como uma senha pessoal e\r\nintransferível. A senha do Usuário é, portanto, a chave de segurança que\r\npermite o acesso a determinadas áreas da PLATAFORMA. Portanto, o Usuário será o\r\núnico responsável pelas operações efetuadas em sua conta, que apenas poderá ser\r\nacessada através de login e senha pessoal intransferível. Somente através desse\r\nlogin e senha o Usuário poderá usar os serviços na PLATAFORMA.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">2.5. O login a ser cadastrado pelo Usuário\r\npara acesso à PLATAFORMA não poderá guardar semelhança com o nome PROJETO\r\nMERITUS, bem como não poderá ser cadastrado login (apelido) considerado\r\nofensivo, obsceno, vulgar, agressivo, preconceituoso, ameaçador, que contenha\r\ndados pessoais do Usuário (alguma URL ou endereço eletrônico) ou que venha\r\nconfundir os demais usuários em prejuízo do bom funcionamento da PLATAFORMA;\r\nnessas hipóteses o Usuário poderá sofrer, além das sanções legais, o imediato\r\ncancelamento de todos os dados de seu cadastro sem prévio aviso, a título de\r\npena.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">2.6. O Usuário será o único responsável\r\npela guarda da senha e compromete-se a não a divulgar a terceiros. No caso de\r\nuso não autorizado de sua senha, o Usuário deverá redefinir sua senha\r\nimediatamente, bastando acessar: www.projetomeritus.com.br/redefinir-senha<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">2.7.Caso o Usuário venha a divulgar, ainda\r\nque acidentalmente, ou emprestar a sua senha a terceiros responderá\r\nsolidariamente por todos os atos praticados pelos mesmos em seu nome. Somente\r\natravés desta senha o Usuário poderá iniciar o uso dos serviços.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">2.8. Após a validação do cadastro, o\r\nUsuário será liberado para usar a PLATAFORMA.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">2.9. Caso o Usuário, ao tentar acessar a\r\nPLATAFORMA, esqueça sua senha pessoal, poderá redefinir sua senha, bastando\r\nclicar em "Esqueci minha senha”, localizado logo abaixo do campo senha, na\r\nPLATAFORMA. Será enviado para o e-mail de cadastro do usuário, um link para que\r\nele possa redefinir sua senha pessoal.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">2.10. FICA RESSALVADO QUE O USUÁRIO\r\nCADASTRADO na PLATAFORMA AUTORIZA, DESDE JÁ E EXPRESSAMENTE O DIREITO DE\r\nEXPOSIÇÃO DE SUAS IMAGENS.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">2.11. Para segurança do Usuário, seu login,\r\nsenha e dados serão transmitidos criptografados. Toda informação ou dado\r\npessoal prestado pelo Usuário será armazenado em servidores com meios\r\nmagnéticos de alta segurança. O PROJETO MERITUS tomará todas as medidas\r\npossíveis para manter a confidencialidade e a segurança descrita nesta\r\ncláusula, porém não responderá por prejuízo que poderá ser derivado da violação\r\ndessas medidas por parte de terceiros que utilizem as redes públicas ou a\r\ninternet, subvertendo os sistemas de segurança para acessar as informações dos\r\nUsuários.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">2.13. O PROJETO MERITUS aconselha aos\r\nUsuários que mantenham os seus antivírus atualizados e utilizem firewall,\r\ndiminuindo consideravelmente as chances de terem seus dados interceptados por\r\npessoas mal-intencionadas. O PROJETO MERITUS não se responsabiliza pelo uso\r\nindevido por terceiros dos dados pessoais dos Usuários, obtidos mediante o\r\nemprego de fraude, simulações e violações de sistemas.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">2.14. Sem prejuízo de outras medidas, o\r\nPROJETO MERITUS poderá suspender ou cancelar, temporária ou definitivamente, o\r\ncadastro do Usuário a qualquer tempo, e iniciar as ações legais nos seguintes\r\ncasos:<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">2.14.1. se o Usuário não cumprir qualquer\r\ndispositivo previsto nos termos e condições gerais;<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">2.14.2. se o Usuário praticar atos\r\nfraudulentos ou dolosos;<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">2.14.3. seo PROJETO MERITUS entender que as\r\natitudes do Usuário estejam causando algum dano a terceiros ou ao próprio\r\nPROJETO MERITUS ou tenha a potencialidade de assim o fazer. Nos casos\r\nsupracitados, o PROJETO MERITUS terá o direito de cancelar imediatamente o seu\r\ncadastro, a título de multa penal, sem prejuízo do ingresso das medidas\r\njudiciais cabíveis para buscar a reparação de danos materiais e morais devidos.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">&nbsp;</p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">IV - POLÍTICA DE PRIVACIDADE<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.1. A garantia à privacidade das\r\ninformações dos Usuários da PLATAFORMA é um comprometimento do PROJETO MERITUS.\r\n<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.2. O PROJETO MERITUS não irá fornecer as\r\ninformações dos Usuários a terceiros sem prévia autorização do mesmo, com\r\nexceção de casos onde seja necessário para responder às solicitações ou\r\nperguntas de entidades governamentais, ou nos casos onde, de boa-fé, o PROJETO\r\nMERITUS entender que é necessária a sua divulgação com o propósito de responder\r\nàs reclamações que o conteúdo submetido infrinja direitos de terceiros ou que\r\nseja necessária para a proteção de direitos, propriedades e/ou segurança da\r\nPLATAFORMA prestadora dos serviços, de seus Usuários e/ou do público em geral.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.3. As informações cedidas pelo Usuário e\r\nregistradas devido ao uso da PLATAFORMA (com exceção ao conteúdo de mensagens\r\npessoais) poderão ser utilizadas pelo PROJETO MERITUS como insumos para o\r\nmapeamento de informações e formação de estatísticas.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.4. As informações adicionais coletadas\r\natravés da análise da navegação de cada Usuário e que não o torne identificável\r\npessoalmente são de propriedade exclusiva do PROJETO MERITUS, que podem usar\r\nessas informações do modo que melhor julgar apropriado. Além disso, as\r\ninformações fornecidas são usadas para:<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.4.1. administrar a conta dos Usuários a\r\nfim de customizar cada vez mais os serviços intermediados pelo PROJETO MERITUS;<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.4.2.comunicar novidades e atualizações da\r\nPLATAFORMA.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.5.A coleta de informações dos Usuários\r\ntambém será realizada através de cookies (um pequeno grupo de dados trocados\r\nentre o computador do Usuário e o servidor da PLATAFORMA). A utilização de\r\ncookies servirá unicamente para permitir ao Usuário acessar a PLATAFORMA sem\r\nter de fazer login novamente, para armazenar informações de identificação do\r\nUsuário junto a PLATAFORMA e para fins de análise interna do PROJETO MERITUS,\r\nsendo vedada qualquer forma de comercialização ou compartilhamento não\r\nautorizado de informações obtidas através de cookies. Os cookies, no entanto,\r\npoderão ser utilizados para localizar o Usuário que, por algum motivo, realizar\r\nalguma conduta lesiva.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.6. Além das informações pessoais\r\nfornecidas, o PROJETO MERITUS tem a capacidade tecnológica de recolher outras\r\ninformações técnicas, como o endereço de protocolo de internet do usuário, o\r\nsistema operacional do seu telefone ou computador, o tipo de browser e o\r\nendereço de websites de referência.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.7. O PROJETO MERITUS poderá usar os cookies,\r\nweb beacons (web bugs) ou tecnologia semelhante para melhorar e personalizar a\r\nexperiência dos Usuários ao acessarem a PLATAFORMA e utilizarem de suas\r\nferramentas, incluindo, mas não se limitando a manter o controle de\r\ndeterminadas informações agregadas ao Usuário, para melhorar a PLATAFORMA,\r\najudar a identificar quando o Usuário estiver utilizando a PLATAFORMA a lembrar\r\nsuas preferências e informações de registro, apresentar e ajudar a medir e\r\npesquisar a efetividade da PLATAFORMA e personalizar o conteúdo e os anúncios\r\n(caso existam) fornecidos ao Usuário através da PLATAFORMA.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.8. O Usuário pode configurar seu\r\nnavegador para aceitar todos os cookies, rejeitar todos os cookies ou avisar\r\nquando um cookie é definido. No entanto, se o Usuário rejeitar todos os\r\ncookies, o Usuário pode não ser capaz de usar algumas das ferramentas da\r\nPLATAFORMA, não se responsabilizando o PROJETO MERITUS por isso.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.9. Os dados cadastrais dos Usuários que\r\ncancelarem ou tiverem sua conta cancelada permanecerão nos bancos de dados da\r\nPLATAFORMA que poderá, a seu critério, fazer uso deles conforme aqui descrito,\r\npor um prazo razoável, sem que exceda os requisitos ou limitações legais, para\r\ndirimir quaisquer disputas, solucionar problemas e garantir os direitos do\r\nPROJETO MERITUS.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.10. O Usuário autoriza o PROJETO MERITUS\r\na estabelecer com ele comunicação por meio de carta, telegrama, e-mail, SMS,\r\nnotificação (mensagem instantânea) e outros meios eletrônicos conhecidos ou que\r\nvenham a ser disponibilizados no futuro.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.11. Através do cadastramento, uso e\r\nfornecimento de informações ao PROJETO MERITUS, o Usuário deliberadamente\r\naceita o presente Termo e as condições previstas na Política de Privacidade\r\nsobre o uso de suas informações.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.12. É VEDADO ao USUÁRIO utilizar o\r\nServiço para:<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.12.1. carregar, transmitir, divulgar,\r\nexibir, enviar, ou de qualquer outra forma tornar disponível qualquer Conteúdo\r\nque seja ilegal, incluindo, mas não se limitando, que seja ofensivo à honra,\r\nque invada a privacidade de terceiros, que seja ameaçador, vulgar, obsceno,\r\npreconceituoso, racista ou de qualquer forma censurável, através do Serviço; <o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.12.2. violar direitos de crianças e/ou\r\nadolescentes:<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.12.3. assumir a "personalidade"\r\nde outra pessoa, física ou jurídica, incluindo, mas não se limitando, aos\r\nrepresentantes do PROJETO MERITUS, líder de fórum de discussão, guia ou anfitrião,\r\nou ainda declarar-se ou apresentar-se falsamente como membro de alguma\r\nentidade;<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.12.4. forjar cabeçalhos, ou de qualquer\r\noutra forma manipular identificadores, a fim de disfarçar a origem de qualquer\r\nconteúdo extraído através do Serviço;<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.12.5. carregar, transmitir, divulgar,\r\nexibir, enviar, ou de qualquer outra forma tornar disponível qualquer conteúdo\r\nsem que tenha o direito de fazê-lo de acordo com a lei, por força de contrato\r\nou de relação de confiança (por exemplo, no caso de informações internas,\r\nexclusivas ou confidenciais extraídas, recebidas ou divulgadas com consequência\r\nde relação de emprego ou contrato de confidencialidade);<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.12.6. carregar, transmitir, divulgar,\r\nexibir, enviar, ou de qualquer forma tornar disponível qualquer conteúdo que\r\nviole qualquer patente, marca, segredo de negócio, direito autoral, direitos de\r\npropriedade intelectual, ou qualquer outro direito de terceiro\r\n("Direitos");<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.12.7. carregar, transmitir, divulgar,\r\nexibir, enviar, ou de qualquer forma tornar disponível qualquer tipo de\r\nanúncio, propaganda ou material promocional, tais como mensagens não\r\nsolicitadas (conhecidos como "junk mail" ou "spam"),\r\ncorrentes, esquemas de pirâmide ou outras, exceto em áreas que são designadas\r\npara tal fim.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.12.8. carregar, transmitir, divulgar,\r\nexibir, enviar, ou de qualquer forma tornar disponível qualquer conteúdo que\r\ncontenha vírus ou qualquer outro código, arquivo ou programa de computador com\r\no propósito de interromper, destruir capturar informações ou limitar a\r\nfuncionalidade de qualquer software, hardware ou equipamento de\r\ntelecomunicações;<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.12.9. interromper o fluxo normal de um\r\ndiálogo, interferir na utilização e aproveitamento do serviço por outros\r\nusuários, ou de qualquer outra forma afetar a capacidade de outros usuários\r\nefetuarem comunicações ou troca de mensagens;<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.12.10. interferir ou interromper o serviço,\r\nas redes ou os servidores conectados ao serviço, obter ou tentar obter acesso\r\nnão autorizado a outros sistemas ou redes de computadores conectados ao serviço\r\nou desobedecer qualquer regra, procedimento, política ou regulamento de redes\r\nou sistemas conectados ao serviço;<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.12.11. violar, seja intencionalmente ou\r\nnão, qualquer norma legal municipal, estadual, nacional ou internacional que\r\nseja integrada ao ordenamento jurídico brasileiro, ou ainda, que, por qualquer\r\nrazão legal, deva ser no Brasil aplicada;<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">4.12.12. vigiar secretamente ou, de\r\nqualquer forma, assediar terceiros;<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">&nbsp;</p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">V - RESCISÃO E PENALIDADES<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">5.1. O Usuário que desejar encerrar seu\r\ncadastro com a PLATAFORMA poderá fazê-lo a qualquer momento, sem prévio aviso\r\nou qualquer tipo de comunicação expressa.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">5.2.Na hipótese de ser constatada a\r\nviolação de qualquer disposição dos Termos e Condições ora celebrado, pelo\r\nUsuário ou quando o Usuário agir de forma que demonstre que não pretende ou que\r\nimporte em fortes indícios de que não pode cumprir estas disposições, o PROJETO\r\nMERITUS poderá a qualquer momento, sem aviso prévio, encerrar a conta do\r\nUsuário para todos os efeitos de direito, sujeitando o Usuário infrator ao\r\npagamento de perdas e danos, materiais e morais a que der causa, a título de\r\npena, sejam eles sofridos pelo PROJETO MERITUS ou terceiros. <o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">&nbsp;</p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">VI - LIMITAÇÃO DE RESPONSABILIDADE<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">6.1. O Usuário expressamente concorda e\r\nestá ciente de que o PROJETO MERITUS não terá qualquer responsabilidade, seja\r\ncontratual ou extracontratual, por quaisquer danos patrimoniais ou morais,\r\ndanos indiretos, acidentais, especiais, incluindo, sem limitação, danos por\r\nlucros cessantes, perda de fundo de comércio, economias, receitas ou de\r\ninformações ou consequências por quaisquer outras perdas intangíveis\r\nresultantes do:<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">6.1.1. uso ou incapacidade de usar o\r\nServiço;<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">6.1.2. custo de aquisição de bens ou\r\nserviços outros decorrentes da compra de bens, informações e dados pelo ou\r\natravés do serviço, mensagens de recebimento ou transações estabelecidas no ou\r\natravés do Serviço;<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">6.1.3. acesso não autorizado às\r\ntransmissões ou informações do Usuário, bem como da alteração destes;<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">6.1.4. orientações ou condutas de terceiros\r\nsobre o Serviço;<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">6.1.5. por motivos de força maior ou caso\r\nfortuito e atos praticados pelo próprio Usuário.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">6.2. O Usuário está ciente e concorda que o\r\nServiço é fornecido na forma como está disponibilizado e que o PROJETO MERITUS\r\nnão é responsável por exclusão, não entrega ou falha no arquivamento de\r\nqualquer comunicação do Usuário ou estabelecimento de suas opções de\r\npersonalização.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">6.3. De forma a bem utilizar o Serviço, o\r\nUSUÁRIO deve obter, por si, acesso à "World Wide Web", seja\r\ndiretamente ou através de dispositivos que possam disponibilizar o conteúdo\r\nexistente na Web, pagando os valores cobrados por seu provedor de acesso, se\r\neste for o caso, e providenciando todo o equipamento necessário para efetuar\r\nsua conexão à World Wide Web, incluindo computador, dispositivos móveis, modem\r\nou outro dispositivo de acesso. Atente que certas áreas do Serviço contêm\r\nconteúdo dirigido a um público adulto. O USUÁRIO precisará ter pelo menos 18\r\nanos para acessar tais áreas.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">6.4. O Serviço ou terceiros poderão\r\nfornecer "links" para outros sites da WorldWide Web ou outros\r\nrecursos. Como o PROJETO MÉRITUS não tem controle sobre tais sites ou recursos\r\nexternos, o USUÁRIO reconhece e concorda que o PROJETO MERITUS não é\r\nresponsável pela disponibilidade dos mesmos e não endossa ou se responsabiliza\r\npor qualquer conteúdo, propaganda, produtos, serviços ou outros materiais\r\ncontidos ou disponibilizados através de tais sites ou recursos. O USUÁRIO\r\nexpressamente reconhece que o PROJETO MERITUS não é responsável, direta ou\r\nindiretamente, por quaisquer perdas e danos que sejam efetiva ou alegadamente\r\ncausados pela confiança depositada em tal conteúdo, bens e serviços disponíveis\r\natravés de tais sites ou recursos.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">6.5. O Serviço é fornecido apenas conforme\r\ne quando estiver disponível, o PROJETO MERITUS não possui qualquer\r\nresponsabilidade pelo não funcionamento total ou pelo funcionamento parcial\r\ndevido a mudanças ocorridas em sites e/ou sistemas no qual o Serviço seja\r\ndependente de navegação, como por exemplo, redes de telefonia celular, GPS,\r\nGoogle maps, redes sociais e da própria Internet;<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">VII - DA LICENÇA E DIREITOS DE PROPRIEDADE\r\nINTELECTUAL<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">7.1. A propriedade intelectual sobre o\r\nServiço não é objeto deste contrato e continua sendo propriedade exclusiva do\r\nPROJETO MERITUS, onde os usuários terão acesso por meio dos disposivos móveis e\r\nvia Internet (protocolo http ou https), sendo os códigos-fonte da PLATAFORMA\r\n(Website e Aplicativo) de exclusividade do PROJETO MERITUS, não possuindo os\r\nusuários qualquer direito sobre os mesmos.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">&nbsp;</p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">&nbsp;</p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">VIII - POLÍTICA DE SUPORTE E GARANTIA<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">8.1. A funcionalidade deste SERVIÇO é\r\ninstável, por depender de outros serviços, como redes sociais, redes de\r\ntelefonia celular, GPS, Google maps e da própria Internet. Sendo que, qualquer\r\nmudança na navegação dos mesmos poderá comprometer as funcionalidades, que\r\npassarão por manutenção e sendo necessário atualização para novas versões.\r\nPortanto, NÃO OFERECEMOS GARANTIAS. Fornecemos o serviço "no estado em que\r\nse encontra", "com eventuais falhas" e "conforme\r\ndisponível". Não garantimos a exatidão ou atualização das informações\r\ndisponíveis no serviço. Nós do PROJETO MÉRITUS não oferecemos garantias ou\r\ncondições expressas. É possível que você tenha outros direitos de Usuário\r\nestabelecido pelas leis locais que este termos de uso não possa alterar.\r\nExcluímos quaisquer garantias implícitas, inclusive as de comercialização,\r\nadequação a uma finalidade específica, mão de obra e não violação.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">8.2. O PROJETO MERITUS envidará os melhores\r\nesforços para assegurar que o Serviço funcione da melhor maneira possível. No\r\nentanto, considerando a própria natureza do Serviço, as garantias fornecidas\r\nsão limitadas, conforme descritas acima e no item8.1.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">8.3. O PROJETO MERITUS assegura como\r\ngarantia única, que o acesso ao Serviço não conterá vírus, spyware ou qualquer\r\noutro tipo de código malicioso.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">IX – DAS CONDIÇOES GERAIS<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">9.1. Este instrumento vigorará por prazo\r\nindeterminado, podendo, a critério do PROJETO MERITUS, ser alterado, a qualquer\r\ntempo, visando seu aprimoramento e melhoria dos serviços prestados. Os novos\r\nTermos e Condições entrarão em vigor no dia seguinte da publicação na\r\nPLATAFORMA. Todavia, o Usuário, ao acessar a PLATAFORMA, receberá a nova versão\r\ndos Termos e Condições Gerais com uma solicitação de aceite, e caso não\r\nconcorde com os termos alterados, não será possível mais utilizar os serviços\r\nda PLATAFORMA.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">9.2. As alterações feitas neste instrumento\r\npelo PROJETO MERITUS não vigorarão em relação aos serviços e anúncios já\r\niniciados ao tempo em que as mesmas alterações forem publicadas. Para estes, os\r\nTermos e Condições Gerais de Uso valerão com a redação anterior.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">&nbsp;</p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">X - DA ELEIÇÃO E DO FORO<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">10.1. Reconhecendo o alcance mundial da\r\nInternet, o usuário concorda em cumprir qualquer legislação local que disponha\r\nsobre a conduta de usuários na rede e sobre conteúdos aceitáveis.\r\nEspecificamente, o usuário concorda em cumprir com todas as leis aplicáveis com\r\nrelação à transmissão de dados técnicos a partir do Brasil ou do país no qual o\r\nUsuário resida.<o:p></o:p></p><p class="MsoNormal" style="text-align:justify;text-justify:inter-ideograph">10.2. Para todos os assuntos referentes à\r\ninterpretação e ao cumprimento deste Termos de uso, as partes elegem como foro\r\ndo contrato a cidade de Montes Claros, estado de Minas Gerais,Brasil, com\r\nexclusão de qualquer outro, por mais privilegiados que sejam, sem, contudo,\r\ndesmerecê-los, para dirimir quaisquer controvérsias provenientes deste\r\ninstrumento.<o:p></o:p></p><p>\r\n\r\n</p>', 'termos.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_denuncia`
--

CREATE TABLE `tipos_denuncia` (
  `id` int(11) NOT NULL,
  `nome_tipo_denuncia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipos_denuncia`
--

INSERT INTO `tipos_denuncia` (`id`, `nome_tipo_denuncia`) VALUES
(2, 'Pornografia'),
(3, 'Ameaças'),
(5, 'Falsidade Ideológica'),
(6, 'Ofensas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `senha` varchar(32) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0 - bloqueado\n1 - ativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `senha`, `email`, `status`) VALUES
(1, 'Suporte', '115.800.856-28', '202cb962ac59075b964b07152d234b70', 'marcos@tec.com', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `cod_video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area_atuacao`
--
ALTER TABLE `area_atuacao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidatos_oficiais`
--
ALTER TABLE `candidatos_oficiais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_candidatos_oficiais_partidos1_idx` (`partidos_id`),
  ADD KEY `fk_candidatos_oficiais_perfis1_idx` (`perfis_id`),
  ADD KEY `fk_candidatos_oficiais_eleicao1_idx` (`eleicao_id`);

--
-- Indexes for table `candidatos_oficiais_votos`
--
ALTER TABLE `candidatos_oficiais_votos`
  ADD PRIMARY KEY (`id`,`perfis_id`,`candidatos_oficiais_id`),
  ADD KEY `fk_perfis_has_candidatos_oficiais_candidatos_oficiais1_idx` (`candidatos_oficiais_id`),
  ADD KEY `fk_perfis_has_candidatos_oficiais_perfis1_idx` (`perfis_id`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificacao`
--
ALTER TABLE `certificacao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cidades_estados1_idx` (`estados_id`);

--
-- Indexes for table `codigo_eleitoral`
--
ALTER TABLE `codigo_eleitoral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comentarios_projetos`
--
ALTER TABLE `comentarios_projetos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comentarios_projetos_projetos_lei1_idx` (`projetos_lei_id`),
  ADD KEY `fk_comentarios_projetos_perfis1_idx` (`perfis_id`);

--
-- Indexes for table `denuncia_perfil`
--
ALTER TABLE `denuncia_perfil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_denuncia_perfil_tipos_denuncia1_idx` (`tipos_denuncia_id`),
  ADD KEY `fk_denuncia_perfil_perfis1_idx` (`perfis_id_denunciado`),
  ADD KEY `fk_denuncia_perfil_perfis2_idx` (`perfis_id_delator`);

--
-- Indexes for table `ead`
--
ALTER TABLE `ead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eleicao`
--
ALTER TABLE `eleicao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_eleicao_cidades1_idx` (`cidades_id`),
  ADD KEY `fk_eleicao_estados1_idx` (`estados_id`),
  ADD KEY `fk_eleicao_paises1_idx` (`paises_id`);

--
-- Indexes for table `enquete`
--
ALTER TABLE `enquete`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_estados_paises1_idx` (`paises_id`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiencias_internacionais`
--
ALTER TABLE `experiencias_internacionais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_experiencias_internacionais_perfis_candidato1_idx` (`perfis_candidato_id`);

--
-- Indexes for table `forum_topicos`
--
ALTER TABLE `forum_topicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_forum_topicos_perfis1_idx` (`perfis_id`);

--
-- Indexes for table `forum_topicos_respostas`
--
ALTER TABLE `forum_topicos_respostas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_forum_topicos_respostas_forum_topicos1_idx` (`forum_topicos_id`),
  ADD KEY `fk_forum_topicos_respostas_perfis1_idx` (`perfis_id`),
  ADD KEY `fk_forum_topicos_respostas_forum_topicos_respostas1_idx` (`id_citacao`);

--
-- Indexes for table `fotos_galerias`
--
ALTER TABLE `fotos_galerias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fotos_galerias_galerias_idx` (`galerias_id`);

--
-- Indexes for table `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `graus_formacao`
--
ALTER TABLE `graus_formacao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itens_enquete`
--
ALTER TABLE `itens_enquete`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_itens_enquete_enquete1_idx` (`enquete_id`);

--
-- Indexes for table `itens_enquete_respostas`
--
ALTER TABLE `itens_enquete_respostas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_itens_enquete_respostas_itens_enquete1_idx` (`itens_enquete_id`),
  ADD KEY `fk_itens_enquete_respostas_perfis1_idx` (`perfis_id`);

--
-- Indexes for table `log_intencoes_voto`
--
ALTER TABLE `log_intencoes_voto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_log_intencoes_voto_perfis1_idx` (`perfis_id_candidato`),
  ADD KEY `fk_log_intencoes_voto_perfis2_idx` (`perfis_id_usuario`);

--
-- Indexes for table `meritadores_perfil`
--
ALTER TABLE `meritadores_perfil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_meritadores_perfil_perfis1_idx` (`perfis_id`),
  ADD KEY `fk_meritadores_perfil_perfis2_idx` (`perfis_id_amigo`);

--
-- Indexes for table `news_letter`
--
ALTER TABLE `news_letter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticias_comentarios`
--
ALTER TABLE `noticias_comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comentarios_noticias1_idx` (`noticias_id`),
  ADD KEY `fk_noticias_comentarios_perfis1_idx` (`perfis_id`);

--
-- Indexes for table `noticias_comentarios_respostas`
--
ALTER TABLE `noticias_comentarios_respostas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comentarios_respostas_comentarios1_idx` (`comentarios_id`),
  ADD KEY `fk_noticias_comentarios_respostas_perfis1_idx` (`perfis_id`);

--
-- Indexes for table `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patrimonio_declarado`
--
ALTER TABLE `patrimonio_declarado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_patrimonio_declarado_perfis_candidato1_idx` (`perfis_candidato_id`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pedidos_produtos1_idx` (`produtos_id`),
  ADD KEY `fk_pedidos_perfis1` (`perfis_id`);

--
-- Indexes for table `perfil_endereco`
--
ALTER TABLE `perfil_endereco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_perfil_endereco_perfis1_idx` (`perfis_id`);

--
-- Indexes for table `perfis`
--
ALTER TABLE `perfis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_perfis_profissoes1_idx` (`profissoes_id`),
  ADD KEY `fk_perfis_graus_formacao1_idx` (`graus_formacao_id`);

--
-- Indexes for table `perfis_candidato`
--
ALTER TABLE `perfis_candidato`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_perfis_candidato_perfis1_idx` (`perfis_id`),
  ADD KEY `fk_perfis_candidato_partidos1_idx` (`partidos_id`),
  ADD KEY `fk_perfis_candidato_area_atuacao1_idx` (`area_atuacao_id`);

--
-- Indexes for table `perfis_candidato_acoes_extracurriculares`
--
ALTER TABLE `perfis_candidato_acoes_extracurriculares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_perfis_candidato_acoes_extracurriculares_perfis_candidat_idx` (`perfis_candidato_id`);

--
-- Indexes for table `perfis_candidato_intencoes_voto`
--
ALTER TABLE `perfis_candidato_intencoes_voto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_perfis_candidato_intencoes_voto_perfis1_idx` (`perfis_id_candidato`),
  ADD KEY `fk_perfis_candidato_intencoes_voto_perfis2_idx` (`perfis_id_usuario`);

--
-- Indexes for table `perfis_candidato_processos`
--
ALTER TABLE `perfis_candidato_processos`
  ADD PRIMARY KEY (`id`,`perfis_candidato_id`),
  ADD KEY `fk_perfis_candidato_processos_perfis_candidato1_idx` (`perfis_candidato_id`);

--
-- Indexes for table `periodos_eleitorais`
--
ALTER TABLE `periodos_eleitorais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_posts_perfis1_idx` (`perfis_id`);

--
-- Indexes for table `posts_comentarios`
--
ALTER TABLE `posts_comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_posts_comentarios_posts1_idx` (`posts_id`),
  ADD KEY `fk_posts_comentarios_perfis1_idx` (`perfis_id`);

--
-- Indexes for table `posts_comentarios_curtidas`
--
ALTER TABLE `posts_comentarios_curtidas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_posts_comentarios_curtidas_posts_comentarios1_idx` (`posts_comentarios_id`),
  ADD KEY `fk_posts_comentarios_curtidas_perfis1_idx` (`perfis_id`);

--
-- Indexes for table `posts_comentarios_respostas`
--
ALTER TABLE `posts_comentarios_respostas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_posts_comentarios_respostas_posts_comentarios1_idx` (`posts_comentarios_id`),
  ADD KEY `fk_posts_comentarios_respostas_perfis1_idx` (`perfis_id`);

--
-- Indexes for table `posts_compartilhamentos`
--
ALTER TABLE `posts_compartilhamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_posts_compartilhamentos_posts1_idx` (`posts_id`),
  ADD KEY `fk_posts_compartilhamentos_perfis1_idx` (`perfis_id`);

--
-- Indexes for table `posts_curtidas`
--
ALTER TABLE `posts_curtidas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_posts_curtidas_posts1_idx` (`posts_id`),
  ADD KEY `fk_posts_curtidas_perfis1_idx` (`perfis_id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produtos_categorias1_idx` (`categorias_id`);

--
-- Indexes for table `produtos_fotos`
--
ALTER TABLE `produtos_fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produtos_fotos_produtos1_idx` (`produtos_id`);

--
-- Indexes for table `profissoes`
--
ALTER TABLE `profissoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projeto_meritus`
--
ALTER TABLE `projeto_meritus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projetos_lei`
--
ALTER TABLE `projetos_lei`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projetos_lei_has_curtidas`
--
ALTER TABLE `projetos_lei_has_curtidas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_projetos_lei_has_perfis_perfis1_idx` (`perfis_id`),
  ADD KEY `fk_projetos_lei_has_perfis_projetos_lei1_idx` (`projetos_lei_id`);

--
-- Indexes for table `repostas_comentarios_projetos`
--
ALTER TABLE `repostas_comentarios_projetos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_repostas_comentarios_projetos_perfis1_idx` (`perfis_id`),
  ADD KEY `fk_repostas_comentarios_projetos_comentarios_projetos1_idx` (`comentarios_projetos_id`);

--
-- Indexes for table `secoes`
--
ALTER TABLE `secoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seguidores`
--
ALTER TABLE `seguidores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_perfis_has_perfis_perfis2_idx` (`perfis_id_amigo`),
  ADD KEY `fk_perfis_has_perfis_perfis1_idx` (`perfis_id`);

--
-- Indexes for table `servicos_publicos`
--
ALTER TABLE `servicos_publicos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termos_de_uso`
--
ALTER TABLE `termos_de_uso`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipos_denuncia`
--
ALTER TABLE `tipos_denuncia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area_atuacao`
--
ALTER TABLE `area_atuacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `candidatos_oficiais`
--
ALTER TABLE `candidatos_oficiais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `candidatos_oficiais_votos`
--
ALTER TABLE `candidatos_oficiais_votos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `certificacao`
--
ALTER TABLE `certificacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `codigo_eleitoral`
--
ALTER TABLE `codigo_eleitoral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comentarios_projetos`
--
ALTER TABLE `comentarios_projetos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `denuncia_perfil`
--
ALTER TABLE `denuncia_perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `ead`
--
ALTER TABLE `ead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `eleicao`
--
ALTER TABLE `eleicao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `enquete`
--
ALTER TABLE `enquete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `experiencias_internacionais`
--
ALTER TABLE `experiencias_internacionais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `forum_topicos`
--
ALTER TABLE `forum_topicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `forum_topicos_respostas`
--
ALTER TABLE `forum_topicos_respostas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;
--
-- AUTO_INCREMENT for table `fotos_galerias`
--
ALTER TABLE `fotos_galerias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `graus_formacao`
--
ALTER TABLE `graus_formacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `itens_enquete`
--
ALTER TABLE `itens_enquete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `itens_enquete_respostas`
--
ALTER TABLE `itens_enquete_respostas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `log_intencoes_voto`
--
ALTER TABLE `log_intencoes_voto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;
--
-- AUTO_INCREMENT for table `meritadores_perfil`
--
ALTER TABLE `meritadores_perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `news_letter`
--
ALTER TABLE `news_letter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `noticias_comentarios`
--
ALTER TABLE `noticias_comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `noticias_comentarios_respostas`
--
ALTER TABLE `noticias_comentarios_respostas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `partidos`
--
ALTER TABLE `partidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `patrimonio_declarado`
--
ALTER TABLE `patrimonio_declarado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `perfil_endereco`
--
ALTER TABLE `perfil_endereco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `perfis`
--
ALTER TABLE `perfis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `perfis_candidato`
--
ALTER TABLE `perfis_candidato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `perfis_candidato_acoes_extracurriculares`
--
ALTER TABLE `perfis_candidato_acoes_extracurriculares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `perfis_candidato_intencoes_voto`
--
ALTER TABLE `perfis_candidato_intencoes_voto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `perfis_candidato_processos`
--
ALTER TABLE `perfis_candidato_processos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `periodos_eleitorais`
--
ALTER TABLE `periodos_eleitorais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `posts_comentarios`
--
ALTER TABLE `posts_comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `posts_comentarios_curtidas`
--
ALTER TABLE `posts_comentarios_curtidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `posts_comentarios_respostas`
--
ALTER TABLE `posts_comentarios_respostas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts_compartilhamentos`
--
ALTER TABLE `posts_compartilhamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts_curtidas`
--
ALTER TABLE `posts_curtidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `produtos_fotos`
--
ALTER TABLE `produtos_fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `profissoes`
--
ALTER TABLE `profissoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `projeto_meritus`
--
ALTER TABLE `projeto_meritus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `projetos_lei`
--
ALTER TABLE `projetos_lei`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `projetos_lei_has_curtidas`
--
ALTER TABLE `projetos_lei_has_curtidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `repostas_comentarios_projetos`
--
ALTER TABLE `repostas_comentarios_projetos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `secoes`
--
ALTER TABLE `secoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `seguidores`
--
ALTER TABLE `seguidores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `servicos_publicos`
--
ALTER TABLE `servicos_publicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `termos_de_uso`
--
ALTER TABLE `termos_de_uso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tipos_denuncia`
--
ALTER TABLE `tipos_denuncia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `candidatos_oficiais`
--
ALTER TABLE `candidatos_oficiais`
  ADD CONSTRAINT `fk_candidatos_oficiais_eleicao1` FOREIGN KEY (`eleicao_id`) REFERENCES `eleicao` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_candidatos_oficiais_partidos1` FOREIGN KEY (`partidos_id`) REFERENCES `partidos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_candidatos_oficiais_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `candidatos_oficiais_votos`
--
ALTER TABLE `candidatos_oficiais_votos`
  ADD CONSTRAINT `fk_perfis_has_candidatos_oficiais_candidatos_oficiais1` FOREIGN KEY (`candidatos_oficiais_id`) REFERENCES `candidatos_oficiais` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perfis_has_candidatos_oficiais_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `cidades`
--
ALTER TABLE `cidades`
  ADD CONSTRAINT `fk_cidades_estados1` FOREIGN KEY (`estados_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `comentarios_projetos`
--
ALTER TABLE `comentarios_projetos`
  ADD CONSTRAINT `fk_comentarios_projetos_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comentarios_projetos_projetos_lei1` FOREIGN KEY (`projetos_lei_id`) REFERENCES `projetos_lei` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `denuncia_perfil`
--
ALTER TABLE `denuncia_perfil`
  ADD CONSTRAINT `fk_denuncia_perfil_perfis1` FOREIGN KEY (`perfis_id_denunciado`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_denuncia_perfil_perfis2` FOREIGN KEY (`perfis_id_delator`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_denuncia_perfil_tipos_denuncia1` FOREIGN KEY (`tipos_denuncia_id`) REFERENCES `tipos_denuncia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `eleicao`
--
ALTER TABLE `eleicao`
  ADD CONSTRAINT `fk_eleicao_cidades1` FOREIGN KEY (`cidades_id`) REFERENCES `cidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_eleicao_estados1` FOREIGN KEY (`estados_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_eleicao_paises1` FOREIGN KEY (`paises_id`) REFERENCES `paises` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `estados`
--
ALTER TABLE `estados`
  ADD CONSTRAINT `fk_estados_paises1` FOREIGN KEY (`paises_id`) REFERENCES `paises` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `experiencias_internacionais`
--
ALTER TABLE `experiencias_internacionais`
  ADD CONSTRAINT `fk_experiencias_internacionais_perfis_candidato1` FOREIGN KEY (`perfis_candidato_id`) REFERENCES `perfis_candidato` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `forum_topicos`
--
ALTER TABLE `forum_topicos`
  ADD CONSTRAINT `fk_forum_topicos_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `forum_topicos_respostas`
--
ALTER TABLE `forum_topicos_respostas`
  ADD CONSTRAINT `fk_forum_topicos_respostas_forum_topicos1` FOREIGN KEY (`forum_topicos_id`) REFERENCES `forum_topicos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_forum_topicos_respostas_forum_topicos_respostas1` FOREIGN KEY (`id_citacao`) REFERENCES `forum_topicos_respostas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_forum_topicos_respostas_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `fotos_galerias`
--
ALTER TABLE `fotos_galerias`
  ADD CONSTRAINT `fk_fotos_galerias_galerias` FOREIGN KEY (`galerias_id`) REFERENCES `galerias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `itens_enquete`
--
ALTER TABLE `itens_enquete`
  ADD CONSTRAINT `fk_itens_enquete_enquete1` FOREIGN KEY (`enquete_id`) REFERENCES `enquete` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `itens_enquete_respostas`
--
ALTER TABLE `itens_enquete_respostas`
  ADD CONSTRAINT `fk_itens_enquete_respostas_itens_enquete1` FOREIGN KEY (`itens_enquete_id`) REFERENCES `itens_enquete` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_itens_enquete_respostas_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `log_intencoes_voto`
--
ALTER TABLE `log_intencoes_voto`
  ADD CONSTRAINT `fk_log_intencoes_voto_perfis1` FOREIGN KEY (`perfis_id_candidato`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_log_intencoes_voto_perfis2` FOREIGN KEY (`perfis_id_usuario`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `meritadores_perfil`
--
ALTER TABLE `meritadores_perfil`
  ADD CONSTRAINT `fk_meritadores_perfil_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_meritadores_perfil_perfis2` FOREIGN KEY (`perfis_id_amigo`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `noticias_comentarios`
--
ALTER TABLE `noticias_comentarios`
  ADD CONSTRAINT `fk_comentarios_noticias1` FOREIGN KEY (`noticias_id`) REFERENCES `noticias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_noticias_comentarios_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `noticias_comentarios_respostas`
--
ALTER TABLE `noticias_comentarios_respostas`
  ADD CONSTRAINT `fk_comentarios_respostas_comentarios1` FOREIGN KEY (`comentarios_id`) REFERENCES `noticias_comentarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_noticias_comentarios_respostas_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `patrimonio_declarado`
--
ALTER TABLE `patrimonio_declarado`
  ADD CONSTRAINT `fk_patrimonio_declarado_perfis_candidato1` FOREIGN KEY (`perfis_candidato_id`) REFERENCES `perfis_candidato` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_pedidos_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedidos_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `perfil_endereco`
--
ALTER TABLE `perfil_endereco`
  ADD CONSTRAINT `fk_perfil_endereco_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `perfis`
--
ALTER TABLE `perfis`
  ADD CONSTRAINT `fk_perfis_graus_formacao1` FOREIGN KEY (`graus_formacao_id`) REFERENCES `graus_formacao` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perfis_profissoes1` FOREIGN KEY (`profissoes_id`) REFERENCES `profissoes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `perfis_candidato`
--
ALTER TABLE `perfis_candidato`
  ADD CONSTRAINT `fk_perfis_candidato_area_atuacao1` FOREIGN KEY (`area_atuacao_id`) REFERENCES `area_atuacao` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perfis_candidato_partidos1` FOREIGN KEY (`partidos_id`) REFERENCES `partidos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perfis_candidato_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `perfis_candidato_acoes_extracurriculares`
--
ALTER TABLE `perfis_candidato_acoes_extracurriculares`
  ADD CONSTRAINT `fk_perfis_candidato_acoes_extracurriculares_perfis_candidato1` FOREIGN KEY (`perfis_candidato_id`) REFERENCES `perfis_candidato` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `perfis_candidato_intencoes_voto`
--
ALTER TABLE `perfis_candidato_intencoes_voto`
  ADD CONSTRAINT `fk_perfis_candidato_intencoes_voto_perfis1` FOREIGN KEY (`perfis_id_candidato`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perfis_candidato_intencoes_voto_perfis2` FOREIGN KEY (`perfis_id_usuario`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `perfis_candidato_processos`
--
ALTER TABLE `perfis_candidato_processos`
  ADD CONSTRAINT `fk_perfis_candidato_processos_perfis_candidato1` FOREIGN KEY (`perfis_candidato_id`) REFERENCES `perfis_candidato` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_posts_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `posts_comentarios`
--
ALTER TABLE `posts_comentarios`
  ADD CONSTRAINT `fk_posts_comentarios_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_posts_comentarios_posts1` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `posts_comentarios_curtidas`
--
ALTER TABLE `posts_comentarios_curtidas`
  ADD CONSTRAINT `fk_posts_comentarios_curtidas_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_posts_comentarios_curtidas_posts_comentarios1` FOREIGN KEY (`posts_comentarios_id`) REFERENCES `posts_comentarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `posts_comentarios_respostas`
--
ALTER TABLE `posts_comentarios_respostas`
  ADD CONSTRAINT `fk_posts_comentarios_respostas_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_posts_comentarios_respostas_posts_comentarios1` FOREIGN KEY (`posts_comentarios_id`) REFERENCES `posts_comentarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `posts_compartilhamentos`
--
ALTER TABLE `posts_compartilhamentos`
  ADD CONSTRAINT `fk_posts_compartilhamentos_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_posts_compartilhamentos_posts1` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `posts_curtidas`
--
ALTER TABLE `posts_curtidas`
  ADD CONSTRAINT `fk_posts_curtidas_perfis1` FOREIGN KEY (`perfis_id`) REFERENCES `perfis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_posts_curtidas_posts1` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Extraindo dados da tabela `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{"angular_direct":"direct","snap_to_grid":"off","relation_lines":"true"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"site_cecor","table":"banners"},{"db":"blog","table":"posts"},{"db":"blog","table":"users"},{"db":"blog","table":"categorias"},{"db":"blog","table":"posts_tags"},{"db":"blog","table":"tags"},{"db":"blog2","table":"posts"},{"db":"blog","table":"comentarios"},{"db":"laravel","table":"users"},{"db":"laravel","table":"produtos"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Extraindo dados da tabela `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('projeto-eduardo', 'alunos', 'id_grupo', 'projeto-eduardo', 'grupos', 'id');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('projeto-eduardo', 'alunos', 'id_grupo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-11-20 22:31:35', '{"lang":"pt","collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `projeto-eduardo`
--
CREATE DATABASE IF NOT EXISTS `projeto-eduardo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `projeto-eduardo`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `numero` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `identidade` varchar(50) DEFAULT NULL,
  `cpf` varchar(50) DEFAULT NULL,
  `escola` varchar(100) DEFAULT NULL,
  `ano_escolar` varchar(100) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `id_grupo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `rua`, `bairro`, `numero`, `cidade`, `telefone`, `email`, `facebook`, `identidade`, `cpf`, `escola`, `ano_escolar`, `data_nascimento`, `observacao`, `id_grupo`) VALUES
(5, 'Jardel Nathan', 'Alto da boa Vista', '', '', 'Itacambira', '', 'jardelnathan22@hotmail.com', '', 'as-32.132.132', '123.456.789-99', 'agostinho', '', '1997-05-22', '                                                                            ', 0),
(4, 'Jardel Nathan', 'Alto da boa Vista', '', '', 'Itacambira', '', 'jardelnathan22@hotmail.com', '', 'as-32.132.132', '', 'asd', '', '1997-05-22', '', 0),
(6, 'Jardel Nathan', 'Alto da boa Vista', '', '', 'Itacambira', '', 'jardelnathan22@hotmail.com', '', 'as-32.132.132', '', 'Faculdades Santo Agostinho - FASA', '', '1997-05-22', '', 0),
(7, 'eduardo', '', '', '', '', '', '', '', 'mg-13.213.213', '008.997.787-87', 'fiunorte', '', '1988-11-05', '', 0),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6),
(10, 'Jardel Nathan', 'Alto da boa Vista', '231231231', '', 'Itacambira', '', 'jardelnathan22@hotmail.com', '1', '12-31.231.231', '123.212.312-13', '123', '123', '0000-00-00', '123123', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupos`
--

CREATE TABLE `grupos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `grupos`
--

INSERT INTO `grupos` (`id`, `descricao`) VALUES
(7, 'teste');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_alunos_grupos_idx` (`id_grupo`);

--
-- Indexes for table `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;--
-- Database: `site_cecor`
--
CREATE DATABASE IF NOT EXISTS `site_cecor` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `site_cecor`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamentos`
--

CREATE TABLE `agendamentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `dia` varchar(40) DEFAULT NULL,
  `parte_dia` int(11) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `agendamentos`
--

INSERT INTO `agendamentos` (`id`, `nome`, `email`, `telefone`, `dia`, `parte_dia`, `mensagem`) VALUES
(8, 'asdad', '12312', '(12) 3 2323-2332', '4', 2, 'asd'),
(9, 'asd', 'jardelnathan22@hotmail.com', '(', '2', 2, 'wda'),
(10, 'Jardel Nathan', 'jardelnathan22@hotmail.com', '(', '2', 2, ''),
(11, 'Jardel Nathan de Souza Rodrigues', 'jardelnathan22@hotmail.com', '(38) 9 9913-694', '5', 2, 'as');

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendas`
--

CREATE TABLE `agendas` (
  `id` int(11) NOT NULL,
  `dia` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `agendas`
--

INSERT INTO `agendas` (`id`, `dia`) VALUES
(1, 'Domingo'),
(2, 'Segunda-feira'),
(3, 'Terça-feira'),
(4, 'Quarta-feira'),
(5, 'Quinta-feira'),
(6, 'Sexta-feira'),
(7, 'Sábado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendas_horarios`
--

CREATE TABLE `agendas_horarios` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `agendas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `agendas_horarios`
--

INSERT INTO `agendas_horarios` (`id`, `descricao`, `agendas_id`) VALUES
(1, '7:30 às 10:30 h - Complexo Médico Pró-vida - Endereço: Av. Nossa Sra. de Fátima, 719, São Judas Tadeu, Montes Claros - MG - Telefone: (38) 2211-6000', 2),
(3, '14:00 às 18:00 h - Otorrino Fisio Center - Endereço: Rua Santa Maria, 86, Centro, Montes Claros - MG - Telefone: (38) 3218-5000', 2),
(5, '7:00 às 12:00 h - Centro Cirúrgico Hospital Dilson Godinho - Endereço: Av. Geraldo Ataíde, 480, Alto São João, Montes Claros - MG - Telefone: (38) 3229-4000', 3),
(6, '14:00 às 18:00 h - Otorrino Fisio Center - Endereço: Rua Santa Maria, 86, Centro, Montes Claros - MG - Telefone: (38) 3218-5000', 3),
(7, '8:00 às 12:00 h - Otorrino Fisio Center - Endereço: Rua Santa Maria, 86, Centro, Montes Claros - MG - Telefone: (38) 3218-5000', 4),
(8, '13:30 às 16:30 h - Complexo Médico Pró-vida - Endereço: Av. Nossa Sra. de Fátima, 719, São Judas Tadeu, Montes Claros - MG - (38) 2211-6000', 4),
(9, '8:00 às 12:00 h - Clínica Medic Center - Endereço: Av. Bias Fortes, 1030 A, Dona Joaquina, Brasília de Minas - MG - Telefone: (38) 3231-3002', 5),
(10, '14:00 às 18:00 h - Centro cirúrgico do Hospital das Clínicas Mário Ribeiro - Endereço: Rua Plínio Ribeiro, 539, Jardim Brasil, Montes Claros - MG - Telefone: (38) 3218-8161', 5),
(11, '8:00 às 18:00 h - Otorrino Fisio Center - Endereço: Rua Santa Maria, 86, Centro, Montes Claros - MG - Telefone: (38) 3218-5000', 6),
(12, '14:00 às 18:00 h - Otorrino Fisio Center - Endereço: Rua Santa Maria, 86, Centro, Montes Claros - MG - Telefone: (38) 3218-5000', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `titulo_destaque` text NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `banners`
--

INSERT INTO `banners` (`id`, `titulo`, `imagem`, `titulo_destaque`, `descricao`, `link`) VALUES
(6, 'banner1', '59430ad6bc82f7458a6b01e06798a894.jpg', '<p>asda</p>', '<p>sd</p>', 'asd'),
(7, 'asd', '12afc0adb8bea3d4b726086cce29add6.jpg', 'asdasd', 'asda', 'sd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias_cirurgias`
--

CREATE TABLE `categorias_cirurgias` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `nome_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias_cirurgias`
--

INSERT INTO `categorias_cirurgias` (`id`, `nome`, `nome_url`) VALUES
(1, 'Estéticos da face', 'esteticos-da-face'),
(3, 'Crânio-Maxilo- Facial:', 'cranio-maxilo-facial'),
(4, 'Otorrino', 'otorrino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cirurgias`
--

CREATE TABLE `cirurgias` (
  `id` int(11) NOT NULL,
  `categorias_cirurgias_id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `nome_url` varchar(255) DEFAULT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `texto_breve` varchar(500) DEFAULT NULL,
  `texto` mediumtext,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cirurgias`
--

INSERT INTO `cirurgias` (`id`, `categorias_cirurgias_id`, `titulo`, `nome_url`, `imagem`, `texto_breve`, `texto`, `data`) VALUES
(3, 1, 'Rinoplastia (Plástica do Nariz)', 'rinoplastia-plastica-do-nariz', '4a700d0b6213eddc2c3c7292e7947388.jpg', 'A Rinoplastia ou cirurgia plástica do nariz é um procedimento cirúrgico para alterar a aparência externa, com o objetivo de melhorar características específicas do nariz e   harmonizar a face.', '<p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A Rinoplastia ou cirurgia plástica do nariz é um procedimento cirúrgico para alterar a aparência externa, com o objetivo de melhorar características específicas do nariz e   harmonizar a face.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">O nariz é um dos atributos mais proeminentes e notáveis de toda a face e exerce um efeito importante na aparência geral. Além disso, exerce a função de permitir a passagem do ar controlando a sua umidade, temperatura e pureza antes de atingir os pulmões. A cirurgia estética nasal tem repercussão funcional e o contrário pode também acontecer. Dessa forma, é praticamente impossível uma Rinoplastia sem uma abordagem funcional integrada.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Do ponto de vista cirúrgico, a rinoplastia é diferente de vários outros procedimentos pelo seu aspecto dinâmico. As estruturas nasais se movem, não somente durante, mas no período pós operatório também. Assim, o cirurgião deve prever e se antecipar a todas as modificações que possa acontecer, através de técnicas específicas.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A rinoplastia é muito interativa, e quanto mais o cirurgião aprende a interpretar as mudanças intra-operatórias e entender o que elas representam, melhor se torna o seu julgamento e maior controle ele terá de seu resultado. Ela oferece, talvez mais do que qualquer outro procedimento estético, a possibilidade de individualizar o resultado. Mais ainda: <b>Sucesso na rinoplastia requer que o resultado seja individualizado!</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Rinoplastia estruturada:</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A rinoplastia  ainda é vista nos dias de hoje por muitos cirurgiões não especialistas como uma cirurgia simples cujo objetivo principal é reduzir o nariz através da remoção de tecidos (osso e cartilagem). No entanto, esta abordagem simplista enfraquece o suporte das estruturas  do nariz, levando a deformidades estéticas e até mesmo colapso de partes do nariz, repercutindo também na função respiratória. Estas complicações frequentemente levam o paciente  a procura de uma rinoplastia revisional (secundária).</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Em se tratando da rinoplastia, forma e função são inseparáveis, e os cirurgiões devem entender como as várias mudanças na aparência nasal, mesmo que sutis,  podem afetar o fluxo respiratório. Devem entender que, na maioria das manobras realizadas durante o procedimento, seja para reduzir o dorso, seja para refinar a ponta, existem implicações funcionais. Este conhecimento deve ser usado a favor do cirurgião para previnir os problemas respiratórias após a rinoplastia (ainda muito comuns), assim como para tratar  e restaurar a função , e a estética, em casos secundários.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Durante toda minha formação cirúrgica, tanto na cirurgia Craniofacial e na Otorrinolaringologia, tenho praticado e sido adepto à Rinoplastia Estruturada, que favorece a preservação da integridade estrutural do nariz, ao mesmo tempo que usa enxerto (do próprio paciente) para restaurar a sustentação e reforçar as áreas de fraqueza do nariz  após as modificações necessárias. Esta filosofia de trabalho proporciona resultados mais naturais e duradouros prevenindo, assim, complicações estéticas e funcionais.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Rinoplastia feira pelo otorrino:</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A Rinoplastia é considerada por todos os especialistas na área como a cirurgia estética mais complexa da face, pelo fato do nariz apresentar uma infinidade de variações anatômicas, que requerem decisões acertadas sobre as indicações de cada umas das várias técnicas cirúrgicas existentes. Ela pode ser realizada tanto por otorrinolaringologistas como por cirurgiões plásticos, desde que tenham o devido treinamento específico na área.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A<b> American Academy of Facial Plastic and Reconstructive Surgery</b> , a maior e principal associação de cirurgia plástica facial do mundo, formada na sua grande maioria por otorrinolaringologistas, vem dando suporte no desenvolvimento e aperfeiçoamento da rinoplastia e outras cirurgias plásticas faciais desde 1972. A grande maioria das cirurgias plásticas faciais nos EUA já são realizadas por otorrinos treinados na área, através do programa de Fellowship. Aqui no Brasil, já existe dentro da <b>Associação Brasileira de Otorrinolaringologia e Cirurgia Cérvico Facial a Academia Brasileira de Cirurgia Plástica da Face</b>, associação que vem desempenhando este papel há vários anos, promovendo vários cursos intensivos em todo o país, além da organização de congressos específicos de Rinoplastia com a presença dos maiores especialistas do Brasil e do mundo.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Independente da especialidade que pertença o Cirurgião, o candidato à rinoplastia deve buscar informações  sobre a formação e treinamento de seu médico, assim como a experiência adquirida na área de  rinoplastia. Este treinamento específico é o principal fator determinante para o sucesso da cirurgia  e satisfação do paciente.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Dicas para escolher seu médico:</b></span></font></p><ol><li style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Informe-se bem sobre o procedimento e sobre o profissional que irá te atender. Os resultados da cirurgia nasal duram uma vida.</span></font></li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;"><span style="font-size: 14px; color: rgb(27, 27, 27); font-family: Raleway, sans-serif;">Verifique se o seu problema requer uma solução nasal dupla. Diversas técnicas cirúrgicas – funcionais e estéticas – podem ser necessárias, e devem ser combinadas em uma única operação.</span></li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Verifique se o cirurgião tem treinamento especializado em cirurgia estética e funcional.</span></font></li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Lembre-se que a cirurgia estética pode distorcer a forma do seu nariz. O cirurgião é capaz de restaurar a sua respiração, assegurando simultaneamente a forma natural de seu nariz?</span></font></li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Certifique-se que o seu cirurgião entende seus problemas, necessidades e expectativas.</span></font></li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Não prossiga com a cirurgia, a menos que você esteja feliz com o diagnóstico e a recomendação.</span></font></li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Se você tiver dúvidas, peça uma segunda opinião!</span><br><br><br><br></font><br></li></ol><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><br></font></p><div style="text-align: justify;"><p></p></div>', '2017-10-19 23:02:20'),
(4, 1, 'Otoplastia (Plástica das Orelhas)', 'otoplastia-plastica-das-orelhas', 'ed31571c18a8ae99fdf7ed3e21676c4b.jpg', 'O termo otoplastia refere-se à cirurgia plástica das orelhas, podendo corresponder a várias técnicas, dependendo do problema a ser tratado. Em geral o termo é usado para indicar a correção de orelhas proeminentes (de abano), porém outros problemas como sequelas de traumas, ausência congênita das orelhas e orelhas constritas também são tratadas com técnicas de otoplastia.', '<p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>O que é a otoplastia?</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">O termo otoplastia refere-se à cirurgia plástica das orelhas, podendo corresponder a várias técnicas, dependendo do problema a ser tratado. Em geral o termo é usado para indicar a correção de orelhas proeminentes (de abano), porém outros problemas como sequelas de traumas, ausência congênita das orelhas e orelhas constritas também são tratadas com técnicas de otoplastia.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Indicações da otoplastia</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">As correções de orelha são realizadas para minimizar deformidades, tentar corrigir assimetrias de forma, tamanho e angulação no caso do abano, em orelhas mal formadas de nascença ou que sofreram deformidades após um traumatismo.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Existe desde o grau mais leve até o mais grave de orelhas em abano, porém a indicação cirúrgica é baseada no grau de incômodo que o paciente apresenta.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A idade mínima situa-se entre seis e sete anos de idade. Nessa faixa etária já houve finalização do crescimento das orelhas, de modo que a cirurgia não irá interferir no crescimento. Também coincide com a idade escolar de alfabetização, quando a criança começa a se incomodar com as orelhas proeminentes.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Como é feita a cirurgia</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A anestesia mais comumente usada é a local com sedação. A cirurgia se inicia com uma incisão atrás da orelha, seguindo a dobra natural da pele. É, então, realizada a retirada do excesso de pele e em seguida é feito o ligamento da cartilagem, para deixa-la mais flexível. Em alguns casos pode ser feita a retirada de cartilagem para diminuição da orelha. Logo em seguida são feitos pontos de fixação para manter uma nova anatomia da orelha e realizando o fechamento da pele. Em geral, os pontos são internos e absorvíveis, não precisam, portanto, ser retirados. A cirurgia tem duração média de uma hora.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Antes da cirurgia:</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Consulta médica:</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Uma boa consulta pré-operatória, além de preparar o paciente para a cirurgia, deverá fazer com que ele compreenda seu problema, compreenda a solução proposta, riscos e benefícios do procedimento, e alinhe a expectativa ideal com as possibilidades de tratamento e que tipo de resultado poderá ser alcançado.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Exames</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A otoplastia requer que sejam realizados todos os exames pré-operatórios preconizados. Entre eles estão o exame de sangue, composto por hemograma e coagulograma completos, e o eletrocardiograma.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Medicações</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Deve ser interrompido o uso de qualquer outro remédio que altere a coagulação do sangue, entre eles: ácido acetilsalicílico (AAS), gingko biloba, cascara sagrada e clopidogrel. O ideal é que a manutenção do uso dos medicamentos seja feira regularmente, principalmente em casos de pacientes com hipertensão e diabetes.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Jejum</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">São necessárias aproximadamente oito horas de jejum de sólidos e líquidos.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Após a cirurgia:</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Internação</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">O tempo médio de internação é de oito a doze horas.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Curativos</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Os curativos são geralmente realizados com pomada cicatrizante e gaze. Ele é realizado no final da cirurgia e retirado após um período de 24 a 48 horas da cirurgia no consultório pelo médico. Se houver necessidade de novo curativo, o paciente (ou seu responsável) será orientado como fazê-lo. Deverá ser utilizada uma faixa de tecido compressiva específica nos casos de correção de abano, retirada apenas para o banho, mas utilizada 24 horas por dia, por um mês.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">O paciente deverá deixar a região da cicatriz limpa e seca, lavando com cuidado no banho e secando cuidadosamente após, segundo orientação do médico.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Dor</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Sempre são prescritos analgésicos, mas geralmente não há dor, há apenas uma sensação de incômodo. Se houver dor importante, o médico deverá ser avisado para que examine e oriente.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Inchaço e vermelhidão</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">É normal que haja edema (inchaço) e vermelhidão. Com o passar dos dias este aspecto vai melhorando até a cicatrização se completar.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Medicação</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Analgésicos comuns são prescritos de rotina para o pós-operatório, e os pacientes são orientados a tomar se tiverem dor. Anti-inflamatórios também poderão ser prescritos.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Volta às atividades normais e exercícios físicos</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Em crianças, recomenda-se aguardar uma semana para voltar à escola, para evitar o risco de trauma nas orelhas recém-operadas. Nos casos mais simples, pode-se retornar às aulas em três dias. Nos adultos, geralmente em dois dias. Atividade física deverá ser&nbsp; iniciada após 15 dias, leve no início e evitando-se trauma no local operado.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Uso de óculos</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">O uso dos óculos é liberado até por cima do curativo, preso com esparadrapo na faixa, desde que não aperte demais a cabeça. Quando for retirado o curativo, deve-se tomar cuidado com os óculos apertados à cabeça, ou atrás da orelha, que deverão ser reajustados à face. Alguns pacientes aprendem a prender as hastes dos óculos acima da inserção da orelha à cabeça, com o uso da própria faixa que deverão usar por 30 dias.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Retorno ao consultório médico</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">O primeiro retorno é em 24 a 48 horas, para remoção do curativo e avaliação médica, e então serão combinados os próximos retornos.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Cicatrizes e queloide</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Nas cirurgias de correção de abano, as cicatrizes ficam escondidas na parte posterior da orelha, na junção da orelha ao crânio. Há casos que necessitam incisões na parte da frente da orelha, mas procura-se escondê-las nas dobras naturais da pele. A cicatriz chamada de queloide, esteticamente desfavorável, pode ocorrer em alguns pacientes.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Contraindicações à otoplastia</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A infecção de ouvido contraindica a cirurgia, pois a proximidade com o local que será operado faz com que haja maior risco de infecção na ferida ou na cartilagem da orelha.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Infecções em outros locais também são contra indicações para o procedimento, tais como gripes mais intensas, infecções urinarias, amigdalites. A presença de doenças de base mal controladas, como hipertensão e diabetes, são contraindicações para qualquer procedimento plástico, devendo essas doenças serem controladas antes da otoplastia.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">O tabagismo é uma contraindicação relativa, o paciente é aconselhado a deixar de fumar por duas semanas antes e 30 dias após a cirurgia, devido ao risco de afetar a cicatrização.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Riscos da otoplastia</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Pode haver sangramento, hematoma, dor, inchaço maior que o esperado, infecção, ou mesmo permanecer uma assimetria, principalmente em orelhas de adultos, que têm a cartilagem mais dura, tendendo a perder o ângulo da correção e voltar ao abano.</span><br></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b></b></span><br><br><br><br></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><br><br></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><br></font></p>', '2017-10-19 23:02:35'),
(5, 1, 'Mentoplastia (Cirurgia do Queixo)', 'mentoplastia-cirurgia-do-queixo', 'ccfc7efa2e07b0bc7a8a6b29187f662f.jpg', 'A cirurgia para aumentar o queixo é capaz de trazer uma harmonia facial. O que pode ter efeitos positivos no quesito aparência, auto estima e segurança. ', '<p>A cirurgia para aumentar o queixo é capaz de trazer uma harmonia facial. O que pode ter efeitos positivos no quesito aparência, auto estima e segurança.&nbsp;</p><p><b>Tipos de cirurgia</b></p><p>O aumento de mento, aumento de queixo ou Mentoplastia é um procedimento cirúrgico para remodelar o queixo que pode ser aumentada através da colocação de implantes, osteotomia (cortar o osso) ou, em alguns casos, pode-se optar pelo uso de alguns preenchedores. A lipoescultura neste caso, é muito bem vinda.</p><p>Os dois tipos de implantes mais utilizados são o de polietileno poroso de alta densidade e o de silicone. A vantagem do primeiro é que o material é mais aceito pelo organismo (biocompatível), tem menor índice de efeitos adversos e vem se tornando a primeira escolha.</p><p>Na osteotomia de mento não há necessidade da inclusão de implantes, e o aumento do queixo é realizado através de seu reposicionamento anterior e fixação com mini placas de titânio e parafusos. A incisão, tanto na osteotomia quanto com o uso de implante, é posicionada dentro da boca (sulco gengival). É imprescindível a avaliação da oclusão dentária e das projeções da face para o resultado adequado.</p><p><b>Para quem é indicada?</b></p><p>É recomendada para pacientes que têm queixo pequeno e retraído com boa oclusão dentária, ou seja, a pessoa candidata a esta cirurgia não deve apresentar alteração de sua mordida. Por isso, são feitas análises das proporções estéticas da face.</p><p><b>É comum operar queixo junto com o nariz?</b></p><p>É comum o paciente chegar ao consultório achando que seu nariz é grande quando, muitas vezes, o que existe é uma associação de nariz grande e queixo pequeno. Essa impressão errada acontece porque a harmonia facial na visão de perfil é muito dependente da relação entre o queixo e o nariz.</p><p>O nariz pode até nem ser grande, mas parecer se o queixo for pequeno quando analisadas aquelas proporções faciais.</p><p></p><p>À associação entre cirurgia de nariz e mentoplastia dá-se o nome de perfiloplastia, cujo objetivo é melhorar a harmonia das proporções da face.</p><p><b>Pré operatório</b></p><p>O pré-operatório passa por uma análise facial bem como uma história médica e odontológica completas. O tratamento ortodôntico muitas vezes deve ser feito antes da mentoplastia. Isso porque os dentes influenciam a posição dos lábios e estes determinam a estética do perfil, por isso é essencial corrigir as más posições dentárias.</p><p>Os exames pré-operatório variam conforme a idade e estado de saúde, mas os principais são:</p><ul><li>Hemograma, coagulogama, creatinina, glicemia de jejum;</li><li>Rx de tórax PA/P;</li><li>Eletrocardiograma.</li></ul><p><b>Como é feita a cirurgia?</b></p><p>A cirurgia de mentoplastia pode ser feita com uso de implante ou através de fraturas no osso do mento e seu avanço. Dentre os implantes, o melhor é o polietileno poroso – POREX®. Tanto o uso de POREX® quanto a mentoplastia de avanço com fratura são boas opções; a fratura pode ser indicada em casos de hipomentonismo (queixo pequeno) associado a alguns problemas de ronco.</p><p>A incisão de ambas é de 4 cm por dentro da boca e a cicatriz fica imperceptível. O paciente é orientado a ter uma higiene bucal mais cuidadosa nos primeiros 14 dias. O resultado final ocorre em 4-6 meses, com resultados já visíveis dentro das 2 primeiras semanas.</p><p>Caso opte-se por uso de POREX, o mesmo é fixado ao osso com 2 parafusos. Já na mentoplastia de avanço não é usado implante, mas são usados uma placa especial de titânio e 5 parafusos.</p><p></p><p>As duas cirurgias são realizadas com anestesia geral ou local com sedação, com duração de 2 horas.</p><p><b>O pós operatório da Mentoplastia é muito doloroso?</b></p><p>Geralmente não há dor no pós-operatório. Quando ocorre um discreto desconforto, poderemos neutralizá-la com o uso de analgésicos comuns.</p><p></p><p>Pode haver uma diminuição da sensibilidade que pode durar de 2 a 3 meses.</p><p><b>Como é a recuperação da cirurgia de Mentoplastia?</b></p><p>A recuperação exige alguns cuidados especiais, tais como:</p><ul><li>Evitar sol e traumatismos locais no pós-operatório;</li><li>Retornar ao consultório nos dias e horários estabelecidos;</li><li>Escovar os dentes com escova macia e reforçar a higiene bucal com soluções antissépticas ;</li><li>Necessário fazer uso correto de medicação para dor, inflamação e prevenção de infecção por 7 dias;</li><li>Não se preocupar com o “inchaço” natural do queixo, que poderá persistir por algumas semanas;</li><li>Deitar de barriga para cima;</li><li>Compressas geladas locais por 2-3 dias são;</li><li>Evitar alimentos sólidos que exijam mastigação intensa nos primeiros dias. Alimentação livre, a partir do segundo dia, principalmente à base de proteínas (carnes, leite, ovos) e vitaminas (frutas);</li><li>Recomenda-se fazer uma adequada avaliação ortodôntica e odontológica. Se necessário, deve-se realizar uma avaliação por um Cirurgião Buco-Maxilo-Facial;</li><li>É indicado a realização da drenagem linfática no pescoço para acelerar o processo de desinchar o edema.</li></ul><p><b>Como é a cicatriz?</b></p><p>A cicatriz mede 4 cm e fica por dentro da boca.</p><p><b>Qual a vantagem da Mentoplastia cirúrgica em relação ao preenchimento?</b></p><p>Enquanto a cirurgia tem duração para toda a vida do paciente, o preenchimento dura de 18-24 meses e seu resultado é bem mais modesto.</p><p>Porém, o preenchimento tem como principal vantagem o preço, uma vez que não é necessário arcar com custos de hospital, equipe médica e material, e não necessita de internação e recuperação pós-operatória.</p><p><b></b><br><br></p><p><b></b><br></p>', '2017-11-22 17:29:50'),
(6, 1, 'Blefaroplastia (Plástica das Pálpebras)', 'blefaroplastia-plastica-das-palpebras', '8f62d0423ddb9dda0ba977c3a9591370.jpg', 'É um procedimento cirúrgico realizado para melhorar a aparência das pálpebras superiores, inferiores ou de ambas. A cirurgia proporciona uma aparência rejuvenescida ao redor dos olhos, fazendo com que o olhar não tenha o visual de cansado e caído.', '<p><b>O que é a cirurgia das pálpebras?</b></p><p>É um procedimento cirúrgico realizado para melhorar a aparência das pálpebras superiores, inferiores ou de ambas. A cirurgia proporciona uma aparência rejuvenescida ao redor dos olhos, fazendo com que o olhar não tenha o visual de cansado e caído.</p><p><b>Como a blefaroplastia é realizada e após quanto tempo os resultados são visíveis?</b></p><p>O procedimento dura por volta de 45 a 90 minutos, sob anestesia local com sedação ou anestesia geral. É necessário que o paciente fique internado por um período de 6h a 8h para observação.</p><p><b>Resultados</b></p><p>Logo na primeira semana, é possível ver os primeiros resultados, que se tornam mais evidentes após dois ou três meses com a diminuição do inchaço, com seu resultado final depois de seis meses a um ano.</p><p>Os melhores resultados aparecem em pacientes que têm a pele das pálpebras mais firme, pois se a região é muito flácida, a probabilidade de a pálpebra cair novamente é maior.</p><p><b>Quais são os seus benefícios e para quem a cirurgia é indicada?</b></p><p>A cirurgia é indicada para pessoas com grande quantidade e flacidez de pele nas pálpebras, e o seu principal benefício é o rejuvenescimento da pele na área dos olhos.</p><p>Na pálpebra superior, a cirurgia remove o depósito elevado de gordura que aparenta inchaço, e na pálpebra inferior retira o excesso de pele e rugas finas. Remove também a sobra de pele que resulta em dobras ou atrapalha o contorno natural da pálpebra superior — às vezes, prejudicando a visão.</p><p>Bolsas sob os olhos também podem ser corrigidas, assim como a queda das pálpebras inferiores. Além disso, a cirurgia também é recomendada para a remoção de xantelasmas, que são pequenas bolinhas de colesterol que se formam nessa região.</p><p><b>Quais riscos a blefaroplastia oferece e quais são os cuidados pós-operatórios da cirurgia?</b><br></p><p>Assim como outras intervenções cirúrgicas, a blefaroplastia oferece riscos à saúde do paciente, como complicações cardíacas e pulmonares e os riscos relacionados à anestesia, à alteração da frequência cardíaca e à pressão arterial. Por isso, é necessário procurar um profissional de confiança e realizar a cirurgia em um local adequado.</p><p></p><p>Após a cirurgia, os olhos podem ficar temporariamente ou permanentemente secos, sendo necessário o uso frequente de colírios. Pode ocorrer também uma disfunção envolvendo a posição anormal das pálpebras superiores, pele solta e fechamento inadequado da pálpebra, com exposição da conjuntiva e frouxidão anormal da pálpebra inferior.</p><p><b>Pós-operatório</b></p><p>No pós-operatório, devem ser seguidas todas as recomendações do médico responsável, como evitar cigarro, a ingestão de antibiótico e analgésicos, o uso correto de colírios, a higienização e o repouso. É importante que, durante o período de cicatrização, o local da cirurgia não sofra esforço excessivo, escoriação ou movimento.</p><p>Entre outros cuidados após o procedimento, deve-se usar uma pomada lubrificante e fazer compressas frias no local, e o uso de óculos escuros deve ser feito por cerca de 30 dias até que a cicatrização esteja completa.</p><p><b></b><br></p>', '2017-11-22 17:30:09'),
(7, 1, 'Bichectomia (Redução do volume das bochechas)', 'bichectomia-reducao-do-volume-das-bochechas', '9cdc4c2ea0ff6ad47de59e6137839a8f.jpg', 'A bichectomia é a cirurgia em que há a retirada total ou mesmo parcial de duas bolsas de gorduras presentes uma em cada lado da boca, entre o maxilar e a mandíbula, chamadas de "bolas de Bichat". A finalidade da bichectomia é puramente estética: reduzir o volume da parte de baixo do rosto, por isso, é uma cirurgia controversa.', '<p><b>O que é a bichectomia</b></p><p>A bichectomia é a cirurgia em que há a retirada total ou mesmo parcial de duas bolsas de gorduras presentes uma em cada lado da boca, entre o maxilar e a mandíbula, chamadas de "bolas de Bichat". A finalidade da bichectomia é puramente estética: reduzir o volume da parte de baixo do rosto, por isso, é uma cirurgia controversa.</p><p>Com o passar da idade e a retirada dessas bolsas de gordura pode acarretar em uma aparência mais envelhecida, principalmente se for total.</p><p><b>Indicações da bichectomia</b></p><p>A bichectomia é uma cirurgia puramente estética e pode ser realizada por pessoas que querem afinar o rosto.</p><p><b>Pré-requisitos para fazer a cirurgia</b></p><p>É importante que seja feita uma avaliação clínica pelo profissional que executará a cirurgia, para que ele possa avaliar se há indicação e quais são as expectativas da paciente quanto ao tratamento.</p><p></p><p>Depois disso, é importante que o paciente faça os exames pré-cirúrgicos, que incluem hemograma completo, coagulograma e glicemia, para ver se ele está em condições de saúde para realizar a cirurgia. Além disso, é importante que o paciente passe pela avaliação de um cardiologista, se o médico achar necessário.</p><p><b>Contraindicações para bichectomia</b></p><p>Pessoas com problemas de saúde, como doenças infecciosas ativas, são contraindicadas a fazer esse tipo de cirurgia. Além disso, pessoas com uma expectativa irreal sobre o procedimento não devem realizar esse tipo de operação.</p><p><b>Como é feita bichectomia</b></p><p>A cirurgia é intraoral, ou seja, o corte é feito dentro da boca, pois as mucosas bucais tem uma melhor cicatrização e não deixam marca aparente. Nesses casos o paciente recebe anestesia local e sedação.</p><p><b>Duração da cirurgia</b></p><p>O tempo de duração da cirurgia dependerá da experiência do médico e de quaisquer eventuais complicações. Mas a bichectomia dura em média entre uma hora e uma hora e meia.<br><br><b>Possíveis complicações da bichectomia</b></p><p>As possíveis complicações são hemorragia, infecção local, formação de hematomas, e lesões à nervos que podem levar distúrbios sensitivos ou paralisias faciais.</p><p><b>Pré-operatório da bichectomia</b></p><p>Além da realização dos exames pré-operatórios (glicemia, coagulograma e hemograma completo) e da avaliação cardiológica, é importante que antes da bichectomia o paciente realize jejum de oito horas.</p><p><b>Pós-operatório da bichectomia</b></p><p>Normalmente ocorre um inchaço na região, devido ao corte cirúrgico, que pode ser tratado com o uso de compressas de água fria. Deve-se evitar consumir alimentos cítricos, que podem causar maior desconforto.</p><p>O retorno às atividades normais em geral demora uma semana e a volta das atividades físicas em torno de 3 semanas.</p><p><b></b><br></p><p><br><br></p>', '2017-11-22 17:30:36'),
(8, 1, 'Lipoaspiração de Papada', 'lipoaspiracao-de-papada', '25631061145248f50d59197b18881f61.jpg', 'O tratamento da papada pode ser feito através de uma lipoaspiração da região cervical. Pequenas incisões são feitas para a introdução de cânulas bem pequenas para aspirar a gordura.', '<p>O tratamento da papada pode ser feito através de uma lipoaspiração da região cervical. Pequenas incisões são feitas para a introdução de cânulas bem pequenas para aspirar a gordura.</p><p><b>Como é feita a lipo de papada?</b></p><p>A cirurgia é realizada com anestesia local e não há necessidade de internação. O procedimento tem duração média de 30 a 40 minutos.</p><p>Após a infiltração da região com anestésico local é utilizado uma fibra de 2mm de largura para liberar a energia na região. O processo de aplicação do laser dura em média 15 minutos para essa região. Em seguida é realizada a aspiração da gordura “derretida”.</p><p>Para a cirurgia é realizada uma pequena incisão de 4mm abaixo do queixo. Para o fechamento da incisão é necessário apenas um ponto que é removido com 1 semana de pós operatório.</p><p><b>Recuperação após da lipo da papada</b></p><p>Em 72 horas o paciente já pode retornar às suas atividades diárias. Em 5 dias já é possível realizar atividades físicas. Recomenda–se utilizar uma malha compressiva por um período de 2 a 3 semanas após a lipo de papada. Não há necessidade de usar a malha compressiva o dia todo, apenas no período em que se está em casa. Algumas sessões de drenagem linfática na região podem ajudar na redução do inchaço e melhorar a recuperação. O resultado definitivo da cirurgia é esperado em 4 a 6 meses após o procedimento.Nossa sociedade ocidental tende a valorizar pessoas com o rosto angulado e queixo bem definido, associando a elas características de personalidade forte e beleza.<br></p><p><br></p>', '2017-11-22 17:31:07'),
(11, 3, 'Fissuras Lábio-palatinas', 'fissuras-labio-palatinas', 'f09fd0f6140091044d5ce3b1032bc5d2.jpg', 'As fissuras labiopalatinas são os defeitos congênitos mais comuns entre as malformações que afetam a face do ser humano, atingindo uma criança a cada 650 nascidas, de acordo com a literatura especializada. De origem latina, a palavra “fissura” significa fenda, abertura.', '<p>As fissuras labiopalatinas são os defeitos congênitos mais comuns entre as malformações que afetam a face do ser humano, atingindo uma criança a cada 650 nascidas, de acordo com a literatura especializada. De origem latina, a palavra “fissura” significa fenda, abertura.</p><p><b>O que é fissura labiopalatina?</b></p><p>A maioria dos estudos considera as fissuras labiopalatinas como defeitos de não fusão de estruturas embrionárias. Ou seja, tanto o lábio como palato (“céu da boca”) são formados por estruturas que, nas primeiras semanas de vida, estão separadas. Estas estruturas devem se unir para que ocorra a formação normal da face. Se, no entanto, esta fusão não acontece, as estruturas permanecem separadas, dando origem às fissuras no lábio e/ou no palato. As fissuras faciais são estabelecidas na vida intra-uterina, no período embrionário (ou seja, até a 12a. semana de gestação), e apresentam grande diversidade de forma pela variabilidade na amplitude e pelas estruturas afetadas no rosto.</p><p><b>Classificação das fissuras</b></p><p>De acordo com as estruturas faciais afetadas, as fissuras recebem uma classificação. A figura abaixo ajuda a entender onde se localiza o forame incisivo, ponto anatômico de referência no diagnóstico da fissura.</p><p style="text-align: center;"><img src="http://files.marina-fissura.webnode.com.br/200000080-1264b135e4/esquema.jpg" alt="Resultado de imagem para CLASSIFICAÇÃO DAS FISSURAS" style="width: 529px; height: 312.992px;"></p><p style="text-align: left;"><b>Fissuras pré-forame incisivo:</b></p><p style="text-align: left;">Fissuras que se restringem ao palato primário, ou seja, envolvem o lábio e/ou o rebordo alveolar sem ultrapassar o limite do forame incisivo. Varia desde um pequeno corte no vermelhão do lábio (incompleta) até toda a extensão do palato primário (completa). Podem ser classificadas em unilateral (só de um lado),bilateral (nos dois lados) ou mediana (no meio).</p><p style="text-align: left;"><b>Fissuras transforame incisivo:</b></p><p style="text-align: left;">São fissuras completas, ou seja, que envolvem total e simultaneamente o palato primário e o palato secundário. Estende-se desde o lábio até a úvula (“campainha”), atravessando o rebordo alveolar. Podem ser também classificadas em unilateral (só de um lado), bilateral (nos dois lados) ou mediana (no meio).</p><p style="text-align: left;"><b>Fissuras pós-forame incisivo:</b></p><p style="text-align: left;">Envolvem apenas o palato (“céu da boca”), mantendo o lábio intacto assim como os dentes. Ocorrem quando as estruturas do palato secundário não fazem a fusão. As consequências são essencialmente funcionais, no mecanismo velofaríngeo e na tuba auditiva. São consideradas completas quando atingem tanto palato mole como palato duro, morrendo no forame incisivo.</p><p style="text-align: left;"><b>Fissura submucosa:</b></p><p style="text-align: left;">Malformação que ocorre no palato secundário considerada forma anatômica subclínica. O defeito é na musculatura do palato mole e/ou no tecido ósseo do palato duro, sendo que a camada da mucosa permanece íntegra. Pode ocorrer de forma isolada, associada à fissura de palato primário ou a síndromes.&nbsp;</p><p style="text-align: left;"><b>Por que ocorre?</b></p><p style="text-align: left;">Não há apenas uma causa para a ocorrência da fissura. Acredita-se que a fissura se dê por uma interação de diversos genes associados a fatores ambientais; este modelo é conhecido como herança multifatorial. Os fatores ambientais mais conhecidos que são de risco para as fissuras são: bebida alcoólica, cigarros e alguns medicamentos (como corticóides e anticonvulsivantes), principalmente quando utilizados no primeiro trimestre da gestação. A ação destes fatores ambientais depende de uma predisposição genética do embrião (interação gene versus ambiente). Hoje, com o avanço das tecnologias de imaginologia, é possível identificar a ocorrência de fissura por exames de imagens no período pré-natal.</p><p style="text-align: left;"><b>Como é o tratamento?</b></p><p>O processo de reabilitação é longo e deve observar o crescimento craniofacial do indivíduo para que não haja sequelas, como crescimento ósseo inadequado. A reabilitação compreende etapas terapêuticas de acordo com idade e crescimento, e envolve a atuação de diversas especialidades.</p><p>A criança deve ser acompanhada por uma equipe interdisciplinar, composta por profissionais da cirurgia craniomaxilofacial, otorrinolaringologia, cirurgia plástica, fonoaudiologia e odontologia, especialidades consideradas essenciais na reabilitação das fissuras, além de um profissional de genética. Após essa primeira avaliação são discutidas as condutas terapêuticas iniciais e realizado encaminhamento para exames e outros atendimentos, de acordo com a necessidade de cada caso.</p><p></p><p>Embora haja um protocolo comum de etapas e condutas terapêuticas no tratamento da fissura labiopalatina, cada caso é analisado individualmente, pois a evolução do tratamento depende de vários fatores individuais. O protocolo estabelece as épocas adequadas de cada intervenção, sempre respeitando o crescimento craniofacial e a maturidade fisiológica do paciente. No total, o tratamento leva de 16 a 20 anos para se completar.</p><div><br></div>', '2017-11-22 17:32:11');
INSERT INTO `cirurgias` (`id`, `categorias_cirurgias_id`, `titulo`, `nome_url`, `imagem`, `texto_breve`, `texto`, `data`) VALUES
(12, 3, 'Trauma Facial', 'trauma-facial', '063838ae8425469be62edf5dc5933893.jpg', 'Os traumas de face são ocorrências comuns em hospitais e unidades de emergência, variando de leves traumatismos que necessitam de alguns cuidados básicos no seu tratamento, à fraturas complexas que exigem tratamento cirúrgico em nível hospitalar. Dentro da traumatologia craniomaxilofacial, podemos incluir tanto os traumatismos nas estruturas da face propriamente dita (pele, músculos, nervos, vasos sanguíneos e ossos da face e crânio), quanto os traumas da cavidade bucal (dentes, gengiva, língua,', '<p>Os traumas de face são ocorrências comuns em hospitais e unidades de emergência, variando de leves traumatismos que necessitam de alguns cuidados básicos no seu tratamento, à fraturas complexas que exigem tratamento cirúrgico em nível hospitalar. Dentro da traumatologia craniomaxilofacial, podemos incluir tanto os traumatismos nas estruturas da face propriamente dita (pele, músculos, nervos, vasos sanguíneos e ossos da face e crânio), quanto os traumas da cavidade bucal (dentes, gengiva, língua, osso maxilar, osso mandibular, vasos sanguíneos e nervos da boca).</p><p><b>Qual a área profissional responsável pelo tratamento dos traumas de face?</b></p><p>A área de traumatologia craniomaxilofacial, representada pelo Cirurgião Craniomaxilofacial, é aquela responsável pelos traumas da face, também chamado de traumatismos craniofaciais. Esta área compreende os traumas localizados em: (1) ossos do crânio (frontal, parietais, temporais, occiptal); (2) ossos nasais (fraturas de nariz); (3) ossos malares ou zigomáticos (fraturas na região da maçã do rosto); (4) ossos da órbita (fraturas na região da órbita dos olhos); (5) ossos maxilares (fratura de maxila ou fratura de mandíbula); (6) rebordo alveolar e dentes (fraturas alvéolo-dentárias ou dentárias); (7) pele da face, lábios e língua, além de músculos, vasos sanguíneos e nervos da região da face e da cavidade bucal (cortes, lacerações, ferimentos perfuro-cortantes).</p><p><b>Quais os sinais e sintomas das fraturas de face?</b></p><p>Entre os sintomas das fraturas faciais podemos citar: (1) dor variável, de leve a intensa, dependendo do tipo de trauma de face e do local acometido; (2) dormência do queixo, lábios, língua, gengiva, dentes, bochechas, nariz e testa, dependendo do tipo de trauma de face e local de acometimento; (3) dificuldades em movimentar a mandíbula (dor e limitação dos movimentos por impedimento mecânico); (4) alterações da oclusão, ou seja, modificações na “mordida”; (5) cortes e lacerações; (6) hematoma, equimose e edema (áreas arroxeadas e inchadas).</p><p><b>Como é o tratamento dos traumas de face?</b></p><p>O primeiro atendimento é emergencial e tem como objetivo garantir a vida do paciente nos traumas mais graves ou apenas evitar maiores danos no local das injúrias nos casos de traumas faciais mais leves. Após o atendimento emergencial, segue-se a solicitação de exames complementares para determinação de um diagnóstico mais preciso e, desta forma, instituir o correto tratamento.</p><p>O cirurgião Craniomaxilofacial, muitas vezes solicitado para agir em salas emergenciais, é o especialista que irá realizar o tratamento do paciente vítima de trauma de face. Após o atendimento emergencial e a execução dos exames de rotina e exames complementares para diagnóstico, inicia-se o tratamento definitivo do paciente. Na maioria das vezes estes tratamentos envolvem suturas de feridas e tratamento cirúrgico das fraturas presentes.</p><p>Por fim, o cirurgião prescreve as medicações que serão utilizadas após o procedimento, esclarece dúvidas e orienta paciente e familiares quais serão os cuidados necessários. Todos estes passos são importantes para que o procedimento seja feito em segurança.</p><p>Confie sua face a um cirurgião craniomaxilofacial!</p>', '2017-11-22 17:32:32'),
(13, 3, 'Deformidades Craniofaciais', 'deformidades-craniofaciais', 'f0bda61d5db55abce6a6d78bad4c3b10.jpg', 'As anomalias congênitas afetam cerca de 5% dos nascidos vivos em todo mundo. Possui incidência mais discreta em países desenvolvidos porém, nos países em desenvolvimento da América Latina, esses índices variam em torno de 10-25% de internações hospitalares pediátricas, ocupando entre a terceira e quarta causa de morte no primeiro ano de vida. No Brasil, os defeitos congênitos ocuparam a segunda causa de mortes perinatais no ano 2000.', '<p>As anomalias congênitas afetam cerca de 5% dos nascidos vivos em todo mundo. Possui incidência mais discreta em países desenvolvidos porém, nos países em desenvolvimento da América Latina, esses índices variam em torno de 10-25% de internações hospitalares pediátricas, ocupando entre a terceira e quarta causa de morte no primeiro ano de vida. No Brasil, os defeitos congênitos ocuparam a segunda causa de mortes perinatais no ano 2000.<br></p>', '2017-11-22 17:32:52'),
(14, 3, 'Cirurgia Ortognática (Deformidades dentofaciais)', 'cirurgia-ortognatica-deformidades-dentofaciais', '803c0a4d93bfe5991a9d63feb5a34070.jpg', 'A cirurgia ortognática é o tratamento para pacientes que possuem deformidades envolvendo os dentes e o esqueleto da face. Quando não é possível resolver o caso somente com o tratamento ortodôntico, uma vez que o problema está no excesso ou falta de crescimento do esqueleto facial e não somente na posição dos dentes, então é necessária a cirurgia ortognática.', '<p>A cirurgia ortognática é o tratamento para pacientes que possuem deformidades envolvendo os dentes e o esqueleto da face. Quando não é possível resolver o caso somente com o tratamento ortodôntico, uma vez que o problema está no excesso ou falta de crescimento do esqueleto facial e não somente na posição dos dentes, então é necessária a cirurgia ortognática.</p><p><b>Qual a origem das deformidades?</b></p><p>Essas deformidades podem ter origem devido a Síndromes e Anomalias Específicas (fatores teratogênicos, fatores embriológicos, microssomia hemifacial, Treacher Collins, fissuras faciais, craniossinostoses, Pierre Robin...), distúrbios de crescimento após o nascimento, trauma facial, problemas musculares e hormonais ou de origem genética quando existe algum familiar com as mesmas características.</p><p><b>Quais as alterações que podem implicar a necessidade da cirurgia ortognática?</b></p><ul><li>Dificuldade na mastigação;</li><li>Dificuldade na deglutição;</li><li>Desgaste excessivo dos dentes;</li><li>Mordida aberta;</li><li>Mordida profunda;</li><li>Mordida cruzada;</li><li>Aparência facial desarmônica;</li><li>Defeitos congênitos ou sequelas de trauma na face;</li><li>Queixo pequeno ou retraído;</li><li>Queixo grande ou protuído;</li><li>Queixo desviado para um dos lados;</li><li>Mandíbula muito para frente ou projetada;</li><li>Mandíbula muito para trás ou retruída;</li><li>Incapacidade  de fechar os lábios sem esforço muscular;</li><li>Respiração oral crônica;</li><li>Dor crônica na ATM e cefaléias;</li><li>Síndrome da apnéia obstrutiva do sono;</li></ul><p><b>Quais os benefícios deste tratamento ortodôntico e cirúrgico?</b></p><ul><li>Melhoria da relação entre os dentes, músculos e esqueleto;</li><li>Melhoria da respiração;</li><li>Melhoria do posicionamento da musculatura do pescoço;</li><li>Melhoria do posicionamento da língua;</li><li>Melhoria da fonação e da articulação das palavras;</li><li>Melhoria da oclusão e da articulação temporomandibular (ATM);</li><li>Melhoria da mastigação e da digestão;</li><li>Melhoria no relacionamento social;</li></ul><p><b>Quais são as fases do tratamento?</b></p><ul><li>Montagem do aparelho ortodôntico fixo – o tratamento ortodôntico pode levar de 18 a 24 meses antes da cirurgia para deixar os dentes em uma posição adequada;</li><li>Cirurgia Ortognática (ainda com o aparelho ortodôntico);</li><li>Retorno ao tratamento ortodôntico após a cirurgia para melhorar definitivamente a posição dos dentes;</li></ul><p></p><p>O tempo do tratamento depende do grau de dificuldade do tratamento ortodôntico.</p><p><b>Como é realizada a cirurgia?</b></p><p>Antes é feita a preparação do paciente com todos os exames necessários. O diagnóstico e o planejamento da cirurgia são realizados minuciosamente antes da cirurgia por meio de modelos de estudo montados em articulador, radiografias e traçados cefalométricos. O planejamento leva muito mais tempo do que a própria cirurgia.</p><p></p><p>A cirurgia é realizada sob anestesia geral. O paciente é internado na manhã da cirurgia em "jejum absoluto" (não pode comer nenhum tipo de alimento nem tomar água nas 08h antes da cirurgia) e dependendo da situação o paciente recebe alta no dia seguinte. A cirurgia é realizada através da cavidade oral, não deixando cicatriz na face. O esqueleto é fixado com mini-placas e parafusos de titânio não permitindo micromovimentação dos ossos. Na pós-cirurgia é normal surgir inchaço na face o qual diminui ao fim de alguns dias.</p><p><b>Quais são os cuidados Pós Cirúrgicos?</b></p><ul><li>A alimentação deve ser fria e mole.</li><li>A utilização de gelo diminui o inchaço e deve ser usado frequentemente nas primeiras 24 horas.</li><li>Cumprir rigorosamente a medicação prescrita.</li></ul><p><b></b><br></p>', '2017-11-22 17:33:16'),
(15, 4, 'Amigdalectomia (retirada das amígdalas)', 'amigdalectomia-retirada-das-amigdalas', '1bdbf2e6184e11a5532e44ae274ff15d.jpg', 'As amígdalas são órgãos que ajudam a reforçar a imunidade do trato aero digestivo superior, podendo sua função estar comprometida principalmente por hipertrofia (aumento) ou infecções repetidas.', '<p style="text-align: justify; ">O que são as amígdalas?</p><p style="text-align: justify;">As amígdalas são órgãos que ajudam a reforçar a imunidade do trato aero digestivo superior, podendo sua função estar comprometida principalmente por hipertrofia (aumento) ou infecções repetidas.</p><p style="text-align: justify;">O que é a amigdalectomia?</p><p style="text-align: justify; ">É o nome dado à remoção cirúrgica das tonsilas palatinas (amígdalas).</p><p style="text-align: justify;">Qual sua finalidade?</p><p style="text-align: justify;">O principal objetivo desta cirurgia é restabelecer uma adequada respiração nasal, normalmente prejudicada em pacientes com hipertrofia de amígdalas e adenóides. As indicações cirúrgicas são absolutas quando ocorre hipertrofia com obstrução da via respiratória (roncos e obstrução nasal) ou da via digestiva (engasgos freqüentes e dificuldade de alimentação) e crises infecciosas muito intensas ou repetidas. As indicações cirúrgicas são relativas nas adenoamigdalites de repetição, abscesso periamigdaliano,&nbsp; halitose (mau hálito) e para o tratamento de sinusites ou otites de repetição.</p><p style="text-align: justify;">Como é realizada?</p><p style="text-align: justify;">A cirurgia deve ser realizada sob anestesia geral somente em hospitais com estrutura adequada. O paciente dorme e não sente nenhuma dor durante o procedimento. Na maioria dos casos recebe alta no mesmo dia da cirurgia, necessitando de poucos dias de recuperação em casa. </p><p style="text-align: justify;">Estamos preparados para explicar os riscos e benefícios dessa cirurgia, assim como a forma mais segura possível de realizá-la. Estamos à disposição para o esclarecimento de eventuais dúvidas.<br></p>', '2017-11-22 17:34:12'),
(16, 4, 'Adenoidectomia (remoção da adenóide)', 'adenoidectomia-remocao-da-adenoide', '403fd14d1bcb48498f5794a9af5dd8d7.jpg', 'As adenóides são órgãos que reforçam a imunidade do trato aero ¬digestivo superior, podendo sua função estar comprometida principalmente por hipertrofia (aumento) ou infecções repetidas.', '<p style="text-align: justify; ">O que são as adenóides?</p><p style="text-align: justify; ">As adenóides são órgãos que reforçam a imunidade do trato aero ¬digestivo superior, podendo sua função estar comprometida principalmente por hipertrofia (aumento) ou infecções repetidas.</p><p style="text-align: justify;">O que é a adenoidectomia?</p><p style="text-align: justify;">É o nomes dado à remoção cirúrgica das tonsilas faríngeas (adenóides).</p><p style="text-align: justify;">Qual a sua finalidade?</p><p style="text-align: justify;">O principal objetivo desta cirurgia é restabelecer uma adequada respiração nasal, normalmente prejudicada em pacientes com hipertrofia da adenóide.</p><p style="text-align: justify;">As indicações cirúrgicas são absolutas quando ocorre hipertrofia com obstrução da via respiratória (roncos e obstrução nasal) e crises infecciosas muito intensas ou repetidas.</p><p style="text-align: justify;">As indicações cirúrgicas são relativas para o tratamento de sinusites ou otites de repetição.</p><p style="text-align: justify;">Como é realizada?</p><p style="text-align: justify;">A cirurgia é realizada sob anestesia geral somente em hospitais com estrutura adequada. O paciente dorme e não sente nenhuma dor durante o procedimento. Na maioria dos casos recebe alta no mesmo dia da cirurgia, necessitando de poucos dias de recuperação em casa.</p><p style="text-align: justify;">É comum a remoção das amígdalas hipertrofiadas junto com as adenóides. Estamos preparados para explicar os riscos e benefícios dessa cirurgia, assim como a forma mais segura possível de realizá-la. Estamos à disposição para o esclarecimento de eventuais dúvidas.<br></p>', '2017-11-22 17:34:37'),
(17, 4, 'Cirurgia dos cornetos inferiores', 'cirurgia-dos-cornetos-inferiores', '6aa01e951297ec407a48c2c0ffaac821.jpg', 'Conchas ou cornetos nasais são projeções ósseas para o interior da cavidade nasal, recobertos por mucosa com função de aquecer e umidificar o ar inspirado. Existem no nariz cerca de três conchas de cada lado (superior, média e inferior).', '<p style="text-align: justify; ">O que são as conchas nasais?</p><p style="text-align: justify;">Conchas ou cornetos nasais são projeções ósseas para o interior da cavidade nasal, recobertos por mucosa com função de aquecer e umidificar o ar inspirado. Existem no nariz cerca de três conchas de cada lado (superior, média e inferior).</p><p style="text-align: justify;">Corneto e adenóide são a mesma coisa?</p><p style="text-align: justify;">Não, esta é uma confusão frequente! O corneto fica dentro do nariz e é uma das principais causas de obstrução nasal em adultos. A adenóide fica no fundo do nariz e é importante causa de obstrução nasal em crianças (no adulto a adenóide praticamente não existe).</p><p style="text-align: justify;">Para quem está indicada a Turbinectomia?</p><p style="text-align: justify;">A Turbinectomia está indicada quando o paciente apresenta obstrução nasal importante decorrente do aumento (hipertrofia) do corneto, que não responde ao tratamento medicamentoso. A principal causa para o aumento dos cornetos é a Rinite Alérgica.</p><p style="text-align: justify; ">Como é realizada a cirurgia?</p><p style="text-align: justify;">Geralmente, a obstrução nasal é causada por aumento do corneto inferior. A cirurgia consiste em basicamente remoção do excesso do corneto. A cirurgia dura cerca de 30 minutos. Normalmente não é necessário uso de tampões.</p><p style="text-align: justify;">Quais são os possíveis riscos e complicações?</p><p style="text-align: justify;">É considerada uma cirurgia de baixo risco. Raramente ocorrem sangramentos importantes em que há necessidade de uso de tampão nasal ou cauterização do vaso sangrante. A taxa de satisfação com essa cirurgia é altíssima.</p><p style="text-align: justify;">Quais são os cuidados no pós-operatório?</p><p style="text-align: justify;">Normalmente, o paciente recebe alta no mesmo dia em que foi realizada a cirurgia. Deve ser mantido repouso relativo por cerca de 48 horas após a cirurgia. Neste período é normal a saída de pequena quantidade de sangue pelo nariz ou garganta. Atividade física deve ser iniciada somente após 30 dias.</p><p style="text-align: justify;">É importante a realização de limpeza nasal rigorosa especialmente no primeiro mês após o procedimento cirúrgico. Neste período será necessário retorno semanalmente ao consultório, para que sejam removidas crostas que por ventura venham a se formar.</p><p style="text-align: justify;">Nos pacientes portadores de Rinite Alérgica é essencial o acompanhamento e tratamento da doença mesmo com a cirurgia para que os sintomas não retornem.</p>', '2017-11-22 17:34:56'),
(18, 4, 'Cirurgia dos seios da face (sinusectomia)', 'cirurgia-dos-seios-da-face-sinusectomia', '1d3f79539929ed47bba7194690256090.jpg', 'São cavidades localizadas na face recobertas por epitélio semelhante ao do nariz e que possuem óstios de drenagem para dentro da cavidade nasal.', '<p style="text-align: justify; ">O que são seios paranasais?</p><p style="text-align: justify;">São cavidades localizadas na face recobertas por epitélio semelhante ao do nariz e que possuem óstios de drenagem para dentro da cavidade nasal.</p><p style="text-align: justify;">Quando deve ser realizada a cirurgia dos seios paranasais?</p><p style="text-align: justify;">A cirurgia endoscópica dos seios da face é geralmente utilizada para tratamento, diagnóstico, biópsia de diversas doenças do nariz e seios da face, como sinusite crônica, micoses, cistos de seios paranasais, polipose nasal, tumores de nariz e seios da face, entre outros.</p><p style="text-align: justify;">Como é realizada a cirurgia?</p><p style="text-align: justify;">A cirurgia é realizada na maioria das vezes com anestesia geral. É introduzido, na cavidade nasal uma fibra óptica, conectado a um sistema de vídeo que amplia a imagem do interior do nariz, dando ao cirurgião maior detalhamento da área a ser operada. O médico então poderá realizar tanto a remoção de lesões dentro do nariz, quanto dos seios da face, drenagem de secreções no interior dos seios. Na maioria das vezes também é necessário ampliar os óstios dos seios da face, para melhorar a drenagem e evitar assim novos episódios de sinusite.</p><p style="text-align: justify;">Quais são as possíveis complicações?</p><ul><li style="text-align: justify;"><b>Sinéquias </b>– Consiste em uma cicatrização inadequada do corneto, que leva a obstrução nasal, ocorre em cerca de 8% dos casos. Pode ser evitada com limpeza adequada no pós-operatório.</li><li style="text-align: justify;"><b>Fechamento do óstio</b> – Causando sinusite, sendo necessário reoperação.</li><li style="text-align: justify;"><b>Hemorragia </b>– Pode ocorrer sangramentos tanto no pós-operatório imediato quanto tardio, sendo raramente necessário colocação de tampão ou reintervenção cirúrgica para nova cauterização.</li><li style="text-align: justify;"><b>Fístula liquórica</b> – Cérebro é envolvido por três membranas e uma fina camada de líquido chamada líquor. Devido a proximidade dos seios da face com o cérebro existe uma rara chance de lesão do cérebro ou dos tecidos que envolvem o cérebro, podendo haver saída de líquor pela cavidade nasal.</li><li style="text-align: justify;"><b>Problemas visuais</b> – Em casos extremamente raros podem ocorrer danos ao olho causando redução da visão. Pode evoluir também com lacrimejamento excessivo, olho seco.</li></ul><p style="text-align: justify;">Quais são os cuidados no pós-operatório?</p><p style="text-align: justify;">Normalmente o paciente recebe alta no mesmo dia em que foi realizada a cirurgia. Se houver a necessidade de se colocar tampão, o paciente deve retornar em cerca de 24 horas para remoção do mesmo.</p><p style="text-align: justify;">Deve ser mantido repouso relativo cerca de 48 horas após a cirurgia, neste período e normal a saída de pequena quantidade de sangue pelo nariz ou garganta. Atividade física deve ser iniciada somente após 30 dias.</p><p style="text-align: justify; ">É importante realização de limpeza nasal rigorosa cerca de seis semanas após o procedimento cirúrgico. Neste período será necessário retorno periódico ao consultório, para que sejam removidas crostas que por ventura venham a se formar.</p>', '2017-11-22 17:35:17'),
(19, 4, 'Septoplastia (cirurgia do septo nasal)', 'septoplastia-cirurgia-do-septo-nasal', '00ec8d2f3402311b52a7a403c252ec8f.jpg', 'Septoplastia é a cirurgia realizada para corrigir o desvio de septo. Na maioria das vezes, realizamos a septoplastia sob anestesia geral. Em casos mais simples ou retoques de cirurgias já feitas, podemos optar pela anestesia local com sedação.', '<p style="text-align: justify; ">O DESVIO DE SEPTO<br></p><p style="text-align: justify;">Geralmente, existem duas razões para uma pessoa a ser submetida à cirurgia do nariz: <b>Funcional</b>, para correção do desvio de septo e outras alterações que impedem a boa respiração e <b>estético</b>, para corrigir características externas que incomodem o paciente. Os procedimentos necessários para correção destas alterações podem ser realizados juntos ou isoladamente.</p><p style="text-align: justify;">Aqui falaremos do <b>desvio de septo nasal e da septoplastia</b>. Trata-se da cirurgia empregada&nbsp; para aliviar as queixas de <b>nariz entupido, sinusites de repetição, dores de cabeça, dificuldades no olfato e no paladar.</b></p><p style="text-align: justify;">O<b> septo nasal</b> é uma “parede” constituída em parte por uma fina lâmina óssea e cartilagem. Essa estrutura, recoberta pela mucosa nasal, separa a cavidade dos dois lados. Em algumas pessoas, o septo pode acabar saindo da linha média, se posicionando muito “desviado” para um ou ambos os lados. O desvio do septo pode ser causado por traumas e falhas no crescimento, impedindo o bom fluxo de ar pelo nariz. Essa má ventilação piora a qualidade respiratória, com impacto importante no sono e no dia a dia.<br></p><p style="text-align: justify; ">SEPTOPLASTIA, RINOPLASTIA E RINOSSEPTOPLASTIA</p><p style="text-align: justify;">Septoplastia é a cirurgia realizada para corrigir o desvio de septo. Na maioria das vezes, realizamos a septoplastia sob anestesia geral. Em casos mais simples ou retoques de cirurgias já feitas, podemos optar pela anestesia local com sedação.</p><p style="text-align: justify;">O septo nasal, como todo o restante da cavidade nasal, é coberto pela mucosa nasal. O primeiro passo da cirurgia consiste em se levantar esta cobertura, para que se exponha todas as alterações ósseas e cartilaginosas do septo. Após a remoção e remodelagem das áreas desviadas,&nbsp; a mucosa nasal é reposicionada e suturada.</p><p style="text-align: justify;">Já a rinoplastia é a técnica cirúrgica aplicada para a correção das alterações estéticas, ou externas, do nariz. Num grande número de pacientes lançamos mão da rinosseptoplastia, união das duas técnicas, para proceder uma cirurgia que tenha tanto o objetivo de melhorar a respiração, quanto a estética.</p><p style="text-align: justify;">No passado era comum o uso de tampões nasais após o término da cirurgia. Tanto a permanência quando a remoção do tampão nasal eram rodeadas de muitas queixas. O uso rotineiro do tamponamento acabou para contribuir para a péssima fama da cirurgia nasal, o que faz com que até hoje muitos pacientes candidatos a esses procedimentos cheguem ao consultório receosos deste procedimento. Felizmente, esse medo hoje é injustificado</p><p style="text-align: justify;">Pessoalmente, não uso os tampões de forma rotineira, bem como a maioria dos cirurgiões nasais. A experiência de sair da cirurgia respirando pelo nariz e sem as dores causadas pelos tampões é radicalmente diferente do passado, sendo o pós-operatório atual praticamente indolor.</p><p style="text-align: justify;">O uso da fibra ótica na cirurgia nasal (cirurgia endoscópica), de maneira minimamente invasiva, permite uma visão detalhada de todas alterações anatômicas. Isso permite uma correção precisa do desvio de septo, sem trauma desnecessário. Além disso, a visão endoscópica permite observar e cauterizar todas as áreas sangrantes, evitando o uso dos tampões nasais.</p><p style="text-align: justify;">CUIDADOS PRÉ E PÓS-OPERATÓRIOS</p><p style="text-align: justify;">Existe uma rotina de cuidados aplicados antes e após a cirurgia, com o objetivo de melhorar a experiência do pacientes, minimizando riscos e maximizando resultados. Seguem alguns deles:</p><p style="text-align: justify;">PRÉ-OPERATÓRIO PARA CORREÇÃO DO DESVIO DE SEPTO</p><ul><li style="text-align: justify;">Realização dos exames pré-operatórias adequados para cada paciente, dependendo da idade e condições clínicas</li><li style="text-align: justify;">Todas as medicações usadas rotineiramente devem ser informadas ao médico. Anti-inflamatórios, aspirina e anti-coagulantes devem ser suspensos 7 a 10 dias antes da cirurgia.</li></ul><p style="text-align: justify;">O DIA DA CIRURGIA:</p><ul><li style="text-align: justify;">No dia, o paciente comparecerá ao hospital cerca de uma hora e meia antes da hora marcada para cirurgia, em jejum de 8 horas, inclusive de água.</li><li style="text-align: justify;">Todos os exames relacionados à cirurgia devem ser levados ao hospital.</li><li style="text-align: justify;">Já no hospital, tendo passado pelo procedimento de internação, o paciente será encaminhado ao seu quarto, onde trocará de roupa e aguardará o momento do deslocamento para o centro cirúrgico.</li><li style="text-align: justify;">Dependendo do grau de ansiedade de cada paciente pela cirurgia, pode ser necessário o uso de um calmante antes da ida para a sala de cirurgia.</li></ul><p style="text-align: justify;">PÓS-OPERATÓRIO IMEDIATO – Primeiras 4 horas:</p><ul><li style="text-align: justify;">Após ter acordado ainda na sala de cirurgia o paciente será levado à sala de recuperação dentro do próprio centro cirúrgico ou retornará diretamente para o quarto, dependendo de suas condições clínicas. Não é comum a ocorrência de dor após a septoplastia.</li><li style="text-align: justify;">Neste período alguns pacientes têm náuseas e mais raramente vômitos (que podem conter sangue), que costumam ser passageiros e não comprometem a cirurgia.</li><li style="text-align: justify;">Pequenos sangramentos nasais também podem ocorrer e por isso usamos um curativo tipo “bigode” preso abaixo do nariz, que poderá ser trocado várias vezes, se necessário.</li><li style="text-align: justify;">A melhor orientação para essas primeiras horas é deixar o paciente descansar, de preferência dormir, para que possa eliminar as medicações anestésicas ainda circulantes em sua corrente sanguínea.</li></ul><p style="text-align: justify;">Normalmente o paciente sai do centro cirúrgico com uma gaze presa com esparadrapo obstruindo parcialmente as narinas (“bigode”). Nos casos de plástica nasal também poderão ser posicionados curativos especiais sobre o nariz.</p><p style="text-align: justify;">PÓS-OPERATÓRIO TARDIO – Até 30 dias</p><ul><li style="text-align: justify;">A dieta nos primeiros 2-3 dias deverá ser líquida e pastosa, sempre fria ou na temperatura ambiente. Exemplos: água, leite, sucos, água-de-coco, sopas frias, iogurtes, sorvetes, gelatinas. Entre o terceiro e quarto dias deverá ser iniciada a dieta mais sólida podendo o paciente se alimentar (quase) normalmente.</li><li style="text-align: justify;">O desconforto da primeira semana ocorre pela obstrução nasal. A correta limpeza nasal e o uso de soluções salinas em spray ajudam a aliviar esta queixa. Nas três semanas seguintes, a obstrução ainda pode incomodar, porém em intensidade menor.</li><li style="text-align: justify;">Inchaço do rosto e dos olhos podem ocorrer entre o segundo e sétimo dias, apenas quando houver correção estética do nariz (rinoplastia) associada.</li><li style="text-align: justify;">Exercícios físicos de qualquer tipo estão proibidos nesta fase. Corrida, bicicleta ou musculação normalmente podem ser retomadas após um mês.</li><li style="text-align: justify;">Ainda nesta fase, entre a segunda e quinta semanas, é comum a eliminação de crostas pretas e duras de dentro do nariz, causadas pelo sangue coagulado e seco.</li></ul>', '2017-11-22 17:35:38'),
(20, 4, 'Colocação de tubos de ventilação', 'colocacao-de-tubos-de-ventilacao', 'c48068f59e9ce0fdb7653c7503c4bbea.jpg', 'Muitas crianças passam por um ou mais episódios de dor de ouvido causados por otite média até os 5 anos de idade. Na grande maiorias das vezes, essas otites curam espontaneamente ou são tratadas com antibióticos orais. Mais raramente entretanto, esses episódios repetem-se muitas vezes, ou tornam-se crônicos. Esses casos podem gerar complicações, como perda auditiva, atraso no desenvolvimento da linguagem e alteração no comportamento e outras complicações mais sérias, com risco de vida ou de sequ', '<p style="text-align: justify;">OTITES NA INFÂNCIA</p><p style="text-align: justify;">Muitas crianças passam por um ou mais episódios de dor de ouvido causados por otite média até os 5 anos de idade. Na grande maiorias das vezes, essas otites curam espontaneamente ou são tratadas com antibióticos orais. Mais raramente entretanto, esses episódios repetem-se muitas vezes, ou tornam-se crônicos. Esses casos podem gerar complicações, como perda auditiva, atraso no desenvolvimento da linguagem e alteração no comportamento e outras complicações mais sérias, com risco de vida ou de sequelas graves (quadro abaixo). É quando o tubo de ventilação se torna uma arma importante na para o tratamento ou prevenção.</p><table class="table table-bordered"><tbody><tr><td style="text-align: center;">COMPLICAÇÕES DAS OTITES MÉDIAS<br></td></tr><tr><td style="text-align: center;">Atraso na fala</td></tr><tr><td style="text-align: center;">Meningite</td></tr><tr><td style="text-align: center;">Paralisia facial<br></td></tr><tr><td style="text-align: center; ">Abcesso cerebral\r\n</td></tr><tr><td style="text-align: center; ">Mastoidite\r\n</td></tr><tr><td style="text-align: center; ">Trombose do seio sigmoide</td></tr><tr><td style="text-align: center; ">Labirintite infecciosa</td></tr><tr><td style="text-align: center; ">Fístula labiríntica</td></tr><tr><td style="text-align: center; ">Petrosite</td></tr></tbody></table><p style="text-align: justify; ">O que é o tubo de ventilação?</p><p style="text-align: justify;">Tubo de ventilação é um pequeno cilindro no formato de carretel, que funciona como um dreno comunicando suas extremidades, uma voltada para fora e outra para dentro da membrana do tímpano. Eles são feitos de diferentes materiais e podem ser de curta ou longa permanência. Com isso, a parte interna do tímpano, chamada orelha média, fica permanentemente aerada através do tubo, evitando o acúmulo das secreções causadoras das otites. Os tubos de curta permanência são colocados para permanecer em média 6 a 12 meses nos ouvidos enquanto os de longa permanência são usados para permanecer por&nbsp; anos ou por prazo indeterminado.</p><p><br></p><p style="text-align: center; "><img src="http://www.movimentodown.org.br/wp-content/uploads/2013/02/problemasauditivos.jpg" alt="Resultado de imagem para o tubo de ventilação naniz" style="float: none;"></p><p style="text-align: left;"><br></p><p style="text-align: justify;">Quem precisa de tubos de ventilação?</p><ul><li style="text-align: justify;"><b>Otites de repetição</b>: Crianças com quadros de dor de ouvido recorrentes, com uso de antibiótico várias vezes ao ano podem se beneficiar da colocação do carretel para melhorar a ventilação do ouvido médio</li><li style="text-align: justify;"><b>Otite média serosa, otite médica secretora (acúmulo de secreção atrás do tímpano)</b>: Quadros que pode acontecer em todas as idades, embora sejam mais comuns na criança. Além de causar perda auditiva e poder prejudicar o desenvolvimento das crianças, pode causar também zumbido, tonteira e alteração do equilíbrio.</li><li style="text-align: justify;"><b>Aplicação de medicação tópica na orelha média</b>: o uso de medicação intratimpânica tem ganhado espaço no tratamento de algumas doenças do ouvido interno como surdez súbita e a síndrome de Ménière. Nesses casos o tubo de ventilação pode fornecer um canal adequado para aplicação de corticoides ou antibióticos.</li><li style="text-align: justify;"><b>Disfunção da tuba auditiva</b>: o bom funcionamento da tuba auditiva (que liga o ouvido médio ao fundo do nariz) é fundamental para a saúde do ouvido médio e também para os momentos em que somos submetidos a diferenças na pressão ambientes como em viagens aéreas, mergulhos, subidas e descidas de serras e montanhas. Pacientes que viajam de avião com muita frequência e não conseguem aliviar os sintomas de dor e pressão nos ouvidos com o tratamento clínico, podem se beneficiar dos tubos de ventilação.</li></ul><p style="text-align: justify;">Como é o procedimento para colocar o tubo de ventilação?</p><p style="text-align: justify;">Apesar de ser um procedimento cirúrgico, a colocação do tubo de ventilação pode ser feita no consultório nos adultos, utilizando o videoendoscópio ou o microscópio. Em crianças podemos precisar de uma sedação ou anestesia geral, em ambiente hospitalar. O procedimento dura poucos minutos. Após a anestesia (geral ou local) e com visualização videoendoscópica ou microscópica, fazemos uma incisão na membrana timpânica e aspiração da secreção no ouvido médio. Em seguida introduzimos o tubo de ventilação através desta incisão.</p><p style="text-align: justify;">Como é o pós-operatório?</p><p style="text-align: justify;">A recuperação do procedimento costuma ser muito boa. No caso das crianças submetidas a anestesia geral, são necessárias 2 ou 3 horas para a recuperação completa do torpor e desorientação causados pela medicação anestésica.</p><p style="text-align: justify;">O maior cuidado a partir deste momento é impedir a entrada de água nos ouvidos, já que eles se encontram “abertos” através dos tubos e sujeitos à infecções causadas pela entrada de bactérias contaminantes.</p><p style="text-align: justify;">Após a cicatrização que dura alguns dias pode ser necessária uma audiometria para avaliar a recuperação da audição.</p><p style="text-align: justify;">Quais as complicações possíveis?</p><p style="text-align: justify;">A colocação do tubo de ventilação é um procedimento muito comum e seguro, entretanto não está livre de algumas raras complicações como a permanência de uma perfuração timpânica após a saída do tubo, infecções repetidas e drenagem de secreção pelo tubo.<br></p>', '2017-11-22 17:36:02'),
(21, 4, 'Cirurgia do Ronco e apnéia do sono', 'cirurgia-do-ronco-e-apneia-do-sono', '7945d60e90e42c74c8d4dd92cd2316fc.jpg', 'O som do ronco ocorre quando existe uma obstrução no fluxo livre de ar pela passagem na parte de trás da boca e do nariz. Esta região é a região que pode colapsar da via aérea (veja a ilustração) onde a língua e a parte superior da garganta se encontra com o palato mole e úvula. O ronco ocorre quando estas estruturas se chocam uma contra as outras e vibram durante a respiração.', '<p style="text-align: justify; ">Quarenta e cinco por cento da população de adultos normais roncam pelo menos, ocasionalmente e 25% por cento são roncadores habituais. O ronco patológico é mais freqüente em homens e pessoas com sobrepeso ou obesas, e geralmente piora com a idade.<br></p><p style="text-align: justify;">O que causa o ronco?</p><p style="text-align: justify;">O som do ronco ocorre quando existe uma obstrução no fluxo livre de ar pela passagem na parte de trás da boca e do nariz. Esta região é a região que pode colapsar da via aérea (veja a ilustração) onde a língua e a parte superior da garganta se encontra com o palato mole e úvula. O ronco ocorre quando estas estruturas se chocam uma contra as outras e vibram durante a respiração.</p><p style="text-align: justify;">As pessoas que roncam podem sofrer de:</p><p style="text-align: justify;"><b>Diminuição do tônus muscular na língua e na garganta</b>: quando os músculos estão muito relaxados, tanto pelo álcool ou por uso de medicações que causam sonolência, a língua cai para trás na via aérea e os músculos da garganta caem para os lados na via aérea. Isto ocorre durante o sono.</p><p style="text-align: justify;"><b>Volume excessivo dos tecidos da garganta</b>: Crianças com amígdalas ou adenóides volumosas freqüentemente roncam. Pessoas com sobrepeso ou obesas também possuem aumento do volume dos tecidos do pescoço . De maneira mais rara tumores ou cistos também podem causar aumento do volume dos tecidos da garganta.</p><p style="text-align: justify;"><b>Palato mole ou úvula alongada</b>: Um palato mole longo diminui a abertura do nariz para a garganta. Quando estes tecidos balançam (por estarem pendentes) funcionam como uma válvula durante a respiração relaxada. Uma úvula longa piora este aspecto ainda mais.</p><p style="text-align: justify;"><b>Obstrução Nasal</b>: Um nariz congestionado ou trancado requer um esforço extra para a passagem do ar. Isto cria um vácuo exagerado na garganta, e puxa os tecidos moles um de encontro ao outro, funcionam como uma válvula causando o ronco. Desta maneira o ronco ocorre apenas durante a a primavera (fatores alérgicos) ou nos períodos de gripe ou sinusites. Deformidades nasais ou do septo nasal, tais como desvios de septo podem da mesma maneira causar obstrução.</p><p style="text-align: justify;">O que é a Síndrome da Apnéia Obstrutiva do Sono (SAOS)?</p><p style="text-align: justify;">Quando um ronco forte é interrompido por episódios freqüentes de paradas da respiração, isto é conhecido como apnéia obstrutiva do sono. Episódios mais sérios duram cerca de 10 segundos cada e ocorrem mais de 7 vezes por hora.</p><p style="text-align: justify;">Pacientes com Síndrome da Apnéia Obstrutiva podem sofrem 30 a 300 eventos de apnéia por noite. Estes episódios podem reduzir os níveis sanguíneos de oxigênio, levando o coração a bater mais forte.</p><p style="text-align: justify;">O efeito imediato da apnéia do sono é que o roncador deve dormir superficialmente e manter os músculos contraídos de maneira que mantenha a via aérea livre até os pulmões.</p><p style="text-align: justify;">Porque o roncador não possui um bom sono, ele pode ficar sonolento durante o dia, o que pode comprometer o rendimento no trabalho e ser um perigo quando o roncador sonolento dirige ou opera um equipamento que exija atenção. Após muitos anos com esta desordem, pressão elevada e aumento de doenças cardiovasculares podem ocorrer.</p><p style="text-align: justify;">Um otorrinolaringologista irá proporcionar uma avaliação do nariz, boca, garganta, palato e pescoço. Um estudo do sono em um ambiente adequado é necessário para determinar qual a intensidade do ronco e a relação na saúde do roncador.</p><p style="text-align: justify;">Como é realizada a cirurgia?</p><p style="text-align: justify;">Úvulopalatofaringoplastia (UPFP) é a cirurgia para o tratamento da apnéia obstrutiva do sono. Visa a retirar tecidos moles que vibram no palato e na garganta, e aumenta a passagem de ar. Ela é realizada através da boca sem realizar incisões na pele.</p><p style="text-align: justify;">Quais são as complicações possíveis?</p><ul><li style="text-align: justify;">Febre e dor – Febre e dores de garganta ou dor no ouvido ocorrem normalmente e não devem ser causa de inquietação, pois geralmente cedem entre 3 e 10 dias.</li><li style="text-align: justify;">Mau-hálito – É comum ocorrer, e cede entre 7 e 14 dias.</li><li style="text-align: justify;">Vômitos – Podem ocorrer algumas vezes, no dia da cirurgia, constituídos de sangue, mas sem significado de gravidade.</li><li style="text-align: justify;">Hemorragia – Representa o maior risco desta cirurgia, podendo ocorrer até 10 dias após a mesma, sendo mais freqüente em pequeno volume e, mais raramente, em maior volume, podendo levar até a necessidade de nova cirurgia com anestesia geral e transfusão sanguínea.</li><li style="text-align: justify;">Infecção – Pode ocorrer na região operada, causada por germes normais da faringe e, geralmente, regride sem antibióticos.</li><li style="text-align: justify;">Voz anasalada (fanhosa) e refluxo de líquidos – Podem ocorrer nos primeiros dias desaparecendo sozinhos.</li></ul><p style="text-align: justify;">Quais são os cuidados no pós-operatório?</p><p style="text-align: justify;">Após a operação, aparecem no local da cirurgia placas brancas (fibrina). Essas placas não são sinais de infecção, e sim a evolução normal da cicatrização da mucosa da faringe. Deve-se tomar cuidado com essas placas para que elas não se desprendam bruscamente para evitar sangramento. Por isso, é conveniente:</p><ul><li style="text-align: justify;">Repouso relativo após a cirurgia, evitando os exercícios bruscos.</li><li style="text-align: justify;">Evitar manobras na boca que podem levar a desprendimentos das placas\r\n(higiene dental posterior, bochechos vigorosos).</li><li style="text-align: justify;">Há medicamentos com a aspirina que interfere com a coagulação, procurar evitá-los antes e após a cirurgia.</li></ul><p style="text-align: justify;">Dieta (alimentação) após a cirurgia:</p><p style="text-align: justify;">1º dia: somente líquidos, ao natural ou gelado (leite, chá, sorvete, caldos, sucos de frutas não-ácidas).</p><p style="text-align: justify;">2º e 3º dias: líquidos e alimentos pastosos: frio ou natural (chá, café, mingaus ralos, caldos, leite, suco de frutas, gemadas, etc).</p><p style="text-align: justify;">4º, 5º e 6º dias: líquidos e alimentos pastosos: sopa de massa fina, mingaus, arroz mole com caldo de feijão, purê de batata, canja de galinha). Evite comer pão torrado ou outro alimento capaz de ferir a garganta. Retornar ao pouco a alimentação costumeira na medida do possível.<br></p>', '2017-11-22 17:36:23'),
(22, 4, 'Biópsias nasais e bucais', 'biopsias-nasais-e-bucais', '023a289035209410b05b65f45ca4e57d.jpg', 'Biópsia (ou biopsia) é o procedimento cirúrgico no qual se colhe células ou um pequeno fragmento de tecido orgânico para serem submetidos a estudo em laboratório, visando determinar a natureza e o grau da lesão estudada. Também podem ser examinados líquidos, secreções e outros materiais orgânicos. Praticamente todos os órgãos e componentes corporais podem ser biopsiados: músculos, pele, ossos, líquidos, secreções, etc. O termo biópsia vem do grego, bios = vida e opsis = aparência, visão.', '<p style="text-align: justify; ">O que é biópsia?</p><p style="text-align: justify;">Biópsia (ou biopsia) é o procedimento cirúrgico no qual se colhe células ou um pequeno fragmento de tecido orgânico para serem submetidos a estudo em laboratório, visando determinar a natureza e o grau da lesão estudada. Também podem ser examinados líquidos, secreções e outros materiais orgânicos. Praticamente todos os órgãos e componentes corporais podem ser biopsiados: músculos, pele, ossos, líquidos, secreções, etc. O termo biópsia vem do grego, bios = vida e opsis = aparência, visão.</p><p style="text-align: justify;">Quais são as indicações para se fazer uma biópsia?</p><p style="text-align: justify;">Os exames de imagem fornecem uma visão da morfologia ou funcionalidade dos órgãos ou de partes do corpo e os exames bioquímicos oferecem algumas comprovações indiretas do funcionamento intrínseco deles, no entanto, a morfologia das células e tecidos depende de uma análise microscópica de amostras retiradas das pessoas. Assim, o mais comum é proceder-se à biópsia naquelas pessoas com suspeitas diagnósticas de doenças que podem provocar alterações morfológicas nas células e tecidos, como os tumores, por exemplo, ou para estabelecer um diagnóstico diferencial entre enfermidades assemelhadas. Esse exame diagnóstico é indicado tanto em enfermidades simples, como as verrugas, como nas mais graves, como o câncer.&nbsp;</p><p style="text-align: justify;">Embora o termo biópsia sempre desperte certa apreensão nas pessoas, a maioria delas revela situações simples e benignas. Em doenças infecciosas a biópsia pode ajudar a determinar o agente causal. Em doenças autoimunes uma biópsia ajuda a confirmar ou informar as alterações esperadas em órgãos ou tecidos. Uma biópsia também pode ajudar a avaliar a gravidade da lesão e a evolução do tratamento. Em lesões de malignidade suspeita ou confirmada, as biópsias ajudam a estabelecer o grau histológico de neoplasia e a determinar a natureza, taxa de crescimento e agressividade do tumor, ajudando a elaborar o plano do tratamento e a prever o prognóstico da doença.</p><p style="text-align: justify;">Quais são as complicações possíveis da biópsia?</p><p style="text-align: justify;">De uma maneira geral as biópsias são procedimentos simples, realizados em ambulatório, mas algumas podem demandar internações. As complicações dependem do tipo de intervenção, mas num sentido geral pode ocorrer agravamento de lesões por excesso de manipulação, hemorragias, infecções e/ou formação de fístulas.</p><p style="text-align: justify;">Como se realiza uma biópsia?</p><p style="text-align: justify;">Em geral as biópsias são realizadas sem necessidade de internação. Apenas em poucos casos a hospitalização pode se impor. Uma biópsia bem feita começa com uma adequada coleta do material. O profissional deve escolher a melhor área da lesão a ser biopsiada, a extensão correta de coleta e o material a ser colhido. O material colhido deverá ser conservado em solução de formol e posteriormente enviado a um laboratório de patologia, para avaliação e emissão de um laudo histopatológico.&nbsp;</p><p style="text-align: justify;">Os prazos necessários para que se possa produzir esses laudos variam de acordo com o tipo de lesão, do material a ser analisado e o procedimento técnico adotado. O prazo médio oscila entre sete e quatorze dias, podendo chegar a um mês em casos de exames mais sofisticados.</p><p style="text-align: justify;">Para que serve uma biópsia?</p><p style="text-align: justify;">Uma biópsia serve para esclarecer um diagnóstico se ainda restarem dúvidas depois da história clínica, exame físico, dados bioquímicos e de imagens. Em casos de tumores, além de definir o diagnóstico, podem estabelecer a malignidade ou não deles e o grau histológico em que se encontram.<br></p>', '2017-11-22 17:36:43');
INSERT INTO `cirurgias` (`id`, `categorias_cirurgias_id`, `titulo`, `nome_url`, `imagem`, `texto_breve`, `texto`, `data`) VALUES
(23, 4, 'Frenectomia Labial e lingual', 'frenectomia-labial-e-lingual', '5bd0ad84c9426dc64467a2973c5d9102.jpg', 'Frenectomia é a designação atribuída a uma pequena cirurgia que consiste em cortar e remover o freio, que é uma “prega” fina de tecido fibroso (tipo membrana), presente na boca. Em alguns casos, torna-se suficiente seccionar ou cortar parcialmente esse freio, visando alterar apenas o nível da sua inserção nos tecidos moles, por forma a dividi-lo ou reduzir o seu tamanho, sendo que neste caso passamos a denominar esta pequena operação cirúrgica de frenotomia, em vez de frenectomia.', '<p style="text-align: justify;">O que é frenectomia?<br></p><p style="text-align: justify;">Frenectomia é a designação atribuída a uma pequena cirurgia que consiste em cortar e remover o freio, que é uma “prega” fina de tecido fibroso (tipo membrana), presente na boca.&nbsp;</p><p style="text-align: justify;">Em alguns casos, torna-se suficiente seccionar ou cortar parcialmente esse freio, visando alterar apenas o nível da sua inserção nos tecidos moles, por forma a dividi-lo ou reduzir o seu tamanho, sendo que neste caso passamos a denominar esta pequena operação cirúrgica de frenotomia, em vez de frenectomia.</p><div style="text-align: justify;">Existem basicamente 2 tipos de freios:</div><div style="text-align: justify;"><br></div><ol><li style="text-align: justify;"><b>Freios labiais</b> (superior e inferior), localizados na linha mediana, sendo visíveis quando levantamos o lábio superior ou baixamos o inferior, e que se estendem desde o interior do lábio até à gengiva vestibular (frontal), tanto no maxilar superior como no inferior;</li><li style="text-align: justify;"><b>Freio lingual</b>, localizado no ventre da língua (por baixo da língua), e que se insere desde a língua ao soalho da boca.</li></ol><p style="text-align: justify;">Consoante o tipo de freio, denominamos de frenectomia lingual, no caso de secção do freio lingual, e frenectomia labial no caso dos freios labiais. No caso desta subdividimos em frenectomia labial superior, que como o próprio nome indica, é realizada no freio do lábio superior, e frenectomia labial inferior, que como o próprio nome indica, aquela que é efetuada no freio do lábio inferior.</p><p style="text-align: justify;">Lateralmente aos freios labiais, podem ainda existir outras “pregas” fibrosas mais largas, chamadas de bridas, que são em quase tudo semelhantes aos freios. Diferem apenas na sua localização e dimensão em largura, que pode variar de alguns mm a 1 cm, por sua vez os freios geralmente não têm mais que 1 a 2 mm.</p><p style="text-align: justify;">Indicações:</p><p style="text-align: justify;">A cirurgia de Frenectomia é indicada nas seguintes situações, consoante o tipo de freio considerado, a saber:</p><p style="text-align: justify;">Frenectomia labial</p><p style="text-align: center; "><img src="http://staticr1.blastingcdn.com/media/photogallery/2017/1/28/660x290/b_586x276/freio-labial-com-baixa-insercao-na-denticao-mista-https-goo-gl-images-x6rbqu_1117623.jpg" alt="Resultado de imagem para Frenectomia labial"></p><ul><li style="text-align: justify;">Presença de diastema interincisivo (dentes separados devido a espaço entre os dois incisivos centrais), associado à presença entre os mesmos de fibras do freio com inserção baixa, ao nível da papila interdentária, impedindo assim o fecho natural desse espaço;</li><li style="text-align: justify;">Eventual limitação da mobilidade do lábio, resultante de uma inserção muito baixa do freio labial;</li><li style="text-align: justify;">Motivos estéticos, principalmente nas situações de sorriso alto, ou seja, quando a pessoa expõe, ao sorrir, uma maior porção de gengiva, o chamado sorriso gengival;</li><li style="text-align: justify;">Alterações da fonética (normalmente associadas à presença de um diastema de grande dimensão);</li><li style="text-align: justify;">Quando interfere com a correção ortodôntica (ortodontia);</li><li style="text-align: justify;">Quando interfere na estabilidade e retenção de próteses dentárias.</li></ul><p style="text-align: justify;">Frenectomia lingual</p><p style="text-align: center;"><img src="https://fortissima.com.br/wp-content/uploads/2013/07/lan-5-300x295.jpg" alt="Resultado de imagem para Frenectomia lingual"></p><ul><li style="text-align: justify;">Limitação dos movimentos da língua quando o freio é muito curto, inserindo-se muito perto da ponta da língua;</li><li style="text-align: justify;">Alterações da fala (fonética), pelo mesmo motivo;</li><li style="text-align: justify;">Transtornos ou dificuldade na mastigação, também pelo mesmo motivo;</li><li style="text-align: justify;">Lesões traumáticas, resultantes do “roçar” do freio nos incisivos inferiores, devido à grande proximidade entre as duas estruturas.</li></ul><p style="text-align: justify;">Os casos de freio lingual muito curto que fazem a língua ficar “presa” (anquiloglosia), são mais prevalentes nos recém-nascidos e lactantes, podendo causar-lhes transtornos na alimentação, incluindo na sucção, pelo que a frenectomia lingual em bebe é um procedimento muitas vezes necessário para corrigir estas limitações. Se o problema for corretamente diagnosticado, a cirurgia pode realizar-se independentemente da idade, desde que o bebé não apresente qualquer contraindicação específica para o fazer.</p><p style="text-align: justify;">Já quanto à idade ideal para se realizar a frenectomia labial, existem algumas considerações a ter em conta, pois existem situações que logo aos 2 anos de idade é possível identificar situações bem marcadas de um freio mais hipertrofiado (mais grosso) que o normal, de reservado prognóstico de regressão, pelo que nestes casos poder-se-á desde logo considerar a realização da cirurgia. Contudo, existem situações em que um freio anormal entre os 2 e os 4 anos, pode evoluir naturalmente para uma situação normal aos 8 ou 9 anos, consequência do natural alongamento da língua, pelo que muitas vezes se fica na expetativa, aguardando-se a possível e natural regressão do freio, a menos que hajam fortes evidências de que o impedimento do fecho de diastemas interincisivos seja causado por esse freio labial, e que isso esteja a implicar algum tipo de transtorno.</p><p style="text-align: justify;">Assim sendo, torna-se algo discutível indicar com exatidão a partir de que idade se deve efetuar a frenectomia labial, havendo contudo alguma concordância de que este procedimento pode ou deve, esperar pela erupção completa dos dentes caninos, o que ocorre por norma entre os 11 e os 13 anos de idade. Estes dentes vão exercer forças mesiais que poderão fazer com que o freio se afaste da região interincisiva, promovendo o fecho natural dos diastemas.</p><p style="text-align: justify;">Veja de seguida, passo a passo, como é realizada a cirurgia.</p><p style="text-align: justify;">Como é realizada a cirurgia?</p><p style="text-align: justify;">A cirurgia de Frenectomia é geralmente simples e possível de ser feita através de duas formas distintas, que passamos a descrever:</p><p style="text-align: justify;"><b>Cirurgia convencional</b> - é realizada com bisturi normal ou convencional, sendo feitas incisões para corte ou secção do freio, no sentido de o remover parcial ou totalmente. Após este procedimento, é efetuada a sutura dos tecidos moles, com pontos reabsorvíveis ou não reabsorvíveis, sendo que estes últimos terão que ser posteriormente removidos (entre 7 a 10 dias).</p><p style="text-align: justify;"><b>Cirurgia convencional</b> - é realizada com bisturi normal ou convencional, sendo feitas incisões para corte ou secção do freio, no sentido de o remover parcial ou totalmente. Após este procedimento, é efetuada a sutura dos tecidos moles, com pontos reabsorvíveis ou não reabsorvíveis, sendo que estes últimos terão que ser posteriormente removidos (entre 7 a 10 dias).</p><p style="text-align: justify;">A cirurgia de frenectomia, independentemente do método ou técnica cirúrgica utilizada, não implica dor, pois a operação é realizada sob anestesia local e o pós-operatório, por norma, também não implica qualquer sintomatologia relevante.</p><p style="text-align: justify;">Riscos e complicações:</p><p style="text-align: justify;">A frenectomia é uma cirurgia que apresenta riscos reduzidos, no entanto podem ocorrer algumas complicações pós-operatórias, como por exemplo, dor, pequenas hemorragias ou sangramento excessivo (principalmente na frenectomia lingual), edema, inflamação ou infeção (ainda que raramente), entre outras de menor relevo.</p><p style="text-align: justify;">Durante o ato cirúrgico, para além da possibilidade de sangramento excessivo, pode haver um risco de lesão de estruturas vizinhas, (principalmente nos casos de frenectomia lingual), se a técnica for executada de forma incorreta.&nbsp;</p><p style="text-align: justify;">De qualquer forma, estes riscos e complicações são por norma reversíveis, não deixando sequelas dignas de registo.</p><p style="text-align: justify;">Pós-operatório:</p><p class="Corpo" style="text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%"><span lang="PT" style="font-family:" arial","sans-serif";="" mso-bidi-font-family:"arial="" unicode="" ms""="">De um modo geral, a recuperaçã</span><span lang="IT" style="font-family:" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";="" mso-ansi-language:it"="">o da cirurgia de frenotomia </span><span lang="FR" style="font-family:" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";="" mso-ansi-language:fr"="">é </span><span lang="PT" style="font-family:" arial","sans-serif";="" mso-bidi-font-family:"arial="" unicode="" ms""="">rápida, não necessitando o doente de\r\nefetuar repouso <span class="Nenhum"><b>p</b></span></span><span class="Nenhum"><b><span lang="ES-TRAD" style="font-family:" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";="" mso-ansi-language:es-trad"="">ó</span></b></span><span class="Nenhum"><b><span lang="NL" style="font-family:" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";="" mso-ansi-language:nl"="">s operat</span></b></span><span class="Nenhum"><b><span lang="ES-TRAD" style="font-family:" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";="" mso-ansi-language:es-trad"="">ó</span></b></span><span class="Nenhum"><b><span style="font-family:" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";="" mso-ansi-language:pt-br"="">rio</span></b></span><span lang="PT" style="font-family:\r\n" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms""="">. Pode, portanto,\r\nretomar as suas atividades imediatamente ap</span><span lang="ES-TRAD" style="font-family:" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";="" mso-ansi-language:es-trad"="">ó</span><span lang="PT" style="font-family:" arial","sans-serif";="" mso-bidi-font-family:"arial="" unicode="" ms""="">s a cirurgia, desde que obedeça a\r\nalguns cuidados no p</span><span lang="ES-TRAD" style="font-family:" arial","sans-serif";="" mso-bidi-font-family:"arial="" unicode="" ms";mso-ansi-language:es-trad"="">ó</span><span lang="NL" style="font-family:" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";="" mso-ansi-language:nl"="">s operat</span><span lang="ES-TRAD" style="font-family:\r\n" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";mso-ansi-language:="" es-trad"="">ó</span><span lang="PT" style="font-family:" arial","sans-serif";="" mso-bidi-font-family:"arial="" unicode="" ms""="">rio, por forma a reduzir o tempo de\r\nrecuperação, favorecendo assim a cicatrização, nomeadamente:</span></p><p class="Corpo" style="text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%"><span lang="PT" style="font-family:" arial","sans-serif";="" mso-bidi-font-family:"arial="" unicode="" ms""=""></span></p><ul><li style="text-align: justify; line-height: 19.5px;"><span lang="PT">Evitar alimentos duros nos primeiros dias (preferir alimentos algo pastosos), principalmente nos casos de frenectomia lingual;</span></li><li style="text-align: justify; line-height: 19.5px;"><span lang="PT">Evitar alimentos muito quentes nos primeiros dois dias pelo menos, sendo que após a cirurgia é também benéfica a aplicação local de frio (bolsa de gelo por ex.), nos casos de frenectomia labial;</span></li><li style="text-align: justify; line-height: 19.5px;"><span lang="PT">Redobrar os cuidados de higiene oral, sendo que a zona da cirurgia deve ser escovada com pouca pressão e com escovas adequadas para o efeito (com cerdas muito suaves), complementado com bochechos de soluções antissépticas;</span></li><li style="text-align: justify; line-height: 19.5px;"><span lang="PT">Tomar devidamente a medicação prescrita pelo médico dentista (normalmente analgésicos e/ou anti-inflamatórios).</span></li></ul><p style="text-align: justify; line-height: 150%;"><span lang="PT" style=""><font face="Arial, sans-serif"><br></font><br></span><span class="Nenhum"><span lang="PT" style="font-family: Arial, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><o:p></o:p></span></span></p><p style="text-align: left;"><br></p><p class="Corpo" style="text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%"><span lang="PT" style="font-family:" arial","sans-serif";="" mso-fareast-font-family:arial"=""><o:p></o:p></span></p>', '2017-11-22 17:37:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clinica`
--

CREATE TABLE `clinica` (
  `id` int(11) NOT NULL,
  `titulo_introducao` text NOT NULL,
  `texto_introducao` text NOT NULL,
  `titulo_segunda_parte` text NOT NULL,
  `texto_segunda_parte` text NOT NULL,
  `titulo_collapse` text NOT NULL,
  `imagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clinica`
--

INSERT INTO `clinica` (`id`, `titulo_introducao`, `texto_introducao`, `titulo_segunda_parte`, `texto_segunda_parte`, `titulo_collapse`, `imagem`) VALUES
(1, ' Cupiditate? Tempus quidem, vestibulum! Est? At minus quia augue au', 'taciti impedit veniam consequuntur tempora cras torquent dolor. Soluta odio tortor placerat, sequi luctus quis impedit iure sollicitudin, iure eu proident a sem at blandit, mattis veritatis officiis dolore eveniet quo, quo, culpa occaecat rem, lacinia hac, iure laoreet cubilia? Luctus sapien iusto doloribus, viverra aliquip. Sunt cupiditate aenean maecenas vestibulum dolor, lobortis eleifend voluptatem quidem', 'tus! Anim repellat imp', 'bh porttitor ullam ex, gravida metus! Anim repellat impedit magna? Dis class nisl urna laborum enim, augue quae! Inventore expedita, dolores dictumst possimus ut nonummy venenatis veniam, facilisis. Soluta mollit? Iste, placerat fuga, ante est ', 'asd', '5188895eae21c6727f902485f7bedafe.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `convenios`
--

CREATE TABLE `convenios` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `convenios`
--

INSERT INTO `convenios` (`id`, `titulo`, `imagem`, `data`) VALUES
(1, 'Amagis saúde', '734eec165d8df5fefb74381fddb34b1f.jpg', '2017-11-17 17:40:51'),
(2, 'Amil', 'd1ae4bd898c7264a474cf99b252f1101.jpg', '2017-11-17 17:41:00'),
(3, 'Amma', '5969cb75ccbff8b1046a5dcd2750e81e.jpg', '2017-11-17 17:41:10'),
(4, 'Assefaz', '9711d539b331c507b233a158d9e2ea47.jpg', '2017-11-17 17:41:23'),
(5, 'Assist card', '7c2124c17aec55ada81910ff9a717dd4.jpg', '2017-11-17 17:41:34'),
(6, 'Bradesco saúde', '2220b1283e030597db8b1155fda76cd5.jpg', '2017-11-17 17:41:43'),
(7, 'Cabefe', 'fba6bc84d8b1bbe2818027b41350801e.jpg', '2017-11-17 17:41:55'),
(8, 'Caixa', '56191b2ffa0df310f1ae349d3e6df49e.jpg', '2017-11-17 17:42:08'),
(9, 'Camed', 'e72cfa32714837be304f47ed8edb451e.jpg', '2017-11-17 17:42:16'),
(10, 'Capesesp', 'cc31cddde4c98adb6c48811c0e9f6527.jpg', '2017-11-17 17:42:33'),
(11, 'Casec', 'd097ce3785bbd4fd45b50eae7e7a0dea.jpg', '2017-11-17 17:42:47'),
(12, 'Casembrapa', 'e8522f4687f45fba2c4e6893262dd51c.jpg', '2017-11-17 17:43:00'),
(13, 'Cassi', 'e89a5cdc0bf486f241af5b0e43bbb892.jpg', '2017-11-17 17:43:11'),
(14, 'Casu', '448f0c135eac872673bba753aea22c32.jpg', '2017-11-17 17:43:21'),
(15, 'Cemig', 'cdba76253f7688a29bd4793c6a4b4784.jpg', '2017-11-17 17:43:30'),
(16, 'Cis', 'a05e3fa0c57bbada27a4867912caee20.jpg', '2017-11-17 17:43:39'),
(17, 'Capass', '410ba776f6e27c3796a97c443978deb8.jpg', '2017-11-17 17:43:53'),
(18, 'Funasa', '97d694c2def67b17aca9e43578a47e49.jpg', '2017-11-17 17:44:06'),
(19, 'Fundaffemg', '9acabf585eec0e5847c2bc270e890c2b.jpg', '2017-11-17 17:47:54'),
(20, 'Fusex', 'eb8e388e7dcd539cfa71e0a77c8720a9.jpg', '2017-11-17 17:48:23'),
(21, 'Gama', 'a2299cb243f45b68b8759ad2c3ecbcd9.jpg', '2017-11-17 17:48:34'),
(22, 'Geap', '36e367d8dca906e776c01ce80fec2848.jpg', '2017-11-17 17:48:44'),
(23, 'INB', 'a3a70bff4a757d32caba5e44487751fe.jpg', '2017-11-17 17:48:56'),
(24, 'Itau', '05df7901c49230e5984973db875fb2fd.jpg', '2017-11-17 17:49:47'),
(25, 'Life', '30e0c1386d65ac01e848b5e94d54c2a1.jpg', '2017-11-17 17:50:56'),
(26, 'Mapfre', '5a94efad7fedc8387198596459e71e7f.jpg', '2017-11-17 17:51:26'),
(27, 'Mondial', 'a10588e3116a85a934165d07bce8b40c.jpg', '2017-11-17 17:52:13'),
(28, 'Petrobras', 'e2d6db97fdfa36e27fc48dae9fc9a082.jpg', '2017-11-17 17:52:28'),
(29, 'PMMG', '225351ca8ca9bee76a37e8ae12da071d.jpg', '2017-11-17 17:52:43'),
(30, 'Postal Saúde', '4cab0b334161eb303910007110d744cc.jpg', '2017-11-17 17:52:54'),
(31, 'Promed', 'a86220e1c32d06d06994aa679773c5be.jpg', '2017-11-17 17:53:29'),
(32, 'Prevminas', '841c83479ebb8d998b67f98072df89d3.jpg', '2017-11-17 17:56:02'),
(33, 'Proasa', 'cdc61ea73bdab8747f4f7938428bc1c7.jpg', '2017-11-17 17:56:26'),
(34, 'Samp', '13c302d2e71cbc35a124b3206939436c.jpg', '2017-11-17 17:56:44'),
(35, 'Santa casa familia', '6189255a96f085c8037faf1e5b4a2903.jpg', '2017-11-17 17:56:57'),
(36, 'Saúde sistema', '149a76a9ecccc137ccc0f986cece11dd.jpg', '2017-11-17 17:57:14'),
(37, 'Unafisco', 'aff089dd65ab95be38aad6b6d7e6f492.jpg', '2017-11-17 17:57:32'),
(38, 'Unimed', '1b5366a9e1bf45f06c4b5632d1e64705.jpg', '2017-11-17 17:57:54'),
(39, 'Vitallis', 'ae0466c832a9370171f56a206dc6d523.jpg', '2017-11-17 17:58:02'),
(40, 'Vivamed', 'f6b6846616553c8b507c77b83aaa6995.jpg', '2017-11-17 17:58:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `corpo_clinico`
--

CREATE TABLE `corpo_clinico` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `imagem` text NOT NULL,
  `texto` text NOT NULL,
  `profissao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `corpo_clinico`
--

INSERT INTO `corpo_clinico` (`id`, `titulo`, `imagem`, `texto`, `profissao`) VALUES
(5, 'Dixie Armstrong', '9cf4621ad28a81473d4da2af577e0e72.jpg', '<p>m imperdiet, deleniti reprehenderit odio non, torquent, illo, rutrum, congue nostrum! Eligendi asperiores pariatur, dolorem!<br></p>', 'Cirurgião'),
(6, 'João Bertolucci', 'e96d76ca860a4a28ed0df54c48ae20ac.png', '<p>Quia praesent aenean? Tempor dolorem molestias, rutrum in distinctio enim perferendis convallis, nostrud voluptas, nisi cubilia gravida malesuada distinctio ullamcorper gravida varius fuga massa taciti, similique nesciunt leo, culpa exercitationem, nibh commodi mattis mi consectetuer aliquam, esse nam consequat! Sint<br></p>', 'Cardiologista'),
(7, 'Angela Tarantino', '80ca0cc192964145adbc709c302eceb4.png', '<p>nulla, aliquip accusamus! Veniam vehicula egestas. Sunt. Accusantium eius iaculis scelerisque atque laboriosam aliqua morbi, consequuntur pellentesque pulvinar fuga, nascetur convallis. Voluptatibus blandit aliquip vitae?<br></p>', 'Cirurgiã'),
(8, 'Júlia Guerra', 'be50e88c91329c95ff89a30d3e67b965.png', '<p>Eiusmod, ultricies, duis ullamcorper dolor dictumst! Vulputate optio cupidatat aptent! Reiciendis rerum in risus? Placerat porro nostrud nostrud? Rem nostra felis eligendi! Ducimus saepe, dolorem laboriosam provident assumenda, nisl recusandae?<br></p>', 'Cardiologistas'),
(9, 'João Cardoso', '562891bc26a766a87237fc42a42fedda.png', '<p>iaculis explicabo rutrum ipsum, tempor, accusantium natus eleifend diamlorem sodales pede architecto mus varius, nullam libero primis exercitationem porttitor, fringilla cum veniam?</p><div><br></div>', 'Atendente'),
(10, 'Zeca Oliveira', 'd0f8460e2ba7e59090831fcda9b6e6b5.png', '<p>Voluptas! Amet cubilia blandit elementum maiores nisi tenetur enim venenatis, Voluptas! Amet cubilia blandit elementum maiores nisi tenetur enim venenatis, Voluptas! Amet cubilia blandit elementum maiores nisi tenetur enim venenatis<br></p>', 'Cirurgião'),
(11, 'josé Rodrigues', '62df285de29181f14108fc528ec36a4f.png', '<p>e, ea netus massa culpa tempore ullamco tempus nisi provident consectetuer, animi doloribus? Quod nesciunt sapiente sociosqu vestibulum porttitor soluta veniam! Consequatur metus deserunt fringilla. Pariatur gravida assumenda fugiat consequat accusamus. Consectetuer sit maiores arcu, omnis rhoncus, exer<br></p>', 'Cirurgião');

-- --------------------------------------------------------

--
-- Estrutura da tabela `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `texto` text NOT NULL,
  `detalhes` text NOT NULL,
  `imagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `especialidades`
--

INSERT INTO `especialidades` (`id`, `titulo`, `texto`, `detalhes`, `imagem`) VALUES
(2, 'Cirurgia Cardíaca', ' Porttitor, in veniam, magnam facilisi? Minima voluptatum ', '<p></p><p>&lt;p&gt;Massa exercitationem laoreet nisi aspernatur sociosqu iusto turpis eum dui augue montes imperdiet repudiandae dis tristique nihil sociosqu. Error. Porttitor, in veniam, magnam facilisi? Minima voluptatum ligula duis scelerisque vestibulum, et natus, nostrud, eu, commodi officiis felis malesuada arcu cras! Minus feugiat, minus sociosqu, interdum ligula, curabitur wisi, excepturi parturient libero diam lacus magna, eius consequuntur, ea dictumst convallis laudantium. Magnam lacus, primis sem autem placerat consequatur mauris pellentesque! Ullamcorper consectetuer habitant, ullam eos commodo faucibus mauris dolores maiores quam maxime pharetra ratione libero, accumsan, consequuntur eveniet assumenda dolores penatibus. Vulputate repellat incidunt doloribus quia litora beatae, convallis nostrum magna.&lt;/p&gt;<br></p>', '91d95b6857fa490e611331ce22212adb.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_clinica`
--

CREATE TABLE `itens_clinica` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itens_clinica`
--

INSERT INTO `itens_clinica` (`id`, `titulo`, `descricao`) VALUES
(10, 'asad', 'asdas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`) VALUES
(1, 'marcosvsoaress@gmail.com'),
(2, 'teste@celular.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `nome_url` varchar(255) DEFAULT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `texto` mediumtext,
  `data` datetime DEFAULT NULL,
  `texto_breve` varchar(500) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `nome_url`, `imagem`, `texto`, `data`, `texto_breve`, `autor`) VALUES
(2, 'Como escolher o seu cirurgião  da face,  aspectos essenciais', 'como-escolher-o-seu-cirurgiao-da-face-aspectos-essenciais', 'ca98082264c8e326af52fe017430aca2.jpg', '<p class="Corpo" style="text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%"><span style="font-size: 14px;">A face humana é extremamente complexa devido às estruturas anatômicas nobres que a compõem. Além da identidade humana, externa os nossos sentimentos e serve de interface para interação com o mundo exterior. </span></p><p class="Corpo" style="text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%"><span style="font-size: 14px;">Ao escolher seu cirurgião da face é necessário que você conheça sua formação, quais especializações possui, se participa de cursos de atualização e se tem experiência naquela cirurgia que vc deseja realizar.</span></p><p class="Corpo" style="text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%"><span style="font-size: 14px;">A medicina encontra-se extremamente especializada, sendo que, existem profissionais que se dedicam à areas específicas do corpo humano. Isto permite um melhor entendimento das indicações, técnicas cirúrgicas e melhor controle dos resultados.</span></p><p class="Corpo" style="text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%"><span style="font-size: 14px;">Pensando nisto, fiz toda a minha formação voltada para a face e estudo da harmonia facial. Cirurgia é coisa muito séria!</span></p><p class="Corpo" style="text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%"><span style="font-size: 14px;">Consulte seu cirurgião da face e confie sua face à um especialista!</span></p>', '2017-10-11 15:15:52', 'A face humana é extremamente complexa devido às estruturas anatômicas nobres que a compõem. Além da identidade humana, externa os nossos sentimentos e serve de interface para interação com o mundo exterior. ', 'Dr. Bruno'),
(3, 'Enfrentando o medo antes da Rinoplastia', 'enfrentando-o-medo-antes-da-rinoplastia', '44901acb84d6f517a867e081747aa71f.jpg', '<p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;">A rinoplastia ou cirurgia plástica do nariz é um procedimento que pode ser realizado por diversas técnicas. Ela pode ser realizada com anestesia local e sedação ou anestesia geral. Além disso, a cirurgia pode ser feita com técnica aberta, semi-aberta ou fechada, cada uma com suas indicações, vantagens e desvantagens. </p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;">Normalmente este procedimento dura entre 2 e 4 horas, dependendo de cada caso. Os curativos são removidos em 7 dias e normalmente, os resultados definitivos são observados entre 6 meses a 01 ano. A rinoplastia geralmente não apresenta um pós-operatório doloroso, apenas o inconveniente de ficar um pouco obstruído nas primeiras semanas devido a formação de crostas nasais temporárias.</p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;">O planejamento é fundamental e, além da estética, lembre-se: VOCÊ TEM QUE RESPIRAR!!! Por isso operar seu nariz com um médico que conheça bem sobre o nariz é fundamental!</p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;">Consulte seu cirurgião facial e discuta sobre o melhor plano de tratamento para você. Só assim você estará preparado e confiante para sua rinoplastia!</p>', '2017-10-11 16:24:00', 'A rinoplastia ou cirurgia plástica do nariz é um procedimento que pode ser realizado por diversas técnicas. Ela pode ser realizada com anestesia local e sedação ou anestesia geral. Além disso, a cirurgia pode ser feita com técnica aberta, semi-aberta ou fechada, cada uma com suas indicações, vantagens e desvantagens. ', 'Dr. Bruno'),
(4, 'O que devo saber sobre Otoplastia', 'o-que-devo-saber-sobre-otoplastia', '9f75a81eac2355971de42c95b9ee0410.jpg', '<p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">A otoplastia é uma cirurgia estética para correção do tamanho e formato das orelhas. O problema a ser corrigido é a famosa “orelha de abano”, que muitas crianças têm e que pode causar problemas de convívio social, pois acaba se tornando motivo de bullying e de dificuldades no relacionamento durante a infância e adolescência. A otoplastia é a cirurgia estética mais realizada em crianças e adolescentes.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Estima-se que cerca de 5% das crianças nascem com o problema, que é uma alteração congênita.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">A idade mínima recomendada para o procedimento é 6 anos, quando a orelha já atingiu o crescimento mais significativo. Mas é recomendado que a cirurgia não seja imposta para a criança e, sim, que seja um desejo dela, apoiado pelos pais. Por este motivo, muitas vezes ela não acontece durante a infância, mas depois, quando chega a adolescência e os problemas sociais se tornam mais aparentes e começam a incomodar mais.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">O mais importante na decisão, além de ter que partir do próprio paciente, é que exista uma conversa franca entre o médico de confiança – otorrinolaringologista ou cirurgião plástico da face, paciente e família. Harmonizadas as expectativas e reais possibilidades de resultados, é hora de saber todos os detalhes sobre a cirurgia:</p><ul><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">O adolescente deve ser informado sobre a técnica utilizada; local da cicatriz cirúrgica; tipo de anestesia; tempo para retirada dos pontos; tempo de internação e recuperação pós-cirúrgica.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">Os riscos anestésicos são pequenos. A cirurgia pode ser feita com anestesia local. Mas, no caso dos adolescentes, é indicada a anestesia geral.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">A cirurgia deve ser realizada em hospitais ou clínicas especializadas, e é possível receber alta no mesmo dia.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">Após a cirurgia, o paciente permanece com um curativo “capacete” por um período de 24 horas, com o objetivo de proteger a região, diminuir os incômodos do pós-operatório e, ainda, prevenir a formação de hematomas e diminuir o inchaço.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">Após retirar o curativo, é recomendado que se utilize uma bandana ou faixa para dormir, com o objetivo de manter as orelhas na posição até a completa cicatrização durante 6 semanas.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">Outra dica para a redução do inchaço é dormir com a cabeceira da cama elevada, pois a cabeça na posição mais alta permite maior drenagem venosa.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">É bom que se evite dormir de lado, sobre as orelhas, nos primeiros dias após a cirurgia.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">Deve-se evitar, também, a exposição solar por dois meses após a cirurgia. O sol do dia a dia não tem implicações, mas é preciso evitar a exposição solar que pode bronzear.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">Para a sutura da pele, são utilizados fios absorvíveis e, por isso, não há necessidade de serem retirados. Há equipes que preferem utilizar fios que não são absorvíveis e, nesses casos, os pontos são retirados em 7 a 10 dias.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">As principais complicações que podem acontecer são: sangramento e hematoma, já que a orelha possui uma grande vascularização.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">O retorno às atividades escolares dever ser em 5 a 7 dias.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">A prática de exercícios físicos deve ser evitada por 3 semanas. Para esportes em que o contato físico é maior, como esportes coletivos, lutas etc., o tempo de afastamento é de dois meses.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">O resultado da cirurgia quanto à posição da orelha é observado no pós-operatório imediato. No entanto, a redução completa do inchaço ocorre por volta do 3º a 4º mês após a cirurgia.</li></ul>', '2017-10-11 16:25:18', 'A otoplastia é uma cirurgia estética para correção do tamanho e formato das orelhas. O problema a ser corrigido é a famosa “orelha de abano”, que muitas crianças têm e que pode causar problemas de convívio social, pois acaba se tornando motivo de bullying e de dificuldades no relacionamento durante a infância e adolescência. A otoplastia é a cirurgia estética mais realizada em crianças e adolescentes.', 'Dr. Bruno'),
(5, 'cirurgia das pálpebras', 'cirurgia-das-palpebras', '9147157e4dd56497b44129235158950d.jpg', '<p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">A cirurgia das pálpebras ou blefaroplastia se dedica à correção do excesso de pele ou gordura das pálpebras, geralmente após os 40 anos de idade. Ela visa devolver ao paciente uma região periocular menos cansada. Geralmente, o procedimento pode ser realizado sobre anestesia local e sedação e em casos específicos sob anestesia geral.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">A cirurgia pode durar entre 2 a 3 horas normalmente, dependendo da região operada e a internação hospitalar dura de 6 a 12 horas.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Normalmente este procedimento não provoca uma dor pós-operatória importante e se, presente, pode ser controlada com analgésicos comuns. Os olhos geralmente ficam inchados por cerca de 7 dias até duas semanas. Durante esse período, compressas frias podem diminuir o edema e o uso de óculos escuros ajuda na proteção dos olhos.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">O resultado definitivo vai aparecer após a terceira semana, geralmente no máximo em até 3 meses. Sempre confie seu rosto a um cirurgião da face!</p>', '2017-10-11 16:26:07', 'A cirurgia das pálpebras ou blefaroplastia se dedica à correção do excesso de pele ou gordura das pálpebras, geralmente após os 40 anos de idade. Ela visa devolver ao paciente uma região periocular menos cansada. Geralmente, o procedimento pode ser realizado sobre anestesia local e sedação e em casos específicos sob anestesia geral.', 'Dr. Bruno'),
(6, 'Cuidados com a Rinoplastia em Nariz Negróide', 'cuidados-com-a-rinoplastia-em-nariz-negroide', '537fa0c5b952286ad92e2811468ae92a.jpg', '<p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">A pele negra apresenta características e cuidados especiais. O nariz negróide apresenta caraterísticas únicas como por exemplo a pele mais grossa, cartilagens alares mais largas e delicadas e um septo nasal mais curto. </p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Ao planejarmos uma rinoplastia nestes casos, todas essas informações devem ser levadas em consideração. Por exemplo, para uma ponta nasal mais definida, geralmente técnicas com enxerto nesta região devem ser usadas para melhorar a aparência desta região, pois a pele grossa esconde estes resultados. Estes narizes devem ser tratados com enxertos estruturadores para uma boa sustentação.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Planejar estes casos com parcimônia, conhecer as características raciais, individuais e os anseios do paciente podem proporcionar um nariz natural e com sua função preservada. </p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Confie sua face a um cirurgião facial!</p>', '2017-10-11 16:26:37', 'A pele negra apresenta características e cuidados especiais. O nariz negróide apresenta caraterísticas únicas como por exemplo a pele mais grossa, cartilagens alares mais largas e delicadas e um septo nasal mais curto. ', 'Dr. Bruno'),
(7, 'Cuidados com a pele do rosto', 'cuidados-com-a-pele-do-rosto', '19e20905d264befb6a7d7cbb958a9e43.jpg', '<p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Para garantir uma pele jovem e bonita, é preciso tomar alguns cuidados no dia a dia. Mantenha uma alimentação rica em vitaminas e minerais, beba bastante água e evite o cigarro. Além disso, siga uma rotina de limpeza e hidratação.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"=""><b>Rotina de cuidados com a pele:</b></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"=""><b>Lave o rosto</b><br></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Manter o rosto sempre livre de impurezas é fundamental para ter uma pele saudável.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Lavar o rosto duas vezes por dia é fundamental para manter a saúde da pele e evitar o entupimento dos poros, principal responsável pelo surgimento de cravos e espinhas. A primeira lavagem deve ser feita de manhã, eliminando a oleosidade natural produzida durante o sono, e a segunda no fim do dia, retirando poluição, impurezas e a maquiagem. Utilize sabonete neutro ou específico para o seu tipo de pele. Lavar o rosto mais do que duas vezes por dia não é recomendado, pois estimula a produção de oleosidade, assim como usar água muito quente.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"=""><b>Retire a maquiagem</b></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">A maquiagem obstrui os poros e impede a pele de respirar, atrapalhando essa etapa e promovendo o envelhecimento precoce da pele. Para deixar o rosto bem limpo, use um demaquilante adequado para o seu tipo de pele e finalize com um sabonete.<br></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"=""><b>Hidrate</b></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Tanto a pele seca quanto a pele oleosa precisam de hidratação para equilibrar a proteção de sebo. Pessoas com pele oleosa devem preferir produtos oil-free ou em gel, enquanto quem tem a pele seca pode apostar em produtos mais hidratantes.<br></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"=""><b>Protenção</b></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">O sol é um dos principais responsáveis pelo envelhecimento precoce da pele, além de causar doenças sérias, como o câncer de pele. Por isso, proteger-se dele diariamente é fundamental para manter a pele sempre jovem e bonita. Aplique pela manhã, depois do hidratante, e reaplique durante a tarde para garantir a eficácia do produto.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Consulte seu dermatologista e sempre mantenha a saúde da sua pele em dia!</p>', '2017-10-11 16:27:04', 'Para garantir uma pele jovem e bonita, é preciso tomar alguns cuidados no dia a dia. Mantenha uma alimentação rica em vitaminas e minerais, beba bastante água e evite o cigarro. Além disso, siga uma rotina de limpeza e hidratação.', 'Dr. Bruno');

-- --------------------------------------------------------

--
-- Estrutura da tabela `procedimentos_esteticos`
--

CREATE TABLE `procedimentos_esteticos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `nome_url` varchar(255) DEFAULT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `texto` mediumtext,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `procedimentos_esteticos`
--

INSERT INTO `procedimentos_esteticos` (`id`, `titulo`, `nome_url`, `imagem`, `texto`, `data`) VALUES
(1, 'Toxina Botulínica (Botox ou Dysport)', 'toxina-botulinica-botox-ou-dysport', 'f43b6c5533fea4114701f3360126e414.jpg', '<p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A toxina botulínica, é uma toxina produzida por uma bactéria chamada Clostridium Botulinium. A substância é usada para correção de rugas e marcas de expressão. A toxina age paralisando o músculo e consequentemente impedindo a contração muscular, que é o que forma a ruga. Para as rugas que já existem, esse relaxamento da musculatura suaviza os vincos. A aplicação é indicada para as rugas da testa, a glabela (espaço entre as sobrancelhas), os “pés de galinha” e rugas ao redor dos olhos e outros locais da face.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Como age a toxina botulínica?</b></span><br></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif">Quando injetada nas rugas, a toxina botulínica age bloqueando a transmissão de estímulos dos neurônios para os músculos, impedindo a contração muscular. Em geral as rugas aparecem devido ao envelhecimento facial, que ocorre por idade avançada, exposição solar sem proteção, má alimentação e tabagismo. Muitas pessoas também têm o hábito de franzir a testa ao se expressar, o que contribui para a formação das linhas de expressão.<br></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><b>Como atua?</b><br></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif">A toxina botulínica pode atuar de duas maneiras:</font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><b>De forma preventiva</b><font color="#1b1b1b" face="Raleway, sans-serif"><b>:</b> É a aplicação do produto antes mesmo do aparecimento de linhas de expressão. Como a contração muscular é paralisada, não haverá a formação de rugas por movimentação muscular na área que foi aplicado a toxina. Geralmente a aplicação preventiva é feita por volta dos 25 anos de idade, mas não existe uma idade certa.</font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><b>De forma corretiva:</b> Esse tipo de aplicação geralmente é realizada em torno dos 30 anos. Como a toxina tira a tensão da musculatura, as rugas causadas por esses músculos são amenizadas.<br></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><b>Como é feita a aplicação?</b><br></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif">A injeção é aplicada no tecido subcutâneo por agulhas bem finas e em pequenas quantidades, e provocam uma pausa nos impulsos nervosos. Porém, o efeito não é imediato, e as primeiras alterações começam a aparecer somente depois de três a sete dias.</font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><b>Quanto tempo dura o seu efeito?</b></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;">Os efeitos duram, em média, de 4 a 6 meses. O período entre as sessões varia de paciente para paciente, e para que o resultado seja efetivo, é preciso fazer sempre uma manutenção.</p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><b>Quais os cuidados após a aplicação?</b><br></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;">Após a aplicação, a pele pode ficar um pouco sensível e inchada. Para evitar complicações, deve-se evitar a exposição direta ao sol, e usar filtro solar. É recomendado evitar a prática de atividades físicas no mesmo dia das aplicações. É importante não massagear a área, pois o efeito da aplicação pode ser reduzido.<br></p>', '2017-10-19 22:59:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `secao1`
--

CREATE TABLE `secao1` (
  `id` int(11) NOT NULL,
  `texto` text NOT NULL,
  `imagem` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `secao1`
--

INSERT INTO `secao1` (`id`, `texto`, `imagem`, `link`) VALUES
(1, '<h4 style="color: rgb(0, 0, 0);">molestiae imperdiet laudantium semper tristique diam! Illum ab? Eveniet. Facilisis, feugiat pede eu commodi tristique eiusmod placerat accusantium interdum soluta ac natoque. Phasellus accusantium dignissimos hac</h4>', '9cd81ac80be166c97d879264aafbb670.png', 'http://10.0.0.115/cecor/clinica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `secao2`
--

CREATE TABLE `secao2` (
  `id` int(11) NOT NULL,
  `imagem` text NOT NULL,
  `texto` text NOT NULL,
  `titulo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `secao2`
--

INSERT INTO `secao2` (`id`, `imagem`, `texto`, `titulo`) VALUES
(3, '74d4aa190497e3b07c362bfaeeb53029.jpg', '<h4 style="color: rgb(0, 0, 0);">Dr. Ricardo Kalliery</h4><h5 style="color: rgb(0, 0, 0);">Cardiologista</h5><p>Saturn and its innermost ring on encounters before it will .</p>', 'teste1'),
(4, '294463a2113b0f71a8d82a5cfe051008.jpg', '<h4 style="color: rgb(0, 0, 0);">Dr. Ricardo Kalliery</h4><h5 style="color: rgb(0, 0, 0);">Cardiologista</h5><p>Saturn and its innermost ring on encounters before it will .</p>', 'teste2'),
(5, '1c916641f3f1d8bdf193062ffdf91ece.jpg', '<h4 style="color: rgb(0, 0, 0);">Dr. Ricardo Kalliery</h4><h5 style="color: rgb(0, 0, 0);">Cardiologista</h5><p>Saturn and its innermost ring on encounters before it will .</p>', 'teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `secao3`
--

CREATE TABLE `secao3` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `imagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `secao3`
--

INSERT INTO `secao3` (`id`, `titulo`, `imagem`) VALUES
(2, 'Cemig', '563ff56fa0c7e954c062e1b3ec7481e4.png'),
(3, 'Caixa', '075c11e9843243c7e5176fe5da4401ab.png'),
(4, 'Copasa', '7950999cda95d1886dc5ad71edecdb87.png'),
(5, 'Amil', 'c523e2c759936a36a0d8f89e1e8c1685.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `senha` varchar(32) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0 - bloqueado\n1 - ativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `senha`, `email`, `status`) VALUES
(1, 'Marcos Vinicius Soares Santos', '115.800.856-28', '202cb962ac59075b964b07152d234b70', 'marcos@tectotum.com.br', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agendas`
--
ALTER TABLE `agendas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agendas_horarios`
--
ALTER TABLE `agendas_horarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_horarios_agendas_idx` (`agendas_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorias_cirurgias`
--
ALTER TABLE `categorias_cirurgias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cirurgias`
--
ALTER TABLE `cirurgias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cirurgias_categorias_cirurgias1_idx` (`categorias_cirurgias_id`);

--
-- Indexes for table `clinica`
--
ALTER TABLE `clinica`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `convenios`
--
ALTER TABLE `convenios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corpo_clinico`
--
ALTER TABLE `corpo_clinico`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itens_clinica`
--
ALTER TABLE `itens_clinica`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `procedimentos_esteticos`
--
ALTER TABLE `procedimentos_esteticos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secao1`
--
ALTER TABLE `secao1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secao2`
--
ALTER TABLE `secao2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secao3`
--
ALTER TABLE `secao3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agendamentos`
--
ALTER TABLE `agendamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `agendas`
--
ALTER TABLE `agendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `agendas_horarios`
--
ALTER TABLE `agendas_horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `categorias_cirurgias`
--
ALTER TABLE `categorias_cirurgias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cirurgias`
--
ALTER TABLE `cirurgias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `clinica`
--
ALTER TABLE `clinica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `convenios`
--
ALTER TABLE `convenios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `corpo_clinico`
--
ALTER TABLE `corpo_clinico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `itens_clinica`
--
ALTER TABLE `itens_clinica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `procedimentos_esteticos`
--
ALTER TABLE `procedimentos_esteticos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `secao1`
--
ALTER TABLE `secao1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `secao2`
--
ALTER TABLE `secao2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `secao3`
--
ALTER TABLE `secao3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `agendas_horarios`
--
ALTER TABLE `agendas_horarios`
  ADD CONSTRAINT `fk_horarios_agendas` FOREIGN KEY (`agendas_id`) REFERENCES `agendas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `cirurgias`
--
ALTER TABLE `cirurgias`
  ADD CONSTRAINT `fk_cirurgias_categorias_cirurgias1` FOREIGN KEY (`categorias_cirurgias_id`) REFERENCES `categorias_cirurgias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `site_hosp`
--
CREATE DATABASE IF NOT EXISTS `site_hosp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `site_hosp`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamentos`
--

CREATE TABLE `agendamentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `dia` varchar(40) DEFAULT NULL,
  `parte_dia` int(11) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `agendamentos`
--

INSERT INTO `agendamentos` (`id`, `nome`, `email`, `telefone`, `dia`, `parte_dia`, `mensagem`) VALUES
(8, 'asdad', '12312', '(12) 3 2323-2332', '4', 2, 'asd'),
(9, 'asd', 'jardelnathan22@hotmail.com', '(', '2', 2, 'wda'),
(10, 'Jardel Nathan', 'jardelnathan22@hotmail.com', '(', '2', 2, ''),
(11, 'Jardel Nathan de Souza Rodrigues', 'jardelnathan22@hotmail.com', '(38) 9 9913-694', '5', 2, 'as');

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendas`
--

CREATE TABLE `agendas` (
  `id` int(11) NOT NULL,
  `dia` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `agendas`
--

INSERT INTO `agendas` (`id`, `dia`) VALUES
(1, 'Domingo'),
(2, 'Segunda-feira'),
(3, 'Terça-feira'),
(4, 'Quarta-feira'),
(5, 'Quinta-feira'),
(6, 'Sexta-feira'),
(7, 'Sábado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendas_horarios`
--

CREATE TABLE `agendas_horarios` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `agendas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `agendas_horarios`
--

INSERT INTO `agendas_horarios` (`id`, `descricao`, `agendas_id`) VALUES
(1, '7:30 às 10:30 h - Complexo Médico Pró-vida - Endereço: Av. Nossa Sra. de Fátima, 719, São Judas Tadeu, Montes Claros - MG - Telefone: (38) 2211-6000', 2),
(3, '14:00 às 18:00 h - Otorrino Fisio Center - Endereço: Rua Santa Maria, 86, Centro, Montes Claros - MG - Telefone: (38) 3218-5000', 2),
(5, '7:00 às 12:00 h - Centro Cirúrgico Hospital Dilson Godinho - Endereço: Av. Geraldo Ataíde, 480, Alto São João, Montes Claros - MG - Telefone: (38) 3229-4000', 3),
(6, '14:00 às 18:00 h - Otorrino Fisio Center - Endereço: Rua Santa Maria, 86, Centro, Montes Claros - MG - Telefone: (38) 3218-5000', 3),
(7, '8:00 às 12:00 h - Otorrino Fisio Center - Endereço: Rua Santa Maria, 86, Centro, Montes Claros - MG - Telefone: (38) 3218-5000', 4),
(8, '13:30 às 16:30 h - Complexo Médico Pró-vida - Endereço: Av. Nossa Sra. de Fátima, 719, São Judas Tadeu, Montes Claros - MG - (38) 2211-6000', 4),
(9, '8:00 às 12:00 h - Clínica Medic Center - Endereço: Av. Bias Fortes, 1030 A, Dona Joaquina, Brasília de Minas - MG - Telefone: (38) 3231-3002', 5),
(10, '14:00 às 18:00 h - Centro cirúrgico do Hospital das Clínicas Mário Ribeiro - Endereço: Rua Plínio Ribeiro, 539, Jardim Brasil, Montes Claros - MG - Telefone: (38) 3218-8161', 5),
(11, '8:00 às 18:00 h - Otorrino Fisio Center - Endereço: Rua Santa Maria, 86, Centro, Montes Claros - MG - Telefone: (38) 3218-5000', 6),
(12, '14:00 às 18:00 h - Otorrino Fisio Center - Endereço: Rua Santa Maria, 86, Centro, Montes Claros - MG - Telefone: (38) 3218-5000', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `titulo_destaque` text NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `banners`
--

INSERT INTO `banners` (`id`, `titulo`, `imagem`, `titulo_destaque`, `descricao`, `link`) VALUES
(6, 'banner1', '59430ad6bc82f7458a6b01e06798a894.jpg', '<p>asda</p>', '<p>sd</p>', 'asd'),
(7, 'asd', '12afc0adb8bea3d4b726086cce29add6.jpg', 'asdasd', 'asda', 'sd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias_cirurgias`
--

CREATE TABLE `categorias_cirurgias` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `nome_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias_cirurgias`
--

INSERT INTO `categorias_cirurgias` (`id`, `nome`, `nome_url`) VALUES
(1, 'Estéticos da face', 'esteticos-da-face'),
(3, 'Crânio-Maxilo- Facial:', 'cranio-maxilo-facial'),
(4, 'Otorrino', 'otorrino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cirurgias`
--

CREATE TABLE `cirurgias` (
  `id` int(11) NOT NULL,
  `categorias_cirurgias_id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `nome_url` varchar(255) DEFAULT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `texto_breve` varchar(500) DEFAULT NULL,
  `texto` mediumtext,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cirurgias`
--

INSERT INTO `cirurgias` (`id`, `categorias_cirurgias_id`, `titulo`, `nome_url`, `imagem`, `texto_breve`, `texto`, `data`) VALUES
(3, 1, 'Rinoplastia (Plástica do Nariz)', 'rinoplastia-plastica-do-nariz', '4a700d0b6213eddc2c3c7292e7947388.jpg', 'A Rinoplastia ou cirurgia plástica do nariz é um procedimento cirúrgico para alterar a aparência externa, com o objetivo de melhorar características específicas do nariz e   harmonizar a face.', '<p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A Rinoplastia ou cirurgia plástica do nariz é um procedimento cirúrgico para alterar a aparência externa, com o objetivo de melhorar características específicas do nariz e   harmonizar a face.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">O nariz é um dos atributos mais proeminentes e notáveis de toda a face e exerce um efeito importante na aparência geral. Além disso, exerce a função de permitir a passagem do ar controlando a sua umidade, temperatura e pureza antes de atingir os pulmões. A cirurgia estética nasal tem repercussão funcional e o contrário pode também acontecer. Dessa forma, é praticamente impossível uma Rinoplastia sem uma abordagem funcional integrada.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Do ponto de vista cirúrgico, a rinoplastia é diferente de vários outros procedimentos pelo seu aspecto dinâmico. As estruturas nasais se movem, não somente durante, mas no período pós operatório também. Assim, o cirurgião deve prever e se antecipar a todas as modificações que possa acontecer, através de técnicas específicas.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A rinoplastia é muito interativa, e quanto mais o cirurgião aprende a interpretar as mudanças intra-operatórias e entender o que elas representam, melhor se torna o seu julgamento e maior controle ele terá de seu resultado. Ela oferece, talvez mais do que qualquer outro procedimento estético, a possibilidade de individualizar o resultado. Mais ainda: <b>Sucesso na rinoplastia requer que o resultado seja individualizado!</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Rinoplastia estruturada:</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A rinoplastia  ainda é vista nos dias de hoje por muitos cirurgiões não especialistas como uma cirurgia simples cujo objetivo principal é reduzir o nariz através da remoção de tecidos (osso e cartilagem). No entanto, esta abordagem simplista enfraquece o suporte das estruturas  do nariz, levando a deformidades estéticas e até mesmo colapso de partes do nariz, repercutindo também na função respiratória. Estas complicações frequentemente levam o paciente  a procura de uma rinoplastia revisional (secundária).</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Em se tratando da rinoplastia, forma e função são inseparáveis, e os cirurgiões devem entender como as várias mudanças na aparência nasal, mesmo que sutis,  podem afetar o fluxo respiratório. Devem entender que, na maioria das manobras realizadas durante o procedimento, seja para reduzir o dorso, seja para refinar a ponta, existem implicações funcionais. Este conhecimento deve ser usado a favor do cirurgião para previnir os problemas respiratórias após a rinoplastia (ainda muito comuns), assim como para tratar  e restaurar a função , e a estética, em casos secundários.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Durante toda minha formação cirúrgica, tanto na cirurgia Craniofacial e na Otorrinolaringologia, tenho praticado e sido adepto à Rinoplastia Estruturada, que favorece a preservação da integridade estrutural do nariz, ao mesmo tempo que usa enxerto (do próprio paciente) para restaurar a sustentação e reforçar as áreas de fraqueza do nariz  após as modificações necessárias. Esta filosofia de trabalho proporciona resultados mais naturais e duradouros prevenindo, assim, complicações estéticas e funcionais.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Rinoplastia feira pelo otorrino:</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A Rinoplastia é considerada por todos os especialistas na área como a cirurgia estética mais complexa da face, pelo fato do nariz apresentar uma infinidade de variações anatômicas, que requerem decisões acertadas sobre as indicações de cada umas das várias técnicas cirúrgicas existentes. Ela pode ser realizada tanto por otorrinolaringologistas como por cirurgiões plásticos, desde que tenham o devido treinamento específico na área.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A<b> American Academy of Facial Plastic and Reconstructive Surgery</b> , a maior e principal associação de cirurgia plástica facial do mundo, formada na sua grande maioria por otorrinolaringologistas, vem dando suporte no desenvolvimento e aperfeiçoamento da rinoplastia e outras cirurgias plásticas faciais desde 1972. A grande maioria das cirurgias plásticas faciais nos EUA já são realizadas por otorrinos treinados na área, através do programa de Fellowship. Aqui no Brasil, já existe dentro da <b>Associação Brasileira de Otorrinolaringologia e Cirurgia Cérvico Facial a Academia Brasileira de Cirurgia Plástica da Face</b>, associação que vem desempenhando este papel há vários anos, promovendo vários cursos intensivos em todo o país, além da organização de congressos específicos de Rinoplastia com a presença dos maiores especialistas do Brasil e do mundo.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Independente da especialidade que pertença o Cirurgião, o candidato à rinoplastia deve buscar informações  sobre a formação e treinamento de seu médico, assim como a experiência adquirida na área de  rinoplastia. Este treinamento específico é o principal fator determinante para o sucesso da cirurgia  e satisfação do paciente.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Dicas para escolher seu médico:</b></span></font></p><ol><li style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Informe-se bem sobre o procedimento e sobre o profissional que irá te atender. Os resultados da cirurgia nasal duram uma vida.</span></font></li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;"><span style="font-size: 14px; color: rgb(27, 27, 27); font-family: Raleway, sans-serif;">Verifique se o seu problema requer uma solução nasal dupla. Diversas técnicas cirúrgicas – funcionais e estéticas – podem ser necessárias, e devem ser combinadas em uma única operação.</span></li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Verifique se o cirurgião tem treinamento especializado em cirurgia estética e funcional.</span></font></li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Lembre-se que a cirurgia estética pode distorcer a forma do seu nariz. O cirurgião é capaz de restaurar a sua respiração, assegurando simultaneamente a forma natural de seu nariz?</span></font></li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Certifique-se que o seu cirurgião entende seus problemas, necessidades e expectativas.</span></font></li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Não prossiga com a cirurgia, a menos que você esteja feliz com o diagnóstico e a recomendação.</span></font></li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Se você tiver dúvidas, peça uma segunda opinião!</span><br><br><br><br></font><br></li></ol><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><br></font></p><div style="text-align: justify;"><p></p></div>', '2017-10-19 23:02:20'),
(4, 1, 'Otoplastia (Plástica das Orelhas)', 'otoplastia-plastica-das-orelhas', 'ed31571c18a8ae99fdf7ed3e21676c4b.jpg', 'O termo otoplastia refere-se à cirurgia plástica das orelhas, podendo corresponder a várias técnicas, dependendo do problema a ser tratado. Em geral o termo é usado para indicar a correção de orelhas proeminentes (de abano), porém outros problemas como sequelas de traumas, ausência congênita das orelhas e orelhas constritas também são tratadas com técnicas de otoplastia.', '<p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>O que é a otoplastia?</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">O termo otoplastia refere-se à cirurgia plástica das orelhas, podendo corresponder a várias técnicas, dependendo do problema a ser tratado. Em geral o termo é usado para indicar a correção de orelhas proeminentes (de abano), porém outros problemas como sequelas de traumas, ausência congênita das orelhas e orelhas constritas também são tratadas com técnicas de otoplastia.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Indicações da otoplastia</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">As correções de orelha são realizadas para minimizar deformidades, tentar corrigir assimetrias de forma, tamanho e angulação no caso do abano, em orelhas mal formadas de nascença ou que sofreram deformidades após um traumatismo.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Existe desde o grau mais leve até o mais grave de orelhas em abano, porém a indicação cirúrgica é baseada no grau de incômodo que o paciente apresenta.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A idade mínima situa-se entre seis e sete anos de idade. Nessa faixa etária já houve finalização do crescimento das orelhas, de modo que a cirurgia não irá interferir no crescimento. Também coincide com a idade escolar de alfabetização, quando a criança começa a se incomodar com as orelhas proeminentes.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Como é feita a cirurgia</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A anestesia mais comumente usada é a local com sedação. A cirurgia se inicia com uma incisão atrás da orelha, seguindo a dobra natural da pele. É, então, realizada a retirada do excesso de pele e em seguida é feito o ligamento da cartilagem, para deixa-la mais flexível. Em alguns casos pode ser feita a retirada de cartilagem para diminuição da orelha. Logo em seguida são feitos pontos de fixação para manter uma nova anatomia da orelha e realizando o fechamento da pele. Em geral, os pontos são internos e absorvíveis, não precisam, portanto, ser retirados. A cirurgia tem duração média de uma hora.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Antes da cirurgia:</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Consulta médica:</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Uma boa consulta pré-operatória, além de preparar o paciente para a cirurgia, deverá fazer com que ele compreenda seu problema, compreenda a solução proposta, riscos e benefícios do procedimento, e alinhe a expectativa ideal com as possibilidades de tratamento e que tipo de resultado poderá ser alcançado.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Exames</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A otoplastia requer que sejam realizados todos os exames pré-operatórios preconizados. Entre eles estão o exame de sangue, composto por hemograma e coagulograma completos, e o eletrocardiograma.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Medicações</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Deve ser interrompido o uso de qualquer outro remédio que altere a coagulação do sangue, entre eles: ácido acetilsalicílico (AAS), gingko biloba, cascara sagrada e clopidogrel. O ideal é que a manutenção do uso dos medicamentos seja feira regularmente, principalmente em casos de pacientes com hipertensão e diabetes.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Jejum</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">São necessárias aproximadamente oito horas de jejum de sólidos e líquidos.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Após a cirurgia:</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Internação</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">O tempo médio de internação é de oito a doze horas.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Curativos</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Os curativos são geralmente realizados com pomada cicatrizante e gaze. Ele é realizado no final da cirurgia e retirado após um período de 24 a 48 horas da cirurgia no consultório pelo médico. Se houver necessidade de novo curativo, o paciente (ou seu responsável) será orientado como fazê-lo. Deverá ser utilizada uma faixa de tecido compressiva específica nos casos de correção de abano, retirada apenas para o banho, mas utilizada 24 horas por dia, por um mês.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">O paciente deverá deixar a região da cicatriz limpa e seca, lavando com cuidado no banho e secando cuidadosamente após, segundo orientação do médico.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Dor</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Sempre são prescritos analgésicos, mas geralmente não há dor, há apenas uma sensação de incômodo. Se houver dor importante, o médico deverá ser avisado para que examine e oriente.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Inchaço e vermelhidão</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">É normal que haja edema (inchaço) e vermelhidão. Com o passar dos dias este aspecto vai melhorando até a cicatrização se completar.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Medicação</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Analgésicos comuns são prescritos de rotina para o pós-operatório, e os pacientes são orientados a tomar se tiverem dor. Anti-inflamatórios também poderão ser prescritos.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Volta às atividades normais e exercícios físicos</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Em crianças, recomenda-se aguardar uma semana para voltar à escola, para evitar o risco de trauma nas orelhas recém-operadas. Nos casos mais simples, pode-se retornar às aulas em três dias. Nos adultos, geralmente em dois dias. Atividade física deverá ser&nbsp; iniciada após 15 dias, leve no início e evitando-se trauma no local operado.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Uso de óculos</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">O uso dos óculos é liberado até por cima do curativo, preso com esparadrapo na faixa, desde que não aperte demais a cabeça. Quando for retirado o curativo, deve-se tomar cuidado com os óculos apertados à cabeça, ou atrás da orelha, que deverão ser reajustados à face. Alguns pacientes aprendem a prender as hastes dos óculos acima da inserção da orelha à cabeça, com o uso da própria faixa que deverão usar por 30 dias.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Retorno ao consultório médico</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">O primeiro retorno é em 24 a 48 horas, para remoção do curativo e avaliação médica, e então serão combinados os próximos retornos.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Cicatrizes e queloide</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Nas cirurgias de correção de abano, as cicatrizes ficam escondidas na parte posterior da orelha, na junção da orelha ao crânio. Há casos que necessitam incisões na parte da frente da orelha, mas procura-se escondê-las nas dobras naturais da pele. A cicatriz chamada de queloide, esteticamente desfavorável, pode ocorrer em alguns pacientes.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Contraindicações à otoplastia</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A infecção de ouvido contraindica a cirurgia, pois a proximidade com o local que será operado faz com que haja maior risco de infecção na ferida ou na cartilagem da orelha.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Infecções em outros locais também são contra indicações para o procedimento, tais como gripes mais intensas, infecções urinarias, amigdalites. A presença de doenças de base mal controladas, como hipertensão e diabetes, são contraindicações para qualquer procedimento plástico, devendo essas doenças serem controladas antes da otoplastia.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">O tabagismo é uma contraindicação relativa, o paciente é aconselhado a deixar de fumar por duas semanas antes e 30 dias após a cirurgia, devido ao risco de afetar a cicatrização.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Riscos da otoplastia</b></span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">Pode haver sangramento, hematoma, dor, inchaço maior que o esperado, infecção, ou mesmo permanecer uma assimetria, principalmente em orelhas de adultos, que têm a cartilagem mais dura, tendendo a perder o ângulo da correção e voltar ao abano.</span><br></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b></b></span><br><br><br><br></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><br><br></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><br></font></p>', '2017-10-19 23:02:35'),
(5, 1, 'Mentoplastia (Cirurgia do Queixo)', 'mentoplastia-cirurgia-do-queixo', 'ccfc7efa2e07b0bc7a8a6b29187f662f.jpg', 'A cirurgia para aumentar o queixo é capaz de trazer uma harmonia facial. O que pode ter efeitos positivos no quesito aparência, auto estima e segurança. ', '<p>A cirurgia para aumentar o queixo é capaz de trazer uma harmonia facial. O que pode ter efeitos positivos no quesito aparência, auto estima e segurança.&nbsp;</p><p><b>Tipos de cirurgia</b></p><p>O aumento de mento, aumento de queixo ou Mentoplastia é um procedimento cirúrgico para remodelar o queixo que pode ser aumentada através da colocação de implantes, osteotomia (cortar o osso) ou, em alguns casos, pode-se optar pelo uso de alguns preenchedores. A lipoescultura neste caso, é muito bem vinda.</p><p>Os dois tipos de implantes mais utilizados são o de polietileno poroso de alta densidade e o de silicone. A vantagem do primeiro é que o material é mais aceito pelo organismo (biocompatível), tem menor índice de efeitos adversos e vem se tornando a primeira escolha.</p><p>Na osteotomia de mento não há necessidade da inclusão de implantes, e o aumento do queixo é realizado através de seu reposicionamento anterior e fixação com mini placas de titânio e parafusos. A incisão, tanto na osteotomia quanto com o uso de implante, é posicionada dentro da boca (sulco gengival). É imprescindível a avaliação da oclusão dentária e das projeções da face para o resultado adequado.</p><p><b>Para quem é indicada?</b></p><p>É recomendada para pacientes que têm queixo pequeno e retraído com boa oclusão dentária, ou seja, a pessoa candidata a esta cirurgia não deve apresentar alteração de sua mordida. Por isso, são feitas análises das proporções estéticas da face.</p><p><b>É comum operar queixo junto com o nariz?</b></p><p>É comum o paciente chegar ao consultório achando que seu nariz é grande quando, muitas vezes, o que existe é uma associação de nariz grande e queixo pequeno. Essa impressão errada acontece porque a harmonia facial na visão de perfil é muito dependente da relação entre o queixo e o nariz.</p><p>O nariz pode até nem ser grande, mas parecer se o queixo for pequeno quando analisadas aquelas proporções faciais.</p><p></p><p>À associação entre cirurgia de nariz e mentoplastia dá-se o nome de perfiloplastia, cujo objetivo é melhorar a harmonia das proporções da face.</p><p><b>Pré operatório</b></p><p>O pré-operatório passa por uma análise facial bem como uma história médica e odontológica completas. O tratamento ortodôntico muitas vezes deve ser feito antes da mentoplastia. Isso porque os dentes influenciam a posição dos lábios e estes determinam a estética do perfil, por isso é essencial corrigir as más posições dentárias.</p><p>Os exames pré-operatório variam conforme a idade e estado de saúde, mas os principais são:</p><ul><li>Hemograma, coagulogama, creatinina, glicemia de jejum;</li><li>Rx de tórax PA/P;</li><li>Eletrocardiograma.</li></ul><p><b>Como é feita a cirurgia?</b></p><p>A cirurgia de mentoplastia pode ser feita com uso de implante ou através de fraturas no osso do mento e seu avanço. Dentre os implantes, o melhor é o polietileno poroso – POREX®. Tanto o uso de POREX® quanto a mentoplastia de avanço com fratura são boas opções; a fratura pode ser indicada em casos de hipomentonismo (queixo pequeno) associado a alguns problemas de ronco.</p><p>A incisão de ambas é de 4 cm por dentro da boca e a cicatriz fica imperceptível. O paciente é orientado a ter uma higiene bucal mais cuidadosa nos primeiros 14 dias. O resultado final ocorre em 4-6 meses, com resultados já visíveis dentro das 2 primeiras semanas.</p><p>Caso opte-se por uso de POREX, o mesmo é fixado ao osso com 2 parafusos. Já na mentoplastia de avanço não é usado implante, mas são usados uma placa especial de titânio e 5 parafusos.</p><p></p><p>As duas cirurgias são realizadas com anestesia geral ou local com sedação, com duração de 2 horas.</p><p><b>O pós operatório da Mentoplastia é muito doloroso?</b></p><p>Geralmente não há dor no pós-operatório. Quando ocorre um discreto desconforto, poderemos neutralizá-la com o uso de analgésicos comuns.</p><p></p><p>Pode haver uma diminuição da sensibilidade que pode durar de 2 a 3 meses.</p><p><b>Como é a recuperação da cirurgia de Mentoplastia?</b></p><p>A recuperação exige alguns cuidados especiais, tais como:</p><ul><li>Evitar sol e traumatismos locais no pós-operatório;</li><li>Retornar ao consultório nos dias e horários estabelecidos;</li><li>Escovar os dentes com escova macia e reforçar a higiene bucal com soluções antissépticas ;</li><li>Necessário fazer uso correto de medicação para dor, inflamação e prevenção de infecção por 7 dias;</li><li>Não se preocupar com o “inchaço” natural do queixo, que poderá persistir por algumas semanas;</li><li>Deitar de barriga para cima;</li><li>Compressas geladas locais por 2-3 dias são;</li><li>Evitar alimentos sólidos que exijam mastigação intensa nos primeiros dias. Alimentação livre, a partir do segundo dia, principalmente à base de proteínas (carnes, leite, ovos) e vitaminas (frutas);</li><li>Recomenda-se fazer uma adequada avaliação ortodôntica e odontológica. Se necessário, deve-se realizar uma avaliação por um Cirurgião Buco-Maxilo-Facial;</li><li>É indicado a realização da drenagem linfática no pescoço para acelerar o processo de desinchar o edema.</li></ul><p><b>Como é a cicatriz?</b></p><p>A cicatriz mede 4 cm e fica por dentro da boca.</p><p><b>Qual a vantagem da Mentoplastia cirúrgica em relação ao preenchimento?</b></p><p>Enquanto a cirurgia tem duração para toda a vida do paciente, o preenchimento dura de 18-24 meses e seu resultado é bem mais modesto.</p><p>Porém, o preenchimento tem como principal vantagem o preço, uma vez que não é necessário arcar com custos de hospital, equipe médica e material, e não necessita de internação e recuperação pós-operatória.</p><p><b></b><br><br></p><p><b></b><br></p>', '2017-11-22 17:29:50'),
(6, 1, 'Blefaroplastia (Plástica das Pálpebras)', 'blefaroplastia-plastica-das-palpebras', '8f62d0423ddb9dda0ba977c3a9591370.jpg', 'É um procedimento cirúrgico realizado para melhorar a aparência das pálpebras superiores, inferiores ou de ambas. A cirurgia proporciona uma aparência rejuvenescida ao redor dos olhos, fazendo com que o olhar não tenha o visual de cansado e caído.', '<p><b>O que é a cirurgia das pálpebras?</b></p><p>É um procedimento cirúrgico realizado para melhorar a aparência das pálpebras superiores, inferiores ou de ambas. A cirurgia proporciona uma aparência rejuvenescida ao redor dos olhos, fazendo com que o olhar não tenha o visual de cansado e caído.</p><p><b>Como a blefaroplastia é realizada e após quanto tempo os resultados são visíveis?</b></p><p>O procedimento dura por volta de 45 a 90 minutos, sob anestesia local com sedação ou anestesia geral. É necessário que o paciente fique internado por um período de 6h a 8h para observação.</p><p><b>Resultados</b></p><p>Logo na primeira semana, é possível ver os primeiros resultados, que se tornam mais evidentes após dois ou três meses com a diminuição do inchaço, com seu resultado final depois de seis meses a um ano.</p><p>Os melhores resultados aparecem em pacientes que têm a pele das pálpebras mais firme, pois se a região é muito flácida, a probabilidade de a pálpebra cair novamente é maior.</p><p><b>Quais são os seus benefícios e para quem a cirurgia é indicada?</b></p><p>A cirurgia é indicada para pessoas com grande quantidade e flacidez de pele nas pálpebras, e o seu principal benefício é o rejuvenescimento da pele na área dos olhos.</p><p>Na pálpebra superior, a cirurgia remove o depósito elevado de gordura que aparenta inchaço, e na pálpebra inferior retira o excesso de pele e rugas finas. Remove também a sobra de pele que resulta em dobras ou atrapalha o contorno natural da pálpebra superior — às vezes, prejudicando a visão.</p><p>Bolsas sob os olhos também podem ser corrigidas, assim como a queda das pálpebras inferiores. Além disso, a cirurgia também é recomendada para a remoção de xantelasmas, que são pequenas bolinhas de colesterol que se formam nessa região.</p><p><b>Quais riscos a blefaroplastia oferece e quais são os cuidados pós-operatórios da cirurgia?</b><br></p><p>Assim como outras intervenções cirúrgicas, a blefaroplastia oferece riscos à saúde do paciente, como complicações cardíacas e pulmonares e os riscos relacionados à anestesia, à alteração da frequência cardíaca e à pressão arterial. Por isso, é necessário procurar um profissional de confiança e realizar a cirurgia em um local adequado.</p><p></p><p>Após a cirurgia, os olhos podem ficar temporariamente ou permanentemente secos, sendo necessário o uso frequente de colírios. Pode ocorrer também uma disfunção envolvendo a posição anormal das pálpebras superiores, pele solta e fechamento inadequado da pálpebra, com exposição da conjuntiva e frouxidão anormal da pálpebra inferior.</p><p><b>Pós-operatório</b></p><p>No pós-operatório, devem ser seguidas todas as recomendações do médico responsável, como evitar cigarro, a ingestão de antibiótico e analgésicos, o uso correto de colírios, a higienização e o repouso. É importante que, durante o período de cicatrização, o local da cirurgia não sofra esforço excessivo, escoriação ou movimento.</p><p>Entre outros cuidados após o procedimento, deve-se usar uma pomada lubrificante e fazer compressas frias no local, e o uso de óculos escuros deve ser feito por cerca de 30 dias até que a cicatrização esteja completa.</p><p><b></b><br></p>', '2017-11-22 17:30:09'),
(7, 1, 'Bichectomia (Redução do volume das bochechas)', 'bichectomia-reducao-do-volume-das-bochechas', '9cdc4c2ea0ff6ad47de59e6137839a8f.jpg', 'A bichectomia é a cirurgia em que há a retirada total ou mesmo parcial de duas bolsas de gorduras presentes uma em cada lado da boca, entre o maxilar e a mandíbula, chamadas de "bolas de Bichat". A finalidade da bichectomia é puramente estética: reduzir o volume da parte de baixo do rosto, por isso, é uma cirurgia controversa.', '<p><b>O que é a bichectomia</b></p><p>A bichectomia é a cirurgia em que há a retirada total ou mesmo parcial de duas bolsas de gorduras presentes uma em cada lado da boca, entre o maxilar e a mandíbula, chamadas de "bolas de Bichat". A finalidade da bichectomia é puramente estética: reduzir o volume da parte de baixo do rosto, por isso, é uma cirurgia controversa.</p><p>Com o passar da idade e a retirada dessas bolsas de gordura pode acarretar em uma aparência mais envelhecida, principalmente se for total.</p><p><b>Indicações da bichectomia</b></p><p>A bichectomia é uma cirurgia puramente estética e pode ser realizada por pessoas que querem afinar o rosto.</p><p><b>Pré-requisitos para fazer a cirurgia</b></p><p>É importante que seja feita uma avaliação clínica pelo profissional que executará a cirurgia, para que ele possa avaliar se há indicação e quais são as expectativas da paciente quanto ao tratamento.</p><p></p><p>Depois disso, é importante que o paciente faça os exames pré-cirúrgicos, que incluem hemograma completo, coagulograma e glicemia, para ver se ele está em condições de saúde para realizar a cirurgia. Além disso, é importante que o paciente passe pela avaliação de um cardiologista, se o médico achar necessário.</p><p><b>Contraindicações para bichectomia</b></p><p>Pessoas com problemas de saúde, como doenças infecciosas ativas, são contraindicadas a fazer esse tipo de cirurgia. Além disso, pessoas com uma expectativa irreal sobre o procedimento não devem realizar esse tipo de operação.</p><p><b>Como é feita bichectomia</b></p><p>A cirurgia é intraoral, ou seja, o corte é feito dentro da boca, pois as mucosas bucais tem uma melhor cicatrização e não deixam marca aparente. Nesses casos o paciente recebe anestesia local e sedação.</p><p><b>Duração da cirurgia</b></p><p>O tempo de duração da cirurgia dependerá da experiência do médico e de quaisquer eventuais complicações. Mas a bichectomia dura em média entre uma hora e uma hora e meia.<br><br><b>Possíveis complicações da bichectomia</b></p><p>As possíveis complicações são hemorragia, infecção local, formação de hematomas, e lesões à nervos que podem levar distúrbios sensitivos ou paralisias faciais.</p><p><b>Pré-operatório da bichectomia</b></p><p>Além da realização dos exames pré-operatórios (glicemia, coagulograma e hemograma completo) e da avaliação cardiológica, é importante que antes da bichectomia o paciente realize jejum de oito horas.</p><p><b>Pós-operatório da bichectomia</b></p><p>Normalmente ocorre um inchaço na região, devido ao corte cirúrgico, que pode ser tratado com o uso de compressas de água fria. Deve-se evitar consumir alimentos cítricos, que podem causar maior desconforto.</p><p>O retorno às atividades normais em geral demora uma semana e a volta das atividades físicas em torno de 3 semanas.</p><p><b></b><br></p><p><br><br></p>', '2017-11-22 17:30:36'),
(8, 1, 'Lipoaspiração de Papada', 'lipoaspiracao-de-papada', '25631061145248f50d59197b18881f61.jpg', 'O tratamento da papada pode ser feito através de uma lipoaspiração da região cervical. Pequenas incisões são feitas para a introdução de cânulas bem pequenas para aspirar a gordura.', '<p>O tratamento da papada pode ser feito através de uma lipoaspiração da região cervical. Pequenas incisões são feitas para a introdução de cânulas bem pequenas para aspirar a gordura.</p><p><b>Como é feita a lipo de papada?</b></p><p>A cirurgia é realizada com anestesia local e não há necessidade de internação. O procedimento tem duração média de 30 a 40 minutos.</p><p>Após a infiltração da região com anestésico local é utilizado uma fibra de 2mm de largura para liberar a energia na região. O processo de aplicação do laser dura em média 15 minutos para essa região. Em seguida é realizada a aspiração da gordura “derretida”.</p><p>Para a cirurgia é realizada uma pequena incisão de 4mm abaixo do queixo. Para o fechamento da incisão é necessário apenas um ponto que é removido com 1 semana de pós operatório.</p><p><b>Recuperação após da lipo da papada</b></p><p>Em 72 horas o paciente já pode retornar às suas atividades diárias. Em 5 dias já é possível realizar atividades físicas. Recomenda–se utilizar uma malha compressiva por um período de 2 a 3 semanas após a lipo de papada. Não há necessidade de usar a malha compressiva o dia todo, apenas no período em que se está em casa. Algumas sessões de drenagem linfática na região podem ajudar na redução do inchaço e melhorar a recuperação. O resultado definitivo da cirurgia é esperado em 4 a 6 meses após o procedimento.Nossa sociedade ocidental tende a valorizar pessoas com o rosto angulado e queixo bem definido, associando a elas características de personalidade forte e beleza.<br></p><p><br></p>', '2017-11-22 17:31:07'),
(11, 3, 'Fissuras Lábio-palatinas', 'fissuras-labio-palatinas', 'f09fd0f6140091044d5ce3b1032bc5d2.jpg', 'As fissuras labiopalatinas são os defeitos congênitos mais comuns entre as malformações que afetam a face do ser humano, atingindo uma criança a cada 650 nascidas, de acordo com a literatura especializada. De origem latina, a palavra “fissura” significa fenda, abertura.', '<p>As fissuras labiopalatinas são os defeitos congênitos mais comuns entre as malformações que afetam a face do ser humano, atingindo uma criança a cada 650 nascidas, de acordo com a literatura especializada. De origem latina, a palavra “fissura” significa fenda, abertura.</p><p><b>O que é fissura labiopalatina?</b></p><p>A maioria dos estudos considera as fissuras labiopalatinas como defeitos de não fusão de estruturas embrionárias. Ou seja, tanto o lábio como palato (“céu da boca”) são formados por estruturas que, nas primeiras semanas de vida, estão separadas. Estas estruturas devem se unir para que ocorra a formação normal da face. Se, no entanto, esta fusão não acontece, as estruturas permanecem separadas, dando origem às fissuras no lábio e/ou no palato. As fissuras faciais são estabelecidas na vida intra-uterina, no período embrionário (ou seja, até a 12a. semana de gestação), e apresentam grande diversidade de forma pela variabilidade na amplitude e pelas estruturas afetadas no rosto.</p><p><b>Classificação das fissuras</b></p><p>De acordo com as estruturas faciais afetadas, as fissuras recebem uma classificação. A figura abaixo ajuda a entender onde se localiza o forame incisivo, ponto anatômico de referência no diagnóstico da fissura.</p><p style="text-align: center;"><img src="http://files.marina-fissura.webnode.com.br/200000080-1264b135e4/esquema.jpg" alt="Resultado de imagem para CLASSIFICAÇÃO DAS FISSURAS" style="width: 529px; height: 312.992px;"></p><p style="text-align: left;"><b>Fissuras pré-forame incisivo:</b></p><p style="text-align: left;">Fissuras que se restringem ao palato primário, ou seja, envolvem o lábio e/ou o rebordo alveolar sem ultrapassar o limite do forame incisivo. Varia desde um pequeno corte no vermelhão do lábio (incompleta) até toda a extensão do palato primário (completa). Podem ser classificadas em unilateral (só de um lado),bilateral (nos dois lados) ou mediana (no meio).</p><p style="text-align: left;"><b>Fissuras transforame incisivo:</b></p><p style="text-align: left;">São fissuras completas, ou seja, que envolvem total e simultaneamente o palato primário e o palato secundário. Estende-se desde o lábio até a úvula (“campainha”), atravessando o rebordo alveolar. Podem ser também classificadas em unilateral (só de um lado), bilateral (nos dois lados) ou mediana (no meio).</p><p style="text-align: left;"><b>Fissuras pós-forame incisivo:</b></p><p style="text-align: left;">Envolvem apenas o palato (“céu da boca”), mantendo o lábio intacto assim como os dentes. Ocorrem quando as estruturas do palato secundário não fazem a fusão. As consequências são essencialmente funcionais, no mecanismo velofaríngeo e na tuba auditiva. São consideradas completas quando atingem tanto palato mole como palato duro, morrendo no forame incisivo.</p><p style="text-align: left;"><b>Fissura submucosa:</b></p><p style="text-align: left;">Malformação que ocorre no palato secundário considerada forma anatômica subclínica. O defeito é na musculatura do palato mole e/ou no tecido ósseo do palato duro, sendo que a camada da mucosa permanece íntegra. Pode ocorrer de forma isolada, associada à fissura de palato primário ou a síndromes.&nbsp;</p><p style="text-align: left;"><b>Por que ocorre?</b></p><p style="text-align: left;">Não há apenas uma causa para a ocorrência da fissura. Acredita-se que a fissura se dê por uma interação de diversos genes associados a fatores ambientais; este modelo é conhecido como herança multifatorial. Os fatores ambientais mais conhecidos que são de risco para as fissuras são: bebida alcoólica, cigarros e alguns medicamentos (como corticóides e anticonvulsivantes), principalmente quando utilizados no primeiro trimestre da gestação. A ação destes fatores ambientais depende de uma predisposição genética do embrião (interação gene versus ambiente). Hoje, com o avanço das tecnologias de imaginologia, é possível identificar a ocorrência de fissura por exames de imagens no período pré-natal.</p><p style="text-align: left;"><b>Como é o tratamento?</b></p><p>O processo de reabilitação é longo e deve observar o crescimento craniofacial do indivíduo para que não haja sequelas, como crescimento ósseo inadequado. A reabilitação compreende etapas terapêuticas de acordo com idade e crescimento, e envolve a atuação de diversas especialidades.</p><p>A criança deve ser acompanhada por uma equipe interdisciplinar, composta por profissionais da cirurgia craniomaxilofacial, otorrinolaringologia, cirurgia plástica, fonoaudiologia e odontologia, especialidades consideradas essenciais na reabilitação das fissuras, além de um profissional de genética. Após essa primeira avaliação são discutidas as condutas terapêuticas iniciais e realizado encaminhamento para exames e outros atendimentos, de acordo com a necessidade de cada caso.</p><p></p><p>Embora haja um protocolo comum de etapas e condutas terapêuticas no tratamento da fissura labiopalatina, cada caso é analisado individualmente, pois a evolução do tratamento depende de vários fatores individuais. O protocolo estabelece as épocas adequadas de cada intervenção, sempre respeitando o crescimento craniofacial e a maturidade fisiológica do paciente. No total, o tratamento leva de 16 a 20 anos para se completar.</p><div><br></div>', '2017-11-22 17:32:11');
INSERT INTO `cirurgias` (`id`, `categorias_cirurgias_id`, `titulo`, `nome_url`, `imagem`, `texto_breve`, `texto`, `data`) VALUES
(12, 3, 'Trauma Facial', 'trauma-facial', '063838ae8425469be62edf5dc5933893.jpg', 'Os traumas de face são ocorrências comuns em hospitais e unidades de emergência, variando de leves traumatismos que necessitam de alguns cuidados básicos no seu tratamento, à fraturas complexas que exigem tratamento cirúrgico em nível hospitalar. Dentro da traumatologia craniomaxilofacial, podemos incluir tanto os traumatismos nas estruturas da face propriamente dita (pele, músculos, nervos, vasos sanguíneos e ossos da face e crânio), quanto os traumas da cavidade bucal (dentes, gengiva, língua,', '<p>Os traumas de face são ocorrências comuns em hospitais e unidades de emergência, variando de leves traumatismos que necessitam de alguns cuidados básicos no seu tratamento, à fraturas complexas que exigem tratamento cirúrgico em nível hospitalar. Dentro da traumatologia craniomaxilofacial, podemos incluir tanto os traumatismos nas estruturas da face propriamente dita (pele, músculos, nervos, vasos sanguíneos e ossos da face e crânio), quanto os traumas da cavidade bucal (dentes, gengiva, língua, osso maxilar, osso mandibular, vasos sanguíneos e nervos da boca).</p><p><b>Qual a área profissional responsável pelo tratamento dos traumas de face?</b></p><p>A área de traumatologia craniomaxilofacial, representada pelo Cirurgião Craniomaxilofacial, é aquela responsável pelos traumas da face, também chamado de traumatismos craniofaciais. Esta área compreende os traumas localizados em: (1) ossos do crânio (frontal, parietais, temporais, occiptal); (2) ossos nasais (fraturas de nariz); (3) ossos malares ou zigomáticos (fraturas na região da maçã do rosto); (4) ossos da órbita (fraturas na região da órbita dos olhos); (5) ossos maxilares (fratura de maxila ou fratura de mandíbula); (6) rebordo alveolar e dentes (fraturas alvéolo-dentárias ou dentárias); (7) pele da face, lábios e língua, além de músculos, vasos sanguíneos e nervos da região da face e da cavidade bucal (cortes, lacerações, ferimentos perfuro-cortantes).</p><p><b>Quais os sinais e sintomas das fraturas de face?</b></p><p>Entre os sintomas das fraturas faciais podemos citar: (1) dor variável, de leve a intensa, dependendo do tipo de trauma de face e do local acometido; (2) dormência do queixo, lábios, língua, gengiva, dentes, bochechas, nariz e testa, dependendo do tipo de trauma de face e local de acometimento; (3) dificuldades em movimentar a mandíbula (dor e limitação dos movimentos por impedimento mecânico); (4) alterações da oclusão, ou seja, modificações na “mordida”; (5) cortes e lacerações; (6) hematoma, equimose e edema (áreas arroxeadas e inchadas).</p><p><b>Como é o tratamento dos traumas de face?</b></p><p>O primeiro atendimento é emergencial e tem como objetivo garantir a vida do paciente nos traumas mais graves ou apenas evitar maiores danos no local das injúrias nos casos de traumas faciais mais leves. Após o atendimento emergencial, segue-se a solicitação de exames complementares para determinação de um diagnóstico mais preciso e, desta forma, instituir o correto tratamento.</p><p>O cirurgião Craniomaxilofacial, muitas vezes solicitado para agir em salas emergenciais, é o especialista que irá realizar o tratamento do paciente vítima de trauma de face. Após o atendimento emergencial e a execução dos exames de rotina e exames complementares para diagnóstico, inicia-se o tratamento definitivo do paciente. Na maioria das vezes estes tratamentos envolvem suturas de feridas e tratamento cirúrgico das fraturas presentes.</p><p>Por fim, o cirurgião prescreve as medicações que serão utilizadas após o procedimento, esclarece dúvidas e orienta paciente e familiares quais serão os cuidados necessários. Todos estes passos são importantes para que o procedimento seja feito em segurança.</p><p>Confie sua face a um cirurgião craniomaxilofacial!</p>', '2017-11-22 17:32:32'),
(13, 3, 'Deformidades Craniofaciais', 'deformidades-craniofaciais', 'f0bda61d5db55abce6a6d78bad4c3b10.jpg', 'As anomalias congênitas afetam cerca de 5% dos nascidos vivos em todo mundo. Possui incidência mais discreta em países desenvolvidos porém, nos países em desenvolvimento da América Latina, esses índices variam em torno de 10-25% de internações hospitalares pediátricas, ocupando entre a terceira e quarta causa de morte no primeiro ano de vida. No Brasil, os defeitos congênitos ocuparam a segunda causa de mortes perinatais no ano 2000.', '<p>As anomalias congênitas afetam cerca de 5% dos nascidos vivos em todo mundo. Possui incidência mais discreta em países desenvolvidos porém, nos países em desenvolvimento da América Latina, esses índices variam em torno de 10-25% de internações hospitalares pediátricas, ocupando entre a terceira e quarta causa de morte no primeiro ano de vida. No Brasil, os defeitos congênitos ocuparam a segunda causa de mortes perinatais no ano 2000.<br></p>', '2017-11-22 17:32:52'),
(14, 3, 'Cirurgia Ortognática (Deformidades dentofaciais)', 'cirurgia-ortognatica-deformidades-dentofaciais', '803c0a4d93bfe5991a9d63feb5a34070.jpg', 'A cirurgia ortognática é o tratamento para pacientes que possuem deformidades envolvendo os dentes e o esqueleto da face. Quando não é possível resolver o caso somente com o tratamento ortodôntico, uma vez que o problema está no excesso ou falta de crescimento do esqueleto facial e não somente na posição dos dentes, então é necessária a cirurgia ortognática.', '<p>A cirurgia ortognática é o tratamento para pacientes que possuem deformidades envolvendo os dentes e o esqueleto da face. Quando não é possível resolver o caso somente com o tratamento ortodôntico, uma vez que o problema está no excesso ou falta de crescimento do esqueleto facial e não somente na posição dos dentes, então é necessária a cirurgia ortognática.</p><p><b>Qual a origem das deformidades?</b></p><p>Essas deformidades podem ter origem devido a Síndromes e Anomalias Específicas (fatores teratogênicos, fatores embriológicos, microssomia hemifacial, Treacher Collins, fissuras faciais, craniossinostoses, Pierre Robin...), distúrbios de crescimento após o nascimento, trauma facial, problemas musculares e hormonais ou de origem genética quando existe algum familiar com as mesmas características.</p><p><b>Quais as alterações que podem implicar a necessidade da cirurgia ortognática?</b></p><ul><li>Dificuldade na mastigação;</li><li>Dificuldade na deglutição;</li><li>Desgaste excessivo dos dentes;</li><li>Mordida aberta;</li><li>Mordida profunda;</li><li>Mordida cruzada;</li><li>Aparência facial desarmônica;</li><li>Defeitos congênitos ou sequelas de trauma na face;</li><li>Queixo pequeno ou retraído;</li><li>Queixo grande ou protuído;</li><li>Queixo desviado para um dos lados;</li><li>Mandíbula muito para frente ou projetada;</li><li>Mandíbula muito para trás ou retruída;</li><li>Incapacidade  de fechar os lábios sem esforço muscular;</li><li>Respiração oral crônica;</li><li>Dor crônica na ATM e cefaléias;</li><li>Síndrome da apnéia obstrutiva do sono;</li></ul><p><b>Quais os benefícios deste tratamento ortodôntico e cirúrgico?</b></p><ul><li>Melhoria da relação entre os dentes, músculos e esqueleto;</li><li>Melhoria da respiração;</li><li>Melhoria do posicionamento da musculatura do pescoço;</li><li>Melhoria do posicionamento da língua;</li><li>Melhoria da fonação e da articulação das palavras;</li><li>Melhoria da oclusão e da articulação temporomandibular (ATM);</li><li>Melhoria da mastigação e da digestão;</li><li>Melhoria no relacionamento social;</li></ul><p><b>Quais são as fases do tratamento?</b></p><ul><li>Montagem do aparelho ortodôntico fixo – o tratamento ortodôntico pode levar de 18 a 24 meses antes da cirurgia para deixar os dentes em uma posição adequada;</li><li>Cirurgia Ortognática (ainda com o aparelho ortodôntico);</li><li>Retorno ao tratamento ortodôntico após a cirurgia para melhorar definitivamente a posição dos dentes;</li></ul><p></p><p>O tempo do tratamento depende do grau de dificuldade do tratamento ortodôntico.</p><p><b>Como é realizada a cirurgia?</b></p><p>Antes é feita a preparação do paciente com todos os exames necessários. O diagnóstico e o planejamento da cirurgia são realizados minuciosamente antes da cirurgia por meio de modelos de estudo montados em articulador, radiografias e traçados cefalométricos. O planejamento leva muito mais tempo do que a própria cirurgia.</p><p></p><p>A cirurgia é realizada sob anestesia geral. O paciente é internado na manhã da cirurgia em "jejum absoluto" (não pode comer nenhum tipo de alimento nem tomar água nas 08h antes da cirurgia) e dependendo da situação o paciente recebe alta no dia seguinte. A cirurgia é realizada através da cavidade oral, não deixando cicatriz na face. O esqueleto é fixado com mini-placas e parafusos de titânio não permitindo micromovimentação dos ossos. Na pós-cirurgia é normal surgir inchaço na face o qual diminui ao fim de alguns dias.</p><p><b>Quais são os cuidados Pós Cirúrgicos?</b></p><ul><li>A alimentação deve ser fria e mole.</li><li>A utilização de gelo diminui o inchaço e deve ser usado frequentemente nas primeiras 24 horas.</li><li>Cumprir rigorosamente a medicação prescrita.</li></ul><p><b></b><br></p>', '2017-11-22 17:33:16'),
(15, 4, 'Amigdalectomia (retirada das amígdalas)', 'amigdalectomia-retirada-das-amigdalas', '1bdbf2e6184e11a5532e44ae274ff15d.jpg', 'As amígdalas são órgãos que ajudam a reforçar a imunidade do trato aero digestivo superior, podendo sua função estar comprometida principalmente por hipertrofia (aumento) ou infecções repetidas.', '<p style="text-align: justify; ">O que são as amígdalas?</p><p style="text-align: justify;">As amígdalas são órgãos que ajudam a reforçar a imunidade do trato aero digestivo superior, podendo sua função estar comprometida principalmente por hipertrofia (aumento) ou infecções repetidas.</p><p style="text-align: justify;">O que é a amigdalectomia?</p><p style="text-align: justify; ">É o nome dado à remoção cirúrgica das tonsilas palatinas (amígdalas).</p><p style="text-align: justify;">Qual sua finalidade?</p><p style="text-align: justify;">O principal objetivo desta cirurgia é restabelecer uma adequada respiração nasal, normalmente prejudicada em pacientes com hipertrofia de amígdalas e adenóides. As indicações cirúrgicas são absolutas quando ocorre hipertrofia com obstrução da via respiratória (roncos e obstrução nasal) ou da via digestiva (engasgos freqüentes e dificuldade de alimentação) e crises infecciosas muito intensas ou repetidas. As indicações cirúrgicas são relativas nas adenoamigdalites de repetição, abscesso periamigdaliano,&nbsp; halitose (mau hálito) e para o tratamento de sinusites ou otites de repetição.</p><p style="text-align: justify;">Como é realizada?</p><p style="text-align: justify;">A cirurgia deve ser realizada sob anestesia geral somente em hospitais com estrutura adequada. O paciente dorme e não sente nenhuma dor durante o procedimento. Na maioria dos casos recebe alta no mesmo dia da cirurgia, necessitando de poucos dias de recuperação em casa. </p><p style="text-align: justify;">Estamos preparados para explicar os riscos e benefícios dessa cirurgia, assim como a forma mais segura possível de realizá-la. Estamos à disposição para o esclarecimento de eventuais dúvidas.<br></p>', '2017-11-22 17:34:12'),
(16, 4, 'Adenoidectomia (remoção da adenóide)', 'adenoidectomia-remocao-da-adenoide', '403fd14d1bcb48498f5794a9af5dd8d7.jpg', 'As adenóides são órgãos que reforçam a imunidade do trato aero ¬digestivo superior, podendo sua função estar comprometida principalmente por hipertrofia (aumento) ou infecções repetidas.', '<p style="text-align: justify; ">O que são as adenóides?</p><p style="text-align: justify; ">As adenóides são órgãos que reforçam a imunidade do trato aero ¬digestivo superior, podendo sua função estar comprometida principalmente por hipertrofia (aumento) ou infecções repetidas.</p><p style="text-align: justify;">O que é a adenoidectomia?</p><p style="text-align: justify;">É o nomes dado à remoção cirúrgica das tonsilas faríngeas (adenóides).</p><p style="text-align: justify;">Qual a sua finalidade?</p><p style="text-align: justify;">O principal objetivo desta cirurgia é restabelecer uma adequada respiração nasal, normalmente prejudicada em pacientes com hipertrofia da adenóide.</p><p style="text-align: justify;">As indicações cirúrgicas são absolutas quando ocorre hipertrofia com obstrução da via respiratória (roncos e obstrução nasal) e crises infecciosas muito intensas ou repetidas.</p><p style="text-align: justify;">As indicações cirúrgicas são relativas para o tratamento de sinusites ou otites de repetição.</p><p style="text-align: justify;">Como é realizada?</p><p style="text-align: justify;">A cirurgia é realizada sob anestesia geral somente em hospitais com estrutura adequada. O paciente dorme e não sente nenhuma dor durante o procedimento. Na maioria dos casos recebe alta no mesmo dia da cirurgia, necessitando de poucos dias de recuperação em casa.</p><p style="text-align: justify;">É comum a remoção das amígdalas hipertrofiadas junto com as adenóides. Estamos preparados para explicar os riscos e benefícios dessa cirurgia, assim como a forma mais segura possível de realizá-la. Estamos à disposição para o esclarecimento de eventuais dúvidas.<br></p>', '2017-11-22 17:34:37'),
(17, 4, 'Cirurgia dos cornetos inferiores', 'cirurgia-dos-cornetos-inferiores', '6aa01e951297ec407a48c2c0ffaac821.jpg', 'Conchas ou cornetos nasais são projeções ósseas para o interior da cavidade nasal, recobertos por mucosa com função de aquecer e umidificar o ar inspirado. Existem no nariz cerca de três conchas de cada lado (superior, média e inferior).', '<p style="text-align: justify; ">O que são as conchas nasais?</p><p style="text-align: justify;">Conchas ou cornetos nasais são projeções ósseas para o interior da cavidade nasal, recobertos por mucosa com função de aquecer e umidificar o ar inspirado. Existem no nariz cerca de três conchas de cada lado (superior, média e inferior).</p><p style="text-align: justify;">Corneto e adenóide são a mesma coisa?</p><p style="text-align: justify;">Não, esta é uma confusão frequente! O corneto fica dentro do nariz e é uma das principais causas de obstrução nasal em adultos. A adenóide fica no fundo do nariz e é importante causa de obstrução nasal em crianças (no adulto a adenóide praticamente não existe).</p><p style="text-align: justify;">Para quem está indicada a Turbinectomia?</p><p style="text-align: justify;">A Turbinectomia está indicada quando o paciente apresenta obstrução nasal importante decorrente do aumento (hipertrofia) do corneto, que não responde ao tratamento medicamentoso. A principal causa para o aumento dos cornetos é a Rinite Alérgica.</p><p style="text-align: justify; ">Como é realizada a cirurgia?</p><p style="text-align: justify;">Geralmente, a obstrução nasal é causada por aumento do corneto inferior. A cirurgia consiste em basicamente remoção do excesso do corneto. A cirurgia dura cerca de 30 minutos. Normalmente não é necessário uso de tampões.</p><p style="text-align: justify;">Quais são os possíveis riscos e complicações?</p><p style="text-align: justify;">É considerada uma cirurgia de baixo risco. Raramente ocorrem sangramentos importantes em que há necessidade de uso de tampão nasal ou cauterização do vaso sangrante. A taxa de satisfação com essa cirurgia é altíssima.</p><p style="text-align: justify;">Quais são os cuidados no pós-operatório?</p><p style="text-align: justify;">Normalmente, o paciente recebe alta no mesmo dia em que foi realizada a cirurgia. Deve ser mantido repouso relativo por cerca de 48 horas após a cirurgia. Neste período é normal a saída de pequena quantidade de sangue pelo nariz ou garganta. Atividade física deve ser iniciada somente após 30 dias.</p><p style="text-align: justify;">É importante a realização de limpeza nasal rigorosa especialmente no primeiro mês após o procedimento cirúrgico. Neste período será necessário retorno semanalmente ao consultório, para que sejam removidas crostas que por ventura venham a se formar.</p><p style="text-align: justify;">Nos pacientes portadores de Rinite Alérgica é essencial o acompanhamento e tratamento da doença mesmo com a cirurgia para que os sintomas não retornem.</p>', '2017-11-22 17:34:56'),
(18, 4, 'Cirurgia dos seios da face (sinusectomia)', 'cirurgia-dos-seios-da-face-sinusectomia', '1d3f79539929ed47bba7194690256090.jpg', 'São cavidades localizadas na face recobertas por epitélio semelhante ao do nariz e que possuem óstios de drenagem para dentro da cavidade nasal.', '<p style="text-align: justify; ">O que são seios paranasais?</p><p style="text-align: justify;">São cavidades localizadas na face recobertas por epitélio semelhante ao do nariz e que possuem óstios de drenagem para dentro da cavidade nasal.</p><p style="text-align: justify;">Quando deve ser realizada a cirurgia dos seios paranasais?</p><p style="text-align: justify;">A cirurgia endoscópica dos seios da face é geralmente utilizada para tratamento, diagnóstico, biópsia de diversas doenças do nariz e seios da face, como sinusite crônica, micoses, cistos de seios paranasais, polipose nasal, tumores de nariz e seios da face, entre outros.</p><p style="text-align: justify;">Como é realizada a cirurgia?</p><p style="text-align: justify;">A cirurgia é realizada na maioria das vezes com anestesia geral. É introduzido, na cavidade nasal uma fibra óptica, conectado a um sistema de vídeo que amplia a imagem do interior do nariz, dando ao cirurgião maior detalhamento da área a ser operada. O médico então poderá realizar tanto a remoção de lesões dentro do nariz, quanto dos seios da face, drenagem de secreções no interior dos seios. Na maioria das vezes também é necessário ampliar os óstios dos seios da face, para melhorar a drenagem e evitar assim novos episódios de sinusite.</p><p style="text-align: justify;">Quais são as possíveis complicações?</p><ul><li style="text-align: justify;"><b>Sinéquias </b>– Consiste em uma cicatrização inadequada do corneto, que leva a obstrução nasal, ocorre em cerca de 8% dos casos. Pode ser evitada com limpeza adequada no pós-operatório.</li><li style="text-align: justify;"><b>Fechamento do óstio</b> – Causando sinusite, sendo necessário reoperação.</li><li style="text-align: justify;"><b>Hemorragia </b>– Pode ocorrer sangramentos tanto no pós-operatório imediato quanto tardio, sendo raramente necessário colocação de tampão ou reintervenção cirúrgica para nova cauterização.</li><li style="text-align: justify;"><b>Fístula liquórica</b> – Cérebro é envolvido por três membranas e uma fina camada de líquido chamada líquor. Devido a proximidade dos seios da face com o cérebro existe uma rara chance de lesão do cérebro ou dos tecidos que envolvem o cérebro, podendo haver saída de líquor pela cavidade nasal.</li><li style="text-align: justify;"><b>Problemas visuais</b> – Em casos extremamente raros podem ocorrer danos ao olho causando redução da visão. Pode evoluir também com lacrimejamento excessivo, olho seco.</li></ul><p style="text-align: justify;">Quais são os cuidados no pós-operatório?</p><p style="text-align: justify;">Normalmente o paciente recebe alta no mesmo dia em que foi realizada a cirurgia. Se houver a necessidade de se colocar tampão, o paciente deve retornar em cerca de 24 horas para remoção do mesmo.</p><p style="text-align: justify;">Deve ser mantido repouso relativo cerca de 48 horas após a cirurgia, neste período e normal a saída de pequena quantidade de sangue pelo nariz ou garganta. Atividade física deve ser iniciada somente após 30 dias.</p><p style="text-align: justify; ">É importante realização de limpeza nasal rigorosa cerca de seis semanas após o procedimento cirúrgico. Neste período será necessário retorno periódico ao consultório, para que sejam removidas crostas que por ventura venham a se formar.</p>', '2017-11-22 17:35:17'),
(19, 4, 'Septoplastia (cirurgia do septo nasal)', 'septoplastia-cirurgia-do-septo-nasal', '00ec8d2f3402311b52a7a403c252ec8f.jpg', 'Septoplastia é a cirurgia realizada para corrigir o desvio de septo. Na maioria das vezes, realizamos a septoplastia sob anestesia geral. Em casos mais simples ou retoques de cirurgias já feitas, podemos optar pela anestesia local com sedação.', '<p style="text-align: justify; ">O DESVIO DE SEPTO<br></p><p style="text-align: justify;">Geralmente, existem duas razões para uma pessoa a ser submetida à cirurgia do nariz: <b>Funcional</b>, para correção do desvio de septo e outras alterações que impedem a boa respiração e <b>estético</b>, para corrigir características externas que incomodem o paciente. Os procedimentos necessários para correção destas alterações podem ser realizados juntos ou isoladamente.</p><p style="text-align: justify;">Aqui falaremos do <b>desvio de septo nasal e da septoplastia</b>. Trata-se da cirurgia empregada&nbsp; para aliviar as queixas de <b>nariz entupido, sinusites de repetição, dores de cabeça, dificuldades no olfato e no paladar.</b></p><p style="text-align: justify;">O<b> septo nasal</b> é uma “parede” constituída em parte por uma fina lâmina óssea e cartilagem. Essa estrutura, recoberta pela mucosa nasal, separa a cavidade dos dois lados. Em algumas pessoas, o septo pode acabar saindo da linha média, se posicionando muito “desviado” para um ou ambos os lados. O desvio do septo pode ser causado por traumas e falhas no crescimento, impedindo o bom fluxo de ar pelo nariz. Essa má ventilação piora a qualidade respiratória, com impacto importante no sono e no dia a dia.<br></p><p style="text-align: justify; ">SEPTOPLASTIA, RINOPLASTIA E RINOSSEPTOPLASTIA</p><p style="text-align: justify;">Septoplastia é a cirurgia realizada para corrigir o desvio de septo. Na maioria das vezes, realizamos a septoplastia sob anestesia geral. Em casos mais simples ou retoques de cirurgias já feitas, podemos optar pela anestesia local com sedação.</p><p style="text-align: justify;">O septo nasal, como todo o restante da cavidade nasal, é coberto pela mucosa nasal. O primeiro passo da cirurgia consiste em se levantar esta cobertura, para que se exponha todas as alterações ósseas e cartilaginosas do septo. Após a remoção e remodelagem das áreas desviadas,&nbsp; a mucosa nasal é reposicionada e suturada.</p><p style="text-align: justify;">Já a rinoplastia é a técnica cirúrgica aplicada para a correção das alterações estéticas, ou externas, do nariz. Num grande número de pacientes lançamos mão da rinosseptoplastia, união das duas técnicas, para proceder uma cirurgia que tenha tanto o objetivo de melhorar a respiração, quanto a estética.</p><p style="text-align: justify;">No passado era comum o uso de tampões nasais após o término da cirurgia. Tanto a permanência quando a remoção do tampão nasal eram rodeadas de muitas queixas. O uso rotineiro do tamponamento acabou para contribuir para a péssima fama da cirurgia nasal, o que faz com que até hoje muitos pacientes candidatos a esses procedimentos cheguem ao consultório receosos deste procedimento. Felizmente, esse medo hoje é injustificado</p><p style="text-align: justify;">Pessoalmente, não uso os tampões de forma rotineira, bem como a maioria dos cirurgiões nasais. A experiência de sair da cirurgia respirando pelo nariz e sem as dores causadas pelos tampões é radicalmente diferente do passado, sendo o pós-operatório atual praticamente indolor.</p><p style="text-align: justify;">O uso da fibra ótica na cirurgia nasal (cirurgia endoscópica), de maneira minimamente invasiva, permite uma visão detalhada de todas alterações anatômicas. Isso permite uma correção precisa do desvio de septo, sem trauma desnecessário. Além disso, a visão endoscópica permite observar e cauterizar todas as áreas sangrantes, evitando o uso dos tampões nasais.</p><p style="text-align: justify;">CUIDADOS PRÉ E PÓS-OPERATÓRIOS</p><p style="text-align: justify;">Existe uma rotina de cuidados aplicados antes e após a cirurgia, com o objetivo de melhorar a experiência do pacientes, minimizando riscos e maximizando resultados. Seguem alguns deles:</p><p style="text-align: justify;">PRÉ-OPERATÓRIO PARA CORREÇÃO DO DESVIO DE SEPTO</p><ul><li style="text-align: justify;">Realização dos exames pré-operatórias adequados para cada paciente, dependendo da idade e condições clínicas</li><li style="text-align: justify;">Todas as medicações usadas rotineiramente devem ser informadas ao médico. Anti-inflamatórios, aspirina e anti-coagulantes devem ser suspensos 7 a 10 dias antes da cirurgia.</li></ul><p style="text-align: justify;">O DIA DA CIRURGIA:</p><ul><li style="text-align: justify;">No dia, o paciente comparecerá ao hospital cerca de uma hora e meia antes da hora marcada para cirurgia, em jejum de 8 horas, inclusive de água.</li><li style="text-align: justify;">Todos os exames relacionados à cirurgia devem ser levados ao hospital.</li><li style="text-align: justify;">Já no hospital, tendo passado pelo procedimento de internação, o paciente será encaminhado ao seu quarto, onde trocará de roupa e aguardará o momento do deslocamento para o centro cirúrgico.</li><li style="text-align: justify;">Dependendo do grau de ansiedade de cada paciente pela cirurgia, pode ser necessário o uso de um calmante antes da ida para a sala de cirurgia.</li></ul><p style="text-align: justify;">PÓS-OPERATÓRIO IMEDIATO – Primeiras 4 horas:</p><ul><li style="text-align: justify;">Após ter acordado ainda na sala de cirurgia o paciente será levado à sala de recuperação dentro do próprio centro cirúrgico ou retornará diretamente para o quarto, dependendo de suas condições clínicas. Não é comum a ocorrência de dor após a septoplastia.</li><li style="text-align: justify;">Neste período alguns pacientes têm náuseas e mais raramente vômitos (que podem conter sangue), que costumam ser passageiros e não comprometem a cirurgia.</li><li style="text-align: justify;">Pequenos sangramentos nasais também podem ocorrer e por isso usamos um curativo tipo “bigode” preso abaixo do nariz, que poderá ser trocado várias vezes, se necessário.</li><li style="text-align: justify;">A melhor orientação para essas primeiras horas é deixar o paciente descansar, de preferência dormir, para que possa eliminar as medicações anestésicas ainda circulantes em sua corrente sanguínea.</li></ul><p style="text-align: justify;">Normalmente o paciente sai do centro cirúrgico com uma gaze presa com esparadrapo obstruindo parcialmente as narinas (“bigode”). Nos casos de plástica nasal também poderão ser posicionados curativos especiais sobre o nariz.</p><p style="text-align: justify;">PÓS-OPERATÓRIO TARDIO – Até 30 dias</p><ul><li style="text-align: justify;">A dieta nos primeiros 2-3 dias deverá ser líquida e pastosa, sempre fria ou na temperatura ambiente. Exemplos: água, leite, sucos, água-de-coco, sopas frias, iogurtes, sorvetes, gelatinas. Entre o terceiro e quarto dias deverá ser iniciada a dieta mais sólida podendo o paciente se alimentar (quase) normalmente.</li><li style="text-align: justify;">O desconforto da primeira semana ocorre pela obstrução nasal. A correta limpeza nasal e o uso de soluções salinas em spray ajudam a aliviar esta queixa. Nas três semanas seguintes, a obstrução ainda pode incomodar, porém em intensidade menor.</li><li style="text-align: justify;">Inchaço do rosto e dos olhos podem ocorrer entre o segundo e sétimo dias, apenas quando houver correção estética do nariz (rinoplastia) associada.</li><li style="text-align: justify;">Exercícios físicos de qualquer tipo estão proibidos nesta fase. Corrida, bicicleta ou musculação normalmente podem ser retomadas após um mês.</li><li style="text-align: justify;">Ainda nesta fase, entre a segunda e quinta semanas, é comum a eliminação de crostas pretas e duras de dentro do nariz, causadas pelo sangue coagulado e seco.</li></ul>', '2017-11-22 17:35:38'),
(20, 4, 'Colocação de tubos de ventilação', 'colocacao-de-tubos-de-ventilacao', 'c48068f59e9ce0fdb7653c7503c4bbea.jpg', 'Muitas crianças passam por um ou mais episódios de dor de ouvido causados por otite média até os 5 anos de idade. Na grande maiorias das vezes, essas otites curam espontaneamente ou são tratadas com antibióticos orais. Mais raramente entretanto, esses episódios repetem-se muitas vezes, ou tornam-se crônicos. Esses casos podem gerar complicações, como perda auditiva, atraso no desenvolvimento da linguagem e alteração no comportamento e outras complicações mais sérias, com risco de vida ou de sequ', '<p style="text-align: justify;">OTITES NA INFÂNCIA</p><p style="text-align: justify;">Muitas crianças passam por um ou mais episódios de dor de ouvido causados por otite média até os 5 anos de idade. Na grande maiorias das vezes, essas otites curam espontaneamente ou são tratadas com antibióticos orais. Mais raramente entretanto, esses episódios repetem-se muitas vezes, ou tornam-se crônicos. Esses casos podem gerar complicações, como perda auditiva, atraso no desenvolvimento da linguagem e alteração no comportamento e outras complicações mais sérias, com risco de vida ou de sequelas graves (quadro abaixo). É quando o tubo de ventilação se torna uma arma importante na para o tratamento ou prevenção.</p><table class="table table-bordered"><tbody><tr><td style="text-align: center;">COMPLICAÇÕES DAS OTITES MÉDIAS<br></td></tr><tr><td style="text-align: center;">Atraso na fala</td></tr><tr><td style="text-align: center;">Meningite</td></tr><tr><td style="text-align: center;">Paralisia facial<br></td></tr><tr><td style="text-align: center; ">Abcesso cerebral\r\n</td></tr><tr><td style="text-align: center; ">Mastoidite\r\n</td></tr><tr><td style="text-align: center; ">Trombose do seio sigmoide</td></tr><tr><td style="text-align: center; ">Labirintite infecciosa</td></tr><tr><td style="text-align: center; ">Fístula labiríntica</td></tr><tr><td style="text-align: center; ">Petrosite</td></tr></tbody></table><p style="text-align: justify; ">O que é o tubo de ventilação?</p><p style="text-align: justify;">Tubo de ventilação é um pequeno cilindro no formato de carretel, que funciona como um dreno comunicando suas extremidades, uma voltada para fora e outra para dentro da membrana do tímpano. Eles são feitos de diferentes materiais e podem ser de curta ou longa permanência. Com isso, a parte interna do tímpano, chamada orelha média, fica permanentemente aerada através do tubo, evitando o acúmulo das secreções causadoras das otites. Os tubos de curta permanência são colocados para permanecer em média 6 a 12 meses nos ouvidos enquanto os de longa permanência são usados para permanecer por&nbsp; anos ou por prazo indeterminado.</p><p><br></p><p style="text-align: center; "><img src="http://www.movimentodown.org.br/wp-content/uploads/2013/02/problemasauditivos.jpg" alt="Resultado de imagem para o tubo de ventilação naniz" style="float: none;"></p><p style="text-align: left;"><br></p><p style="text-align: justify;">Quem precisa de tubos de ventilação?</p><ul><li style="text-align: justify;"><b>Otites de repetição</b>: Crianças com quadros de dor de ouvido recorrentes, com uso de antibiótico várias vezes ao ano podem se beneficiar da colocação do carretel para melhorar a ventilação do ouvido médio</li><li style="text-align: justify;"><b>Otite média serosa, otite médica secretora (acúmulo de secreção atrás do tímpano)</b>: Quadros que pode acontecer em todas as idades, embora sejam mais comuns na criança. Além de causar perda auditiva e poder prejudicar o desenvolvimento das crianças, pode causar também zumbido, tonteira e alteração do equilíbrio.</li><li style="text-align: justify;"><b>Aplicação de medicação tópica na orelha média</b>: o uso de medicação intratimpânica tem ganhado espaço no tratamento de algumas doenças do ouvido interno como surdez súbita e a síndrome de Ménière. Nesses casos o tubo de ventilação pode fornecer um canal adequado para aplicação de corticoides ou antibióticos.</li><li style="text-align: justify;"><b>Disfunção da tuba auditiva</b>: o bom funcionamento da tuba auditiva (que liga o ouvido médio ao fundo do nariz) é fundamental para a saúde do ouvido médio e também para os momentos em que somos submetidos a diferenças na pressão ambientes como em viagens aéreas, mergulhos, subidas e descidas de serras e montanhas. Pacientes que viajam de avião com muita frequência e não conseguem aliviar os sintomas de dor e pressão nos ouvidos com o tratamento clínico, podem se beneficiar dos tubos de ventilação.</li></ul><p style="text-align: justify;">Como é o procedimento para colocar o tubo de ventilação?</p><p style="text-align: justify;">Apesar de ser um procedimento cirúrgico, a colocação do tubo de ventilação pode ser feita no consultório nos adultos, utilizando o videoendoscópio ou o microscópio. Em crianças podemos precisar de uma sedação ou anestesia geral, em ambiente hospitalar. O procedimento dura poucos minutos. Após a anestesia (geral ou local) e com visualização videoendoscópica ou microscópica, fazemos uma incisão na membrana timpânica e aspiração da secreção no ouvido médio. Em seguida introduzimos o tubo de ventilação através desta incisão.</p><p style="text-align: justify;">Como é o pós-operatório?</p><p style="text-align: justify;">A recuperação do procedimento costuma ser muito boa. No caso das crianças submetidas a anestesia geral, são necessárias 2 ou 3 horas para a recuperação completa do torpor e desorientação causados pela medicação anestésica.</p><p style="text-align: justify;">O maior cuidado a partir deste momento é impedir a entrada de água nos ouvidos, já que eles se encontram “abertos” através dos tubos e sujeitos à infecções causadas pela entrada de bactérias contaminantes.</p><p style="text-align: justify;">Após a cicatrização que dura alguns dias pode ser necessária uma audiometria para avaliar a recuperação da audição.</p><p style="text-align: justify;">Quais as complicações possíveis?</p><p style="text-align: justify;">A colocação do tubo de ventilação é um procedimento muito comum e seguro, entretanto não está livre de algumas raras complicações como a permanência de uma perfuração timpânica após a saída do tubo, infecções repetidas e drenagem de secreção pelo tubo.<br></p>', '2017-11-22 17:36:02'),
(21, 4, 'Cirurgia do Ronco e apnéia do sono', 'cirurgia-do-ronco-e-apneia-do-sono', '7945d60e90e42c74c8d4dd92cd2316fc.jpg', 'O som do ronco ocorre quando existe uma obstrução no fluxo livre de ar pela passagem na parte de trás da boca e do nariz. Esta região é a região que pode colapsar da via aérea (veja a ilustração) onde a língua e a parte superior da garganta se encontra com o palato mole e úvula. O ronco ocorre quando estas estruturas se chocam uma contra as outras e vibram durante a respiração.', '<p style="text-align: justify; ">Quarenta e cinco por cento da população de adultos normais roncam pelo menos, ocasionalmente e 25% por cento são roncadores habituais. O ronco patológico é mais freqüente em homens e pessoas com sobrepeso ou obesas, e geralmente piora com a idade.<br></p><p style="text-align: justify;">O que causa o ronco?</p><p style="text-align: justify;">O som do ronco ocorre quando existe uma obstrução no fluxo livre de ar pela passagem na parte de trás da boca e do nariz. Esta região é a região que pode colapsar da via aérea (veja a ilustração) onde a língua e a parte superior da garganta se encontra com o palato mole e úvula. O ronco ocorre quando estas estruturas se chocam uma contra as outras e vibram durante a respiração.</p><p style="text-align: justify;">As pessoas que roncam podem sofrer de:</p><p style="text-align: justify;"><b>Diminuição do tônus muscular na língua e na garganta</b>: quando os músculos estão muito relaxados, tanto pelo álcool ou por uso de medicações que causam sonolência, a língua cai para trás na via aérea e os músculos da garganta caem para os lados na via aérea. Isto ocorre durante o sono.</p><p style="text-align: justify;"><b>Volume excessivo dos tecidos da garganta</b>: Crianças com amígdalas ou adenóides volumosas freqüentemente roncam. Pessoas com sobrepeso ou obesas também possuem aumento do volume dos tecidos do pescoço . De maneira mais rara tumores ou cistos também podem causar aumento do volume dos tecidos da garganta.</p><p style="text-align: justify;"><b>Palato mole ou úvula alongada</b>: Um palato mole longo diminui a abertura do nariz para a garganta. Quando estes tecidos balançam (por estarem pendentes) funcionam como uma válvula durante a respiração relaxada. Uma úvula longa piora este aspecto ainda mais.</p><p style="text-align: justify;"><b>Obstrução Nasal</b>: Um nariz congestionado ou trancado requer um esforço extra para a passagem do ar. Isto cria um vácuo exagerado na garganta, e puxa os tecidos moles um de encontro ao outro, funcionam como uma válvula causando o ronco. Desta maneira o ronco ocorre apenas durante a a primavera (fatores alérgicos) ou nos períodos de gripe ou sinusites. Deformidades nasais ou do septo nasal, tais como desvios de septo podem da mesma maneira causar obstrução.</p><p style="text-align: justify;">O que é a Síndrome da Apnéia Obstrutiva do Sono (SAOS)?</p><p style="text-align: justify;">Quando um ronco forte é interrompido por episódios freqüentes de paradas da respiração, isto é conhecido como apnéia obstrutiva do sono. Episódios mais sérios duram cerca de 10 segundos cada e ocorrem mais de 7 vezes por hora.</p><p style="text-align: justify;">Pacientes com Síndrome da Apnéia Obstrutiva podem sofrem 30 a 300 eventos de apnéia por noite. Estes episódios podem reduzir os níveis sanguíneos de oxigênio, levando o coração a bater mais forte.</p><p style="text-align: justify;">O efeito imediato da apnéia do sono é que o roncador deve dormir superficialmente e manter os músculos contraídos de maneira que mantenha a via aérea livre até os pulmões.</p><p style="text-align: justify;">Porque o roncador não possui um bom sono, ele pode ficar sonolento durante o dia, o que pode comprometer o rendimento no trabalho e ser um perigo quando o roncador sonolento dirige ou opera um equipamento que exija atenção. Após muitos anos com esta desordem, pressão elevada e aumento de doenças cardiovasculares podem ocorrer.</p><p style="text-align: justify;">Um otorrinolaringologista irá proporcionar uma avaliação do nariz, boca, garganta, palato e pescoço. Um estudo do sono em um ambiente adequado é necessário para determinar qual a intensidade do ronco e a relação na saúde do roncador.</p><p style="text-align: justify;">Como é realizada a cirurgia?</p><p style="text-align: justify;">Úvulopalatofaringoplastia (UPFP) é a cirurgia para o tratamento da apnéia obstrutiva do sono. Visa a retirar tecidos moles que vibram no palato e na garganta, e aumenta a passagem de ar. Ela é realizada através da boca sem realizar incisões na pele.</p><p style="text-align: justify;">Quais são as complicações possíveis?</p><ul><li style="text-align: justify;">Febre e dor – Febre e dores de garganta ou dor no ouvido ocorrem normalmente e não devem ser causa de inquietação, pois geralmente cedem entre 3 e 10 dias.</li><li style="text-align: justify;">Mau-hálito – É comum ocorrer, e cede entre 7 e 14 dias.</li><li style="text-align: justify;">Vômitos – Podem ocorrer algumas vezes, no dia da cirurgia, constituídos de sangue, mas sem significado de gravidade.</li><li style="text-align: justify;">Hemorragia – Representa o maior risco desta cirurgia, podendo ocorrer até 10 dias após a mesma, sendo mais freqüente em pequeno volume e, mais raramente, em maior volume, podendo levar até a necessidade de nova cirurgia com anestesia geral e transfusão sanguínea.</li><li style="text-align: justify;">Infecção – Pode ocorrer na região operada, causada por germes normais da faringe e, geralmente, regride sem antibióticos.</li><li style="text-align: justify;">Voz anasalada (fanhosa) e refluxo de líquidos – Podem ocorrer nos primeiros dias desaparecendo sozinhos.</li></ul><p style="text-align: justify;">Quais são os cuidados no pós-operatório?</p><p style="text-align: justify;">Após a operação, aparecem no local da cirurgia placas brancas (fibrina). Essas placas não são sinais de infecção, e sim a evolução normal da cicatrização da mucosa da faringe. Deve-se tomar cuidado com essas placas para que elas não se desprendam bruscamente para evitar sangramento. Por isso, é conveniente:</p><ul><li style="text-align: justify;">Repouso relativo após a cirurgia, evitando os exercícios bruscos.</li><li style="text-align: justify;">Evitar manobras na boca que podem levar a desprendimentos das placas\r\n(higiene dental posterior, bochechos vigorosos).</li><li style="text-align: justify;">Há medicamentos com a aspirina que interfere com a coagulação, procurar evitá-los antes e após a cirurgia.</li></ul><p style="text-align: justify;">Dieta (alimentação) após a cirurgia:</p><p style="text-align: justify;">1º dia: somente líquidos, ao natural ou gelado (leite, chá, sorvete, caldos, sucos de frutas não-ácidas).</p><p style="text-align: justify;">2º e 3º dias: líquidos e alimentos pastosos: frio ou natural (chá, café, mingaus ralos, caldos, leite, suco de frutas, gemadas, etc).</p><p style="text-align: justify;">4º, 5º e 6º dias: líquidos e alimentos pastosos: sopa de massa fina, mingaus, arroz mole com caldo de feijão, purê de batata, canja de galinha). Evite comer pão torrado ou outro alimento capaz de ferir a garganta. Retornar ao pouco a alimentação costumeira na medida do possível.<br></p>', '2017-11-22 17:36:23'),
(22, 4, 'Biópsias nasais e bucais', 'biopsias-nasais-e-bucais', '023a289035209410b05b65f45ca4e57d.jpg', 'Biópsia (ou biopsia) é o procedimento cirúrgico no qual se colhe células ou um pequeno fragmento de tecido orgânico para serem submetidos a estudo em laboratório, visando determinar a natureza e o grau da lesão estudada. Também podem ser examinados líquidos, secreções e outros materiais orgânicos. Praticamente todos os órgãos e componentes corporais podem ser biopsiados: músculos, pele, ossos, líquidos, secreções, etc. O termo biópsia vem do grego, bios = vida e opsis = aparência, visão.', '<p style="text-align: justify; ">O que é biópsia?</p><p style="text-align: justify;">Biópsia (ou biopsia) é o procedimento cirúrgico no qual se colhe células ou um pequeno fragmento de tecido orgânico para serem submetidos a estudo em laboratório, visando determinar a natureza e o grau da lesão estudada. Também podem ser examinados líquidos, secreções e outros materiais orgânicos. Praticamente todos os órgãos e componentes corporais podem ser biopsiados: músculos, pele, ossos, líquidos, secreções, etc. O termo biópsia vem do grego, bios = vida e opsis = aparência, visão.</p><p style="text-align: justify;">Quais são as indicações para se fazer uma biópsia?</p><p style="text-align: justify;">Os exames de imagem fornecem uma visão da morfologia ou funcionalidade dos órgãos ou de partes do corpo e os exames bioquímicos oferecem algumas comprovações indiretas do funcionamento intrínseco deles, no entanto, a morfologia das células e tecidos depende de uma análise microscópica de amostras retiradas das pessoas. Assim, o mais comum é proceder-se à biópsia naquelas pessoas com suspeitas diagnósticas de doenças que podem provocar alterações morfológicas nas células e tecidos, como os tumores, por exemplo, ou para estabelecer um diagnóstico diferencial entre enfermidades assemelhadas. Esse exame diagnóstico é indicado tanto em enfermidades simples, como as verrugas, como nas mais graves, como o câncer.&nbsp;</p><p style="text-align: justify;">Embora o termo biópsia sempre desperte certa apreensão nas pessoas, a maioria delas revela situações simples e benignas. Em doenças infecciosas a biópsia pode ajudar a determinar o agente causal. Em doenças autoimunes uma biópsia ajuda a confirmar ou informar as alterações esperadas em órgãos ou tecidos. Uma biópsia também pode ajudar a avaliar a gravidade da lesão e a evolução do tratamento. Em lesões de malignidade suspeita ou confirmada, as biópsias ajudam a estabelecer o grau histológico de neoplasia e a determinar a natureza, taxa de crescimento e agressividade do tumor, ajudando a elaborar o plano do tratamento e a prever o prognóstico da doença.</p><p style="text-align: justify;">Quais são as complicações possíveis da biópsia?</p><p style="text-align: justify;">De uma maneira geral as biópsias são procedimentos simples, realizados em ambulatório, mas algumas podem demandar internações. As complicações dependem do tipo de intervenção, mas num sentido geral pode ocorrer agravamento de lesões por excesso de manipulação, hemorragias, infecções e/ou formação de fístulas.</p><p style="text-align: justify;">Como se realiza uma biópsia?</p><p style="text-align: justify;">Em geral as biópsias são realizadas sem necessidade de internação. Apenas em poucos casos a hospitalização pode se impor. Uma biópsia bem feita começa com uma adequada coleta do material. O profissional deve escolher a melhor área da lesão a ser biopsiada, a extensão correta de coleta e o material a ser colhido. O material colhido deverá ser conservado em solução de formol e posteriormente enviado a um laboratório de patologia, para avaliação e emissão de um laudo histopatológico.&nbsp;</p><p style="text-align: justify;">Os prazos necessários para que se possa produzir esses laudos variam de acordo com o tipo de lesão, do material a ser analisado e o procedimento técnico adotado. O prazo médio oscila entre sete e quatorze dias, podendo chegar a um mês em casos de exames mais sofisticados.</p><p style="text-align: justify;">Para que serve uma biópsia?</p><p style="text-align: justify;">Uma biópsia serve para esclarecer um diagnóstico se ainda restarem dúvidas depois da história clínica, exame físico, dados bioquímicos e de imagens. Em casos de tumores, além de definir o diagnóstico, podem estabelecer a malignidade ou não deles e o grau histológico em que se encontram.<br></p>', '2017-11-22 17:36:43');
INSERT INTO `cirurgias` (`id`, `categorias_cirurgias_id`, `titulo`, `nome_url`, `imagem`, `texto_breve`, `texto`, `data`) VALUES
(23, 4, 'Frenectomia Labial e lingual', 'frenectomia-labial-e-lingual', '5bd0ad84c9426dc64467a2973c5d9102.jpg', 'Frenectomia é a designação atribuída a uma pequena cirurgia que consiste em cortar e remover o freio, que é uma “prega” fina de tecido fibroso (tipo membrana), presente na boca. Em alguns casos, torna-se suficiente seccionar ou cortar parcialmente esse freio, visando alterar apenas o nível da sua inserção nos tecidos moles, por forma a dividi-lo ou reduzir o seu tamanho, sendo que neste caso passamos a denominar esta pequena operação cirúrgica de frenotomia, em vez de frenectomia.', '<p style="text-align: justify;">O que é frenectomia?<br></p><p style="text-align: justify;">Frenectomia é a designação atribuída a uma pequena cirurgia que consiste em cortar e remover o freio, que é uma “prega” fina de tecido fibroso (tipo membrana), presente na boca.&nbsp;</p><p style="text-align: justify;">Em alguns casos, torna-se suficiente seccionar ou cortar parcialmente esse freio, visando alterar apenas o nível da sua inserção nos tecidos moles, por forma a dividi-lo ou reduzir o seu tamanho, sendo que neste caso passamos a denominar esta pequena operação cirúrgica de frenotomia, em vez de frenectomia.</p><div style="text-align: justify;">Existem basicamente 2 tipos de freios:</div><div style="text-align: justify;"><br></div><ol><li style="text-align: justify;"><b>Freios labiais</b> (superior e inferior), localizados na linha mediana, sendo visíveis quando levantamos o lábio superior ou baixamos o inferior, e que se estendem desde o interior do lábio até à gengiva vestibular (frontal), tanto no maxilar superior como no inferior;</li><li style="text-align: justify;"><b>Freio lingual</b>, localizado no ventre da língua (por baixo da língua), e que se insere desde a língua ao soalho da boca.</li></ol><p style="text-align: justify;">Consoante o tipo de freio, denominamos de frenectomia lingual, no caso de secção do freio lingual, e frenectomia labial no caso dos freios labiais. No caso desta subdividimos em frenectomia labial superior, que como o próprio nome indica, é realizada no freio do lábio superior, e frenectomia labial inferior, que como o próprio nome indica, aquela que é efetuada no freio do lábio inferior.</p><p style="text-align: justify;">Lateralmente aos freios labiais, podem ainda existir outras “pregas” fibrosas mais largas, chamadas de bridas, que são em quase tudo semelhantes aos freios. Diferem apenas na sua localização e dimensão em largura, que pode variar de alguns mm a 1 cm, por sua vez os freios geralmente não têm mais que 1 a 2 mm.</p><p style="text-align: justify;">Indicações:</p><p style="text-align: justify;">A cirurgia de Frenectomia é indicada nas seguintes situações, consoante o tipo de freio considerado, a saber:</p><p style="text-align: justify;">Frenectomia labial</p><p style="text-align: center; "><img src="http://staticr1.blastingcdn.com/media/photogallery/2017/1/28/660x290/b_586x276/freio-labial-com-baixa-insercao-na-denticao-mista-https-goo-gl-images-x6rbqu_1117623.jpg" alt="Resultado de imagem para Frenectomia labial"></p><ul><li style="text-align: justify;">Presença de diastema interincisivo (dentes separados devido a espaço entre os dois incisivos centrais), associado à presença entre os mesmos de fibras do freio com inserção baixa, ao nível da papila interdentária, impedindo assim o fecho natural desse espaço;</li><li style="text-align: justify;">Eventual limitação da mobilidade do lábio, resultante de uma inserção muito baixa do freio labial;</li><li style="text-align: justify;">Motivos estéticos, principalmente nas situações de sorriso alto, ou seja, quando a pessoa expõe, ao sorrir, uma maior porção de gengiva, o chamado sorriso gengival;</li><li style="text-align: justify;">Alterações da fonética (normalmente associadas à presença de um diastema de grande dimensão);</li><li style="text-align: justify;">Quando interfere com a correção ortodôntica (ortodontia);</li><li style="text-align: justify;">Quando interfere na estabilidade e retenção de próteses dentárias.</li></ul><p style="text-align: justify;">Frenectomia lingual</p><p style="text-align: center;"><img src="https://fortissima.com.br/wp-content/uploads/2013/07/lan-5-300x295.jpg" alt="Resultado de imagem para Frenectomia lingual"></p><ul><li style="text-align: justify;">Limitação dos movimentos da língua quando o freio é muito curto, inserindo-se muito perto da ponta da língua;</li><li style="text-align: justify;">Alterações da fala (fonética), pelo mesmo motivo;</li><li style="text-align: justify;">Transtornos ou dificuldade na mastigação, também pelo mesmo motivo;</li><li style="text-align: justify;">Lesões traumáticas, resultantes do “roçar” do freio nos incisivos inferiores, devido à grande proximidade entre as duas estruturas.</li></ul><p style="text-align: justify;">Os casos de freio lingual muito curto que fazem a língua ficar “presa” (anquiloglosia), são mais prevalentes nos recém-nascidos e lactantes, podendo causar-lhes transtornos na alimentação, incluindo na sucção, pelo que a frenectomia lingual em bebe é um procedimento muitas vezes necessário para corrigir estas limitações. Se o problema for corretamente diagnosticado, a cirurgia pode realizar-se independentemente da idade, desde que o bebé não apresente qualquer contraindicação específica para o fazer.</p><p style="text-align: justify;">Já quanto à idade ideal para se realizar a frenectomia labial, existem algumas considerações a ter em conta, pois existem situações que logo aos 2 anos de idade é possível identificar situações bem marcadas de um freio mais hipertrofiado (mais grosso) que o normal, de reservado prognóstico de regressão, pelo que nestes casos poder-se-á desde logo considerar a realização da cirurgia. Contudo, existem situações em que um freio anormal entre os 2 e os 4 anos, pode evoluir naturalmente para uma situação normal aos 8 ou 9 anos, consequência do natural alongamento da língua, pelo que muitas vezes se fica na expetativa, aguardando-se a possível e natural regressão do freio, a menos que hajam fortes evidências de que o impedimento do fecho de diastemas interincisivos seja causado por esse freio labial, e que isso esteja a implicar algum tipo de transtorno.</p><p style="text-align: justify;">Assim sendo, torna-se algo discutível indicar com exatidão a partir de que idade se deve efetuar a frenectomia labial, havendo contudo alguma concordância de que este procedimento pode ou deve, esperar pela erupção completa dos dentes caninos, o que ocorre por norma entre os 11 e os 13 anos de idade. Estes dentes vão exercer forças mesiais que poderão fazer com que o freio se afaste da região interincisiva, promovendo o fecho natural dos diastemas.</p><p style="text-align: justify;">Veja de seguida, passo a passo, como é realizada a cirurgia.</p><p style="text-align: justify;">Como é realizada a cirurgia?</p><p style="text-align: justify;">A cirurgia de Frenectomia é geralmente simples e possível de ser feita através de duas formas distintas, que passamos a descrever:</p><p style="text-align: justify;"><b>Cirurgia convencional</b> - é realizada com bisturi normal ou convencional, sendo feitas incisões para corte ou secção do freio, no sentido de o remover parcial ou totalmente. Após este procedimento, é efetuada a sutura dos tecidos moles, com pontos reabsorvíveis ou não reabsorvíveis, sendo que estes últimos terão que ser posteriormente removidos (entre 7 a 10 dias).</p><p style="text-align: justify;"><b>Cirurgia convencional</b> - é realizada com bisturi normal ou convencional, sendo feitas incisões para corte ou secção do freio, no sentido de o remover parcial ou totalmente. Após este procedimento, é efetuada a sutura dos tecidos moles, com pontos reabsorvíveis ou não reabsorvíveis, sendo que estes últimos terão que ser posteriormente removidos (entre 7 a 10 dias).</p><p style="text-align: justify;">A cirurgia de frenectomia, independentemente do método ou técnica cirúrgica utilizada, não implica dor, pois a operação é realizada sob anestesia local e o pós-operatório, por norma, também não implica qualquer sintomatologia relevante.</p><p style="text-align: justify;">Riscos e complicações:</p><p style="text-align: justify;">A frenectomia é uma cirurgia que apresenta riscos reduzidos, no entanto podem ocorrer algumas complicações pós-operatórias, como por exemplo, dor, pequenas hemorragias ou sangramento excessivo (principalmente na frenectomia lingual), edema, inflamação ou infeção (ainda que raramente), entre outras de menor relevo.</p><p style="text-align: justify;">Durante o ato cirúrgico, para além da possibilidade de sangramento excessivo, pode haver um risco de lesão de estruturas vizinhas, (principalmente nos casos de frenectomia lingual), se a técnica for executada de forma incorreta.&nbsp;</p><p style="text-align: justify;">De qualquer forma, estes riscos e complicações são por norma reversíveis, não deixando sequelas dignas de registo.</p><p style="text-align: justify;">Pós-operatório:</p><p class="Corpo" style="text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%"><span lang="PT" style="font-family:" arial","sans-serif";="" mso-bidi-font-family:"arial="" unicode="" ms""="">De um modo geral, a recuperaçã</span><span lang="IT" style="font-family:" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";="" mso-ansi-language:it"="">o da cirurgia de frenotomia </span><span lang="FR" style="font-family:" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";="" mso-ansi-language:fr"="">é </span><span lang="PT" style="font-family:" arial","sans-serif";="" mso-bidi-font-family:"arial="" unicode="" ms""="">rápida, não necessitando o doente de\r\nefetuar repouso <span class="Nenhum"><b>p</b></span></span><span class="Nenhum"><b><span lang="ES-TRAD" style="font-family:" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";="" mso-ansi-language:es-trad"="">ó</span></b></span><span class="Nenhum"><b><span lang="NL" style="font-family:" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";="" mso-ansi-language:nl"="">s operat</span></b></span><span class="Nenhum"><b><span lang="ES-TRAD" style="font-family:" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";="" mso-ansi-language:es-trad"="">ó</span></b></span><span class="Nenhum"><b><span style="font-family:" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";="" mso-ansi-language:pt-br"="">rio</span></b></span><span lang="PT" style="font-family:\r\n" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms""="">. Pode, portanto,\r\nretomar as suas atividades imediatamente ap</span><span lang="ES-TRAD" style="font-family:" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";="" mso-ansi-language:es-trad"="">ó</span><span lang="PT" style="font-family:" arial","sans-serif";="" mso-bidi-font-family:"arial="" unicode="" ms""="">s a cirurgia, desde que obedeça a\r\nalguns cuidados no p</span><span lang="ES-TRAD" style="font-family:" arial","sans-serif";="" mso-bidi-font-family:"arial="" unicode="" ms";mso-ansi-language:es-trad"="">ó</span><span lang="NL" style="font-family:" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";="" mso-ansi-language:nl"="">s operat</span><span lang="ES-TRAD" style="font-family:\r\n" arial","sans-serif";mso-bidi-font-family:"arial="" unicode="" ms";mso-ansi-language:="" es-trad"="">ó</span><span lang="PT" style="font-family:" arial","sans-serif";="" mso-bidi-font-family:"arial="" unicode="" ms""="">rio, por forma a reduzir o tempo de\r\nrecuperação, favorecendo assim a cicatrização, nomeadamente:</span></p><p class="Corpo" style="text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%"><span lang="PT" style="font-family:" arial","sans-serif";="" mso-bidi-font-family:"arial="" unicode="" ms""=""></span></p><ul><li style="text-align: justify; line-height: 19.5px;"><span lang="PT">Evitar alimentos duros nos primeiros dias (preferir alimentos algo pastosos), principalmente nos casos de frenectomia lingual;</span></li><li style="text-align: justify; line-height: 19.5px;"><span lang="PT">Evitar alimentos muito quentes nos primeiros dois dias pelo menos, sendo que após a cirurgia é também benéfica a aplicação local de frio (bolsa de gelo por ex.), nos casos de frenectomia labial;</span></li><li style="text-align: justify; line-height: 19.5px;"><span lang="PT">Redobrar os cuidados de higiene oral, sendo que a zona da cirurgia deve ser escovada com pouca pressão e com escovas adequadas para o efeito (com cerdas muito suaves), complementado com bochechos de soluções antissépticas;</span></li><li style="text-align: justify; line-height: 19.5px;"><span lang="PT">Tomar devidamente a medicação prescrita pelo médico dentista (normalmente analgésicos e/ou anti-inflamatórios).</span></li></ul><p style="text-align: justify; line-height: 150%;"><span lang="PT" style=""><font face="Arial, sans-serif"><br></font><br></span><span class="Nenhum"><span lang="PT" style="font-family: Arial, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><o:p></o:p></span></span></p><p style="text-align: left;"><br></p><p class="Corpo" style="text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%"><span lang="PT" style="font-family:" arial","sans-serif";="" mso-fareast-font-family:arial"=""><o:p></o:p></span></p>', '2017-11-22 17:37:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clinica`
--

CREATE TABLE `clinica` (
  `id` int(11) NOT NULL,
  `titulo_introducao` text NOT NULL,
  `texto_introducao` text NOT NULL,
  `titulo_segunda_parte` text NOT NULL,
  `texto_segunda_parte` text NOT NULL,
  `titulo_collapse` text NOT NULL,
  `imagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clinica`
--

INSERT INTO `clinica` (`id`, `titulo_introducao`, `texto_introducao`, `titulo_segunda_parte`, `texto_segunda_parte`, `titulo_collapse`, `imagem`) VALUES
(1, ' Cupiditate? Tempus quidem, vestibulum! Est? At minus quia augue au', 'taciti impedit veniam consequuntur tempora cras torquent dolor. Soluta odio tortor placerat, sequi luctus quis impedit iure sollicitudin, iure eu proident a sem at blandit, mattis veritatis officiis dolore eveniet quo, quo, culpa occaecat rem, lacinia hac, iure laoreet cubilia? Luctus sapien iusto doloribus, viverra aliquip. Sunt cupiditate aenean maecenas vestibulum dolor, lobortis eleifend voluptatem quidem', 'tus! Anim repellat imp', 'bh porttitor ullam ex, gravida metus! Anim repellat impedit magna? Dis class nisl urna laborum enim, augue quae! Inventore expedita, dolores dictumst possimus ut nonummy venenatis veniam, facilisis. Soluta mollit? Iste, placerat fuga, ante est ', 'asd', '5188895eae21c6727f902485f7bedafe.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `convenios`
--

CREATE TABLE `convenios` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `convenios`
--

INSERT INTO `convenios` (`id`, `titulo`, `imagem`, `data`) VALUES
(1, 'Amagis saúde', '734eec165d8df5fefb74381fddb34b1f.jpg', '2017-11-17 17:40:51'),
(2, 'Amil', 'd1ae4bd898c7264a474cf99b252f1101.jpg', '2017-11-17 17:41:00'),
(3, 'Amma', '5969cb75ccbff8b1046a5dcd2750e81e.jpg', '2017-11-17 17:41:10'),
(4, 'Assefaz', '9711d539b331c507b233a158d9e2ea47.jpg', '2017-11-17 17:41:23'),
(5, 'Assist card', '7c2124c17aec55ada81910ff9a717dd4.jpg', '2017-11-17 17:41:34'),
(6, 'Bradesco saúde', '2220b1283e030597db8b1155fda76cd5.jpg', '2017-11-17 17:41:43'),
(7, 'Cabefe', 'fba6bc84d8b1bbe2818027b41350801e.jpg', '2017-11-17 17:41:55'),
(8, 'Caixa', '56191b2ffa0df310f1ae349d3e6df49e.jpg', '2017-11-17 17:42:08'),
(9, 'Camed', 'e72cfa32714837be304f47ed8edb451e.jpg', '2017-11-17 17:42:16'),
(10, 'Capesesp', 'cc31cddde4c98adb6c48811c0e9f6527.jpg', '2017-11-17 17:42:33'),
(11, 'Casec', 'd097ce3785bbd4fd45b50eae7e7a0dea.jpg', '2017-11-17 17:42:47'),
(12, 'Casembrapa', 'e8522f4687f45fba2c4e6893262dd51c.jpg', '2017-11-17 17:43:00'),
(13, 'Cassi', 'e89a5cdc0bf486f241af5b0e43bbb892.jpg', '2017-11-17 17:43:11'),
(14, 'Casu', '448f0c135eac872673bba753aea22c32.jpg', '2017-11-17 17:43:21'),
(15, 'Cemig', 'cdba76253f7688a29bd4793c6a4b4784.jpg', '2017-11-17 17:43:30'),
(16, 'Cis', 'a05e3fa0c57bbada27a4867912caee20.jpg', '2017-11-17 17:43:39'),
(17, 'Capass', '410ba776f6e27c3796a97c443978deb8.jpg', '2017-11-17 17:43:53'),
(18, 'Funasa', '97d694c2def67b17aca9e43578a47e49.jpg', '2017-11-17 17:44:06'),
(19, 'Fundaffemg', '9acabf585eec0e5847c2bc270e890c2b.jpg', '2017-11-17 17:47:54'),
(20, 'Fusex', 'eb8e388e7dcd539cfa71e0a77c8720a9.jpg', '2017-11-17 17:48:23'),
(21, 'Gama', 'a2299cb243f45b68b8759ad2c3ecbcd9.jpg', '2017-11-17 17:48:34'),
(22, 'Geap', '36e367d8dca906e776c01ce80fec2848.jpg', '2017-11-17 17:48:44'),
(23, 'INB', 'a3a70bff4a757d32caba5e44487751fe.jpg', '2017-11-17 17:48:56'),
(24, 'Itau', '05df7901c49230e5984973db875fb2fd.jpg', '2017-11-17 17:49:47'),
(25, 'Life', '30e0c1386d65ac01e848b5e94d54c2a1.jpg', '2017-11-17 17:50:56'),
(26, 'Mapfre', '5a94efad7fedc8387198596459e71e7f.jpg', '2017-11-17 17:51:26'),
(27, 'Mondial', 'a10588e3116a85a934165d07bce8b40c.jpg', '2017-11-17 17:52:13'),
(28, 'Petrobras', 'e2d6db97fdfa36e27fc48dae9fc9a082.jpg', '2017-11-17 17:52:28'),
(29, 'PMMG', '225351ca8ca9bee76a37e8ae12da071d.jpg', '2017-11-17 17:52:43'),
(30, 'Postal Saúde', '4cab0b334161eb303910007110d744cc.jpg', '2017-11-17 17:52:54'),
(31, 'Promed', 'a86220e1c32d06d06994aa679773c5be.jpg', '2017-11-17 17:53:29'),
(32, 'Prevminas', '841c83479ebb8d998b67f98072df89d3.jpg', '2017-11-17 17:56:02'),
(33, 'Proasa', 'cdc61ea73bdab8747f4f7938428bc1c7.jpg', '2017-11-17 17:56:26'),
(34, 'Samp', '13c302d2e71cbc35a124b3206939436c.jpg', '2017-11-17 17:56:44'),
(35, 'Santa casa familia', '6189255a96f085c8037faf1e5b4a2903.jpg', '2017-11-17 17:56:57'),
(36, 'Saúde sistema', '149a76a9ecccc137ccc0f986cece11dd.jpg', '2017-11-17 17:57:14'),
(37, 'Unafisco', 'aff089dd65ab95be38aad6b6d7e6f492.jpg', '2017-11-17 17:57:32'),
(38, 'Unimed', '1b5366a9e1bf45f06c4b5632d1e64705.jpg', '2017-11-17 17:57:54'),
(39, 'Vitallis', 'ae0466c832a9370171f56a206dc6d523.jpg', '2017-11-17 17:58:02'),
(40, 'Vivamed', 'f6b6846616553c8b507c77b83aaa6995.jpg', '2017-11-17 17:58:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `corpo_clinico`
--

CREATE TABLE `corpo_clinico` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `imagem` text NOT NULL,
  `texto` text NOT NULL,
  `profissao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `corpo_clinico`
--

INSERT INTO `corpo_clinico` (`id`, `titulo`, `imagem`, `texto`, `profissao`) VALUES
(5, 'Dixie Armstrong', '9cf4621ad28a81473d4da2af577e0e72.jpg', '<p>m imperdiet, deleniti reprehenderit odio non, torquent, illo, rutrum, congue nostrum! Eligendi asperiores pariatur, dolorem!<br></p>', 'Cirurgião'),
(6, 'João Bertolucci', 'e96d76ca860a4a28ed0df54c48ae20ac.png', '<p>Quia praesent aenean? Tempor dolorem molestias, rutrum in distinctio enim perferendis convallis, nostrud voluptas, nisi cubilia gravida malesuada distinctio ullamcorper gravida varius fuga massa taciti, similique nesciunt leo, culpa exercitationem, nibh commodi mattis mi consectetuer aliquam, esse nam consequat! Sint<br></p>', 'Cardiologista'),
(7, 'Angela Tarantino', '80ca0cc192964145adbc709c302eceb4.png', '<p>nulla, aliquip accusamus! Veniam vehicula egestas. Sunt. Accusantium eius iaculis scelerisque atque laboriosam aliqua morbi, consequuntur pellentesque pulvinar fuga, nascetur convallis. Voluptatibus blandit aliquip vitae?<br></p>', 'Cirurgiã'),
(8, 'Júlia Guerra', 'be50e88c91329c95ff89a30d3e67b965.png', '<p>Eiusmod, ultricies, duis ullamcorper dolor dictumst! Vulputate optio cupidatat aptent! Reiciendis rerum in risus? Placerat porro nostrud nostrud? Rem nostra felis eligendi! Ducimus saepe, dolorem laboriosam provident assumenda, nisl recusandae?<br></p>', 'Cardiologistas'),
(9, 'João Cardoso', '562891bc26a766a87237fc42a42fedda.png', '<p>iaculis explicabo rutrum ipsum, tempor, accusantium natus eleifend diamlorem sodales pede architecto mus varius, nullam libero primis exercitationem porttitor, fringilla cum veniam?</p><div><br></div>', 'Atendente'),
(10, 'Zeca Oliveira', 'd0f8460e2ba7e59090831fcda9b6e6b5.png', '<p>Voluptas! Amet cubilia blandit elementum maiores nisi tenetur enim venenatis, Voluptas! Amet cubilia blandit elementum maiores nisi tenetur enim venenatis, Voluptas! Amet cubilia blandit elementum maiores nisi tenetur enim venenatis<br></p>', 'Cirurgião'),
(11, 'josé Rodrigues', '62df285de29181f14108fc528ec36a4f.png', '<p>e, ea netus massa culpa tempore ullamco tempus nisi provident consectetuer, animi doloribus? Quod nesciunt sapiente sociosqu vestibulum porttitor soluta veniam! Consequatur metus deserunt fringilla. Pariatur gravida assumenda fugiat consequat accusamus. Consectetuer sit maiores arcu, omnis rhoncus, exer<br></p>', 'Cirurgião');

-- --------------------------------------------------------

--
-- Estrutura da tabela `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `texto` text NOT NULL,
  `detalhes` text NOT NULL,
  `imagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `especialidades`
--

INSERT INTO `especialidades` (`id`, `titulo`, `texto`, `detalhes`, `imagem`) VALUES
(2, 'Cirurgia Cardíaca', ' Porttitor, in veniam, magnam facilisi? Minima voluptatum ', '<p></p><p>&lt;p&gt;Massa exercitationem laoreet nisi aspernatur sociosqu iusto turpis eum dui augue montes imperdiet repudiandae dis tristique nihil sociosqu. Error. Porttitor, in veniam, magnam facilisi? Minima voluptatum ligula duis scelerisque vestibulum, et natus, nostrud, eu, commodi officiis felis malesuada arcu cras! Minus feugiat, minus sociosqu, interdum ligula, curabitur wisi, excepturi parturient libero diam lacus magna, eius consequuntur, ea dictumst convallis laudantium. Magnam lacus, primis sem autem placerat consequatur mauris pellentesque! Ullamcorper consectetuer habitant, ullam eos commodo faucibus mauris dolores maiores quam maxime pharetra ratione libero, accumsan, consequuntur eveniet assumenda dolores penatibus. Vulputate repellat incidunt doloribus quia litora beatae, convallis nostrum magna.&lt;/p&gt;<br></p>', '91d95b6857fa490e611331ce22212adb.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_clinica`
--

CREATE TABLE `itens_clinica` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itens_clinica`
--

INSERT INTO `itens_clinica` (`id`, `titulo`, `descricao`) VALUES
(10, 'asad', 'asdas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`) VALUES
(1, 'marcosvsoaress@gmail.com'),
(2, 'teste@celular.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `nome_url` varchar(255) DEFAULT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `texto` mediumtext,
  `data` datetime DEFAULT NULL,
  `texto_breve` varchar(500) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `nome_url`, `imagem`, `texto`, `data`, `texto_breve`, `autor`) VALUES
(2, 'Como escolher o seu cirurgião  da face,  aspectos essenciais', 'como-escolher-o-seu-cirurgiao-da-face-aspectos-essenciais', 'ca98082264c8e326af52fe017430aca2.jpg', '<p class="Corpo" style="text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%"><span style="font-size: 14px;">A face humana é extremamente complexa devido às estruturas anatômicas nobres que a compõem. Além da identidade humana, externa os nossos sentimentos e serve de interface para interação com o mundo exterior. </span></p><p class="Corpo" style="text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%"><span style="font-size: 14px;">Ao escolher seu cirurgião da face é necessário que você conheça sua formação, quais especializações possui, se participa de cursos de atualização e se tem experiência naquela cirurgia que vc deseja realizar.</span></p><p class="Corpo" style="text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%"><span style="font-size: 14px;">A medicina encontra-se extremamente especializada, sendo que, existem profissionais que se dedicam à areas específicas do corpo humano. Isto permite um melhor entendimento das indicações, técnicas cirúrgicas e melhor controle dos resultados.</span></p><p class="Corpo" style="text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%"><span style="font-size: 14px;">Pensando nisto, fiz toda a minha formação voltada para a face e estudo da harmonia facial. Cirurgia é coisa muito séria!</span></p><p class="Corpo" style="text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%"><span style="font-size: 14px;">Consulte seu cirurgião da face e confie sua face à um especialista!</span></p>', '2017-10-11 15:15:52', 'A face humana é extremamente complexa devido às estruturas anatômicas nobres que a compõem. Além da identidade humana, externa os nossos sentimentos e serve de interface para interação com o mundo exterior. ', 'Dr. Bruno'),
(3, 'Enfrentando o medo antes da Rinoplastia', 'enfrentando-o-medo-antes-da-rinoplastia', '44901acb84d6f517a867e081747aa71f.jpg', '<p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;">A rinoplastia ou cirurgia plástica do nariz é um procedimento que pode ser realizado por diversas técnicas. Ela pode ser realizada com anestesia local e sedação ou anestesia geral. Além disso, a cirurgia pode ser feita com técnica aberta, semi-aberta ou fechada, cada uma com suas indicações, vantagens e desvantagens. </p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;">Normalmente este procedimento dura entre 2 e 4 horas, dependendo de cada caso. Os curativos são removidos em 7 dias e normalmente, os resultados definitivos são observados entre 6 meses a 01 ano. A rinoplastia geralmente não apresenta um pós-operatório doloroso, apenas o inconveniente de ficar um pouco obstruído nas primeiras semanas devido a formação de crostas nasais temporárias.</p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;">O planejamento é fundamental e, além da estética, lembre-se: VOCÊ TEM QUE RESPIRAR!!! Por isso operar seu nariz com um médico que conheça bem sobre o nariz é fundamental!</p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;">Consulte seu cirurgião facial e discuta sobre o melhor plano de tratamento para você. Só assim você estará preparado e confiante para sua rinoplastia!</p>', '2017-10-11 16:24:00', 'A rinoplastia ou cirurgia plástica do nariz é um procedimento que pode ser realizado por diversas técnicas. Ela pode ser realizada com anestesia local e sedação ou anestesia geral. Além disso, a cirurgia pode ser feita com técnica aberta, semi-aberta ou fechada, cada uma com suas indicações, vantagens e desvantagens. ', 'Dr. Bruno'),
(4, 'O que devo saber sobre Otoplastia', 'o-que-devo-saber-sobre-otoplastia', '9f75a81eac2355971de42c95b9ee0410.jpg', '<p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">A otoplastia é uma cirurgia estética para correção do tamanho e formato das orelhas. O problema a ser corrigido é a famosa “orelha de abano”, que muitas crianças têm e que pode causar problemas de convívio social, pois acaba se tornando motivo de bullying e de dificuldades no relacionamento durante a infância e adolescência. A otoplastia é a cirurgia estética mais realizada em crianças e adolescentes.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Estima-se que cerca de 5% das crianças nascem com o problema, que é uma alteração congênita.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">A idade mínima recomendada para o procedimento é 6 anos, quando a orelha já atingiu o crescimento mais significativo. Mas é recomendado que a cirurgia não seja imposta para a criança e, sim, que seja um desejo dela, apoiado pelos pais. Por este motivo, muitas vezes ela não acontece durante a infância, mas depois, quando chega a adolescência e os problemas sociais se tornam mais aparentes e começam a incomodar mais.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">O mais importante na decisão, além de ter que partir do próprio paciente, é que exista uma conversa franca entre o médico de confiança – otorrinolaringologista ou cirurgião plástico da face, paciente e família. Harmonizadas as expectativas e reais possibilidades de resultados, é hora de saber todos os detalhes sobre a cirurgia:</p><ul><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">O adolescente deve ser informado sobre a técnica utilizada; local da cicatriz cirúrgica; tipo de anestesia; tempo para retirada dos pontos; tempo de internação e recuperação pós-cirúrgica.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">Os riscos anestésicos são pequenos. A cirurgia pode ser feita com anestesia local. Mas, no caso dos adolescentes, é indicada a anestesia geral.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">A cirurgia deve ser realizada em hospitais ou clínicas especializadas, e é possível receber alta no mesmo dia.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">Após a cirurgia, o paciente permanece com um curativo “capacete” por um período de 24 horas, com o objetivo de proteger a região, diminuir os incômodos do pós-operatório e, ainda, prevenir a formação de hematomas e diminuir o inchaço.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">Após retirar o curativo, é recomendado que se utilize uma bandana ou faixa para dormir, com o objetivo de manter as orelhas na posição até a completa cicatrização durante 6 semanas.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">Outra dica para a redução do inchaço é dormir com a cabeceira da cama elevada, pois a cabeça na posição mais alta permite maior drenagem venosa.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">É bom que se evite dormir de lado, sobre as orelhas, nos primeiros dias após a cirurgia.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">Deve-se evitar, também, a exposição solar por dois meses após a cirurgia. O sol do dia a dia não tem implicações, mas é preciso evitar a exposição solar que pode bronzear.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">Para a sutura da pele, são utilizados fios absorvíveis e, por isso, não há necessidade de serem retirados. Há equipes que preferem utilizar fios que não são absorvíveis e, nesses casos, os pontos são retirados em 7 a 10 dias.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">As principais complicações que podem acontecer são: sangramento e hematoma, já que a orelha possui uma grande vascularização.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">O retorno às atividades escolares dever ser em 5 a 7 dias.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">A prática de exercícios físicos deve ser evitada por 3 semanas. Para esportes em que o contato físico é maior, como esportes coletivos, lutas etc., o tempo de afastamento é de dois meses.</li><li style="margin-bottom: 15px; padding: 0px; text-align: justify;">O resultado da cirurgia quanto à posição da orelha é observado no pós-operatório imediato. No entanto, a redução completa do inchaço ocorre por volta do 3º a 4º mês após a cirurgia.</li></ul>', '2017-10-11 16:25:18', 'A otoplastia é uma cirurgia estética para correção do tamanho e formato das orelhas. O problema a ser corrigido é a famosa “orelha de abano”, que muitas crianças têm e que pode causar problemas de convívio social, pois acaba se tornando motivo de bullying e de dificuldades no relacionamento durante a infância e adolescência. A otoplastia é a cirurgia estética mais realizada em crianças e adolescentes.', 'Dr. Bruno'),
(5, 'cirurgia das pálpebras', 'cirurgia-das-palpebras', '9147157e4dd56497b44129235158950d.jpg', '<p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">A cirurgia das pálpebras ou blefaroplastia se dedica à correção do excesso de pele ou gordura das pálpebras, geralmente após os 40 anos de idade. Ela visa devolver ao paciente uma região periocular menos cansada. Geralmente, o procedimento pode ser realizado sobre anestesia local e sedação e em casos específicos sob anestesia geral.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">A cirurgia pode durar entre 2 a 3 horas normalmente, dependendo da região operada e a internação hospitalar dura de 6 a 12 horas.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Normalmente este procedimento não provoca uma dor pós-operatória importante e se, presente, pode ser controlada com analgésicos comuns. Os olhos geralmente ficam inchados por cerca de 7 dias até duas semanas. Durante esse período, compressas frias podem diminuir o edema e o uso de óculos escuros ajuda na proteção dos olhos.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">O resultado definitivo vai aparecer após a terceira semana, geralmente no máximo em até 3 meses. Sempre confie seu rosto a um cirurgião da face!</p>', '2017-10-11 16:26:07', 'A cirurgia das pálpebras ou blefaroplastia se dedica à correção do excesso de pele ou gordura das pálpebras, geralmente após os 40 anos de idade. Ela visa devolver ao paciente uma região periocular menos cansada. Geralmente, o procedimento pode ser realizado sobre anestesia local e sedação e em casos específicos sob anestesia geral.', 'Dr. Bruno'),
(6, 'Cuidados com a Rinoplastia em Nariz Negróide', 'cuidados-com-a-rinoplastia-em-nariz-negroide', '537fa0c5b952286ad92e2811468ae92a.jpg', '<p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">A pele negra apresenta características e cuidados especiais. O nariz negróide apresenta caraterísticas únicas como por exemplo a pele mais grossa, cartilagens alares mais largas e delicadas e um septo nasal mais curto. </p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Ao planejarmos uma rinoplastia nestes casos, todas essas informações devem ser levadas em consideração. Por exemplo, para uma ponta nasal mais definida, geralmente técnicas com enxerto nesta região devem ser usadas para melhorar a aparência desta região, pois a pele grossa esconde estes resultados. Estes narizes devem ser tratados com enxertos estruturadores para uma boa sustentação.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Planejar estes casos com parcimônia, conhecer as características raciais, individuais e os anseios do paciente podem proporcionar um nariz natural e com sua função preservada. </p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Confie sua face a um cirurgião facial!</p>', '2017-10-11 16:26:37', 'A pele negra apresenta características e cuidados especiais. O nariz negróide apresenta caraterísticas únicas como por exemplo a pele mais grossa, cartilagens alares mais largas e delicadas e um septo nasal mais curto. ', 'Dr. Bruno'),
(7, 'Cuidados com a pele do rosto', 'cuidados-com-a-pele-do-rosto', '19e20905d264befb6a7d7cbb958a9e43.jpg', '<p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Para garantir uma pele jovem e bonita, é preciso tomar alguns cuidados no dia a dia. Mantenha uma alimentação rica em vitaminas e minerais, beba bastante água e evite o cigarro. Além disso, siga uma rotina de limpeza e hidratação.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"=""><b>Rotina de cuidados com a pele:</b></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"=""><b>Lave o rosto</b><br></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Manter o rosto sempre livre de impurezas é fundamental para ter uma pele saudável.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Lavar o rosto duas vezes por dia é fundamental para manter a saúde da pele e evitar o entupimento dos poros, principal responsável pelo surgimento de cravos e espinhas. A primeira lavagem deve ser feita de manhã, eliminando a oleosidade natural produzida durante o sono, e a segunda no fim do dia, retirando poluição, impurezas e a maquiagem. Utilize sabonete neutro ou específico para o seu tipo de pele. Lavar o rosto mais do que duas vezes por dia não é recomendado, pois estimula a produção de oleosidade, assim como usar água muito quente.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"=""><b>Retire a maquiagem</b></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">A maquiagem obstrui os poros e impede a pele de respirar, atrapalhando essa etapa e promovendo o envelhecimento precoce da pele. Para deixar o rosto bem limpo, use um demaquilante adequado para o seu tipo de pele e finalize com um sabonete.<br></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"=""><b>Hidrate</b></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Tanto a pele seca quanto a pele oleosa precisam de hidratação para equilibrar a proteção de sebo. Pessoas com pele oleosa devem preferir produtos oil-free ou em gel, enquanto quem tem a pele seca pode apostar em produtos mais hidratantes.<br></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"=""><b>Protenção</b></p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">O sol é um dos principais responsáveis pelo envelhecimento precoce da pele, além de causar doenças sérias, como o câncer de pele. Por isso, proteger-se dele diariamente é fundamental para manter a pele sempre jovem e bonita. Aplique pela manhã, depois do hidratante, e reaplique durante a tarde para garantir a eficácia do produto.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: " open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="">Consulte seu dermatologista e sempre mantenha a saúde da sua pele em dia!</p>', '2017-10-11 16:27:04', 'Para garantir uma pele jovem e bonita, é preciso tomar alguns cuidados no dia a dia. Mantenha uma alimentação rica em vitaminas e minerais, beba bastante água e evite o cigarro. Além disso, siga uma rotina de limpeza e hidratação.', 'Dr. Bruno');

-- --------------------------------------------------------

--
-- Estrutura da tabela `procedimentos_esteticos`
--

CREATE TABLE `procedimentos_esteticos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `nome_url` varchar(255) DEFAULT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `texto` mediumtext,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `procedimentos_esteticos`
--

INSERT INTO `procedimentos_esteticos` (`id`, `titulo`, `nome_url`, `imagem`, `texto`, `data`) VALUES
(1, 'Toxina Botulínica (Botox ou Dysport)', 'toxina-botulinica-botox-ou-dysport', 'f43b6c5533fea4114701f3360126e414.jpg', '<p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;">A toxina botulínica, é uma toxina produzida por uma bactéria chamada Clostridium Botulinium. A substância é usada para correção de rugas e marcas de expressão. A toxina age paralisando o músculo e consequentemente impedindo a contração muscular, que é o que forma a ruga. Para as rugas que já existem, esse relaxamento da musculatura suaviza os vincos. A aplicação é indicada para as rugas da testa, a glabela (espaço entre as sobrancelhas), os “pés de galinha” e rugas ao redor dos olhos e outros locais da face.</span></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><span style="font-size: 14px;"><b>Como age a toxina botulínica?</b></span><br></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif">Quando injetada nas rugas, a toxina botulínica age bloqueando a transmissão de estímulos dos neurônios para os músculos, impedindo a contração muscular. Em geral as rugas aparecem devido ao envelhecimento facial, que ocorre por idade avançada, exposição solar sem proteção, má alimentação e tabagismo. Muitas pessoas também têm o hábito de franzir a testa ao se expressar, o que contribui para a formação das linhas de expressão.<br></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><b>Como atua?</b><br></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif">A toxina botulínica pode atuar de duas maneiras:</font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><b>De forma preventiva</b><font color="#1b1b1b" face="Raleway, sans-serif"><b>:</b> É a aplicação do produto antes mesmo do aparecimento de linhas de expressão. Como a contração muscular é paralisada, não haverá a formação de rugas por movimentação muscular na área que foi aplicado a toxina. Geralmente a aplicação preventiva é feita por volta dos 25 anos de idade, mas não existe uma idade certa.</font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><b>De forma corretiva:</b> Esse tipo de aplicação geralmente é realizada em torno dos 30 anos. Como a toxina tira a tensão da musculatura, as rugas causadas por esses músculos são amenizadas.<br></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><b>Como é feita a aplicação?</b><br></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif">A injeção é aplicada no tecido subcutâneo por agulhas bem finas e em pequenas quantidades, e provocam uma pausa nos impulsos nervosos. Porém, o efeito não é imediato, e as primeiras alterações começam a aparecer somente depois de três a sete dias.</font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><font color="#1b1b1b" face="Raleway, sans-serif"><b>Quanto tempo dura o seu efeito?</b></font></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;">Os efeitos duram, em média, de 4 a 6 meses. O período entre as sessões varia de paciente para paciente, e para que o resultado seja efetivo, é preciso fazer sempre uma manutenção.</p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;"><b>Quais os cuidados após a aplicação?</b><br></p><p open="" sans",="" arial,="" sans-serif;="" font-size:="" 14px;"="" style="margin-bottom: 15px; padding: 0px; text-align: justify;">Após a aplicação, a pele pode ficar um pouco sensível e inchada. Para evitar complicações, deve-se evitar a exposição direta ao sol, e usar filtro solar. É recomendado evitar a prática de atividades físicas no mesmo dia das aplicações. É importante não massagear a área, pois o efeito da aplicação pode ser reduzido.<br></p>', '2017-10-19 22:59:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `secao1`
--

CREATE TABLE `secao1` (
  `id` int(11) NOT NULL,
  `texto` text NOT NULL,
  `imagem` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `secao1`
--

INSERT INTO `secao1` (`id`, `texto`, `imagem`, `link`) VALUES
(1, '<h4 style="color: rgb(0, 0, 0);">molestiae imperdiet laudantium semper tristique diam! Illum ab? Eveniet. Facilisis, feugiat pede eu commodi tristique eiusmod placerat accusantium interdum soluta ac natoque. Phasellus accusantium dignissimos hac</h4>', '9cd81ac80be166c97d879264aafbb670.png', 'http://10.0.0.115/cecor/clinica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `secao2`
--

CREATE TABLE `secao2` (
  `id` int(11) NOT NULL,
  `imagem` text NOT NULL,
  `texto` text NOT NULL,
  `titulo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `secao2`
--

INSERT INTO `secao2` (`id`, `imagem`, `texto`, `titulo`) VALUES
(3, '74d4aa190497e3b07c362bfaeeb53029.jpg', '<h4 style="color: rgb(0, 0, 0);">Dr. Ricardo Kalliery</h4><h5 style="color: rgb(0, 0, 0);">Cardiologista</h5><p>Saturn and its innermost ring on encounters before it will .</p>', 'teste1'),
(4, '294463a2113b0f71a8d82a5cfe051008.jpg', '<h4 style="color: rgb(0, 0, 0);">Dr. Ricardo Kalliery</h4><h5 style="color: rgb(0, 0, 0);">Cardiologista</h5><p>Saturn and its innermost ring on encounters before it will .</p>', 'teste2'),
(5, '1c916641f3f1d8bdf193062ffdf91ece.jpg', '<h4 style="color: rgb(0, 0, 0);">Dr. Ricardo Kalliery</h4><h5 style="color: rgb(0, 0, 0);">Cardiologista</h5><p>Saturn and its innermost ring on encounters before it will .</p>', 'teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `secao3`
--

CREATE TABLE `secao3` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `imagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `secao3`
--

INSERT INTO `secao3` (`id`, `titulo`, `imagem`) VALUES
(2, 'Cemig', '563ff56fa0c7e954c062e1b3ec7481e4.png'),
(3, 'Caixa', '075c11e9843243c7e5176fe5da4401ab.png'),
(4, 'Copasa', '7950999cda95d1886dc5ad71edecdb87.png'),
(5, 'Amil', 'c523e2c759936a36a0d8f89e1e8c1685.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `senha` varchar(32) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0 - bloqueado\n1 - ativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `senha`, `email`, `status`) VALUES
(1, 'Marcos Vinicius Soares Santos', '115.800.856-28', '202cb962ac59075b964b07152d234b70', 'marcos@tectotum.com.br', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agendas`
--
ALTER TABLE `agendas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agendas_horarios`
--
ALTER TABLE `agendas_horarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_horarios_agendas_idx` (`agendas_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorias_cirurgias`
--
ALTER TABLE `categorias_cirurgias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cirurgias`
--
ALTER TABLE `cirurgias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cirurgias_categorias_cirurgias1_idx` (`categorias_cirurgias_id`);

--
-- Indexes for table `clinica`
--
ALTER TABLE `clinica`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `convenios`
--
ALTER TABLE `convenios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corpo_clinico`
--
ALTER TABLE `corpo_clinico`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itens_clinica`
--
ALTER TABLE `itens_clinica`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `procedimentos_esteticos`
--
ALTER TABLE `procedimentos_esteticos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secao1`
--
ALTER TABLE `secao1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secao2`
--
ALTER TABLE `secao2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secao3`
--
ALTER TABLE `secao3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agendamentos`
--
ALTER TABLE `agendamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `agendas`
--
ALTER TABLE `agendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `agendas_horarios`
--
ALTER TABLE `agendas_horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `categorias_cirurgias`
--
ALTER TABLE `categorias_cirurgias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cirurgias`
--
ALTER TABLE `cirurgias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `clinica`
--
ALTER TABLE `clinica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `convenios`
--
ALTER TABLE `convenios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `corpo_clinico`
--
ALTER TABLE `corpo_clinico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `itens_clinica`
--
ALTER TABLE `itens_clinica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `procedimentos_esteticos`
--
ALTER TABLE `procedimentos_esteticos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `secao1`
--
ALTER TABLE `secao1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `secao2`
--
ALTER TABLE `secao2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `secao3`
--
ALTER TABLE `secao3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `agendas_horarios`
--
ALTER TABLE `agendas_horarios`
  ADD CONSTRAINT `fk_horarios_agendas` FOREIGN KEY (`agendas_id`) REFERENCES `agendas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `cirurgias`
--
ALTER TABLE `cirurgias`
  ADD CONSTRAINT `fk_cirurgias_categorias_cirurgias1` FOREIGN KEY (`categorias_cirurgias_id`) REFERENCES `categorias_cirurgias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
