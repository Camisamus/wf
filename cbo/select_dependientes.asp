
<%
sub generatipoproducto()

	Set Conexion = Server.CreateObject("ADODB.Connection")
	
	Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=wf_cec2;uid=cec55;pwd=cec55"

	
	Set rstipoproducto = Server.CreateObject("ADODB.Recordset")
	
	consulta = "select id_tipo_producto,tipo_producto from tipo_producto where estado_tipo_producto=1"
	rstipoproducto.Open consulta, Conexion
	

	' Voy imprimiendo el primer select compuesto por los paises
	Response.Write "<select class=""combo"" id=""select_0"" name=""tipoproducto"" onChange=""cargaContenido()"">"
	Response.Write "<option value='0'>Seleccione Tipo Producto</option>"
	While not rstipoproducto.EOF
		Response.Write "<option value=""" & rstipoproducto(0) & """>" & rstipoproducto(1) & "</option>"
		rstipoproducto.MoveNext
	Wend
	Response.Write "</select>"

	rstipoproducto.Close
	Set rstipoproducto = Nothing
	Conexion.Close
	Set Conexion = Nothing
End sub




%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<style type="text/css"> 
.punteado 
{ 
	border-style:dotted; 
	border-color:#000000; 
	background-color:#EAEAEA;
	font-family:Verdana; 
	font-size:10px; 
	text-align:center;
}

.combo
{
	font-family:Verdana; 
	font-size:10px; 
	border-color:#CCCCCC;
}
</style>

<script language="javascript" type="text/javascript">
function nuevoAjax()
{ 
	/* Crea el objeto AJAX. Esta funcion es generica para cualquier utilidad de este tipo, por
	lo que se puede copiar tal como esta aqui */
	var xmlhttp=false; 
	try 
	{ 
		// Creacion del objeto AJAX para navegadores no IE
		xmlhttp=new ActiveXObject("Msxml2.XMLHTTP"); 
	}
	catch(e)
	{ 
		try
		{ 
			// Creacion del objet AJAX para IE 
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP"); 
		} 
		catch(E) { xmlhttp=false; }
	}
	if (!xmlhttp && typeof XMLHttpRequest!='undefined') { xmlhttp=new XMLHttpRequest(); } 

	return xmlhttp; 
}

function cargaContenido()
{
	var valor=document.getElementById("select_0").options[document.getElementById("select_0").selectedIndex].value;
	console.log
	if(valor==0)
	{
		// Si el usuario eligio la opcion "Elige", no voy al servidor y pongo todo por defecto
		combo=document.getElementById("select_1");
		combo.length=0;
		var nuevaOpcion=document.createElement("option"); nuevaOpcion.value=0; nuevaOpcion.innerHTML="Selecciona Tipo Prodcuto...";
		combo.appendChild(nuevaOpcion);	combo.disabled=true;
	}
	else
	{
		ajax=nuevoAjax();
		ajax.open("GET", "select_dependientes_proceso.asp?seleccionado="+valor, true);
		ajax.onreadystatechange=function() 
		{ 
			if (ajax.readyState==1)
			{
				// Mientras carga elimino la opcion "Elige pais" y pongo una que dice "Cargando"
				combo=document.getElementById("select_1");
				combo.length=0;
				var nuevaOpcion=document.createElement("option"); nuevaOpcion.value=0; nuevaOpcion.innerHTML="Cargando...";
				combo.appendChild(nuevaOpcion); combo.disabled=true;	
			}
			if (ajax.readyState==4)
			{ 
				document.getElementById("fila_2").innerHTML=ajax.responseText;
			} 
		}
		ajax.send(null);
	}
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Ejemplo</title>
</head>

<body>
<center>
<table border="1" width="400" style="border-style:none;">
  <tr>
    <td id="fila_1" width="50%" class="punteado"><% generatipoproducto() %></td>
	<td id="fila_2" width="50%" class="punteado">
		<select class="combo" disabled="disabled" id="select_1" name="productos">
		<option id="valor_defecto" value="0">Selecciona Producto...</option>
		</select>
	</td>
  </tr>
</table>
</center>
</body>