<%
valor = Request.QueryString("va_1")
valor2 = Request.QueryString("va_2")
	Set Conexion = Server.CreateObject("ADODB.Connection")
	Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=wf_cec2;uid=cec55;pwd=cec55"
	Set rsproducto = Server.CreateObject("ADODB.Recordset")
	consulta ="delete from relacion_roll_perfil where id_perfil ="&valor&" and id_roll =" & valor2 
	rsproducto.Open consulta, Conexion
	Set rsproducto = Nothing
	Conexion.Close
	Set Conexion = Nothing
	Response.Redirect("../new_perfil.asp")
%>