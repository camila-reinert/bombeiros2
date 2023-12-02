<?php
    include("conecta.php");
    
    $forma_conducao  = $_POST["forma_conducao"];
    $vitima_era  = $_POST["vitima_era"];



    $comando = $pdo->prepare("INSERT INTO forma_conducao VALUES(null,'$forma_conducao','$vitima_era')" );
    // print_r($comando);
    // die();
    $resultado = $comando->execute();

    // Para voltar no formulário:
    header("Location: procedimentos.html");


?>