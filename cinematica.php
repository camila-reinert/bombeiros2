<?php
    include("conecta.php");
    
    $op1   = ($_POST["op1"]=="on")?1:0;
    $op2   = ($_POST["op2"]=="on")?1:0;
    $op3   = ($_POST["op3"]=="on")?1:0;
    $op4   = ($_POST["op4"]=="on")?1:0;
    $op5   = ($_POST["op5"]=="on")?1:0;
    $op6   = ($_POST["op6"]=="on")?1:0;
    $op7   = ($_POST["op7"]=="on")?1:0;

    
    $comando = $pdo->prepare("INSERT INTO cinematica VALUES(null,'$op1','$op2','$op3','$op4','$op5','$op6','$op7')" );
    // print_r($comando);
    // die();
    $resultado = $comando->execute();

    // Para voltar no formulário:
    header("Location: termos.html");


?>