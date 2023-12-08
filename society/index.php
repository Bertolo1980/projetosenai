<?php
echo $_SERVER['PHP_SELF'];

if($_SERVER['PHP_SELF'] == '/society/index.php')
{
    header('Location: http://localhost/society/usuario/');
}elseif ($_SERVER['PHP_SELF'] == '/society/empresa/index.php')
{
    header('Location: http://localhost/society/empresa/');
}else
{
    echo "Página não existe";
}