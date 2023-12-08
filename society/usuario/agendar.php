<?php
session_start();
require_once '../include/verifica_sessao.php';
require_once '../class/ConexaoBD.php';
require_once '../class/LeituraGenerico.php';

$conexaoBD = new ConexaoBD();
$leitura = new LeituraGenerico($conexaoBD);
$usuario = $_SESSION['usuario'];
$resultadoPorUsuario = $leitura->obterPorUsuario('usuario', $usuario);
$usuario_id = $resultadoPorUsuario[0]['usuario_id'];
$empresa_id = 1;
$data = $_GET['data'];
$hora_inicio = $_GET['hora'].":00";
$hora_terminio = $_GET['hora_termino'].":00";
$status = "Pago";
$valor = 50.00;

try {
    $reservaExistente = $leitura->consultar("SELECT COUNT(*) as total FROM reserva WHERE usuario_id = :usuario_id AND data = :data AND hora_inicio = :hora_inicio", [
        'usuario_id' => $usuario_id,
        'data' => $data,
        'hora_inicio' => $hora_inicio,
    ]);

    if ($reservaExistente[0]['total'] > 0) {
        echo "Reserva já existente para esta data e hora. <meta http-equiv='refresh' content='2; url=http://localhost/society/usuario/reserva.php'>";
    } else {
        $conexaoBD = new ConexaoBD();
        $conexao = $conexaoBD->obterConexao();
        $conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $sql = "INSERT INTO reserva (usuario_id, empresa_id, data, hora_inicio, hora_terminio, status, valor) 
                VALUES (:usuario_id, :empresa_id, :data, :hora_inicio, :hora_terminio, :status, :valor)";

        $stmt = $conexao->prepare($sql);

        // Vincular os parâmetros
        $stmt->bindParam(':usuario_id', $usuario_id, PDO::PARAM_INT);
        $stmt->bindParam(':empresa_id', $empresa_id, PDO::PARAM_INT);
        $stmt->bindParam(':data', $data, PDO::PARAM_STR);
        $stmt->bindParam(':hora_inicio', $hora_inicio, PDO::PARAM_STR);
        $stmt->bindParam(':hora_terminio', $hora_terminio, PDO::PARAM_STR);
        $stmt->bindParam(':status', $status, PDO::PARAM_STR);
        $stmt->bindParam(':valor', $valor, PDO::PARAM_STR);

        $stmt->execute();

        echo "Dados inseridos com sucesso! <meta http-equiv='refresh' content='2; url=http://localhost/society/usuario/reserva.php'>";
    }
} catch (PDOException $e) {
    echo "Erro ao inserir dados: " . $e->getMessage() . "<meta http-equiv='refresh' content='2; url=http://localhost/society/usuario/reserva.php'>";
} finally {
    $conexão = null;
}

