<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 	<script>	 
			  function saveForm(){
				 var name = $('#name').val();
				 var dob = $('#dob').val();
				 var mobile = $('#mobile').val();
				 var email = $('#email').val();	
			 
				 $.ajax({
					 type : "GET",
					 url : '/Assignment/addUserForm',
					 async : false,
					 data : {
						 name : name,
						 dob : dob,
						 mobile : mobile,
						 email : email,
					 },
					 error : function(response, error, thrownError) {
					 },
					 success : function success(response) {
					 	res = response;
					 }
					 });		 	
			 }
		</script>      
	 -->
<title>AddUser</title>

<style>
body {
	font-size: 20px;
	color: teal;
	font-family: Calibri;
}

td {
	font-size: 15px;
	color: black;
	width: 200px;
	height: 40px;
	text-align: left;
	margin: 2%;
}

tr{
font-size: 15px;
	color: black;
	width: 150px;
	height: 40px;
	text-align: left;
	margin: 2%;
}

.heading {
	font-size: 20px;
	color: white;
	font: bold;
	background-color: orange;
	border: thick;
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
	background: #f1c40f;
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
	background: yellow;
	border: 2s;
}

.home {
	font-size: 20px;
	background-color: lightblue;
	font-family: Calibri;
}

.table {
	font-size: 20px;
	background-color: lightgreen;
	font-family: Calibri;
	text-align: center;
	margin: 5%;
	
	
}
</style>


</head>
<body>
	<form:form method="post" action="saveUser" modelAttribute="user">
		<table class="table" align="center">
			<%-- <tr>
				<td>Id :</td>

				<td><form:input path="id" /></td>
			</tr> --%>
			<tr>
				<td>Name :</td>

				<td><form:input path="name" id="name" required="true"
						pattern="^[a-zA-Z\s]+$" /></td>
			</tr>
			<tr>
				<td>DOB :</td>
				<td><form:input path="dob" id="dob" required="true"
						pattern="^(0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])[-/.](19|20)\\d\\d$" /></td>
			</tr>
			<tr>
				<td>Mobile :</td>
				<td><form:input path="mobile" id="mobile" required="true"
						pattern="^[0-9]{10}$" /></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><form:input path="email" type="email" id="email"
						required="true" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" /></td>
			</tr>
			<tr>
				<td colspan="2"><input id="save" type="submit" value="save" /></td>
			</tr>

			<td colspan="2"><a href="viewUser">Click Here to See User
					List</a></td>
		</table>
	</form:form>
	
	

	<script type="text/javascript">
	$('#save').on('click', function(){

	    $('input[type="text"]').each(function(){    
	        var id = $(this).attr('id');
	        var value = $(this).val();
	       localStorage.setItem(id, value);

	    });   
	});

	$('#load').on('click', function(){
	    $('input[type="text"]').each(function(){    
	        var id = $(this).attr('id');
	        var value = localStorage.getItem(id);

	        //var obj=JSON.parse($(this).val(value));
	       
	        //alert(obj)

	    }); 
	});
	
	</script>

	<!-- <script type="text/javascript">
	
/*  	$(document).ready(function () {
	    $("#submit").click(function () {
	        var name = document.getElementById('name').value;
	        var dob = document.getElementById('dob').value;
	        var mobile = document.getElementById("mobile").value;
	  
	        
	        if ((mobile.match(/^(\+\d{1,3}[- ]?)?\d{10}$/) && ! (number.match(/0{5,}/)) )) {
	            alert("Please put name");
	        } else if (dob.length == 0) {
	            alert("Please put");
	        } else if (mobile.length == 0) {
	            alert("Please input an age");
	        }
	    });
	}); 
 */	
	</script> -->
</body>
</html>