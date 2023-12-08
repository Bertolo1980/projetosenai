<?php

class UpdateGenerico {
    private $conexao;

    public function __construct($conexao) {
        $this->conexao = $conexao->obterConexao();
    }

    public function atualizar($tabela, $dados, $condicao) {
        $campos = array_map(function ($campo) {
            return "$campo = :$campo";
        }, array_keys($dados));
        $camposStr = implode(', ', $campos);

        $consulta = "UPDATE $tabela SET $camposStr WHERE " . implode(' AND ', array_map(function ($campo) {
                return "$campo = :$campo";
            }, array_keys($condicao)));

        $parametros = array_merge($dados, $condicao);

        $stmt = $this->conexao->prepare($consulta);
        $resultado = $stmt->execute($parametros);

        if ($resultado) {
            return "Atualização realizada com sucesso.";
        } else {
            return "Erro ao atualizar: " . implode(', ', $stmt->errorInfo());
        }
    }
}

/* Exemplo de uso
require_once 'ConexaoBD.php';
$conexaoBD = new ConexaoBD();
$update = new UpdateGenerico($conexaoBD);

// Dados para atualização (substitua pelos dados reais)
$dadosParaAtualizacao = [
    'nome' => 'Amanda Laura',
    'email' => 'amanda_castro@universo4d.com.br',
];

$condicao = ['usuario_id' => 8]; // Substitua 'usuario_id' pelo nome correto da coluna na sua tabela

// Chamada para o método de atualização
$resultadoAtualizacao = $update->atualizar('usuario', $dadosParaAtualizacao, $condicao);

// Exibir o resultado
echo $resultadoAtualizacao;
*/