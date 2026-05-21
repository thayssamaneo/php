<?php 
    require_once "connect_postgres.php";

    $sql = "INSERT INTO alunos(nome, sobrenome, data_nascimento, turma) VALUES (:nome, :sobrenome, :data_nascimento, :turma)";

    // stmt = statement
    $stmt = $conexao->prepare($sql);
    $stmt->bindValue(":nome", "Vinicius Eduardo");
    $stmt->bindValue(":sobrenome", "Pini");
    $stmt->bindValue(":data_nascimento", "2008-09-23");
    $stmt->bindValue(":turma", "I2D35");

    $stmt->execute();

    echo "Aluno inserido com sucesso!!<br>";
?>