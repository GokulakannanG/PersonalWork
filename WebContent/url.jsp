<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logging in process</title>
</head>
<body>

	<script type="text/javascript">
		var value = null;
		var url = function() {

			var url = window.location.href;
			var hash = window.location.hash.substring(1).split("&");
			if (hash[0]) {
				var xmlhttp;
				if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
					xmlhttp = new XMLHttpRequest();
				} else {// code for IE6, IE5
					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				xmlhttp.onreadystatechange = function() {
					if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
						var jsonObj = JSON.parse(xmlhttp.responseText);
						document.cookie="user=kannan";
						opener.document.location.href = "http://localhost:8080/FbLogin/mainpage";
		                window.close();
					}
				}
				xmlhttp.open("GET", "http://localhost:8080/FbLogin/Server?" +hash[0] , true);
				xmlhttp.send();
			} else {
				alert("Login Again");
				this.close();
			}
		}

		
		url();
	</script>

</body>
</html>