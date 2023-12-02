-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Nov-2023 às 12:22
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bombeiros`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `anamnese`
--

CREATE TABLE `anamnese` (
  `id_anamnese` int(11) NOT NULL,
  `O_que_aconteceu` text DEFAULT NULL,
  `Aconteceu_outras_vezes` tinyint(1) DEFAULT NULL,
  `A_quanto_tempo_isso_aconteceu` text DEFAULT NULL,
  `Possui_algum_problema_de_saude` tinyint(1) DEFAULT NULL,
  `Quais_broblemas` text DEFAULT NULL,
  `Faz_uso_de_medicacao` tinyint(1) DEFAULT NULL,
  `Quais_medicacoes` text DEFAULT NULL,
  `Horario_da_ultima_medicacao` time(5) DEFAULT NULL,
  `Alergico_a_algo` tinyint(1) DEFAULT NULL,
  `Especifique` text DEFAULT NULL,
  `Ingeriu_alimento_ou_liquido_mais_seish` tinyint(1) DEFAULT NULL,
  `Que_horas` time(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `anamnese_gestacional`
--

CREATE TABLE `anamnese_gestacional` (
  `id_anamnese_gestacional` int(11) NOT NULL,
  `Periodo_de_gestacao` text DEFAULT NULL,
  `Fez_prenatal` tinyint(1) DEFAULT NULL,
  `Nome_do_medico` text DEFAULT NULL,
  `possibilidade_de_complicacoes` tinyint(1) DEFAULT NULL,
  `primeiro_filho` tinyint(1) DEFAULT NULL,
  `Quantos` text DEFAULT NULL,
  `Que_horas_iniciaram_as_contracoes` time(5) DEFAULT NULL,
  `Duracao` text DEFAULT NULL,
  `Intervalo` text DEFAULT NULL,
  `Sente_pressao_quadril_ou_vontade_evacuar` tinyint(1) DEFAULT NULL,
  `ruptura_da_bolsa` tinyint(1) DEFAULT NULL,
  `Foi_feito_inspecao_visual` tinyint(1) DEFAULT NULL,
  `Parto_realizado` tinyint(1) DEFAULT NULL,
  `Hora_do_nascimento` time(5) DEFAULT NULL,
  `Sexo_do_bebe` tinyint(1) DEFAULT NULL,
  `Nome_do_bebe` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao_paciente_maior`
--

CREATE TABLE `avaliacao_paciente_maior` (
  `id_avaliacao_paciente_maior` int(11) NOT NULL,
  `abertura_ocular` varchar(26) DEFAULT NULL,
  `resposta_verbal` varchar(26) DEFAULT NULL,
  `resposta_motora` varchar(26) DEFAULT NULL,
  `total` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao_paciente_menor`
--

CREATE TABLE `avaliacao_paciente_menor` (
  `id_avaliacao_paciente_menor` int(11) NOT NULL,
  `abertura_ocular` varchar(17) NOT NULL,
  `resposta_verbal` varchar(28) NOT NULL,
  `resposta_motora` varchar(39) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id_usuario` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `nome` text NOT NULL,
  `senha` varchar(45) NOT NULL,
  `telefone` varchar(12) NOT NULL,
  `admin_usu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id_usuario`, `email`, `nome`, `senha`, `telefone`, `admin_usu`) VALUES
(1, 'camilareinert2006@gmail.com', 'camila', '1234', '47 999101472', 'n'),
(2, 'camilareinert2006@gmail.com', '', '180106', '', ''),
(3, 'camilareinert2006@gmail.com', '', '180106', '', ''),
(4, 'camilareinert2006@gmail.com', '', '180106', '', ''),
(5, '', '', '', '', ''),
(6, 'camilareinert2006@gmail.com', 'camila', '180106', '47 999101472', 's');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cinematica`
--

CREATE TABLE `cinematica` (
  `id_cinematica` int(2) NOT NULL,
  `Disturbio_de_comportamento` tinyint(1) DEFAULT NULL,
  `Encontrado_de_capacete` tinyint(1) DEFAULT NULL,
  `Encontrado_de_cinto` tinyint(1) DEFAULT NULL,
  `Para_brisas_avariado` tinyint(1) DEFAULT NULL,
  `Caminhando_na_cena` tinyint(1) DEFAULT NULL,
  `Painel_avariado` tinyint(1) DEFAULT NULL,
  `Volante_torcido` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cinematica`
--

