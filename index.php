<?php
    include_once 'top.php';
?>
<form action="login.php" method="post" >
    <table>
        <tr><td>USUARIO</td><td><p><input name="user" maxlength="40"><td><a>Iniciar Session</a></td></input></p></td></tr>
        <tr><td>CLAVE</td><td><p><input name="clave" type="password" maxlength="40"></input</p></td><td><p><input title="Entrar" type="submit" class="boton"/></p></td></tr>
        
    </table>
</form>
<?php
    include_once 'bot.php';

