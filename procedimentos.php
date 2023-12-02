<?php
include("conecta.php");

$procedimentos = $_POST["procedimentos"];
$outros = $_POST["outros"];


$comando = $pdo->prepare("INSERT INTO procedimentos_efetuados VALUES(null,'$procedimentos','$outros')");
// print_r($comando);
// die();
$resultado = $comando->execute();

// Para voltar no formulário:
header("Location: anamnese.html");

?>