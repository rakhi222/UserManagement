<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<style type="text/css">
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

.yellow-flat-button {
	position: relative;
	vertical-align: top;
	width: 100%;
	height: 60px;
	padding: 0;
	font-size: 22px;
	color: white;
	text-align: center;
	text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
	background: lightyellow;
	border: 2s;
}

.orange-flat-button {
	position: relative;
	vertical-align: top;
	left: 33%;
	width: 30%;
	height: 50px;
	padding: 0;
	margin: 3%;
	font-size: 20px;
	color: black;
	text-align: center;
	text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
	background: lightorange;
	border: 2s;
	font-size: 20px;
}

.home {
	font-size: 20px;
	background-color: lightgreen;
	font-family: Calibri;
}

.title {
	font-size: 20px;
	background-color: lightgreen;
	font-family: Calibri;
	text-align: center;
}

body {
	background: white;
}

.logout {margin = -30px;
	
}
</style>
<body>

	<div class="title">
		Welcome to the 3I Company <br>
		<h3>Hi ${login.getUserName()}</h3>
		<br>
		<br>
			<P>The time on the server is ${serverTime}.</P>
		
	</div>


	<div class="home">

		<form action="addUserForm" method="GET">
			<input type="submit" value="Add User Here" class="orange-flat-button">
		</form>

		<form action="getList" method="POST">
			<input type="submit" value="View User Here"
				class="orange-flat-button">
		</form>

<input type="button" value="View user Here by ajax"
				class="orange-flat-button" onclick="getUser()">

		<!-- <form method="post" onclick="getUser();">
			<input type="submit" value="View user Here by ajax"
				class="orange-flat-button">
		</form>
 -->
		<form action="getListOfIds" method="post">
			<input type="submit" value="Edit User By Id"
				class="orange-flat-button">
		</form>
		<div class="logout">
			<form action="logout" method="post">
				<input type="submit" value="logout" class=>
			</form>
		</div>
	</div>

	<script type="text/javascript">
		function getUser() {
			if(localStorage.getItem('users')!= undefined && localStorage.getItem('users').length != 0){
				
				
				
				alert(localStorage.getItem('users'));
			}else{
				$.ajax('/Assignment/getListByAjax',{
					type : 'GET',
					dataType: 'json',
					error : function(response, error, thrownError) {
					},
					success : function success(response) {
						localStorage.setItem('users', JSON.stringify(response));
						alert(JSON.stringify(response));
					},
					
				});
				
				localStorage.clear();
			}
		}
	</script>


</body>
</html>