<%
	Option Explicit
	Dim Conexion
	Dim a
	a = Session("tb")
	Dim add
	Set Conexion = CreateObject("ADODB.Connection")
	Set add = CreateObject("ADODB.Recordset")
	Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=wf_cec2;uid=cec55;pwd=cec55"
	add.Open "INSERT INTO [perfil] VALUES ('"& a &"');" , Conexion
	Conexion.Close	
	set Conexion=nothing
	Session("cb")="Nuevo2"
	Response.Redirect("../roles_perfil.asp")
%>