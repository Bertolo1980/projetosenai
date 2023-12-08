<?php
$anoAtual = date('Y');
$mesAtual = date('n');
$diaAtual = date('j');

date_default_timezone_set('America/Sao_Paulo');

if (isset($_GET['data'])) {
    $data = $_GET['data'];
} else {
    $data = date('Y-m-d');
}

list($ano, $mes, $dia) = explode('-', $data);

$horarios = ['13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23'];
echo "<h1>Agendamentos de campos</h1>";
echo "<div class='mt-4'>";
echo "<div class='row row-cols-1 row-cols-md-3'>";

echo "<div class='col'>";
echo "<div class='card bg-info-subtle text-white'>";
echo "<div class='card-body'>";
echo "<h5 class='card-title text-bg-info'>$dia/$mes/$ano</h5>";

foreach ($horarios as $hora) {
    $horaInicio = new DateTime("$ano-$mes-$dia $hora:00", new DateTimeZone('America/Sao_Paulo'));
    $horaTermino = clone $horaInicio;
    $horaTermino->modify('+1 hour');

    $horaAtualBrasilia = new DateTime('now', new DateTimeZone('America/Sao_Paulo'));

    if ($horaInicio <= $horaAtualBrasilia) {
        echo "<p class='card-text'><button class='btn btn-secondary' disabled>Agendar $hora:00 - " . $horaTermino->format('H:i') . "</button></p>";
    } else {
        echo "<p class='card-text'><a href='agendar.php?data=$ano-$mes-$dia&hora=$hora&hora_termino=" . ($hora + 1) . "' class='btn btn-primary'>Agendar $hora:00 - " . $horaTermino->format('H:i') . "</a></p>";
    }
}

echo "<p class='card-text'><a href='?data=".date('Y-m-d', strtotime($data . ' -1 day'))."' class='btn btn-primary'>Dia Anterior</a></p>";
echo "<p class='card-text'><a href='?data=".date('Y-m-d', strtotime($data . ' +1 day'))."' class='btn btn-primary'>Próximo Dia</a></p>";
echo "</div></div></div>";

echo "</div></div>";

