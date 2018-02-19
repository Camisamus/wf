<%
valor = Request.QueryString("va_1")
valor2 = Request.QueryString("va_2")
valor3 = Request.QueryString("va_3")
	Set Conexion = Server.CreateObject("ADODB.Connection")
	Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=wf_cec2;uid=cec55;pwd=cec55"
	Set rsproducto = Server.CreateObject("ADODB.Recordset")
	consulta ="delete relacion_user_perfil where id_supervisor ="& valor &" and id_user = "& valor2 &" and id_perfil = " & valor3 
	rsproducto.Open consulta, Conexion
	Set rsproducto = Nothing
	Conexion.Close
	Set Conexion = Nothing
	Response.Redirect("../Vista_supervisor_entrega_facultades.asp")
%>