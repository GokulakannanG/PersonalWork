<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome!</title>
<script type="text/javascript">
var logout = function()
{
	document.cookie = "user=kannan; expires=Thu, 01 Jan 1970 00:00:00 UTC";
	window.location.href="http://localhost:8080/FbLogin/portal";
	
}</script>
</head>
<body>
you are logged in<br>
	<input type="button" value="logout" onclick = "logout()"></input>
</body>
</html>