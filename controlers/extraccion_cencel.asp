<html>
<head>
</head>
<body>
<%
dim sqlcomand
dim no_solicitud
no_solicitud= Session.Contents(id_cancel)
sqlcomand="UPDATE (tabla solicitudes) SET estado='canselada' where id_solicitud"+no_solicitud+" ;"
Response.Write sqlcomand


%>
</body>
</html>
