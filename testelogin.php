<?php
$comando = $pdo->prepare("SELECT * FROM usuarios WHERE email = '$email' and senha = '$senha'");
$resultado = $comando->execute();
$n = 0;
$administrador = "s";

while($linhas = $comando->fetch())
{
    $n = 1;
    $administrador = $linhas["administrador"];
    

 }

if($n == 1)
{
    if($administrador == "s")
    {
       header("location:menuadm.html");
        $_SESSION['usuario_logado']=$linhas["email"];

    } 
    else{
        header("location:paciente.html");
        $_SESSION['usuario_logado']=$linhas["email"];
    }
}
 else {
    
    $_SESSION['erro'] = "Usuário não encontrado. Verifique suas credenciais.";
    header("Location: login.html");
}

?>
?>