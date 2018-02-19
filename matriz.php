<?php
include_once 'top.php';
include_once 'sesion.php';
echo 'Bienvenido :'.$_SESSION["user"];
?>
<table id="tableDynamic"></table>
<br>
<br><a href="#" onclick="loadTable();">Cargar 1</a> 
<br><a href="#" onclick="loadTable(4);">Cargar 0</a>
<?php
include_once 'bot.php';

