<?php

class AutenticacaoEmpresa
{
    private $conexao;

    public function __construct($conexao) {
        $this->conexao = $conexao->obterConexao();
    }

    public function fazerLogin($usuario, $senha) {
        $consulta = "SELECT * FROM empresa WHERE nome_empresa = :nome_empresa";

        $stmt = $this->conexao->prepare($consulta);

        $stmt->bindParam(':nome_empresa', $usuario);

        $stmt->execute();

        $usuarioEncontrado = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($usuarioEncontrado && password_verify($senha, $usuarioEncontrado['senha'])) {
            return true;
        } else {
            return false;
        }
    }
}