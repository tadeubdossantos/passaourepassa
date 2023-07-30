-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Tempo de geração: 26-Jul-2023 às 12:08
-- Versão do servidor: 10.5.2-MariaDB-1:10.5.2+maria~bionic
-- versão do PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `passaourepassa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `questao`
--

CREATE TABLE `questao` (
  `id` int(11) NOT NULL,
  `disciplina` varchar(50) NOT NULL,
  `pergunta` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `correta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `questao`
--

INSERT INTO `questao` (`id`, `disciplina`, `pergunta`, `a`, `b`, `c`, `d`, `correta`) VALUES
(1, 'Geografia', 'O sistema Terra é formado pela relação entre as forças endógenas (internas) e exógenas (externas) que atuam para modificar a superfície terrestre ao longo de toda a história geológica de nosso planeta. O seu estudo é importante para compreender os ciclos naturais que acontecem na natureza. Que é composto pela litosfera, atmosfera, criosfera, hidrosfera e biosfera.\r\nA Litosfera é a camada da Terra formada pela:\r\n', 'Porção líquida do Planeta;', 'Porção gasosa do Planeta;', 'Porção sólida rochosa do Planeta;', 'Porção com água no estado sólido;', 'c'),
(2, 'Geografia', 'Ele representa uma das melhores alternativas para obter uma visão do planeta e contribui com a ampliação do conhecimento geográfico. Seu potencial de uso está cada vez maior, em virtude da evolução dos recursos tecnológicos, com uma diversidade enorme de sensores, principalmente orbitais, gerando imagens com as mais diversas resoluções e mais diversas aplicações, sendo que muitos dados têm acesso gratuito pela internet.\r\nO texto acima faz referência:', 'Ao sistema de desenvolvimento tecnológico;', 'Ao sistema de monitoramento remoto;', 'Aos satélites naturais do planeta;', 'Ao poder tecnológico da internet;', 'b'),
(3, 'Sociologia', 'Segundo Zygmunt Bauman, os encontros dos potenciais consumidores com os potenciais objetos de consumo tendem a se tornar as principais unidades na rede peculiar de interações humanas conhecida como:', 'Povo consumista;', 'Sociedade de consumidores;', 'Sociedade de interação;', 'Povo em rede de consumo;', 'b'),
(4, 'Sociologia', 'O artigo 5º da Constituição Federal de 1988 em seu inciso VI determina que é inviolável a liberdade de consciência e de crença, sendo assegurado o livre exercício dos cultos religiosos e garantida, na forma da lei, a proteção aos locais de culto e a suas liturgias.\r\nPensando nos desafios e caminhos para uma sociedade democrática e inclusiva podemos dizer a Constituição Federal determina que o nosso país é:\r\n', 'Um Estado Autoritário;', 'Um Estado Inclusivo;', 'Um Estado de Sítio;', 'Um Estado Laico;', 'd'),
(5, 'Geografia', 'Das opções abaixo, a que não representa um impacto ambiental é:', 'chuva ácida', 'assoreamento dos rios', 'desertificação', 'mobilidade urbana', 'd'),
(6, 'Geografia', 'Qual das seguintes fontes de produção de energia é a mais recomendável para a diminuição dos gases causadores do aquecimento global?', 'Óleo diesel', 'Gasolina', 'Carvão mineral', 'Vento', 'd'),
(7, 'Geografia', 'Sobre o bioma Pampa é correto afirmar:<br>\r\nI. Apresenta vegetação com gramíneas e pequenos arbustos, caracterizado por campos limpos;<br>\r\nII. É o bioma mais preservado do Brasil;<br>\r\nIII. Apresenta estações bem definidas e clima subtropical;<br>\r\nIV. Está presente em toda região Sul do Brasil.<br>\r\nEstão corretas somente as opções:\r\n', 'a) I e III', 'b) II e IV', 'c) III e IV', 'd) I e II', 'a'),
(8, 'Geografia', 'O ciclo da água é o mecanismo responsável por renovar a disponibilidade de água no planeta. Esse ciclo biogeoquímico consiste na transformação e circulação da água pela natureza através', 'apenas da chuva', 'das mudanças de estado físico', 'de reações químicas', 'da criação de novas moléculas de água na naturezab', 'b'),
(9, 'Geografia', 'As depressões são formadas principalmente pelos processos de erosão. Elas são classificadas em depressões relativas e absolutas de acordo com', 'os relevos circundantes', 'a altitude', 'a posição em relação ao nível do mar', 'as rochas formadoras', 'c'),
(10, 'Geografia', 'A principal consequência do movimento de translação é', 'Duração do dia e da noite', 'Efeito estufa natural', 'As estações do ano', 'A posição do nascer e por do Sol', 'c'),
(11, 'História', 'Quais são os tipos de Fontes históricas?', 'Fonte Patrimônio Material e Fonte Patrimônio Imaterial', 'Fonte material, fonte visual, fonte oral e fonte escrita', 'Fonte aquática e fonte terrestre', 'Fontes imagéticas e fontes realísticas', 'b'),
(12, 'História', 'Quais foram as principais invenções criadas na época do Renascimento?', 'O avião e a geladeira', 'O computador e a internet', 'A imprensa, o moinho de vento, globo terrestre e a luneta', 'O ventilador, o carro a álcool e o colete a prova de balas', 'c'),
(13, 'História', 'O que foi o Iluminismo?', 'Foi um movimento que surgiu na idade média, durante o século XV, pedindo iluminação elétrica para toda Europa, já que nessa época acontecia a Revolução Industrial.', 'Foi um movimento intelectual que surgiu na Europa no século XVIII, marcado por valorizar a razão e tecer críticas ao absolutismo e ao mercantilismo. Ficou conhecido como séculos das Luzes', 'Foi um movimento iniciado no Brasil em 1980, no qual pedia a iluminação das praças públicas por meio da campanha: “Iluminação Já”', 'Nunca existiu nenhum movimento na história com esse nome, a professora está precisando de férias.', 'b'),
(14, 'História', 'Explique o conceito “Coronelismo” presente na 1ª República do Brasil.', 'Prática em que os “coronéis” exerciam o poder local sobre as camadas inferiores da sociedade a fim de garantir votos em troca de favores das esferas políticas locais, estaduais e federais.', 'Prática exercida na 1ª República na qual os homens que eram traídos por suas esposas viravam chacota da sociedade em geral', 'Nome dado ao grupo “unidos pelo gado” constituído de coronéis que queriam ampliar as cabeças de gado a partir do trabalho compulsório de indígenas e escravos', 'Nenhuma das respostas acima, coronelismo foi um conceito que nunca existiu', 'a'),
(15, 'História', 'Como são divididos os Patrimônios Históricos da Humanidade', 'Patrimônio físico (todos os monumentos criados pelo homem) patrimônio cultural (todas as tradições humanas)', 'Patrimônio Material (o conjunto de bens culturais móveis e imóveis existentes no país e cuja conservação seja de interesse público) e Patrimônio Imaterial (práticas e domínios da vida social que se manifestam em saberes, ofícios e modos de fazer; celebrações; formas de expressão cênicas e nos lugares)', 'Patrimônio Local (monumentos, objetos, celebrações, expressões, heranças, saberes e cultura de seu local de nascimento) Patrimônio Global (monumentos, objetos, celebrações, expressões, heranças, saberes e cultural do mundo em geral que se conhece.', 'Não se divide os Patrimônios Históricos da Humanidade, eles são somente classificados em local, regional, estadual ou global', 'b'),
(16, 'História', 'Quais foram as causas principais para dar início a 1ª Guerra Mundial?', 'Foi resultado das inúmeras, entre os fatores estão a rivalidade econômica e os ressentimentos guardados pela escravidão e a insatisfação de grupos religiosos anticristãos', 'Foi a invasão aos Estados Unidos da América, potência na época e única capaz de controlar o avanço da Inglaterra sobre Terras da América Latina', 'Foi a morte do arquiduque: “Elton John” da Inglaterra, na qual já havia declarado guerra aos países da França, Alemanha e Itália', 'Foram vários fatore entre eles a morte do herdeiro do trono austríaco em 1914; o Progresso do capitalismo e consequentes problemas sociais; o imperialismo e o colonialismo gerados pelo extraordinário crescimento industrial que acirrava os choques de interesse econômico e político entre as potências industrializadas; e a rivalidade das grandes potencias.', 'd');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `questao`
--
ALTER TABLE `questao`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `questao`
--
ALTER TABLE `questao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
