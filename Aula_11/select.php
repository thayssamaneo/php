<?php 
    require_once "connect_postgres.php";

    $sql = "SELECT * FROM alunos";

    // stmt = statement refere-se a um objeto pdostatement no contexto do pdo
    $stmt = $conexao->prepare($sql);
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