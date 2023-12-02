<?php
// Verifica se o formulário foi submetido
include("conecta.php");
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Arrays para armazenar as seleções das checkboxes
    $abertura_ocular = $_POST["abertura_ocular"];
    $resposta_verbal = $_POST["resposta_verbal"];
    $resposta_motora = $_POST["resposta_motora"];
    $total = $_POST["total"];

    // // Converta os arrays em strings para armazenamento no banco de dados
    // $abertura_ocular_str = implode("Espontânea,Comando Verbal,Estímulo Doloroso,Nenhuma ", $abertura_ocular);
    // $resposta_verbal_str = implode("PALAVRAS E FRASE APROPRIADAS,PALAVRAS INAPROPRIADAS,CHORO PERSISTENTE OU GRITOS,SONS IMCOMPREENSÍVEIS,NENHUMA RESPOSTA VERBA ", $resposta_verbal);
    // $resposta_motora_str = implode("OBEDECE PRONTAMENTE,LOCALIZA DOR OU ESTÍMULO TÁTIL,RETIRADA DO SEGMENTO ESTIMULADO,FLEXÃO ANORMAL (DECORTICAÇÃO),EXTENSÃO ANORMAL (DECEREBRAÇÃO),AUSÊNCIA (PARALISIA FLÁCIDA, HIPOTONIA) ", $resposta_motora);

    // Consulta SQL para inserir os dados na tabela
    $sql = "INSERT INTO avaliacao_paciente_menor (abertura_ocular, resposta_verbal, resposta_motora, total) VALUES (:abertura_ocular, :resposta_verbal, :resposta_motora, :total)";

    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':abertura_ocular', $abertura_ocular, PDO::PARAM_STR);
    $stmt->bindParam(':resposta_verbal', $resposta_verbal, PDO::PARAM_STR);
    $stmt->bindParam(':resposta_motora', $resposta_motora, PDO::PARAM_STR);
    $stmt->bindParam(':total', $total, PDO::PARAM_INT); // Corrigido para PDO::PARAM_INT

    if ($stmt->execute()) {
        // echo 'Dados salvos com sucesso!';
        header("Location: sinaisvitais.html");
    } else {
        echo 'Erro ao salvar os dados: ' . $stmt->error;
    }

    // Feche a conexão
 
    $pdo->close();
}
?>