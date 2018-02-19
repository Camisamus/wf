<%
Function validaValor(parametro)
	If parametro >= 100 AND parametro <= 20000 then
		validaValor = true
	Else
		validaValor = false
	End if
End Function
valor = Request.QueryString("seleccionado")
va2 = Request.QueryString("valor2")
if(validaValor(valor)) Then
	Set Conexion = Server.CreateObject("ADODB.Connection")
	Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=wf_cec2;uid=cec55;pwd=cec55"
	
	Set rsproducto = Server.CreateObject("ADODB.Recordset")
//	consulta = "SELECT cod_producto,producto FROM producto WHERE id_tipo_producto=" & valor
	consulta ="SELECT perfil.nombre_perfil, producto.producto, producto,cod_prod FROM perfil, usuario, relacion_user_perfil, perfil_prod, producto, tipo_producto WHERE perfil.id_perfil = relacion_user_perfil.id_perfil and usuario.id_user = relacion_user_perfil.id_user and relacion_user_perfil.id_perfil = perfil_prod.id_perfil and perfil_prod.cod_prod = producto.cod_producto and tipo_producto.id_tipo_producto =producto.id_tipo_producto and producto.id_tipo_producto = " & valor &" and usuario.id_user ="& va2
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
End if

%>

<!--SELECT perfil.nombre_perfil, producto.producto, producto,cod_prod 
FROM perfil, usuario, relacion_user_perfil, perfil_prod, producto, tipo_producto
WHERE perfil.id_perfil = relacion_user_perfil.id_perfil 
and usuario.id_user = relacion_user_perfil.id_user
and relacion_user_perfil.id_perfil = perfil_prod.id_perfil
and perfil_prod.cod_prod = producto.cod_producto
and tipo_producto.id_tipo_producto = 100
and usuario.id_user =  -->
