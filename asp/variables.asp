<%


	Set Conexion = Server.CreateObject("ADODB.Connection")
	Conexion.Open = "driver={SQL Server};server=LOCALHOST; database=workflow_cec2;uid=cec55;pwd=cec55"


function desconectar()
	Conexion.Close
	Set Conexion = Nothing
end function


%>