INSERT INTO `cinematica` (`id_cinematica`, `Disturbio_de_comportamento`, `Encontrado_de_capacete`, `Encontrado_de_cinto`, `Para_brisas_avariado`, `Caminhando_na_cena`, `Painel_avariado`, `Volante_torcido`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `decisao_transporte`
--

CREATE TABLE `decisao_transporte` (
  `id_decisao_transporte` int(11) NOT NULL,
  `estado` varchar(26) DEFAULT NULL,
  `M` text DEFAULT NULL,
  `S1` text DEFAULT NULL,
  `S2` text DEFAULT NULL,
  `Demante` text DEFAULT NULL,
  `equipe` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `forma_conducao`
--

CREATE TABLE `forma_conducao` (
  `id_forma_conducao` int(11) NOT NULL,
  `forma_conducao` varchar(26) DEFAULT NULL,
  `vitima_era` varchar(26) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `forma_conducao`
--

INSERT INTO `forma_conducao` (`id_forma_conducao`, `forma_conducao`, `vitima_era`) VALUES
(1, 'Espontânea', 'Pass moto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `localizacao_traumas_maior`
--

CREATE TABLE `localizacao_traumas_maior` (
  `id_localizacao_traumas_maior` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `localizacao_traumas_menor`
--

CREATE TABLE `localizacao_traumas_menor` (
  `id_localizacao_traumas_menor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id_usuario` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id_usuario`, `email`, `senha`) VALUES
(1, 'camilareinert2006@gmail.com', '180106'),
(2, 'camilareinert2006@gmail.com', '180106');

-- --------------------------------------------------------

--
-- Estrutura da tabela `maior`
--

CREATE TABLE `maior` (
  `id_maior` int(11) NOT NULL,
  `queimadura` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `materiais_utilizados`
--

CREATE TABLE `materiais_utilizados` (
  `id_materiais_utilizados` int(11) NOT NULL,
  `Material` text DEFAULT NULL,
  `quantidade` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `objetos_recolhidos`
--

CREATE TABLE `objetos_recolhidos` (
  `id_objetos_recolhidos` int(11) NOT NULL,
  `objetos_recolhidos_u` text NOT NULL,
  `objetos_recolhidos_d` text DEFAULT NULL,
  `objetos_recolhidos_t` text DEFAULT NULL,
  `objetos_recolhidos_q` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL,
  `nome_hospital_paciente` varchar(45) DEFAULT NULL,
  `data_paciente` date DEFAULT NULL,
  `sexo_paciente` varchar(1) DEFAULT NULL,
  `nome_paciente` varchar(45) DEFAULT NULL,
  `idade_paciente` varchar(45) DEFAULT NULL,
  `rg_cpf_paciente` varchar(45) DEFAULT NULL,
  `fone_paciente` varchar(45) DEFAULT NULL,
  `acompanhante_paciente` varchar(45) DEFAULT NULL,
  `idade_acompanhante_paciente` int(11) DEFAULT NULL,
  `local_ocorrencia_paciente` varchar(45) DEFAULT NULL,
  `n_usb_paciente` varchar(45) DEFAULT NULL,
  `cod_ur_paciente` varchar(45) DEFAULT NULL,
  `n_ocorr_paciente` varchar(45) DEFAULT NULL,
  `cod_ps_paciente` varchar(1) DEFAULT NULL,
  `desp_paciente` varchar(45) DEFAULT NULL,
  `h_ch_paciente` varchar(45) DEFAULT NULL,
  `km_final_paciente` varchar(45) DEFAULT NULL,
  `cod_sia_sus_paciente` int(45) DEFAULT NULL,
  `socorrista` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`id_paciente`, `nome_hospital_paciente`, `data_paciente`, `sexo_paciente`, `nome_paciente`, `idade_paciente`, `rg_cpf_paciente`, `fone_paciente`, `acompanhante_paciente`, `idade_acompanhante_paciente`, `local_ocorrencia_paciente`, `n_usb_paciente`, `cod_ur_paciente`, `n_ocorr_paciente`, `cod_ps_paciente`, `desp_paciente`, `h_ch_paciente`, `km_final_paciente`, `cod_sia_sus_paciente`, `socorrista`) VALUES
(32, 'ç', '2023-10-27', 'm', 'ç', '17', '1', '13454', 'ehsfdbh', 20, 'shsfgh', '1', '1', '123', '1', '1', '1', '1', 1, ''),
(33, 'a', '0000-00-00', 'm', 'a', '1', '1', '1', 'a', 1, 'a', '1', '1', '1', '1', '1', '1', '1', 1, '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `abertura_ocular` text DEFAULT NULL,
  `resposta_verbal` text DEFAULT NULL,
  `resposta_motora` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `problemas_suspeitos`
--

CREATE TABLE `problemas_suspeitos` (
  `id_problemas_suspeitos` int(11) NOT NULL,
  `psiquiatrico` varchar(45) DEFAULT NULL,
  `respiratorio` varchar(45) DEFAULT NULL,
  `trespiratorio` varchar(45) DEFAULT NULL,
  `diabetes` varchar(45) DEFAULT NULL,
  `tdiabetes` varchar(45) DEFAULT NULL,
  `obstetrico` varchar(45) DEFAULT NULL,
  `tobstetrico` varchar(26) DEFAULT NULL,
  `transporte` varchar(45) DEFAULT NULL,
  `tipo_transporte` varchar(26) DEFAULT NULL,
  `outros` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `procedimentos_efetuados`
--

CREATE TABLE `procedimentos_efetuados` (
  `id_procedimentos_efetuados` int(11) NOT NULL,
  `aspiracao` tinyint(1) DEFAULT NULL,
  `avaliacao_inicial` tinyint(1) DEFAULT NULL,
  `avaliacao_continuada` tinyint(1) DEFAULT NULL,
  `chave_de_rautek` tinyint(1) DEFAULT NULL,
  `canula_de_guedel` tinyint(1) DEFAULT NULL,
  `desobstrucao_de_va` tinyint(1) DEFAULT NULL,
  `desobstrucao_do_dea` tinyint(1) DEFAULT NULL,
  `emprego_do_dea` tinyint(1) DEFAULT NULL,
  `gerenciamento_dos_riscos` tinyint(1) DEFAULT NULL,
  `limpeza_de_ferimentos` tinyint(1) DEFAULT NULL,
  `curativos` tinyint(1) DEFAULT NULL,
  `compressivo` tinyint(1) DEFAULT NULL,
  `encravamento` tinyint(1) DEFAULT NULL,
  `ocular` tinyint(1) DEFAULT NULL,
  `queimadura` tinyint(1) DEFAULT NULL,
  `simples` tinyint(1) DEFAULT NULL,
  `3_pontas` tinyint(1) DEFAULT NULL,
  `imobilizacoes` tinyint(1) DEFAULT NULL,
  `membro_do_inf_dir` tinyint(1) DEFAULT NULL,
  `membro_do_inf_esq` tinyint(1) DEFAULT NULL,
  `membro_do_sup_dir` tinyint(1) DEFAULT NULL,
  `membro_do_sup_esq` tinyint(1) DEFAULT NULL,
  `quadril` tinyint(1) DEFAULT NULL,
  `cervical` tinyint(1) DEFAULT NULL,
  `maca_sobre_rodas` tinyint(1) DEFAULT NULL,
  `maca_rigida` tinyint(1) DEFAULT NULL,
  `retirado_do_capacete` tinyint(1) DEFAULT NULL,
  `rcp` tinyint(1) DEFAULT NULL,
  `rolamento_90` tinyint(1) DEFAULT NULL,
  `rolamento_180` tinyint(1) DEFAULT NULL,
  `tomada_decisao` tinyint(1) DEFAULT NULL,
  `tratamento_de_choque` tinyint(1) DEFAULT NULL,
  `uso_de_canula` tinyint(1) DEFAULT NULL,
  `uso_colar` tinyint(1) DEFAULT NULL,
  `tam_colar` varchar(26) DEFAULT NULL,
  `uso_ked` tinyint(1) DEFAULT NULL,
  `uso_TTF` tinyint(1) DEFAULT NULL,
  `ventilacao_suporte` tinyint(1) DEFAULT NULL,
  `usou_oxigenoterapia` tinyint(1) DEFAULT NULL,
  `LPM_oxi` int(26) DEFAULT NULL,
  `usou_reanimador` tinyint(1) DEFAULT NULL,
  `LPM_rea` int(11) DEFAULT NULL,
  `meios_auxiliares` tinyint(1) DEFAULT NULL,
  `celesc` tinyint(1) DEFAULT NULL,
  `uso_policia` tinyint(1) DEFAULT NULL,
  `tipo_policia` varchar(2) DEFAULT NULL,
  `def_civil` tinyint(1) DEFAULT NULL,
  `ipg_pc` tinyint(1) DEFAULT NULL,
  `samu` tinyint(1) DEFAULT NULL,
  `cit` tinyint(1) DEFAULT NULL,
  `Outros` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `responsavel`
--

CREATE TABLE `responsavel` (
  `id_responsavel` int(11) NOT NULL,
  `nome_responsavel` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `responsavel`
--

INSERT INTO `responsavel` (`id_responsavel`, `nome_responsavel`) VALUES
(1, 'Maefgafdz'),
(2, 'Mateus Casas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sinais`
--

CREATE TABLE `sinais` (
  `id_sinais` int(11) NOT NULL,
  `abdomen` varchar(45) NOT NULL,
  `afundamento` varchar(45) NOT NULL,
  `agitacao` varchar(45) NOT NULL,
  `aminesia` varchar(45) NOT NULL,
  `apineia` varchar(45) NOT NULL,
  `bradicardia` varchar(45) NOT NULL,
  `bradipneia` varchar(45) NOT NULL,
  `bronco` varchar(45) NOT NULL,
  `cefaleia` varchar(45) NOT NULL,
  `cinose` varchar(45) NOT NULL,
  `convulsao` varchar(45) NOT NULL,
  `decorticacao` varchar(45) NOT NULL,
  `deformidade` varchar(45) NOT NULL,
  `descerebracao` varchar(45) NOT NULL,
  `desmaio` varchar(45) NOT NULL,
  `desvio` varchar(45) NOT NULL,
  `dispneia` varchar(45) NOT NULL,
  `dor` varchar(45) NOT NULL,
  `edema` varchar(45) NOT NULL,
  `enfisema` varchar(45) NOT NULL,
  `estase` varchar(45) NOT NULL,
  `face` varchar(45) NOT NULL,
  `hemorragia` varchar(45) NOT NULL,
  `hipertensao` varchar(45) NOT NULL,
  `hipotensao` varchar(45) NOT NULL,
  `nauses` varchar(45) NOT NULL,
  `nasoragia` varchar(45) NOT NULL,
  `obito` varchar(45) NOT NULL,
  `otorreia` varchar(45) NOT NULL,
  `ovace` varchar(45) NOT NULL,
  `parada` varchar(45) NOT NULL,
  `priaprismo` varchar(45) NOT NULL,
  `prurido` varchar(45) NOT NULL,
  `pupilas` varchar(45) NOT NULL,
  `sede` varchar(45) NOT NULL,
  `battle` varchar(45) NOT NULL,
  `guaxinim` varchar(45) NOT NULL,
  `sudorese` varchar(45) NOT NULL,
  `taquipneia` varchar(45) NOT NULL,
  `taquicardia` varchar(45) NOT NULL,
  `tontura` varchar(45) NOT NULL,
  `outros` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `sinais`
--

INSERT INTO `sinais` (`id_sinais`, `abdomen`, `afundamento`, `agitacao`, `aminesia`, `apineia`, `bradicardia`, `bradipneia`, `bronco`, `cefaleia`, `cinose`, `convulsao`, `decorticacao`, `deformidade`, `descerebracao`, `desmaio`, `desvio`, `dispneia`, `dor`, `edema`, `enfisema`, `estase`, `face`, `hemorragia`, `hipertensao`, `hipotensao`, `nauses`, `nasoragia`, `obito`, `otorreia`, `ovace`, `parada`, `priaprismo`, `prurido`, `pupilas`, `sede`, `battle`, `guaxinim`, `sudorese`, `taquipneia`, `taquicardia`, `tontura`, `outros`) VALUES
(1, 'on', 'on', 'on', 'on', '', '', '', '', '', 'on', '', 'on', '', '', '', '', '', '', 'on', '', '', 'on', 'on', '', '', '', '', '', '', 'on', '', '', '', '', 'on', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sinais_vitais`
--

CREATE TABLE `sinais_vitais` (
  `id_sinais_vitais` int(11) NOT NULL,
  `pressao_arterial` varchar(10) DEFAULT NULL,
  `pulso` varchar(10) DEFAULT NULL,
  `respiracao` varchar(10) DEFAULT NULL,
  `saturacao` varchar(10) DEFAULT NULL,
  `temperatura` varchar(10) DEFAULT NULL,
  `anormal` tinyint(1) DEFAULT NULL,
  `perfuracao` varchar(26) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `termos`
--

CREATE TABLE `termos` (
  `id_termos` int(11) NOT NULL,
  `eu` varchar(45) NOT NULL,
  `portador` varchar(45) NOT NULL,
  `inscrito` varchar(45) NOT NULL,
  `ass` varchar(45) NOT NULL,
  `testemunha_1` varchar(45) NOT NULL,
  `doc_1` varchar(45) NOT NULL,
  `testemunha_2` varchar(45) NOT NULL,
  `doc_2` varchar(45) NOT NULL,
  `endereço` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `termos`
--

INSERT INTO `termos` (`id_termos`, `eu`, `portador`, `inscrito`, `ass`, `testemunha_1`, `doc_1`, `testemunha_2`, `doc_2`, `endereço`) VALUES
(1, 'ana', '457', '24184.231887/9', 'Ana Costa', 'camila', '11', 'erick', '8', 'senai'),
(2, '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_emergencia`
--

CREATE TABLE `tipo_emergencia` (
  `id_tip_emergencia` int(3) NOT NULL,
  `tipo_emergencia` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tipo_emergencia`
--

INSERT INTO `tipo_emergencia` (`id_tip_emergencia`, `tipo_emergencia`) VALUES
(3, 'a');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `anamnese`
--
ALTER TABLE `anamnese`
  ADD PRIMARY KEY (`id_anamnese`);

--
-- Índices para tabela `anamnese_gestacional`
--
ALTER TABLE `anamnese_gestacional`
  ADD PRIMARY KEY (`id_anamnese_gestacional`);

--
-- Índices para tabela `avaliacao_paciente_maior`
--
ALTER TABLE `avaliacao_paciente_maior`
  ADD PRIMARY KEY (`id_avaliacao_paciente_maior`);

--
-- Índices para tabela `avaliacao_paciente_menor`
--
ALTER TABLE `avaliacao_paciente_menor`
  ADD PRIMARY KEY (`id_avaliacao_paciente_menor`);

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices para tabela `cinematica`
--
ALTER TABLE `cinematica`
  ADD PRIMARY KEY (`id_cinematica`);

--
-- Índices para tabela `decisao_transporte`
--
ALTER TABLE `decisao_transporte`
  ADD PRIMARY KEY (`id_decisao_transporte`);

--
-- Índices para tabela `forma_conducao`
--
ALTER TABLE `forma_conducao`
  ADD PRIMARY KEY (`id_forma_conducao`);

--
-- Índices para tabela `localizacao_traumas_maior`
--
ALTER TABLE `localizacao_traumas_maior`
  ADD PRIMARY KEY (`id_localizacao_traumas_maior`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices para tabela `maior`
--
ALTER TABLE `maior`
  ADD PRIMARY KEY (`id_maior`);

--
-- Índices para tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Índices para tabela `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `problemas_suspeitos`
--
ALTER TABLE `problemas_suspeitos`
  ADD PRIMARY KEY (`id_problemas_suspeitos`);

--
-- Índices para tabela `responsavel`
--
ALTER TABLE `responsavel`
  ADD PRIMARY KEY (`id_responsavel`) USING BTREE;

--
-- Índices para tabela `sinais`
--
ALTER TABLE `sinais`
  ADD PRIMARY KEY (`id_sinais`);

--
-- Índices para tabela `termos`
--
ALTER TABLE `termos`
  ADD PRIMARY KEY (`id_termos`);

--
-- Índices para tabela `tipo_emergencia`
--
ALTER TABLE `tipo_emergencia`
  ADD PRIMARY KEY (`id_tip_emergencia`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anamnese`
--
ALTER TABLE `anamnese`
  MODIFY `id_anamnese` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `anamnese_gestacional`
--
ALTER TABLE `anamnese_gestacional`
  MODIFY `id_anamnese_gestacional` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `avaliacao_paciente_maior`
--
ALTER TABLE `avaliacao_paciente_maior`
  MODIFY `id_avaliacao_paciente_maior` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `cinematica`
--
ALTER TABLE `cinematica`
  MODIFY `id_cinematica` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `forma_conducao`
--
ALTER TABLE `forma_conducao`
  MODIFY `id_forma_conducao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `problemas_suspeitos`
--
ALTER TABLE `problemas_suspeitos`
  MODIFY `id_problemas_suspeitos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `responsavel`
--
ALTER TABLE `responsavel`
  MODIFY `id_responsavel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `sinais`
--
ALTER TABLE `sinais`
  MODIFY `id_sinais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tipo_emergencia`
--
ALTER TABLE `tipo_emergencia`
  MODIFY `id_tip_emergencia` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `avaliacao_paciente_menor`
--
ALTER TABLE `avaliacao_paciente_menor`
  ADD CONSTRAINT `avaliacao_paciente_menor_ibfk_1` FOREIGN KEY (`id_avaliacao_paciente_menor`) REFERENCES `paciente` (`id_paciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
