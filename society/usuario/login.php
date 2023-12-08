<?php
include '../include/verifica_sessao.php';

if(isset($_SESSION['usuario'])) {

    header("Location: menu_usuario.php");
    exit();
}
?>
<link rel="stylesheet" href="../assets/css/login.css">
<style>
    .desce{
        position: relative;
        top: 100px;
    }
</style>
<body>
<?php
include "../include/cabecalho.php";
include "../include/menu.php"
?>
    <div class="container desce">
        <div class="card card-container">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" method="post" action="../valida/login.php">

                <input type="text" id="inputEmail" class="form-control" name="usuario" placeholder="Informe o usuário" required autofocus>
                <input type="password" id="inputPassword" class="form-control" name="senha" placeholder="Informe a senha" required>
                <button class="btn btn-lg btn-primary btn-block btn-signin" name="acessar" type="submit">Acessar</button>
                <a href="form.php" class="btn btn-primary">não sou cadastrada(o)</a>
            </form><!-- /form -->
        </div><!-- /card-container -->
    </div><!-- /container -->
    <?php include "../include/jsrodape.php"?>
</body>
