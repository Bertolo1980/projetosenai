<?php
include '../include/verifica_sessao.php';
include "../include/cabecalho.php"
?>
<body>
<?php include "../include/menu.php"?>
<!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex justify-content-center align-items-center">
    <div class="container position-relative" data-aos="zoom-in" data-aos-delay="100">
        <h1>Sua reserva,<br>na palma da mão</h1>
        <h2>praticidade e agilidade</h2>
        <a href="reserva.php" class="btn-get-started">FAÇA SUA RESERVA</a>
    </div>
</section><!-- End Hero -->

<main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
        <div class="container" data-aos="fade-up">

            <div class="row">
                <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
                    <img src="../assets/img/about.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
                    <h3>Vantagens</h3>
                    <p class="fst-italic">
                        Facilidade
                    </p>
                    <ul>
                        <li><i class="bi bi-check-circle"></i>Reserva de campos por hora</li>
                        <li><i class="bi bi-check-circle"></i> Resesva semanal</li>
                        <li><i class="bi bi-check-circle"></i> Reserva mensal</li>
                    </ul>
                    <p>
                        Arenas com qualidade garantida.
                    </p>

                </div>
            </div>

        </div>
    </section><!-- End About Section -->
    <?php include "../include/rodape.php"?>
    <?php include "../include/jsrodape.php"?>
</body>

</html>
