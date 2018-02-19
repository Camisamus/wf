<%
	Option Explicit
	Dim Conexion
	Dim a
	a = Request.Form("mensaje")
	Dim b
	b = Request.Form("destino")
	Dim add
	Set Conexion = CreateObject("ADODB.Connection")
	Set add = CreateObject("ADODB.Recordset")
	Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=workflow_cec2;uid=cec55;pwd=cec55"
	add.Open "INSERT INTO MSN VALUES ('"& a &"','"& b &"');" , Conexion
	Conexion.Close	
	set Conexion=nothing
	Response.Redirect("../chat.asp")
%>