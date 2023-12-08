<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Menu Empresa</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
        }

        #sidebar {
            position: fixed;
            height: 100%;
            width: 250px;
            background-color: #3498db; /* Azul */
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
            background-color: #2980b9; /* Azul mais escuro no hover */
        }

        #content {
            margin-left: 250px;
            padding: 20px;
        }
    </style>
</head>
<body>

<div id="sidebar">
    <a href="#">Página 1</a>
    <a href="#">Página 2</a>
    <a href="#">Página 3</a>
    <a href="#">Página 4</a>
</div>

<div id="content">
    <h2>Conteúdo da Página</h2>
    <p>Seu conteúdo vai aqui.</p>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
