<%
Option Explicit
Dim Conexion
Dim permiso
Dim i

Dim jefe 
jefe = Session("loged_user")
permiso = Request.Form("empleado")
Dim add3
Dim add4
Set Conexion = CreateObject("ADODB.Connection")
Set add3 = CreateObject("ADODB.Recordset")
Set add4 = CreateObject("ADODB.Recordset")
Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=workflow_cec2;uid=cec55;pwd=cec55"
add3.Open "SELECT * FROM [perfilers] where boss =" & jefe & " AND owner =" & permiso , Conexion 
if not add3.EOF  then 
i =50
while i > 1
	if (add3(i)= true) then
		Session(i)= true
	else
		Session(i)= false
	End If	
	i = i - 1		      
WEND
	add3.Close
	Conexion.Close				
	set Conexion=nothing
	Response.Redirect("../Vista_supervisor_entrega_facultades.asp")
Else
	add3.Close
	add4.Open "insert into [perfilers](owner ,boss ) values ("  & permiso &" , "& jefe & ")" , Conexion
	
	Conexion.Close				
	set Conexion=nothing

	Response.Redirect("../Vista_supervisor_entrega_facultades.asp")	
	add4.Close
End If
%>