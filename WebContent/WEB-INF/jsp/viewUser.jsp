<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ViewUser</title>
<style>
.Table {
	display: table;
	text-align: center;
	padding-left: 300px;
	padding-right: 500px;
}

.Title {
	display: table-caption;
	text-align: center;
	font-weight: bold;
	font-size: larger;
	color: black;
	padding-left: 300px;
	padding-right: 500px;
}

.Heading {
	display: table-row;
	font-weight: bold;
	text-align: center;
	border-width: thin;
	background-color: lightgreen;
	width: 200px;
	height: 60px;
	padding: 0;
}

.Row {
	display: table-row;
}

.Cell {
	display: table-cell;
	border: solid;
	border-width: thin;
	padding-left: 20px;
	padding-right: 60px;
}

.sun-flower-button {
	position: relative;
	vertical-align: top;
	width: 100%;
	height: 60px;
	padding: 0;
	font-size: 22px;
	color: white;
	text-align: center;
	text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
	background: lightgreen;
	border: 2;
}

.orange-flat-button {
	position: relative;
	vertical-align: top;
	width: 100%;
	height: 60px;
	padding: 0;
	font-size: 22px;
	color: white;
	text-align: center;
	text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
	background: lightgreen;
	border: 2s;
}

.home {
	font-size: 20px;
	background-color: lightblue;
	font-family: Calibri;
}

.title {
	font-size: 20px;
	background-color: green;
	font-family: Calibri;
	text-align: center;
}
</style>

</style>
</head>
<body>
	<form:form id="viewUser"  modelAttribute="user" action="home" method="post" >


		<div class="Table">

			<div class="Title">
				<p>User Detail Table</p>
			</div>

			<div class="Heading">

				<div class="Cell">
					<p>ID</p>

				</div>
				<div class="Cell">
					<p>Name</p>
				</div>

				<div class="Cell">
					<p>DOB</p>
				</div>

				<div class="Cell">
					<p>Mobile</p>
				</div>

				<div class="Cell">
					<p>Email</p>
				</div>
				
				<div class="Cell">
					<p>Action</p>

				</div>
			</div>


			<c:forEach var="user" items="${userList}">
				<div class="Row">
					<div class="Cell">
						<p>${user.getId()}</p>
					</div>
					<div class="Cell">
						<p>${user.getName()}</p>
					</div>

					<div class="Cell">
						<p>${user.getDob()}</p>
					</div>

					<div class="Cell">
						<p>${user.getMobile()}</p>
					</div>

					<div class="Cell">
						<p>${user.getEmail()}</p>
					</div>



					<div class="Cell">
						<a href="edit?id=${user.getId()}">Edit</a> <a
							href="delete?id=${user.getId()}">Delete</a>
					</div>

				</div>

			</c:forEach>

		</div>

		<%-- <table border="2" width="70%" cellpadding="2">  
<tr><th>Name</th><th>DOB</th><th>Mobile</th><th>Email</th><th>ID</th><th>EDIT</th></tr>  
   <c:forEach var="user" items="${userList}">   
   <tr>  
   <td>${user.getName()}</td>  
   <td>${user.getDob()}</td>  
   <td>${user.getMobile()}</td>  
   <td>${user.getEmail()}</td> 
   <td>${user.getId()}</td> 
     <td><a href="edit?id=${user.getId()}">Edit</a></td>  
     <td><a href="delete?id=${user.getId()}">Delete</a></td>  
    </tr>  
   </c:forEach>  
   </table> --%>

		<br>
		<br>
		<tr>
			<td colspan="2"><input id="back" type="submit" value="back"
				class="sun-flower-button" /></td>
		</tr>
		<%-- <table>
			<tr>
				<td>Name :</td>
				<td>${user.getName()}</td>
			</tr>
			<tr>
				<td>DOB :</td>
				<td>${user.getDob()}</td>
			</tr>
			<tr>
				<td>Mobile :</td>
				<td>${user.getMobile()}</td>
			</tr>
			<tr>
				<td>Email :</td>
				<td>${user.getEmail()}</td>
			</tr>
		</table> --%>
	</form:form>
	
	
	<script>
window.onload = function() {

  // Check for LocalStorage support.
  if (localStorage) {

    // Add an event listener for form submissions
    document.getElementById('viewUser').addEventListener('load', function() {
      // Get the value of the name field.
      var name = document.getElementsByTagName("p")[0];
      var dob = document.getElementsByTagName("p")[1];
  
      // Save the name in localStorage.
      localStorage.setItem('name', name);
      localStorage.setItem('dob', dob);

    });

  }

}
</script>	

<script>

window.onload = function() {
	 

	  // Retrieve the users name.
	  var name = localStorage.getItem('name');

	  if (name != "undefined" || name != "null") {
	    document.getElementById('welcomeMessage').innerHTML = "Hello " + name + "!";
	  } else
	    document.getElementById('welcomeMessage').innerHTML = "Hello!";
	  

	}
</script>
</body>
</html>