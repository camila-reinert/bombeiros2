<?php
    include("conecta.php");
    
    $tipo_emergencia  = $_POST["tipo_emergencia"];


    $comando = $pdo->prepare("INSERT INTO tipo_emergencia VALUES(null,'$tipo_emergencia')" );
    // print_r($comando);
    // die();
    $resultado = $comando->execute();

    // Para voltar no formulário:
    header("Location: corpo.html");


?>