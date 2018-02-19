<%
Function validaValor(parametro)
	If parametro >= 100 AND parametro <= 20000 then
		validaValor = true
	Else
		validaValor = false
	End if
End Function
valor = Request.QueryString("seleccionado")
Set Conexion = Server.CreateObject("ADODB.Connection")
Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=wf_cec2;uid=cec55;pwd=cec55"
Set rsperfil = Server.CreateObject("ADODB.Recordset")
consulta = "SELECT perfil.nombre_perfil FROM perfil, usuario, relacion_user_perfil WHERE perfil.id_perfil = relacion_user_perfil.id_perfil and usuario.id_user = relacion_user_perfil.id_user and usuario.id_user=" & valor

rsperfil.Open consulta, Conexion

response.Write ""& rsperfil &""

/*if(validaValor(valor)) Then
	Set Conexion = Server.CreateObject("ADODB.Connection")
	Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=wf_cec2;uid=cec55;pwd=cec55"
	
	Set rsproducto = Server.CreateObject("ADODB.Recordset")
	consulta = "SELECT cod_producto,producto FROM producto WHERE id_tipo_producto=" & valor
	rsproducto.Open consulta, Conexion
	response.Write "<select class=""combo"" id=""select_1"" name=""estados"">"
	if( not(rsproducto.EOF)) then
		While Not rsproducto.EOF
			response.Write "<option value=""" & rsproducto(0) & """>" & Server.HtmlEncode(rsproducto(1)) & "</option>"
			rsproducto.MoveNext
		Wend
	
	else
			response.Write "<option value=""0"">Sin Producto</option>"
	end if
	response.Write "</select>"
	rsproducto.Close
	Set rsproducto = Nothing
	Conexion.Close
	Set Conexion = Nothing
End if*/
	rsproducto.Close
	Set rsproducto = Nothing
	Conexion.Close
	Set Conexion = Nothing
%>