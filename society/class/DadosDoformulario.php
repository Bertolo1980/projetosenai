<?php

class DadosDoFormulario {
    private $dados;

    public function __construct() {
        $this->dados = array_merge($_GET, $_POST);
    }

    public function obterDado($chave) {
        if (isset($this->dados[$chave])) {
            return $this->dados[$chave];
        } else {
            return null;
        }
    }

    public function todosOsDados() {
        return $this->dados;
    }

    public function criptografarSenha($senha) {
        // Usar password_hash() para gerar um hash seguro
        $hashSenha = password_hash($senha, PASSWORD_BCRYPT);
        return $hashSenha;
    }
}


/* Exemplo de uso
$dadosDoFormulario = new DadosDoFormulario();

// Dados do formulário (substitua pelos dados reais)
$dadosParaCadastro = $dadosDoFormulario->todosOsDados();

// Exemplo de uso da classe CadastroGenerico
$conexaoBD = new ConexaoBD();
$cadastro = new CadastroGenerico($conexaoBD);

// Chamada para o método de cadastro
$resultadoCadastro = $cadastro->cadastrar('usuario', $dadosParaCadastro);

// Exibir o resultado
//echo $resultadoCadastro;
*/