<?php 
    require_once 'connect_postgres.php';

    $id = 2;

    $sql = "SELECT * FROM alunos WHERE id = :id";

    $stmt = $conexao->prepare($sql);
    $stmt->bindParam(":id", $id);
    $stmt->execute();

    $alunos = $stmt->fetchAll(PDO::FETCH_ASSOC);

    foreach ($alunos as $a){
        echo "ID: {$a['id']} | 
        Nome: {$a['nome']} {$a['sobrenome']} | 
        Data de nascimento: {$a['data_nascimento']} | 
        Turma: {$a['turma']} | ";
        echo "Ativo: " . ($a['ativo'] ? "Ativo":"Inativo") . "<hr><br>";
    }
?>