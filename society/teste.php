<?php
// Inclua as classes necessárias
require_once './class/ConexaoBD.php'; // Substitua pelo caminho correto
require_once './class/leituraGenerico.php'; // Substitua pelo caminho correto

// Defina as variáveis de data e empresa_id
$anoAtual = date('Y');
$mesAtual = date('n');
$diaAtual = date('j');
$ano = isset($_GET['ano']) ? $_GET['ano'] : $anoAtual;
$mes = isset($_GET['mes']) ? $_GET['mes'] : $mesAtual;
$dia = isset($_GET['dia']) ? $_GET['dia'] : $diaAtual;
$empresa_id = 1; // Substitua pelo valor correto

// ... Restante do código ...

$horarios = ['13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23'];

echo "<div class='mt-4'>";
echo "<div class='row row-cols-1 row-cols-md-3'>";

echo "<div class='col'>";
echo "<div class='card bg-info-subtle text-white'>";
echo "<div class='card-body'>";
echo "<h5 class='card-title'>$dia/$mes/$ano</h5>";

// Criar instância da classe de leitura
$conexaoBD = new ConexaoBD();
$leitura = new LeituraGenerico($conexaoBD);

foreach ($horarios as $hora) {
    $dataHora = "$ano-$mes-$dia $hora:00";
    $reservaExistente = $leitura->consultar("SELECT COUNT(*) as total FROM reserva WHERE empresa_id = :empresa_id AND data = :data AND hora_inicio = :hora_inicio", [
        'empresa_id' => $empresa_id,
        'data' => $dataHora,
        'hora_inicio' => $dataHora,
    ]);

    if ($reservaExistente[0]['total'] > 0) {
        echo "<p class='card-text'>Reservado: $hora:00 - " . ($hora + 1) . ":00</p>";
    } else {
        echo "<p class='card-text'><a href='agendar.php?data=$ano-$mes-$dia&hora=$hora' class='btn btn-primary'>Agendar $hora:00 - " . ($hora + 1) . ":00</a></p>";
    }
}

// Construir os links para o Dia Anterior e Próximo Dia
echo "<p class='card-text'><a href='?ano=$ano&mes=$mes&dia=".date('Y-m-d', strtotime($ano . '-' . $mes . '-' . $dia . ' -1 day'))."' class='btn btn-primary'>Dia Anterior</a></p>";
echo "<p class='card-text'><a href='?ano=$ano&mes=$mes&dia=".date('Y-m-d', strtotime($ano . '-' . $mes . '-' . $dia . ' +1 day'))."' class='btn btn-primary'>Próximo Dia</a></p>";


// ... (código posterior) ...

echo "</div></div></div>";

echo "</div></div>";
?>
