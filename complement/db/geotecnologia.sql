-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Mar-2023 às 21:18
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 7.4.33
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
--
-- Banco de dados: `geotecnologia`
--

-- --------------------------------------------------------
--
-- Estrutura da tabela `monitoramentos`
--

CREATE TABLE `monitoramentos` (
  `idMonitoramento` int(11) NOT NULL,
  `dataMonitoramento` datetime NOT NULL,
  `analista` varchar(100) NOT NULL,
  `resultado` varchar(20) NOT NULL,
  `parecerAnalise` text DEFAULT NULL,
  `idVinculo` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Extraindo dados da tabela `monitoramentos`
--

INSERT INTO `monitoramentos` (
    `idMonitoramento`,
    `dataMonitoramento`,
    `analista`,
    `resultado`,
    `parecerAnalise`,
    `idVinculo`
  )
VALUES (
    1,
    '2022-12-10 10:22:34',
    'Celio Gomes',
    'Bloqueado',
    'O perímetro do SICAR QQ-0001559-47ABABC582DD473BBAABCD145F51E567 possui sobreposição superior a 10% a outros perímetros de propriedades rurais. Solicitar ao proprietário procurar soluções junto a SEMA. Favor encaminhar documentos oficiais, tais como; georreferenciamento, matricula da propriedade, memorial descritivo da propriedade registrado em cartório, protocolado no INCRA e outros documentos oficiais da propriedade.\nPor meio da documentação em anexo não é possível confirmar a posse informada no cadastro em análise. Desta forma, a análise em questão se atenta as informações disponibilizadas no cadastro e nos dados geográficos do CAR anexado.',
    1
  ),
  (
    2,
    '2022-12-11 10:22:34',
    'Elias Ribeiro',
    'Liberado',
    'O perímetro foi confeccionado a partir das informações apresentadas no Recibo de Inscrição do Imóvel Rural no SICAR Nacional QQ-0001559-47ABABC582DD473BBAABCD145F51E567, tendo como base de informação as coordenadas geográficas apresentadas neste documento',
    2
  ),
  (
    3,
    '2022-12-12 10:22:34',
    'Denys Fernandes',
    'Bloqueado',
    'O perímetro do CAR em análise faz divisa a outra propriedade do mesmo fornecedor, CAR XQ-0001559-47ABABCQWERD473BBAABCD145F51E567, e este possui sobreposição a polígonos PRODES 2013. Por se caracterizar a mesma unidade produtiva, o CAR em análise herda os passivos ambientais.\nNota-se uma possível alteração no perímetro do CAR  XQ-0001559-47ABABCQWERD473BBAABCD145F51E741 em função dos polígonos detectados, deslocando os limites da propriedade para a não identificação dos PRODES 2012, 2019, 2021. Sendo assim a propriedade ficará bloqueada.\nO perímetro do SICAR XX-0001559-47ABABCQWERD473BBAABCD145F51E567 possui sobreposição superior a 10% a outros perímetros de propriedades rurais. Solicitar ao proprietário procurar soluções junto a SEMA. Favor encaminhar documentos oficiais, tais como; georreferenciamento, matricula da propriedade, memorial descritivo da propriedade registrado em cartório, protocolado no INCRA e outros documentos oficiais da propriedade.\nO perímetro foi confeccionado a partir das informações apresentadas no Recibo de Inscrição do Imóvel Rural no SICAR Nacional XX-0001559-47ABABCQWERD473BBAABCD145F51E567, tendo como base de informação as coordenadas geográficas apresentadas neste documento.',
    4
  ),
  (
    4,
    '2022-12-13 10:22:34',
    'João Celino',
    'Liberado',
    'O perímetro do CAR em análise faz divisa a outra propriedade do mesmo fornecedor, CAR ZX-8881559-47ABABCQWERD473BBAABCD145F51E567, e este possui sobreposição a polígonos PRODES 2011 e EMBARGO IBAMA. Por se caracterizar a mesma unidade produtiva, o CAR em análise herda os passivos ambientais.',
    5
  ),
  (
    5,
    '2022-12-14 10:22:34',
    'João Celino',
    'Liberado',
    'O perímetro foi confeccionado a partir das informações do XX-0001559-47ABABCQW1234D473BBAABCD145F51E567, apresentadas no demonstrativo do SIMCAR, tendo como base de informações as coordenadas geográficas apresentadas neste documento. Nota-se uma possível alteração no perímetro do CAR  PP-0001559-123BABCQWER1273BBAABCD145F51E567 em função dos polígonos detectados, deslocando os limites da propriedade para a não identificação dos EMBARGO IBAMA. Sendo assim a propriedade ficará bloqueada',
    3
  ),
  (
    6,
    '2022-12-15 10:22:34',
    'Denys Fernandes',
    'Liberado',
    'Conforme o demonstrativo do CAR anexado, o perímetro da propriedade não possui área consolidada. No entanto, através de análise das imagens de satélite nota-se área produtiva dentro dos limites da propriedade. Logo, a área útil foi calculada com base da estimativa da % de área total da propriedade, observados os seguintes percentuais mínimos em relação à área do imóvel de acordo como disposto no Código Florestal em seu Art. 12. O perímetro foi confeccionado a partir das informações apresentadas no Recibo de Inscrição do Imóvel Rural no SICAR Nacional XX-9991559-47ABABC271234D473BBAABCD1ABCDEE567, tendo como base de informação as coordenadas geográficas apresentadas neste documento.',
    4
  ),
  (
    7,
    '2022-12-16 10:22:34',
    'Elias Ribeiro',
    'Liberado',
    'De acordo com a análise de imagens mais atuais de satélite foi possível identificar que o perímetro do CAR encontra-se deslocado, fora dos limites visuais da fazenda. Aconselha-se que o produtor retifique o recibo do CAR afim de georreferenciar os limites propriedade corretamente.',
    6
  ),
  (
    8,
    '2022-12-16 10:22:34',
    'Celio Gomes',
    'Liberado',
    'De acordo com a análise de imagens mais atuais de satélite foi possível identificar que o perímetro do CAR encontra-se deslocado, fora dos limites visuais da fazenda. Aconselha-se que o produtor retifique o recibo do CAR afim de georreferenciar os limites propriedade corretamente.',
    1
  );
-- --------------------------------------------------------
--
-- Estrutura da tabela `produtores`
--

CREATE TABLE `produtores` (
  `idprodutor` int(11) NOT NULL,
  `nomeProdutor` varchar(100) NOT NULL,
  `cpfProdutor` varchar(14) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Extraindo dados da tabela `produtores`
--

INSERT INTO `produtores` (`idprodutor`, `nomeProdutor`, `cpfProdutor`)
VALUES (1, 'Carlos Braga', '882.259.670-62'),
  (2, 'Joaquim Maia', '693.074.850-11'),
  (3, 'Antonio Castro', '447.720.650-08'),
  (4, 'João Ferreira', '661.334.400-15'),
  (5, 'Mario Gomes', '457.653.790-36'),
  (6, 'Pedro Souza', '951.759.830-08');
-- --------------------------------------------------------
--
-- Estrutura da tabela `propriedades`
--

CREATE TABLE `propriedades` (
  `idPropriedade` int(11) NOT NULL,
  `nomePropriedade` varchar(100) NOT NULL,
  `numeroCadastroRural` varchar(43) NOT NULL,
  `tipoPropriedade` varchar(15) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Extraindo dados da tabela `propriedades`
--

INSERT INTO `propriedades` (
    `idPropriedade`,
    `nomePropriedade`,
    `numeroCadastroRural`,
    `tipoPropriedade`
  )
VALUES (
    1,
    'Fazenda da Serra',
    'O66666666666666666666',
    NULL
  ),
  (
    2,
    'Princesinha do Lago',
    'PAkinbdgbvksjb254656263',
    'Confinamento'
  ),
  (3, '3 Irmão', 'GO93865665621hfdjhbg', 'Rural'),
  (4, 'Céu Azul', 'MA9658669855jhgfdcvbn', 'Rural'),
  (
    5,
    'Prosperidade',
    'MTsdfghj98423652ertyu',
    'Rural'
  ),
  (6, 'Fortuna', 'AM862486ugvbnkiuytrf', NULL);
-- --------------------------------------------------------
--
-- Estrutura da tabela `vinculo`
--

CREATE TABLE `vinculo` (
  `idVinculo` int(11) NOT NULL,
  `idProdutor` int(11) NOT NULL,
  `tipoVinculoProdutor` varchar(100) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Extraindo dados da tabela `vinculo`
--

INSERT INTO `vinculo` (`idVinculo`, `idProdutor`, `tipoVinculoProdutor`)
VALUES (1, 1, 'proprietario'),
  (2, 2, NULL),
  (3, 3, 'socio'),
  (4, 4, 'proprietario'),
  (5, 5, NULL),
  (6, 6, 'proprietario');
--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `monitoramentos`
--
ALTER TABLE `monitoramentos`
ADD PRIMARY KEY (`idMonitoramento`),
  ADD KEY `idMonitoramento` (`idMonitoramento`),
  ADD KEY `monitoramentos_FK` (`idVinculo`);
--
-- Índices para tabela `produtores`
--
ALTER TABLE `produtores`
ADD PRIMARY KEY (`idprodutor`),
  ADD KEY `idprodutor` (`idprodutor`);
--
-- Índices para tabela `propriedades`
--
ALTER TABLE `propriedades`
ADD PRIMARY KEY (`idPropriedade`),
  ADD KEY `idPropriedade` (`idPropriedade`);
--
-- Índices para tabela `vinculo`
--
ALTER TABLE `vinculo`
ADD PRIMARY KEY (`idVinculo`),
  ADD KEY `idVinculo` (`idVinculo`),
  ADD KEY `vinculo_FK` (`idProdutor`);
--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `monitoramentos`
--
ALTER TABLE `monitoramentos`
MODIFY `idMonitoramento` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 9;
--
-- AUTO_INCREMENT de tabela `produtores`
--
ALTER TABLE `produtores`
MODIFY `idprodutor` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 7;
--
-- AUTO_INCREMENT de tabela `propriedades`
--
ALTER TABLE `propriedades`
MODIFY `idPropriedade` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 7;
--
-- AUTO_INCREMENT de tabela `vinculo`
--
ALTER TABLE `vinculo`
MODIFY `idVinculo` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 7;
--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `monitoramentos`
--
ALTER TABLE `monitoramentos`
ADD CONSTRAINT `monitoramentos_FK` FOREIGN KEY (`idVinculo`) REFERENCES `vinculo` (`idVinculo`) ON DELETE CASCADE;
--
-- Limitadores para a tabela `vinculo`
--
ALTER TABLE `vinculo`
ADD CONSTRAINT `vinculo_FK` FOREIGN KEY (`idProdutor`) REFERENCES `produtores` (`idprodutor`) ON DELETE CASCADE;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;