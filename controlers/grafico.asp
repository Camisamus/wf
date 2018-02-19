<%Option Explicit
Dim Conexion
Dim mensajes
Dim add
Dim add2
Set Conexion = CreateObject("ADODB.Connection")
Set add = CreateObject("ADODB.Recordset")
Set add2 = CreateObject("ADODB.Recordset")
Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=wf_cec2;uid=cec55;pwd=cec55"
add.Open "Select * from perfil", Conexion

%>
<p>Gráfico Vertical</p>
<table width="19%" border="0" cellspacing="2" cellpadding="0" height="10">
<td>
<% While Not add.eof%>
<tr valign="bottom">
<% 
Dim alto
add2.Open "select count(Solicitud.id_solicitud ) as Total_Filas from Solicitud, Rolles, bandeja, relacion_roll_perfil, perfil " &_
"where perfil.id_perfil = "& add("id_perfil") &_
" and perfil.id_perfil = relacion_roll_perfil.id_perfil " &_
"and Rolles.id_roll = relacion_roll_perfil.id_roll "&_
"and bandeja.id_roll = relacion_roll_perfil.id_roll " &_
"and Solicitud.id_bandeja = bandeja.id_bandeja", Conexion
alto = add2("Total_Filas")
Response.Write ("<img src=red.bmp width=10 height=" & alto & ">")
add2.Close
%>
</tr>
<tr> 
<%
	Response.Write(add("nombre_perfil")) 
	add.Movenext 
%>
</tr>
<%
	wend
	add.Close 
%>
</td>
</table>