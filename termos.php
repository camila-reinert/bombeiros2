<?php
    include("conecta.php");
    
    $h1  = $_POST["h1"];
    $h2  = $_POST["h2"];
    $h3  = $_POST["h3"];
    $h4  = $_POST["h4"];
    $h5  = $_POST["h5"];
    $h6  = $_POST["h6"];
    $h7  = $_POST["h7"];
    $h8  = $_POST["h8"];
    $h9  = $_POST["h9"];

    
    $comando = $pdo->prepare("INSERT INTO termos VALUES(null,'$h1','$h2','$h3','$h4','$h5','$h6','$h7','$h8','$h9')" );
    // print_r($comando);
    // die();
    $resultado = $comando->execute();

    // Para voltar no formulário:
    header("Location: responsavel.html");


?>