<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.DoctorAPI"%>

<%@ page import="model.Doctor"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Paf_Healthcare_Doctor_Management</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type='text/javascript' src='./Components/Doctors.js'></script>

<style>



table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 90%;
	margin-left: auto;
	margin-right: auto;	
	border: 1px;
	border-radius: 6px;
}

td {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}


th {
	border: 1px solid #dddddd;	
	background-color: #D5DBDB;
	text-align: left;
	padding: 10px;
}




#btnSave {
	margin-top: 15px;
	font-size: px;
	width: 10%;
}

.alert {
	width: 80%;
	margin-left: auto;
	margin-right: auto;
	padding: 15px;
	text-align: center;
}




</style>

</head>

<body style="background-image:url('img/doctor1.jpg'); background-size: 100% 100%;">


<div class="container">
<div class="row">
<div class="col-6">


<br><br><h1>Doctors Management</h1><br><br>

					<form id="formDoctor" name="formDoctor" method="post" action="Doctor_Insert.jsp">
					
						Doctor name: <input id="D_Name" name="D_Name" type="text"
							class="form-control form-control-sm" required> <br>

						Doctor Type: <input id="D_Type" name="D_Type" type="text"
							class="form-control form-control-sm" required> <br>

						Contact Number: <input id="D_Contact_Number" name="D_Contact_Number" type="text"
							class="form-control form-control-sm" required> <br>

						Address: <input id="D_Address" name="D_Address" type="text"
							class="form-control form-control-sm" required> <br>

						Email: <input id="D_Email" name="D_Email" type="text"
							class="form-control form-control-sm" required> <br>

						Hospital ID: <input id="Hospital_ID" name="Hospital_ID"	type="text" 
						    class="form-control form-control-sm" required>
						
						
						<br><br>  
						<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary"> 
						<input type="hidden" id="hidDoctorIDSave" name="hidDoctorIDSave" value="">
						<br><br>
						
					</form>


				</div>
			</div>
		</div>



<br><br><br>


	<div id="alertSuccess" class="alert alert-success">
		<%--
			out.print(session.getAttribute("statusMsg"));
		--%>
	</div>
	
	
	
	<div id="alertError" class="alert alert-danger"></div>

<br><br><br>


	<div id="divItemsGrid">
		<%
			Doctor d1 = new Doctor();
			out.print(d1.readDoctors());
		%>
	</div>

	<br>
	<br>
	<br>




	<br>
	<br>
	<br>

</body>
</html>



