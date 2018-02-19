<%
valor = Request.QueryString("va_1")
valor2 = Request.QueryString("va_2")
valor3 = Request.QueryString("va_3")
	Set Conexion = Server.CreateObject("ADODB.Connection")
	Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=wf_cec2;uid=cec55;pwd=cec55"
	Set rsproducto = Server.CreateObject("ADODB.Recordset")
	consulta ="insert into flujo_producto  values ( "&valor3&" , "&valor2&" , 0 , "&valor&")"
	rsproducto.Open consulta, Conexion
	Set rsproducto = Nothing
	Conexion.Close
	Set Conexion = Nothing
	Response.Redirect("../new_perfil.asp")
%>