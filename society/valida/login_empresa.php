<?php
include '../include/verifica_sessao.php';
require_once '../class/ConexaoBD.php';
require_once '../class/AutenticacaoEmpresa.php';
require_once '../class/DadosDoformulario.php';


// Criar instâncias necessárias
$conexaoBD = new ConexaoBD();
$autenticacao = new AutenticacaoEmpresa($conexaoBD);
$dadosDoFormulario = new DadosDoFormulario();

// Obter dados do formulário
$nome_empresa = $dadosDoFormulario->obterDado('nome_empresa');
$senha = $dadosDoFormulario->obterDado('senha');
echo $senha;
// Tentar fazer login
if ($autenticacao->fazerLogin($nome_empresa, $senha)) {
    // Login bem-sucedido
    echo "Login bem-sucedido. Redirecionando para a página principal...";
    header('Location: http://localhost/society/empresa/central.php');
    // Adicione aqui a lógica de redirecionamento
    $_SESSION['usuario'] = $nome_empresa;
    $_SESSION['nivel_acesso'] = 1;
}
else {
    // Login falhou
    echo "Login falhou. Usuário ou senha incorretos.";
}
