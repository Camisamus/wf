<%
Option Explicit
Dim Conexion
Dim add
Dim nn
Set Conexion = CreateObject("ADODB.Connection")
Set add = CreateObject("ADODB.Recordset")
Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=workflow_cec2;uid=cec55;pwd=cec55"
add.Open "DELETE FROM msn WHERE destino='1'", Conexion
Conexion.Close
set Conexion=nothing
Response.Redirect("../chat.asp")
%>