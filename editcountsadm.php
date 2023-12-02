<?php
include("conecta.php");

    $sql = $pdo->prepare("SELECT * FROM cadastro");
    $sql->execute();
    if($sql->rowCount()>0){
        $usuario=$sql->fetchAll();
    }
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href=".//editcountsadm.css">
    <title>Editar Contas</title>

</head>
<body>
    <div class="cabecalho">
         Editar Contas
         <div class="logo">
            <img src="imagens/logo.png" style="width: 75px; margin: 0px;">
         </div>
    </div>
         <div class="principal">
            <div class="primeira">
                <div class="convidar">
                    <input type="text" class="pesq"><button class="add1">Pesquisar Usuário</button>
                </div>
            </div>
            Administrador

            
          
            <div class="terceira">
                <table>
                    <thead>
                        <tr>
                            <th>Codigo do Usuário</th>
                            <th>Email</th>
                            <th>Senha</th>
                            <th>Ações</th>
                        </tr>
                    </thead>
                    <?php

                foreach($usuario as $c){ ?>
                <tbody>
                    <tr>
                        <td> <?=$c['id_usuario']?></td>
                        <td><?=$c['email']?> </td>
                        <td><?=$c['senha']?></td>
                        <td>
                    <a class='btn btn-primary' href='cadastro.html'>
                        <svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-pen' viewBox='0 0 16 16'>
                            <path d='m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001m-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z'/>
                        </svg>
                    </a>

                    <a class='#' href='#'>
                        <svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-trash3' viewBox='0 0 16 16'>
                            <path d='M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5M11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5'/>
                        </svg>
                    </a>

                        </td>                     
                        <!-- Adicione mais linhas para outros usuários -->
                    </tbody>
                    <?php } ?>
                </table>
                <a class="button-container" href="cadastro.html">
                        <button class="button1">Adicionar Usuário</button>
                </a>
            </div>
         </div>
</body>
</html>