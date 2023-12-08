<?php

class ConexaoBD {
    private $host = 'localhost';
    private $bancoDeDados = 'futebol';
    private $usuario = 'root';
    private $senha = '';
    private $conexao;

    public function __construct() {
        try {
            $dsn = "mysql:host={$this->host};dbname={$this->bancoDeDados};charset=utf8mb4";
            $opcoes = [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                PDO::ATTR_EMULATE_PREPARES => false,
            ];

            $this->conexao = new PDO($dsn, $this->usuario, $this->senha, $opcoes);
        } catch (PDOException $e) {
            die("Erro na conexão com o banco de dados: " . $e->getMessage());
        }
    }

    public function obterConexao() {
        return $this->conexao;
    }

    public function fecharConexao() {
        $this->conexao = null;
    }
}

/* Exemplo de uso
$conexaoBD = new ConexaoBD();
$conexao = $conexaoBD->obterConexao();

// Agora você pode usar a variável $conexao para executar consultas no banco de dados
// ...

// Não se esqueça de fechar a conexão quando terminar de usá-la
$conexaoBD->fecharConexao();
*/