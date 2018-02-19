<?php
session_start();
if ( isset( $_SESSION["login"] )  )
{
     echo'<form><input type="button" class="boton" value="CERRAR SESION" onClick="location.href = \'logout.php\'"></form>';
	if ( !$_SESSION["login"]  )
	{
		header("Location: index.php");
		exit();
	}	
}
else
{
	header("Location: index.php");
	exit();
}

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

