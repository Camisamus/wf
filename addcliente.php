<?php
    include_once 'top.php';
    include_once 'sesion.php';
?>
<form  id="form1" name="form1" onSubmit="daingreso('1',document.form1.rut.value,document.form1.rut1.value,document.form1.rut2.value,document.form1.rut3.value,document.form1.rut4.value,'2018-01-02','1');" >

    Rut : <input type="text" name="rut" id="mirut" /> 
    digito verificador : <input type="text" name="rut1" id="2" /> 
    nombre : <input type="text" name="rut2" id="3" /> 
    apellifo paterno : <input type="text" name="rut3" id="4" /> 
    apellido materno : <input type="text" name="rut4" id="5" /> 
    fecha nasimiento AAAA-MM-DD : <input type="text" name="rut5" id="6" /> 
    
        <input type="submit" value="enviar" />
</form>
<table id="table1" border="5" ></table>
<?php
    include_once 'bot.php';
