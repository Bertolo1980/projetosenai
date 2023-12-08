<?php

class DeleteGenerico {
    private $conexao;

    public function __construct($conexao) {
        $this->conexao = $conexao->obterConexao();
    }

    public function excluir($tabela, $condicao) {
        $where = implode(' AND ', array_map(function ($campo) {
            return "$campo = :$campo";
        }, array_keys($condicao)));

        $consulta = "DELETE FROM $tabela WHERE $where";

        $stmt = $this->conexao->prepare($consulta);
        $resultado = $stmt->execute($condicao);

        if ($resultado) {
            return "Exclusão realizada com sucesso. <meta http-equiv='refresh' content='http://localhost/society/usuario/index.php'>";
        } else {
            return "Erro ao excluir: " . implode(', ', $stmt->errorInfo())."<meta http-equiv='refresh' content='http://localhost/society/usuario/index.php'>";
        }
    }
}
