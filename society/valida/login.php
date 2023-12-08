<?php
include '../include/verifica_sessao.php';
require_once '../class/ConexaoBD.php';
require_once '../class/Autenticacao.php';
require_once '../class/DadosDoformulario.php';

$conexaoBD = new ConexaoBD();
$autenticacao = new Autenticacao($conexaoBD);
$dadosDoFormulario = new DadosDoFormulario();

$usuario = $dadosDoFormulario->obterDado('usuario');
$senha = $dadosDoFormulario->obterDado('senha');
//echo $senha;

if ($autenticacao->fazerLogin($usuario, $senha)) {
    // Login bem-sucedido
    echo "Login bem-sucedido. Redirecionando para a página principal...";
    header('Location: http://localhost/society/usuario/menu_usuario.php');
    // Adicione aqui a lógica de redirecionamento
    $_SESSION['usuario'] = $usuario;
    $_SESSION['nivel_acesso'] = 2;
    }
 else {
    echo "Login falhou. Usuário ou senha incorretos. <meta http-equiv='refresh' content='3; url=http://localhost/society/usuario/login.php'>";
}

