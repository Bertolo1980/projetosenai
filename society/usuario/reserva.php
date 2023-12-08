<?php
session_start();
require_once '../include/verifica_sessao.php';
?>
<?= include '../include/cabcaho_menu_usuario.php'; ?>
<div id="content">
   <?= include '../calendario/calendario.php'?>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>