<?php
require_once 'ConexaoBD.php';
require_once 'LeituraGenerico.php';
class Sessao {
    private $leitura;

    public function __construct($leitura) {
        $this->leitura = $leitura;

        if (session_status() == PHP_SESSION_NONE) {
            session_start();
        }
    }

    public function iniciarSessao($usuarios, $senha) {

        $consulta = "SELECT usuario_id, nome, senha FROM usuario WHERE usuario = :usuario";
        $parametros = ['usuario' => $usuarios];
        $resultado = $this->leitura->consultar($consulta, $parametros);

        if ($resultado) {
            $usuario = $resultado[0];

            $senhaArmazenada = $usuario['senha'];
            if (password_verify($senha, $senhaArmazenada)) {
                $_SESSION['usuario_id'] = $usuario['usuario_id'];
                $_SESSION['nome'] = $usuario['nome'];

                return true;
            }
        }

        return false;
    }

    public function encerrarSessao() {
        session_destroy();
    }

    public function obterInformacoesUsuario() {
        // Obter informações do usuário da sessão
        if (isset($_SESSION['usuario_id']) && isset($_SESSION['nome'])) {
            return [
                'usuario_id' => $_SESSION['usuario_id'],
                'nome' => $_SESSION['nome']
            ];
        } else {
            return null;
        }
    }
}

/* Exemplo de uso
$conexaoBD = new ConexaoBD();
$leitura = new LeituraGenerico($conexaoBD);
$sessao = new Sessao($leitura);

/* Exemplo de iniciar sessão
$usuarioLogin = 'oliver';
$senhaLogin = '123456';

if ($sessao->iniciarSessao($usuarioLogin, $senhaLogin)) {
    echo 'Sessão iniciada com sucesso!';
} else {
    echo 'Credenciais inválidas.';
}

// Exemplo de obter informações do usuário da sessão
$informacoesUsuario = $sessao->obterInformacoesUsuario();

if ($informacoesUsuario) {
    echo 'ID do Usuário: ' . $informacoesUsuario['usuario_id'] . '<br>';
    echo 'Nome do Usuário: ' . $informacoesUsuario['nome'];
} else {
    echo 'Sessão não iniciada.';
}

// Exemplo de encerrar sessão
$sessao->encerrarSessao();

*/