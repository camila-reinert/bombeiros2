<?php
    include("conecta.php");

    $periodo  = $_POST["periodo"];
    $r1       = ($_POST["r1"]=="on")?1:0;
    $nomeM    = $_POST["nomeM"];
    $r2       = ($_POST["r2"]=="on")?1:0;
    $r3       = ($_POST["r3"]=="on")?1:0;
    $quantos  = $_POST["quantos"];
    $horas    = $_POST["horas"];
    $duracao  = $_POST["duracao"];
    $intervalo  = $_POST["intervalo"];
    $r4       = ($_POST["r4"]=="on")?1:0;
    $r5       = ($_POST["r5"]=="on")?1:0;
    $r6       = ($_POST["r6"]=="on")?1:0;
    $r7       = ($_POST["r7"]=="on")?1:0;
    $horaNasc = $_POST["horaNasc"];
    $r8       = ($_POST["r8"]=="on")?1:0;
    $nomebb   = $_POST["nomebb"];


    $comando = $pdo->prepare("INSERT INTO anamnese_gestacional VALUES(null,'$periodo', '$r1','$nomeM','$r2','$r3','$quantos','$horas','$duracao','$intervalo','$r4','$r5','$r6','$r7','$horaNasc','$r8','$nomebb')" );
    // print_r($comando);
    // die();
    $resultado = $comando->execute();

    // Para voltar no formulário:
    header("Location: materiais.html");
    
?>