-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Set-2020 às 04:22
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sitephpoo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_cors`
--

CREATE TABLE `adms_cors` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `cor` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_cors`
--

INSERT INTO `adms_cors` (`id`, `nome`, `cor`, `created`, `modified`) VALUES
(1, 'Azul', 'primary', '2018-05-23 00:00:00', NULL),
(2, 'Cinza', 'secondary', '2018-05-23 00:00:00', NULL),
(3, 'Verde', 'success', '2018-05-23 00:00:00', NULL),
(4, 'Vermelho', 'danger', '2018-05-23 00:00:00', NULL),
(5, 'Laranjado', 'warning', '2018-05-23 00:00:00', NULL),
(6, 'Azul Claro', 'info', '2018-05-23 00:00:00', NULL),
(7, 'Claro', 'light', '2018-05-23 00:00:00', NULL),
(8, 'Cinza escuro', 'dark', '2018-05-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_robots`
--

CREATE TABLE `adms_robots` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_robots`
--

INSERT INTO `adms_robots` (`id`, `nome`, `tipo`, `created`, `modified`) VALUES
(1, 'Indexar a pÃ¡gina e seguir os links', 'index,follow', '2018-02-23 00:00:00', NULL),
(2, 'NÃ£o indexar a pÃ¡gina mas seguir os links', 'noindex,follow', '2018-02-23 00:00:00', NULL),
(3, 'Indexar a pÃ¡gina mas nÃ£o seguir os links', 'index,nofollow', '2018-02-23 00:00:00', NULL),
(4, 'NÃ£o indexar a pÃ¡gina e nem seguir os links', 'noindex,nofollow', '2018-02-23 00:00:00', NULL),
(5, 'NÃ£o exibir a versÃ£o em cache da pÃ¡gina', 'noarchive', '2018-02-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_sits`
--

CREATE TABLE `adms_sits` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `adms_cor_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_sits`
--

INSERT INTO `adms_sits` (`id`, `nome`, `adms_cor_id`, `created`, `modified`) VALUES
(1, 'Ativo', '3', '2018-03-23 00:00:00', NULL),
(2, 'Inativo', '4', '2018-03-23 00:00:00', NULL),
(3, 'Analise', '1', '2018-03-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_usuarios`
--

CREATE TABLE `adms_usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `apelido` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `recuperar_senha` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chave_descadastro` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conf_email` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagem` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adms_niveis_acesso_id` int(11) NOT NULL,
  `adms_sits_usuario_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `adms_usuarios`
--

INSERT INTO `adms_usuarios` (`id`, `nome`, `apelido`, `email`, `usuario`, `senha`, `recuperar_senha`, `chave_descadastro`, `conf_email`, `imagem`, `adms_niveis_acesso_id`, `adms_sits_usuario_id`, `created`, `modified`) VALUES
(1, 'Leandro Santos', 'Leandro', 'leandro@leandro.com.br', 'leandro@leandro.com.br', '$2y$10$nA6dx3mjOygZE5Xt5iwt5eRebzXfskbXcwUam8yLCECj7NrjXr12q', 'bbe0d9883f909fb95ca46e8396fd7194', NULL, NULL, 'logo.jpg', 1, 1, '2018-03-23 00:00:00', '2018-05-04 13:40:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_artigos`
--

CREATE TABLE `sts_artigos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci NOT NULL,
  `conteudo` text COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `resumo_publico` text COLLATE utf8_unicode_ci NOT NULL,
  `qnt_acesso` int(11) NOT NULL DEFAULT 0,
  `adms_robot_id` int(11) NOT NULL,
  `adms_usuario_id` int(11) NOT NULL,
  `adms_sit_id` int(11) NOT NULL,
  `sts_tps_artigo_id` int(11) NOT NULL,
  `sts_cats_artigo_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_artigos`
--

INSERT INTO `sts_artigos` (`id`, `titulo`, `descricao`, `conteudo`, `imagem`, `slug`, `keywords`, `description`, `author`, `resumo_publico`, `qnt_acesso`, `adms_robot_id`, `adms_usuario_id`, `adms_sit_id`, `sts_tps_artigo_id`, `sts_cats_artigo_id`, `created`, `modified`) VALUES
(1, 'Sample blog post 1', 'Donec 1 ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\r\n								<hr>\r\n								<p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n								<blockquote>\r\n								  <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n								</blockquote>\r\n								<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n								<h2>Heading</h2>\r\n								<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n								<pre><code>Example code block</code></pre>\r\n								<p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\r\n								<ul>\r\n									<li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\r\n									<li>Donec id elit non mi porta gravida at eget metus.</li>\r\n									<li>Nulla vitae elit libero, a pharetra augue.</li>\r\n								</ul>\r\n								<p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\r\n								<ol>\r\n									<li>Vestibulum id ligula porta felis euismod semper.</li>\r\n									<li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n									<li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\r\n								</ol>\r\n								<p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>', 'artigo.jpg', 'sample-blog-post-1', 'artigo, artigo 1, ', 'Descricao do artigo um para seo', 'Leandro Santos', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\n                            <hr>\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>', 6, 1, 1, 1, 1, 1, '2018-02-18 00:00:00', NULL),
(2, 'Sample blog post 2', 'Donec 2 ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\r\n								<hr>\r\n								<p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n								<blockquote>\r\n								  <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n								</blockquote>\r\n								<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n								<h2>Heading</h2>\r\n								<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n								<pre><code>Example code block</code></pre>\r\n								<p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\r\n								<ul>\r\n									<li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\r\n									<li>Donec id elit non mi porta gravida at eget metus.</li>\r\n									<li>Nulla vitae elit libero, a pharetra augue.</li>\r\n								</ul>\r\n								<p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\r\n								<ol>\r\n									<li>Vestibulum id ligula porta felis euismod semper.</li>\r\n									<li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n									<li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\r\n								</ol>\r\n								<p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>', 'artigo.jpg', 'sample-blog-post-2', 'artigo, artigo 2, ', 'Descricao do artigo dois para seo', 'Leandro Santos', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\n                            <hr>\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>', 4, 1, 1, 1, 1, 1, '2018-02-19 00:00:00', NULL),
(3, 'Sample blog post 3', 'Donec 3 ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\r\n								<hr>\r\n								<p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n								<blockquote>\r\n								  <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n								</blockquote>\r\n								<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n								<h2>Heading</h2>\r\n								<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n								<pre><code>Example code block</code></pre>\r\n								<p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\r\n								<ul>\r\n									<li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\r\n									<li>Donec id elit non mi porta gravida at eget metus.</li>\r\n									<li>Nulla vitae elit libero, a pharetra augue.</li>\r\n								</ul>\r\n								<p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\r\n								<ol>\r\n									<li>Vestibulum id ligula porta felis euismod semper.</li>\r\n									<li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n									<li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\r\n								</ol>\r\n								<p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>', 'artigo.jpg', 'sample-blog-post-3', 'artigo, artigo 3 ', 'Descricao do artigo tres para seo', 'Leandro Santos', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\n                            <hr>\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>', 14, 1, 1, 1, 1, 1, '2018-02-20 00:00:00', NULL),
(4, 'Sample blog post 4 titulo', 'Donec 4 ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', '<p>4This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\n								<hr>\n								<p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\n								<blockquote>\n								  <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\n								</blockquote>\n								<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\n								<h2>Heading</h2>\n								<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\n								<h3>Sub-heading</h3>\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n								<pre><code>Example code block</code></pre>\n								<p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\n								<h3>Sub-heading</h3>\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\n								<ul>\n									<li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\n									<li>Donec id elit non mi porta gravida at eget metus.</li>\n									<li>Nulla vitae elit libero, a pharetra augue.</li>\n								</ul>\n								<p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\n								<ol>\n									<li>Vestibulum id ligula porta felis euismod semper.</li>\n									<li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\n									<li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\n								</ol>\n								<p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>', 'artigo.jpg', 'sample-blog-post-4', 'artigo, artigo 4 ', 'Descricao do artigo quatro para seo', 'Leandro Santos', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\n                            <hr>\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>', 13, 1, 1, 1, 1, 1, '2018-02-21 00:00:00', NULL),
(5, 'Sample blog post 5', 'Donec 5 ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\r\n								<hr>\r\n								<p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n								<blockquote>\r\n								  <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n								</blockquote>\r\n								<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n								<h2>Heading</h2>\r\n								<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n								<pre><code>Example code block</code></pre>\r\n								<p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\r\n								<ul>\r\n									<li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\r\n									<li>Donec id elit non mi porta gravida at eget metus.</li>\r\n									<li>Nulla vitae elit libero, a pharetra augue.</li>\r\n								</ul>\r\n								<p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\r\n								<ol>\r\n									<li>Vestibulum id ligula porta felis euismod semper.</li>\r\n									<li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n									<li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\r\n								</ol>\r\n								<p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>', 'artigo.jpg', 'sample-blog-post-5', 'artigo, artigo 5', 'Descricao do artigo cinco para seo', 'Leandro Santos', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\n                            <hr>\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>', 1, 1, 1, 1, 1, 1, '2018-02-22 00:00:00', NULL),
(6, 'Sample blog post 6', 'Donec 6 ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', '<p>6This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\n								<hr>\n								<p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\n								<blockquote>\n								  <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\n								</blockquote>\n								<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\n								<h2>Heading</h2>\n								<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\n								<h3>Sub-heading</h3>\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n								<pre><code>Example code block</code></pre>\n								<p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\n								<h3>Sub-heading</h3>\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\n								<ul>\n									<li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\n									<li>Donec id elit non mi porta gravida at eget metus.</li>\n									<li>Nulla vitae elit libero, a pharetra augue.</li>\n								</ul>\n								<p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\n								<ol>\n									<li>Vestibulum id ligula porta felis euismod semper.</li>\n									<li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\n									<li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\n								</ol>\n								<p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>', 'artigo.jpg', 'sample-blog-post-6', 'artigo, artigo 6', 'Descricao do artigo seis para seo', 'Leandro Santos', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\n                            <hr>\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>', 20, 4, 1, 1, 1, 1, '2018-02-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_carousels`
--

CREATE TABLE `sts_carousels` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `posicao_text` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo_botao` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordem` int(11) NOT NULL,
  `adms_cor_id` int(11) DEFAULT NULL,
  `adms_situacoes_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_carousels`
--

INSERT INTO `sts_carousels` (`id`, `nome`, `imagem`, `titulo`, `descricao`, `posicao_text`, `titulo_botao`, `link`, `ordem`, `adms_cor_id`, `adms_situacoes_id`, `created`, `modified`) VALUES
(1, 'Primeiro Exemplo', 'imagem_um.jpg', 'Example headline1.', 'Cras 1 justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'text-left', 'Mais detalhes', '#', 1, 1, 1, '2018-05-23 00:00:00', NULL),
(2, 'Segundo Exemplo', 'imagem_dois.png', 'Example headline2.', 'Cras 2 justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'text-center', 'Inscrever-se', '#', 2, 1, 1, '2018-05-23 00:00:00', NULL),
(3, 'Terceiro Exemplo', 'imagem_tres.jpg', 'One more for good measure3.', 'Cras 3 justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'text-right', 'Comprar', '#', 3, 1, 1, '2018-05-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_cats_artigos`
--

CREATE TABLE `sts_cats_artigos` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `sts_situacoe_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_cats_artigos`
--

INSERT INTO `sts_cats_artigos` (`id`, `nome`, `sts_situacoe_id`, `created`, `modified`) VALUES
(1, 'PHP', 1, '2018-02-23 00:00:00', NULL),
(2, 'Bootstrap', 1, '2018-02-23 00:00:00', NULL),
(3, 'MySQLi', 1, '2018-02-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_contatos`
--

CREATE TABLE `sts_contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `assunto` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `mensagem` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_contatos`
--

INSERT INTO `sts_contatos` (`id`, `nome`, `email`, `assunto`, `mensagem`, `created`, `modified`) VALUES
(14, 'Leandro Santos', 'mkm@hotmail.com', 'Cadastrando', 'Cadastrando contato', '2020-03-05 01:24:17', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_footer`
--

CREATE TABLE `sts_footer` (
  `id` int(11) NOT NULL,
  `nome_empresa` varchar(220) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `copyright` varchar(220) NOT NULL,
  `email` varchar(220) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telefone1` varchar(30) NOT NULL,
  `telefone2` varchar(30) NOT NULL,
  `facebook_url` varchar(220) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `twitter_url` varchar(220) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `instagram_url` varchar(220) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp_url` varchar(220) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `rua` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bairro` varchar(100) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `cidade` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(8) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `uf` char(2) NOT NULL,
  `sts_tipos_paginas_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `sts_footer`
--

INSERT INTO `sts_footer` (`id`, `nome_empresa`, `copyright`, `email`, `telefone1`, `telefone2`, `facebook_url`, `twitter_url`, `instagram_url`, `whatsapp_url`, `rua`, `bairro`, `cidade`, `numero`, `cep`, `uf`, `sts_tipos_paginas_id`, `created`, `modified`) VALUES
(1, 'Santos Developer', '&copy; 2020 Santos Developer - Todos os direitos reservados.', 'santos.developer@gmail.com.br', '(92) 3033-5238', '(92) 98985-4566', '#', '#', '#', '#', 'Av. Max Teixeira', 'Cidade Nova', 'Manaus', '215', '69165-216', 'AM', 1, '2020-03-15 20:17:42', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_paginas`
--

CREATE TABLE `sts_paginas` (
  `id` int(11) NOT NULL,
  `controller` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `nome_pagina` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `obs` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lib_bloqueado` int(11) NOT NULL DEFAULT 2,
  `ordem_paginas` int(11) NOT NULL,
  `sts_tipos_pagina_id` int(11) NOT NULL,
  `sts_robot_id` int(11) NOT NULL,
  `sts_situacao_pagina_id` int(11) NOT NULL DEFAULT 2,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_paginas`
--

INSERT INTO `sts_paginas` (`id`, `controller`, `endereco`, `nome_pagina`, `titulo`, `obs`, `keywords`, `description`, `author`, `imagem`, `lib_bloqueado`, `ordem_paginas`, `sts_tipos_pagina_id`, `sts_robot_id`, `sts_situacao_pagina_id`, `created`, `modified`) VALUES
(1, 'Home', 'home', 'Pagina inicial', 'Santos Developer - Pagina inicial', 'Pagina inicial do site do projeto sts', 'noticias,...', 'Site de noticias sobre...', 'Leandro Santos', 'home.jpg', 1, 1, 1, 3, 1, '2018-05-23 00:00:00', NULL),
(2, 'SobreEmpresa', 'sobre-empresa', 'Sobre Empresa', 'Santos Developer - Sobre Empresa', 'Pagina sobre empresa do site do projeto sts', 'sobre a empresa celke, celke', 'A empresa Celke...', 'Leandro Santos', 'sobre_empresa.jpg', 1, 2, 1, 1, 1, '2018-05-23 00:00:00', NULL),
(3, 'Blog', 'blog', 'Blog', 'Santos Developer - Blog', 'Pagina blog do site do projeto sts', 'Ultimas noticias, noticias sobre...', 'Ultimas noticias sobre...', 'Leandro Santos', 'blog.jpg', 1, 3, 1, 1, 1, '2018-05-23 00:00:00', NULL),
(4, 'Artigo', 'artigo', 'Artigo', 'Santos Developer - Artigo', 'Pagina para ver o artigo inteiro no site do projeto sts', 'php, php oo,...', 'Como criar o ...', 'Leandro Santos', 'artigo.jpg', 2, 4, 1, 1, 1, '2018-05-23 00:00:00', NULL),
(5, 'Contato', 'contato', 'Contato', 'Santos Developer - Contato', 'Pagina contato no site do projeto sts', 'contato, contato com,...', 'Formulario de contato...', 'Leandro Santos', 'contato.jpg', 1, 5, 1, 1, 1, '2018-05-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_robots`
--

CREATE TABLE `sts_robots` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_robots`
--

INSERT INTO `sts_robots` (`id`, `nome`, `tipo`, `created`, `modified`) VALUES
(1, 'Indexar a pÃ¡gina e seguir os links', 'index,follow', '2018-05-23 00:00:00', NULL),
(2, 'NÃ£o indexar a pÃ¡gina mas seguir os links', 'noindex,follow', '2018-05-23 00:00:00', NULL),
(3, 'Indexar a pÃ¡gina mas nÃ£o seguir os links', 'index,nofollow', '2018-05-23 00:00:00', NULL),
(4, 'NÃ£o indexar a pÃ¡gina e nem seguir os links', 'noindex,nofollow', '2018-05-23 00:00:00', NULL),
(5, 'NÃ£o exibir a versÃ£o em cache da pÃ¡gina', 'noarchive', '2018-05-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_seo`
--

CREATE TABLE `sts_seo` (
  `id` int(11) NOT NULL,
  `og_site_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `og_locale` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fb_admins` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `twitter_site` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_seo`
--

INSERT INTO `sts_seo` (`id`, `og_site_name`, `og_locale`, `fb_admins`, `twitter_site`, `created`, `modified`) VALUES
(1, '', '', '', '', '2018-05-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_servicos`
--

CREATE TABLE `sts_servicos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `icone_um` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `nome_um` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `descricao_um` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `icone_dois` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `nome_dois` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `descricao_dois` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `icone_tres` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `nome_tres` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `descricao_tres` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_servicos`
--

INSERT INTO `sts_servicos` (`id`, `titulo`, `icone_um`, `nome_um`, `descricao_um`, `icone_dois`, `nome_dois`, `descricao_dois`, `icone_tres`, `nome_tres`, `descricao_tres`, `created`, `modified`) VALUES
(1, 'Serviços', 'ion-ios-camera-outline', 'Serviços um', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'ion-ios-film-outline', 'Serviços dois', 'This card has supporting text below as a natural lead-in to additional content.', 'ion-ios-videocam-outline', 'Serviços tres', 'This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.', '2018-05-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_situacaos_pgs`
--

CREATE TABLE `sts_situacaos_pgs` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `adms_cor_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_situacaos_pgs`
--

INSERT INTO `sts_situacaos_pgs` (`id`, `nome`, `adms_cor_id`, `created`, `modified`) VALUES
(1, 'Ativo', 3, '2018-05-23 00:00:00', NULL),
(2, 'Inativo', 5, '2018-05-23 00:00:00', NULL),
(3, 'Analise', 1, '2018-05-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_sobres`
--

CREATE TABLE `sts_sobres` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `adms_sit_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_sobres`
--

INSERT INTO `sts_sobres` (`id`, `titulo`, `descricao`, `imagem`, `adms_sit_id`, `created`, `modified`) VALUES
(1, 'Sobre Autor', 'Etiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.', 'autor.jpg', 1, '2018-05-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_sob_empresa`
--

CREATE TABLE `sts_sob_empresa` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `ordem` int(11) NOT NULL,
  `adms_sit_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_sob_empresa`
--

INSERT INTO `sts_sob_empresa` (`id`, `titulo`, `descricao`, `imagem`, `ordem`, `adms_sit_id`, `created`, `modified`) VALUES
(1, 'Sobre empresa um.', 'Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', 'empresa.jpg', 1, 1, '2018-05-23 00:00:00', NULL),
(2, 'Sobre empresa dois.', 'Descricao sobre empresa 2 Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', 'empresa.jpg', 2, 1, '2018-05-23 00:00:00', NULL),
(3, 'Sobre empresa tres.', 'Descricao sobre empresa 3 Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', 'empresa.jpg', 3, 1, '2018-05-23 00:00:00', NULL),
(4, 'Sobre empresa quatro.', 'Descricao sobre empresa 4 Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', 'empresa.jpg', 4, 1, '2018-05-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_tipos_paginas`
--

CREATE TABLE `sts_tipos_paginas` (
  `id` int(11) NOT NULL,
  `tipo` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `obs` text COLLATE utf8_unicode_ci NOT NULL,
  `ordem` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_tipos_paginas`
--

INSERT INTO `sts_tipos_paginas` (`id`, `tipo`, `nome`, `obs`, `ordem`, `created`, `modified`) VALUES
(1, 'sts', 'Site Principal', 'Core do site principal', 1, '2018-05-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_tps_artigos`
--

CREATE TABLE `sts_tps_artigos` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_tps_artigos`
--

INSERT INTO `sts_tps_artigos` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Publico', '2018-02-23 00:00:00', NULL),
(2, 'Privado', '2018-02-23 00:00:00', NULL),
(3, 'Privado com resumo publico', '2018-02-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_videos`
--

CREATE TABLE `sts_videos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sts_videos`
--

INSERT INTO `sts_videos` (`id`, `titulo`, `descricao`, `video`, `created`, `modified`) VALUES
(1, 'Vídeo', 'This is a wider card with supporting text below as a natural lead-in to additional content.', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9No-FiEInLA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2018-05-23 00:00:00', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `adms_cors`
--
ALTER TABLE `adms_cors`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adms_robots`
--
ALTER TABLE `adms_robots`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adms_sits`
--
ALTER TABLE `adms_sits`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adms_usuarios`
--
ALTER TABLE `adms_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_artigos`
--
ALTER TABLE `sts_artigos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_carousels`
--
ALTER TABLE `sts_carousels`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_cats_artigos`
--
ALTER TABLE `sts_cats_artigos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_contatos`
--
ALTER TABLE `sts_contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_footer`
--
ALTER TABLE `sts_footer`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_paginas`
--
ALTER TABLE `sts_paginas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_robots`
--
ALTER TABLE `sts_robots`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_seo`
--
ALTER TABLE `sts_seo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_servicos`
--
ALTER TABLE `sts_servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_situacaos_pgs`
--
ALTER TABLE `sts_situacaos_pgs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_sobres`
--
ALTER TABLE `sts_sobres`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_sob_empresa`
--
ALTER TABLE `sts_sob_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_tipos_paginas`
--
ALTER TABLE `sts_tipos_paginas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_tps_artigos`
--
ALTER TABLE `sts_tps_artigos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_videos`
--
ALTER TABLE `sts_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `adms_cors`
--
ALTER TABLE `adms_cors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `adms_robots`
--
ALTER TABLE `adms_robots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `adms_sits`
--
ALTER TABLE `adms_sits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `adms_usuarios`
--
ALTER TABLE `adms_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `sts_artigos`
--
ALTER TABLE `sts_artigos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `sts_carousels`
--
ALTER TABLE `sts_carousels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `sts_cats_artigos`
--
ALTER TABLE `sts_cats_artigos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `sts_contatos`
--
ALTER TABLE `sts_contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `sts_footer`
--
ALTER TABLE `sts_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_paginas`
--
ALTER TABLE `sts_paginas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `sts_robots`
--
ALTER TABLE `sts_robots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `sts_seo`
--
ALTER TABLE `sts_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_servicos`
--
ALTER TABLE `sts_servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_situacaos_pgs`
--
ALTER TABLE `sts_situacaos_pgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `sts_sobres`
--
ALTER TABLE `sts_sobres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_sob_empresa`
--
ALTER TABLE `sts_sob_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `sts_tipos_paginas`
--
ALTER TABLE `sts_tipos_paginas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `sts_tps_artigos`
--
ALTER TABLE `sts_tps_artigos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `sts_videos`
--
ALTER TABLE `sts_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
