<?php 
include 'conexao.php';

$id_usuario = $_GET['id_usuario'];

$sql = "SELECT * FROM `categoria` WHERE id_categoria = $id";
            $buscar = mysqli_query($conexao,$sql);
            while ($array = mysqli_fetch_array($buscar)) {
                $id_categoria = $array['id_categoria'];
                $categoria = $array['categoria'];
?>