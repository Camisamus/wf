<?php
    include_once 'top.php';
    include_once 'sesion.php';
?>
<br>
	
<form name="form1" onSubmit="return carga(document.form1.rut.value);" >

    Rut : <input type="text" name="rut" id="mirut" onkeypress="return valida(event);" /> 
        <input type="submit" value="Buscar" />
</form>
<br>	
<br>	
<table id="tableDynamic1" border="5" ></table>
<table id="tableDynamic2" border="5" ></table>
<table id="tableDynamic3" border="5" ></table>
<!--
<table id="tableDynamic4" border="5" ></table>
<table id="tableDynamic5" border="5" ></table>
-->
<br>
*Estado = 1 significa activo, = 2 significa inactivo 
<?php
    include_once 'bot.php';



