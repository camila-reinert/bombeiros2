<?php
    include("conecta.php");

    $obs1 = $_POST["obs1"];
    $obs2 = $_POST["obs2"];
    $obs3 = $_POST["obs3"];


    $comando = $pdo->prepare("INSERT INTO obs VALUES(null,'$obs1','$obs2','$obs3')");
    // print_r($comando);
    // die();
    $resultado = $comando->execute();

    // Para voltar no formulário:
    header("Location: cinematica.html");
    
?>