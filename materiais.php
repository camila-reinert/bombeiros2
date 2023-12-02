<?php
    include("conecta.php");

    $op1  = $_POST["op1"];
    $op2  = $_POST["op2"];


    $comando = $pdo->prepare("INSERT INTO materiais_utilizados VALUES(null,'$op1', '$op2')" );
    // print_r($comando);
    // die();
    $resultado = $comando->execute();

    // Para voltar no formulário:
    header("Location: materiaishosp.html");
    
?>