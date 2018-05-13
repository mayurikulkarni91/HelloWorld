<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

.badge1 {
   position:relative;
}
.badge1[data-badge]:after {
   content:attr(data-badge);
   position:absolute;
   top:0px;
   right:0px;
   font-size:.7em;
   background:green;
   color:white;
   width:18px;height:18px;
   text-align:center;
   line-height:18px;
   border-radius:50%;
   box-shadow:0 0 1px #333;
}

				.navbar 
				{
			      margin-bottom: 0;
			      border-radius: 0;
			      background-color: #F49A1F;
			      color:white;
			      padding-top: 15px;
			      padding-bottom: 15px;
			      border: 0;
			  }
			  .navbar-nav  li a:hover {
			      
			      color:#F49A1F;
			      
			  }  
			    
</style>
	<nav class="navbar nav1 navbar-default">
        <div class="container-fluid">
        <div class="navbar-header">
       		<strong > <a class="navbar-brand" href="NewHomePage.jsp" style="color: white;" >JARS</a></strong>
    	</div>
    	
    	<ul class="nav navbar-nav ">
     		 <li><a href="NewHomePage.jsp" style="color:white">Home</a></li>
      		<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color: white">Customer <span class="caret"></span></a>
        		<ul class="dropdown-menu">
          			 <li><a href="Customer.jsp">New Customer</a></li>
         			 <li><a href="CustomerList.jsp">List of All Customer</a></li>
        		</ul>
		    </li>
     		<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color: white">Order <span class="caret"></span></a>
        		<ul class="dropdown-menu">
          			<li><a href="CustomerOrderInfo.jsp">List of All Order</a></li>
        		</ul>
      		</li>
     		<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color: white">Vendor <span class="caret"></span></a>
        		<ul class="dropdown-menu">
         			 <li><a href="Partners.jsp">New Vendor</a></li>
         			 <li><a href="PartnersList.jsp">List of All Vendor</a></li>
        		</ul>
      		</li>
      		<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color: white">products<span class="caret"></span></a>
        		<ul class="dropdown-menu">
          			<li><a href="Product.jsp">New Product</a></li>
          			<li><a href="ProductsList.jsp">List of All Products</a></li>
       			 </ul>
      		</li>
      		
      		<li><a href="#" style="color:white;" class="badge1" data-badge="2">New Orders</a>
        		
      		</li>
      		
    	</ul>
            
       	<ul class="nav navbar-nav navbar-right">
        	<li><a href="Logout.jsp" style="color: white"><span class="glyphicon glyphicon-user"></span > Sign out</a></li>
      	</ul>      
  </div>
</nav>         
