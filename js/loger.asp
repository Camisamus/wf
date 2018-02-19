
<%
	Option Explicit
	Dim Conexion
	Dim a
	a = Request.Form("usuario")
	Dim b
	b = Request.Form("password")
	Dim add
	Set Conexion = CreateObject("ADODB.Connection")
	Set add = CreateObject("ADODB.Recordset")
	Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=wf_cec2;uid=cec55;pwd=cec55"
	add.Open "Select * from usuario WHERE login_user='"+a+"'AND contra_user='"+b+"'" , Conexion//+Session.('loged_user'), Conexion
	
	
	if not add.EOF  then 
	   Session("loged_user")=add("id_user")
	   Session("username")= add("nom_user")+" "+add("ape_pa_user")+" "+add("ape_ma_user")		
	   Session("anexo")= add("anexo")
	   
		add.Close
		add.Open "update usuario set estado_user = 1 WHERE login_user='"+a+"'AND contra_user='"+b+"'" , Conexion//+Session.('loged_user'), Conexion
		
		Conexion.Close				
		set Conexion=nothing
  		Response.Redirect("../entrada.asp?&haRRt-instant&ion=1&espv=2&ie=UTF-8#q=h-instant&ion=1&espv=2&ie=UTF-8#q=h&yyfc%HECHO%KKFctpd%POR%CSPht%CAMISAMUS%UTPttkl%fvv!!!")	
	Else
		add.Close
		Conexion.Close				
		set Conexion=nothing
  		Response.Redirect("../index.asp")
	End If
	//Response.Redirect("../chat.asp")
%>