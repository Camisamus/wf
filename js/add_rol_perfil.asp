<%
	Option Explicit
	Dim Conexion
	Dim a
	a = Request.Form("per")
	Dim b
	b = Request.Form("pas")
	Dim add
	Set Conexion = CreateObject("ADODB.Connection")
	Set add = CreateObject("ADODB.Recordset")
	Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=workflow_cec2;uid=cec55;pwd=cec55"
	add.Open "INSERT INTO [relacion_roll_perfil] VALUES ('"& a &"','"& b &"');" , Conexion
	Conexion.Close	
	set Conexion=nothing
	Response.Redirect("../roles_perfil.asp")
%>