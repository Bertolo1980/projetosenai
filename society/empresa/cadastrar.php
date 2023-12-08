<?php
require_once '../class/DadosDoFormulario.php';
require_once '../class/ConexaoBD.php';
require_once '../class/CadastroEmpresa.php';

$dadosDoFormulario = new DadosDoFormulario();

$dadosParaCadastro = $dadosDoFormulario->todosOsDados();

if (isset($dadosParaCadastro['senha'])) {
    $dadosParaCadastro['senha'] = password_hash($dadosParaCadastro['senha'], PASSWORD_BCRYPT);
}

$conexaoBD = new ConexaoBD();
$cadastro = new CadastroEmpresa($conexaoBD);

$resultadoCadastro = $cadastro->cadastrar('empresa', $dadosParaCadastro);

// Exibir o resultado
//echo $resultadoCadastro;


