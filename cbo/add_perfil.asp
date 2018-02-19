<%
valor = Request.QueryString("va_1")
//if (valor = null) then
//	Response.Redirect("../new_perfil.asp")
if (valor = "") then
	Response.Redirect("../new_perfil.asp")
else
	Set Conexion = Server.CreateObject("ADODB.Connection")
	Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=wf_cec2;uid=cec55;pwd=cec55"
	Set rsproducto = Server.CreateObject("ADODB.Recordset")
	consulta ="insert into perfil values ('"&valor&"')" 
	rsproducto.Open consulta, Conexion
	Set rsproducto = Nothing
	Conexion.Close
	Set Conexion = Nothing
	Response.Redirect("../new_perfil.asp")
end if 
//end if
%>