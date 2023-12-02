<?php
    include("conecta.php");

    $s1      = $_POST["s1"];
    $r1      = ($_POST["r1"]=="on")?1:0;
    $s2      = $_POST["s2"];
    $r2      = ($_POST["r2"]=="on")?1:0;
    $s3      = $_POST["s3"];
    $r3      = ($_POST["r3"]=="on")?1:0;
    $s4      = $_POST["s4"];
    $s5      = $_POST["s5"];
    $r4      = ($_POST["r4"]=="on")?1:0;
    $s6      = $_POST["s6"];
    $r5      = ($_POST["r5"]=="on")?1:0;
    $s7      = $_POST["s7"];
    
    $comando = $pdo->prepare("INSERT INTO anamnese VALUES(null,'$s1', '$r1','$s2','$r2','$s3','$r3','$s4','$s5','$r4','$s6','$r5','$s7')" );
    // print_r($comando);
    // die();
    $resultado = $comando->execute();

    // Para voltar no formulário:
    header("Location: gestacional.html");


?>