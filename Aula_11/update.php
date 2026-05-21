<?php 
    require_once 'connect_postgres.php';

    $sql = "UPDATE alunos SET nome = 'Vinicius' WHERE id = 4";

    $conexao->exec($sql);

    echo "Aluno atualizado com sucesso!";
?>