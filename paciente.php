<?php
include("conecta.php");

$hospital = $_POST["hospital"];
$data = $_POST["data"];
$sexo = $_POST["sexo"];
$nome = $_POST["nome"];
$idade = $_POST["idade"];
$rg_cpf = $_POST["rg_cpf"];
$telefone = $_POST["telefone"];
$acompanhante_paciente = $_POST["acompanhante_paciente"];
$idade_acompanhante = $_POST["idade_acompanhante"];
$local_ocorrencia = $_POST["local_ocorrencia"];
$n_usb = $_POST["n_usb"];
$n_ocorrencia = $_POST["n_ocorrencia"];
$desp = $_POST["desp"];
$h_ch = $_POST["h_ch"];
$km_final = $_POST["km_final"];
$cod_ur = $_POST["cod_ur"];
$cod_ps = $_POST["cod_ps"];
$cod = $_POST["cod"];
$socorrista = $_POST["socorrista"];

$comando = $pdo->prepare("INSERT INTO paciente (nome_hospital_paciente, data_paciente, sexo_paciente, nome_paciente, idade_paciente, rg_cpf_paciente, fone_paciente, acompanhante_paciente, idade_acompanhante_paciente, local_ocorrencia_paciente, n_usb_paciente, cod_ur_paciente, n_ocorr_paciente, cod_ps_paciente, desp_paciente, h_ch_paciente, km_final_paciente, cod_sia_sus_paciente, socorrista) VALUES ('$hospital', '$data', '$sexo','$nome','$idade','$rg_cpf','$telefone','$acompanhante_paciente','$idade_acompanhante','$local_ocorrencia','$n_usb','$n_ocorrencia','$desp', '$h_ch',  '$km_final', '$cod_ur', '$cod_ps','$cod', '$socorrista')");

if (!$comando) {
    die('Erro na preparação da consulta: ' . print_r($pdo->errorInfo(), true));
}

$resultado = $comando->execute();

if (!$resultado) {
    die('Erro na execução da consulta: ' . print_r($comando->errorInfo(), true));
}

// Para voltar no formulário:
header("Location: tipoemerg.html");
?>