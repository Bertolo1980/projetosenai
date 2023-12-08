<?php
require_once '../class/DadosDoFormulario.php';
require_once '../class/ConexaoBD.php';
require_once '../class/CadastroGenerico.php';

$dadosDoFormulario = new DadosDoFormulario();

$dadosParaCadastro = $dadosDoFormulario->todosOsDados();

if (isset($dadosParaCadastro['senha'])) {
    $dadosParaCadastro['senha'] = password_hash($dadosParaCadastro['senha'], PASSWORD_BCRYPT);
}

$conexaoBD = new ConexaoBD();
$cadastro = new CadastroGenerico($conexaoBD);

$resultadoCadastro = $cadastro->cadastrar('usuario', $dadosParaCadastro);
header('Location: http://localhost/society/usuario/login.php');
// Exibir o resultado
//echo $resultadoCadastro;

