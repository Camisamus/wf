<html>
<head>
</head>
<body>
<%
 dim sqlcomand
 sqlcomand = "HOLA"
 dim no_solicitud
 no_solicitud=Request.Form("nosoli")
 dim nombre_cliente
 nombre_cliente=Request.Form("nombrecli")
 dim apellido_paterno_cliente
 apellido_paterno_cliente=Request.Form("apcli")
 dim apellido_materno_cliente
 apellido_materno_cliente=Request.Form("amcli")
 dim rut_cliente
 rut_cliente=Request.Form("rutcli")
 dim telefono_cliente
 telefono_cliente=Request.Form("fonocli")
 dim area_cod_cliente
 area_cod_cliente=Request.Form("areacod")
 dim email_cliente
 email_cliente=Request.Form("mail")
 dim tipo_cuenta
 tipo_cuenta=Request.Form("tipocuenta")
 dim ejecutivo_cuenta
 ejecutivo_cuenta=Request.Form("ejecuenta")
 dim no_cuenta
 no_cuenta=Request.Form("nocuenta")
 dim no_tarjeta
 no_tarjeta=Request.Form("notarjeta")
 dim comentario
 comentario=Request.Form("coment")
 //if (no_solicitud == null) then
sqlcomand="INSERT INTO(tabla solicitud guardada) (nombre_cliente, apellido_paterno, apellido materno, rut, telefono, areacod, email, tipo_cuenta, ejecutivo_cuenta, no_cuenta, no_tarjeta, comentario) VALUES ("+no_solicitud+","+nombre_cliente+","+apellido_paterno_cliente+","+rut_cliente+","+telefono_cliente+","+area_cod_cliente+","+email_cliente+","+tipo_cuenta+","+no_cuenta+","+no_tarjeta+","+coment+");"
	//end if
Response.Write comentario
Response.Write sqlcomand
%>
</body>
</html>