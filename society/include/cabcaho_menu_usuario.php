<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <title>Menu usuário</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
        }

        #sidebar {
            position: fixed;
            height: 100%;
            width: 250px;
            background-color: #333;
            padding-top: 20px;
        }

        #sidebar a {
            padding: 15px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
        }

        #sidebar a:hover {
            background-color: #555;
        }

        #content {
            margin-left: 250px;
            padding: 20px;
        }
    </style>
</head>
<body>

<div id="sidebar">
    <a href="index.php">Página principal</a>
    <a href="reserva.php">Reservas disponíveis</a>
    <a href="configuracao.php">Configurações</a>
    <a href="../sair/sair.php">Sair</a>
</div>
