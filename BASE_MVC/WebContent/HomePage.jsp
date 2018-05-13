<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="Header1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="Style1.css">
<title>Home</title>

</head>
<body>
<form action="HomeController" method="get" name="form">
   
<div class="container-fluid text-center" id="load_me">    
  	<div class="row content">
	    <div class="col-sm-4 sidenav">
	    	<h4 style="color:#F49A1F;">Current Orders : </h4>
	      	  
	      <div class="scrollable">
	      <table border="1" id="OrderTable" width="10%"
			class="table table-hover table-striped table-bordered table-condensed display">
			
			<tr class="info">
				<!-- <th>CustID</th> -->
				<th>Name</th>
				<th>OrderID</th>
				<th>Contact No</th>
				<th>OrderStatus</th>
				<!-- <th>Add Products</th>-->
				<!-- <th>Edit</th>
				<th>Delete</th>  -->
				<th>View </th>
			</tr>
			<c:forEach var="order" items="${currentorders}">
			<tr>
				<%-- <td><%=rs.getString(1)%></td> --%>
				<td><c:out value="${order.customername}"></c:out></td>
				<td><c:out value="${order.order_id}"></c:out></td>
				<td><c:out value="${order.customerphone}"></c:out></td>
				<%-- <td><%=rs.getString(5)%></td> --%>
				
				<td>
					<select name="orderstatus" id="orderstatus" onchange="UpdateOrderStatusHome()">
					  <option value="">----------</option>
					  <option value="Order Confirmed">Order Confirmed</option>
					  <option value="Order Placed">Order Placed (To Store)</option>
					  <option value="Order Ready for Procurement">Order Ready for Procurement</option>
					  <option value="Order ready for Delivery">Order ready for Delivery</option>
					  <option value="Order Out for Delivery">Order Out for Delivery</option> 
					  <option value="completed">Order Delivered</option>
					  <option value="Order Cancelled">Order Cancelled</option>
					</select>  
				</td>
				<td><input type="button" name="view" value="View"
					class="btn btn-info demo1"
					onclick="viewOrder();"></td>	
			</tr>
			</c:forEach>
			</tbody>
			
		</table>	
	    </div>
	 </div> 
	 	<div class="col-sm-4 text-left"> 
	    <br>
	    Enter Customer Mobile Number : <input id="mobile" type="text" name="SearchMobile" />
	    <br>
	    <br>
	     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <!-- <button type="submit" class="btn btn1" style="padding:15px;">Create Order</button> -->
	    <button type="button" class="btn btn1" style="padding:15px;" onclick="createorder()">Create Order</button>
	    <br>
	    
	    <div align="center">
	    <h4 style="color:#F49A1F;">Mobile Orders</h4>
	    </div>
	    <div class="scrollable1" align="center">
	      <table border="1" width="10%"
			class="table table-hover table-striped table-bordered table-condensed display">
			    <tr class="info">
			    <th>Order ID</th>
			    <th>Order Method</th>
			    <th>View Products</th>
			    </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    
			    <td align="center"><input type="button" value="View" name = "view" class="btn btn-info" onclick="viewAndroidProductList()"></td>
		   </table>
	    </div>
	    <br>
	    </div>
	    
	    <div class="col-sm-4 sidenav"> 
	      <h4 style="color:#F49A1F;">Total Completed Orders :  </h4>
	    	<div class="scrollable">
	      <table border="1" id="OrderTable"
			class="table table-hover table-striped table-bordered table-condensed display">
			
			<tr class="info">
				<th>CustID</th>
				<th>Name</th>
				<th>OrderID</th>
				<th>Contact No</th>
				<!-- <th>OrderStatus</th> -->
				<th>View </th>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td><a href="HomeController?action=listUser">Delete</a></td>
				
				<%-- <td><%=rs4.getString(5)%></td> --%>
				
				 <td><input type="button" name="view" value="View"
					class="btn btn-info demo1"
					onclick=""></td> 
					
				<%-- <td><input type="button" name="view" value="Invoice"
					class="btn btn-info demo1" onclick="<%report.show();%>"></td> --%>
			</tr>
			</tbody>
		</table>
		</div>
		</div>
</div>	   </div>
</form>
</body>
</html>