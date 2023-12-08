<?php
class Autenticacao {
private $conexao;

public function __construct($conexao) {
$this->conexao = $conexao->obterConexao();
}

public function fazerLogin($usuario, $senha) {

$consulta = "SELECT * FROM usuario WHERE usuario = :usuario";

$stmt = $this->conexao->prepare($consulta);

$stmt->bindParam(':usuario', $usuario);

$stmt->execute();

$usuarioEncontrado = $stmt->fetch(PDO::FETCH_ASSOC);

if ($usuarioEncontrado && password_verify($senha, $usuarioEncontrado['senha'])) {
return true;
} else {
return false;
}
}
}

/* Exemplo de uso
require_once "ConexaoBD.php";
$conexaoBD = new ConexaoBD();
$autenticacao = new Autenticacao($conexaoBD);

// Substitua 'usuario_digitado' e 'senha_digitada' pelos dados reais fornecidos pelo formulário
$usuarioDigitado = 'henique';
$senhaDigitada = '1234567';

// Tentar fazer login
if ($autenticacao->fazerLogin($usuarioDigitado, $senhaDigitada)) {
// Redirecionar para a página após o login bem-sucedido
header("Location: http://localhost/society/usuario/reserva.php");
exit();
} else {
// Exibir uma mensagem de erro ou redirecionar para uma página de erro
echo "Login falhou. Usuário ou senha incorretos.";
}
*/