<?php

class LeituraGenerico {
    private $conexao;

    public function __construct($conexao) {
        $this->conexao = $conexao->obterConexao();
    }

    public function consultar($consulta, $parametros = []) {
        $stmt = $this->conexao->prepare($consulta);
        $stmt->execute($parametros);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function obterTodos($tabela) {
        $consulta = "SELECT * FROM $tabela";
        return $this->consultar($consulta);
    }

    public function obterPorId($tabela, $id) {
        $consulta = "SELECT * FROM $tabela WHERE usuario_id = :usuario_id";
        $parametros = ['usuario_id' => $id];
        return $this->consultar($consulta, $parametros);
    }

    public function obterPorUsuario($tabela, $usuario) {
        $consulta = "SELECT * FROM $tabela WHERE usuario = :usuario";
        $parametros = ['usuario' => $usuario];
        return $this->consultar($consulta, $parametros);
    }
}

/*
require_once 'ConexaoBD.php';
$conexaoBD = new ConexaoBD();
$leitura = new LeituraGenerico($conexaoBD);


// Exemplo de consulta para obter todos os registros de uma tabela
//$resultadoConsulta = $leitura->obterTodos('usuario');

// Exemplo de consulta para obter um registro por ID
$idParaConsulta = 8;
$resultadoPorId = $leitura->obterPorId('usuario', $idParaConsulta);

// Exibir os resultados
//print_r($resultadoConsulta);
$usuario = "oliver";
$resultadoPorUsuario = $leitura->obterPorUsuario('usuario',$usuario);
print_r($resultadoPorUsuario);
print_r($resultadoPorId);
*/