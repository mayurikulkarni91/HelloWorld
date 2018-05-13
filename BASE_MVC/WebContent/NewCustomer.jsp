<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NewCustomer</title>

  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/spacelab/bootstrap.min.css" rel="stylesheet" integrity="sha384-Pu87tkhdc8aoo+5M/Coc7ErjxhR36ayOFNloPU+tR/4PamJKHHjhK9B0EBGKxNet" crossorigin="anonymous">
  
</head>
<body>
<form action="CustomerController" method="post" name = "form">
<%@ include file="Header.jsp" %>  

		<div class="rows">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
				<h1 class="header1">Add Customer Info</h1>
				<table>
				<tr>
					<td>Customer Id : </td>
					<td><input type="text" name="customerid" /></td>
				</tr>
				<tr>
					<td>Customer Name :</td>
					<td> <input type="text" name="customername" /><br /></td>
				</tr>		
				<tr>		
					<td>Customer Phone :</td>
					<td><input type="text" name="customerphone" /><br /></td>
				</tr>	
				<tr>		
					<td>Alternate Phone :</td>
					<td><input type="text" name="alternatephone" /><br /></td>
				</tr>	
				<tr>
					<td>Customer Email :</td>
					<td><input type="text" name="customeremail" /><br /></td>
				</tr>		
				<tr>
					<td>Customer Flat No :</td>
					<td><input type="text" name="customerflatno" /><br /></td>
				</tr>	
				<tr>
					<td>Customer Building :</td>
					<td><input type="text" name="customerbuilding" /><br /></td>
				</tr>	
				<tr>
					<td>Customer Society :</td>
					<td><input type="text" name="customersociety" /><br /></td>
				</tr>		
				<tr>
					<td>Customer Area :</td>
					<td><input type="text" name="customerarea" /><br /></td>
				</tr>		
				<tr>
					<td>Customer City :</td>
					<td><input type="text" name="customercity" /><br /></td>
				</tr>		
				<tr>
					<td>Customer Pincode :</td>
					<td><input type="text" name="customerpincode" /><br /></td>
				</tr>		
				<tr>
					<td><input class="btn btn1" type="submit" value="Add Details" /><br /></td>
				</tr>
				</table>
				</form>
			</div>
			<div class="col-sm-3"></div>	
			
</div>


<footer class="container-fluid bg-4 text-center">
  <p>jars24.in</p>
</footer>
	
</form>
</body>
</html>