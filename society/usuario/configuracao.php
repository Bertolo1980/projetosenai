<?php
require_once '../include/verifica_sessao.php';
?>
<?= include '../include/cabcaho_menu_usuario.php'; ?>
<div id="content" class="container">
    <?php
    require_once '../class/ConexaoBD.php';
    require_once '../class/LeituraGenerico.php';
    require_once '../class/DadosDoformulario.php';
    require_once '../class/UpdateGenerico.php';
    require_once '../class/DeleteGenerico.php';

    $conexaoBD = new ConexaoBD();
    $leitura = new LeituraGenerico($conexaoBD);
    $update = new UpdateGenerico($conexaoBD);
    $usuario = $_SESSION['usuario'];
    $resultadoPorUsuario = $leitura->obterPorUsuario('usuario', $usuario);

    if (isset($_POST['atualizar_dados'])) {
        $dadosDoFormulario = new DadosDoFormulario();
        $id = $dadosDoFormulario->obterDado('usuario_id');
        $email = $dadosDoFormulario->obterDado('email');
        $celular = $dadosDoFormulario->obterDado('celular');
        $nome = $dadosDoFormulario->obterDado('nome');

        $dadosParaAtualizacao = [
            'email' => $email,
            'celular' => $celular,
            'nome' => $nome
        ];

        $condicao = ['usuario_id' => $id];

        $resultadoAtualizacao = $update->atualizar('usuario', $dadosParaAtualizacao, $condicao);

        echo "<p>Dados atualizados com sucesso!</p> <meta http-equiv='refresh' content='3; url=http://localhost/society/usuario/configuracao.php'>";
    } elseif (isset($_POST['excluir_conta']))
    {
        $dadosDoFormulario = new DadosDoFormulario();
        $id = $dadosDoFormulario->obterDado('usuario_id');
        $delete = new DeleteGenerico($conexaoBD);
        $condicao = ['usuario_id' => $id];

        $resultadoExclusao = $delete->excluir('usuario', $condicao);

        session_destroy();

        echo "<p>{$resultadoExclusao}</p>  <meta http-equiv='refresh' content='2; url=http://localhost/society/usuario/configuracao.php'>";
    }
    ?>

    <div class="row">
        <div class="col-md-6 offset-md-3">
            <h2 class="text-center">Editar Perfil</h2>

            <form action="" method="POST">
                <div class="mb-3">
                    <input type="text" name="usuario_id" class="form-control" value="<?= $resultadoPorUsuario[0]['usuario_id'] ?>" hidden="hidden">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">E-mail:</label>
                    <input type="text" name="email" class="form-control" value="<?= $resultadoPorUsuario[0]['email'] ?>">
                </div>

                <div class="mb-3">
                    <label for="celular" class="form-label">Celular:</label>
                    <input type="text" name="celular" class="form-control" value="<?= $resultadoPorUsuario[0]['celular'] ?>">
                </div>

                <div class="mb-3">
                    <label for="nome" class="form-label">Nome:</label>
                    <input type="text" name="nome" class="form-control" value="<?= $resultadoPorUsuario[0]['nome'] ?>">
                </div>

                <div class="text-center">
                    <button type="submit" name="atualizar_dados" class="btn btn-primary">Atualizar Dados</button>

                    <button type="submit" name="excluir_conta" class="btn btn-danger" onclick="return confirm('Tem certeza que deseja excluir sua conta?')">Excluir Conta</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
