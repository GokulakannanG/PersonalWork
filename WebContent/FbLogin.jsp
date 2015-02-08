<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Facebook Login</title>
<script type="text/javascript">

var login = function() {
		window.open("https://www.facebook.com/dialog/oauth?client_id=1557179327854174&display=popup&response_type=token&scope=email&redirect_uri=http://localhost:8080/FbLogin/fb",
						"", "width=200, height=100");
	}

</script>
</head>
<body>
	<div id=div style="display: none"></div>
	name:
	<input type="text" id="user"></input>
	<br> EmailId:
	<input type="text" id="email"></input>
	<br>
	<input type="button" onclick="alert('just to test');" value="login"></input>
	<input type="Button" onclick="login()" id="loginButton" value="FbLogin"></input>
</body>
</html>