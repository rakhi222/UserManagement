<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit User</title>
<style>
body {
	font-size: 20px;
	color: teal;
	font-family: Calibri;
}

td {
	font-size: 15px;
	color: black;
	width: 100px;
	height: 22px;
	text-align: center;
}

.heading {
	font-size: 18px;
	color: white;
	font: bold;
	background-color: orange;
	border: thick;
}

body {
	font-family: Arial, Helvetica, Tahoma, sans-serif;
	font-size: 0.8em;
	padding: 10px 5px;
}

.searchbox {
	border: 1px solid #456879;
	border-radius: 6px;
	height: 22px;
	width: 200p;
	margin-top: 5px;
}

.editform {
	height: 150px;
	width: 300px;
	background-color: lightgreen;
	margin: auto;
	border: 1px black solid;
	padding: 10px;
	color: black;
}
</style>

</head>
<body>
	<center>
		<br /> <br /> <br /> <b>Edit User Details </b><br /> <br />
		<div class="editform">
			<form:form method="post" action="update" modelAttribute="user">
				<table>
					<tr>
						<td>Name :</td>
						<td><form:input path="name" value="${user.getName()}"
								pattern="^[a-zA-Z\s]+$" /></td>
					</tr>
					<tr>
						<td>DOB :</td>
						<td><form:input path="dob" value="${user.getDob()}"
								pattern="^(0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])[-/.](19|20)\\d\\d$" /></td>
					</tr>
					<tr>
						<td>Mobile :</td>
						<td><form:input path="mobile" value="${user.getMobile()}"
								pattern="^[0-9]{10}$" /></td>
					</tr>

					<tr>
						<td>Email :</td>
						<td><form:input path="email" value="${user.getEmail()}"
								pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Save" /></td> 
					
					</tr>
				</table>
				<form:hidden path="id" value="${user.getId()}" />

			</form:form>
		</div>
			<form action="home" method="post">
				<input type="submit" value="home" >
			</form>
	</center>


	<div>
</body>
</html>
