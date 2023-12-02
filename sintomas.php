<?php
    include("conecta.php");
    
    $abdomen         = $_POST["abdomen"];
    $afundamento     = $_POST["afundamento"];
    $agitacao        = $_POST["agitacao"];
    $aminesia        = $_POST["aminesia"];
    $apineia         = $_POST["apineia"];
    $bradicardia     = $_POST["bradicardia"];
    $bradipeneia     = $_POST["bradipeneia"];
    $bronco          = $_POST["bronco"];
    $cafaleia        = $_POST["cafaleia"];
    $cinose          = $_POST["cinose"];
    $convulsao       = $_POST["convulsao"];
    $decorticacao    = $_POST["decorticacao"];
    $deformidade     = $_POST["deformidade"];
    $descerebracao   = $_POST["descerebracao"];
    $desmaio         = $_POST["desmaio"];
    $desvio          = $_POST["desvio"];
    $dispneia        = $_POST["dispneia"];
    $dor             = $_POST["dor"];
    $edema           = $_POST["edema"];
    $enfisema        = $_POST["enfisema"];
    $estase          = $_POST["estase"];
    $face            = $_POST["face"];
    $hemorragia      = $_POST["hemorragia"];
    $hipertensao     = $_POST["hipertensao"];
    $hipotensao      = $_POST["hipotensao"];
    $nauses          = $_POST["nauses"];
    $nasoragia       = $_POST["nasoragia"];
    $obito           = $_POST["obito"];
    $otorreia        = $_POST["otorreia"];
    $ovace           = $_POST["ovace"];
    $parada          = $_POST["parada"];
    $priaprimo       = $_POST["priaprimo"];
    $prurido         = $_POST["prurido"];
    $pupilas         = $_POST["pupilas"];
    $sede            = $_POST["sede"];
    $battle          = $_POST["battle"];
    $guaxinim        = $_POST["guaxinim"];
    $sudorese        = $_POST["sudorese"];
    $taquipneia      = $_POST["taquipneia"];
    $taquicardia     = $_POST["taquicardia"];
    $tontura         = $_POST["tontura"];
    $outros          = $_POST["outros"];


    $comando = $pdo->prepare("INSERT INTO sinais VALUES(null,'$abdomen','$afundamento','$agitacao','$aminesia','$apineia','$bradicardia','$bradipeneia','$bronco','$cafaleia','$cinose','$convulsao','$decorticacao','$deformidade','$descerebracao','$desmaio','$desvio','$dispneia','$dor','$edema','$enfisema','$estase','$face','$hemorragia','$hipertensao','$hipotensao','$nauses','$nasoragia','$obito','$otorreia','$ovace','$parada','$priaprimo','$prurido','$pupilas','$sede','$battle','$guaxinim','$sudorese','$taquipneia','$taquicardia','$tontura','$outros')" );
    // print_r($comando);
    // die();
    $resultado = $comando->execute();

    // Para voltar no formulário:
    header("Location: corpo.html");
?>