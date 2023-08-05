<?php
// Obter os dados do formulário
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    // Conectar ao banco de dados
    $servername = "localhost"; // substitua pelo endereço do servidor do MySQL
    $database = "subtenencia"; // substitua pelo nome do banco de dados
    $username_db = "root"; // substitua pelo usuário do banco de dados
    $password_db = ""; // substitua pela senha do banco de dados

    $conn = new mysqli($servername, $username_db, $password_db, $database);

    // Verificar se a conexão foi bem sucedida
    if ($conn->connect_error) {
        die("Falha na conexão com o banco de dados: " . $conn->connect_error);
    }

    // Consulta para verificar o usuário e senha no banco de dados
    $sql = "SELECT * FROM tbUsers WHERE username = '$username' AND password = '$password'";
    $result = $conn->query($sql);

    if ($result === false) {
        // Caso ocorra algum erro na consulta
        die("Erro ao consultar o banco de dados: " . $conn->error);
    }

    if ($result->num_rows === 1) {
        // Login bem sucedido
        echo "Login realizado com sucesso!";
        // Aqui você pode redirecionar o usuário para a página de dashboard ou outra área restrita.
        
    } else {
        // Login inválido
        echo "Usuário ou senha inválidos.";
    }

    $conn->close();
}
?>
