<%
Option Explicit
Dim Conexion
Dim adoproducto
'Se crean dos objetos, una conexi�n y un recordset
Set Conexion = CreateObject("ADODB.Connection")
Set adoproducto = CreateObject("ADODB.Recordset")
Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=wf_cec2;uid=cec55;pwd=cec55"
%>
