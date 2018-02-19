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

function cargaContenido(selectACargar)
{
	/*if (document.form1.canal_origen.selectedvalue = "Internet")
	{
	document.getElementById("fila_3_solvox").style.display = "block"; 
	}
*/
	// Recibo el número correspondiente al combo que se debe llenar de datos
	var selectAnterior=selectACargar-1; // Obtengo el número del combo que activó el evento onChange
	// Extraigo el valor del combo que se ha cambiado
	var valor=document.getElementById("select_"+selectAnterior).options[document.getElementById("select_"+selectAnterior).selectedIndex].value;
	var elemento;
	
	if(valor!=0)
	{
		ajax=nuevoAjax();
		// Envio al servidor el valor seleccionado y el combo al cual se le deben poner los datos
		//alert(selectACargar);
		ajax.open("GET", "combobox_producto.asp?seleccionado="+valor+"&select_a_cargar="+selectACargar, true);
		ajax.onreadystatechange=function() 
		{ 
			if (ajax.readyState==1)
			{
				// Mientras carga elimino la opcion "Elige" y pongo una que dice "Cargando"
				elemento=document.getElementById("select_"+selectACargar);
				elemento.length=0;
				var opcionCargando=document.createElement("option"); opcionCargando.value=0; opcionCargando.innerHTML="Cargando...";
				elemento.appendChild(opcionCargando); elemento.disabled=true;	
			}
			if (ajax.readyState==4)
			{
				// Coloco en la fila contenedora los datos que recivo del servidor
				document.getElementById("fila_"+selectACargar).innerHTML=ajax.responseText;
			} 
		}
		ajax.send(null);
	}
	
	/* Colocamos mediante los whiles los selects en "Selecciona opción..." cuando el select anterior
	ha quedado en estado "Elige" */
	var x=1, y=null;
	while(x<=2)
	{
		valor=document.getElementById("select_"+x).options[document.getElementById("select_"+x).selectedIndex].value;
		if(valor==0)
		{
			while(x<=2) 
			{
				y=x+1;
				elemento=document.getElementById("select_"+y);
				elemento.length=0;
				var opcionSelecciona=document.createElement("option"); opcionSelecciona.value=0; opcionSelecciona.innerHTML="Selecciona opci&oacute;n...";
				elemento.appendChild(opcionSelecciona); elemento.disabled=true;
				x++;
			}
		}
		x++;
	}
	
}