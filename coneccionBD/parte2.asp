<!-- #include file="parte1.asp" --> 
<HTML>
<HEAD>
<TITLE>Resultado</TITLE>
</HEAD>
<BODY>
Ejemplo de conexión a SQLServer con ASP-VBScript

<table width="30%" border="1" align="center">
 <tr>
   <td><center><b>Id</b></center></td>
   <td><center><b>Nombre</b></center></td>
 </tr>

<%
sql_1="select * from producto" 

response.Write(sql_1)
set rs_1=con.execute(sql_1)
do while not rs_1.eof
"id_producto=rs_l("id_producto")
producto=rs_l(producto)"
%>
<tr>  <td>
<%=id_producto%>
</td>  <td>
<%=producto%>
</td> </tr>
<%
rs_l.movenext
loop
%>
</table><!-- #include file="parte1.asp" --> 

</BODY>
</HTML>