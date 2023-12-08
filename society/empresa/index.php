<?php include '../include/cabecalho.php'?>
<link rel="stylesheet" href="../assets/css/login.css">
<body>
<div class="container desce">
    <div class="card card-container">
        <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
        <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
        <p id="profile-name" class="profile-name-card"></p>
        <form class="form-signin" method="post" action="../valida/login_empresa.php">
            <input type="text" id="inputEmail" class="form-control" name="nome_empresa" placeholder="Informe o nome da empresa" required autofocus>
            <input type="password" id="inputPassword" class="form-control" name="senha" placeholder="Informe a senha" required>
            <button class="btn btn-lg btn-primary btn-block btn-signin" name="acessar" type="submit">Acessar</button>
            <a href="form.php" class="btn btn-primary">não sou cadastrada(o)</a>
        </form><!-- /form -->
    </div><!-- /card-container -->
</div><!-- /container -->
</body>
