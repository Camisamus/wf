<%
valor = Request.QueryString("va_1")
valor2 = Request.QueryString("va_2")
	Set Conexion = Server.CreateObject("ADODB.Connection")
	Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=wf_cec2;uid=cec55;pwd=cec55"
	Set rsproducto = Server.CreateObject("ADODB.Recordset")
	consulta ="insert into producto values ( '"&valor2&"' , 1 , "&valor&")"
	rsproducto.Open consulta, Conexion
	Set rsproducto = Nothing
	Conexion.Close
	Set Conexion = Nothing
	Response.Redirect("../ingreso_productos.asp")
%>