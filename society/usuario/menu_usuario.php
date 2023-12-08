<?php
require_once '../include/verifica_sessao.php';
?>
<?= include '../include/cabcaho_menu_usuario.php'; ?>
<div id="content">
    <h2>Seja bem vindo <?= $_SESSION['usuario']?></h2>
    <p>Ao lado você pode verificar resevas disponíveis e configurar seus dados de cadastro</p>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>




