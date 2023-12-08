<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

        <h1 class="logo me-auto"><a href="index.php">RESERV SOCIETY</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

        <nav id="navbar" class="navbar order-last order-lg-0">
            <ul>
                <?php
                include '../include/verifica_sessao.php';
                //echo "Bem vindo: ".$_SESSION['usuario'];
                ?>
                <li><a class="active" href="index.php">INICIAL</a></li>
                <li><a href="login.php">LOGIN</a></li>
                <li><a href="reserva.php">RESERVAS</a></li>
                <li><a href="avaliacoes.php">AVALIAÇÕES</a></li>
                <li><a href="sobre_empresa.php">SOBRE A EMPRESA</a></li>
                <li><a href="../suporte.php">SUPORTE</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->

    </div>
</header><!-- End Header -->
