<?php

class CadastroEmpresa {
    private $conexao;

    public function __construct($conexao) {
        $this->conexao = $conexao->obterConexao();
    }

    public function cadastrar($tabela, $dados) {
        if ($this->verificarExistencia($tabela, 'cnpj', $dados['cnpj']) || $this->verificarExistencia($tabela, 'email', $dados['email'])) {
            return "CNPJ ou e-mail já existem. Cadastro não realizado.";
        }

        $campos = implode(', ', array_keys($dados));
        $valores = ':' . implode(', :', array_keys($dados));
        $consulta = "INSERT INTO $tabela ($campos) VALUES ($valores)";

        $stmt = $this->conexao->prepare($consulta);
        $resultado = $stmt->execute($dados);

        if ($resultado) {
            return "Cadastro realizado com sucesso.";
        } else {
            return "Erro ao cadastrar: " . implode(', ', $stmt->errorInfo());
        }
    }

    private function verificarExistencia($tabela, $campo, $valor) {

        $consulta = "SELECT COUNT(*) FROM $tabela WHERE $campo = :valor";
        $stmt = $this->conexao->prepare($consulta);
        $stmt->bindParam(':valor', $valor);
        $stmt->execute();

        return $stmt->fetchColumn() > 0;
    }
}

/* Teeste de uso
$conexaoBD = new ConexaoBD();
$cadastro = new CadastroGenerico($conexaoBD);

// Dados do formulário (substitua pelos dados reais)
$dadosParaCadastro = [
    'cpf' => '12345678901',
    'email' => 'exemplo@email.com',
    'nome' => 'Nome Completo',
    'outro_campo' => 'Valor',
];

// Chamada para o método de cadastro
$resultadoCadastro = $cadastro->cadastrar('tabela_usuarios', $dadosParaCadastro);

// Exibir o resultado
echo $resultadoCadastro;
*/