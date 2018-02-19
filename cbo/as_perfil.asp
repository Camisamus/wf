<%
valor = Request.QueryString("va_1")
valor2 = Request.QueryString("va_2")
valor3 = Request.QueryString("va_3")
//if (valor = null) then
//	Response.Redirect("../Vista_supervisor_entrega_facultades.asp")
if (valor = "") then
	Response.Redirect("../Vista_supervisor_entrega_facultades.asp")
	if (valor2 = "") then
		Response.Redirect("../Vista_supervisor_entrega_facultades.asp")
		if (valor3 = "") then
			Response.Redirect("../Vista_supervisor_entrega_facultades.asp")
		else	
		end if
	else
	end if 
else
	Set Conexion = Server.CreateObject("ADODB.Connection")
	Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=wf_cec2;uid=cec55;pwd=cec55"
	Set rsproducto = Server.CreateObject("ADODB.Recordset")
		consulta ="insert into relacion_user_perfil values ("&valor&","&valor2&","&valor3&")" 
		rsproducto.Open consulta, Conexion
		Set rsproducto = Nothing
		Conexion.Close
		Set Conexion = Nothing
		Response.Redirect("../Vista_supervisor_entrega_facultades.asp")
end if
//end if
%>