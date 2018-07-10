<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Users</title>
<style type="text/css">
body {
	font-size: 20px;
	background-color: white;
	font-family: Calibri;
}

td {
	font-size: 15px;
	color: balck;
	width: 100px;
	height: 22px;
	text-align: left;
}

h3 {
	font-size: 50px;
	text-align: center;
	color: white;
	font: bold;
	background-color: lightblue;
	border: thick;
}

.orange-flat-button {
	position: relative;
	vertical-align: top;
	width: 100%;
	height: 60px;
	padding: 0;
	font-size: 20px;
	color: black;
	text-align: center;
	text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
	background: lightgreen;
	border: 0;
	cursor: pointer;
}
</style>

<h3>Users of 3I</h3>

</head>
<body>

	<div class="login">

		<form action="login" method="get">
			<input type="submit" value="login" class="orange-flat-button">
		</form>

	</div>

</body>
</html>