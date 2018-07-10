<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style>
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

/* .heading {  
 font-size: 18px;  
 color: white;  
 font: bold;  
 background-color: orange;  
 border: thick;  */
.login {
	height: 150px;
	width: 300px;
	background-color: lightgreen;
	margin: auto;
	border: 1px black solid;
	padding: 10px;
	color: black;
}

.login input {
	padding: 5px;
	margin: 5px
}
}
</style>
</head>
<body>
	<form:form action="loginValidate" method="post" modelAttribute="login">
		<div class="login">
			<table align="center">
				<tr>
					<td>Username :</td>

					<td><form:input path="userName" required="true" /></td>
				</tr>
				<tr>
					<td>Password :</td>
					<td><form:input path="password" type="password"
							required="true" /></td>
				</tr>
				<tr>
					<td></td>
					<td align="left"><input type="submit" id="btnsave"
						name="login" value="login"></td>
				</tr>
				<tr></tr>

			</table>
		</div>

	</form:form>
	<table align="center">
		<tr>
			<td style="font-style: italic; color: red;">${message}</td>
		</tr>
	</table>
</body>


</html>