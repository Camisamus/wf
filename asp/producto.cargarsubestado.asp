<%

Set Conexion = CreateObject("ADODB.Connection")
Set rsproducto = CreateObject("ADODB.Recordset")
Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=workflow_cec2;uid=cec55;pwd=cec55"
	
set valor=Request("elegido")
rsproducto.Open "Select cod_producto,nom_producto from producto where cod_tipoproducto='"& valor &"'", Conexion
response.write("<select class=""comboproducto2"" id=""comboproducto2"" name=""comboproducto2"">")
do while not rsproducto.EOF
	salida= salida & "<option value=""" & rsproducto("cod_producto") & """>" & rsproducto("nom_producto") & "</option>"
	rsproducto.MoveNext
loop
salida=salida & "</select>"
response.Write(salida)
Conexion.close
set Conexion=nothing

%>

