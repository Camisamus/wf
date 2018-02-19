<html>
<head>
</head>
<body>
<%
dim sqlcomand
dim no_solicitud
no_solicitud=Request.Form("nosoli")
dim quien
quien = Request.Form("quien")
dim por
por = Request.Form("por")
dim com
com = Request.Form("com")
sqlcomand="INSERT INTO (tabla comentarios) (no_solicitud, quien, por, com) VALUES ("+no_solicitud+","+quien+","+por+","+com+");"
Response.Write sqlcomand


%>
</body>
</html>
