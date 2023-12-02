<?php
    include("conecta.php");
    
    $n1  = $_POST["n1"];


    
    $comando = $pdo->prepare("INSERT INTO responsavel VALUES(null,'$n1')" );
    // print_r($comando);
    // die();
    $resultado = $comando->execute();

    // Para voltar no formulário:
    header("Location: paciente.html");


?>