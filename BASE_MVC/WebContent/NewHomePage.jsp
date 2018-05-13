<%@page import="org.ietf.jgss.Oid"%>
<%@page import="java.sql.*" %>

<%@page import="java.io.*" %>

<%@page import="javax.sql.*" %>

<%@page import="java.sql.Connection" %>

<%@page import="com.jars.connection.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!-- add header and footer -->
<%--  <%@include file="Header.jsp" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="refresh" content="10" /> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular-route.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css"></script>

	<link rel="stylesheet" type="text/css" href="Style1.css">  

<title>HomePage</title>

 <style>
           
			  /* Remove the navbar's default margin-bottom and rounded borders */ 
			    .navbar {
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
			    
			    
			    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
			    .row.content {height: 450px}
			    
			    /* Set gray background color and 100% height */
			    .sidenav {
			      padding-top: 20px;
			      background-color: #f1f1f1;
			      height: 120%;
			    }
			    
			    /* Set black background color, white text and some padding */
			            .bg-4{
			            position : fixed;
			            bottom : 0px;
			            left : 0px;
			            width : 100%;
					      background-color: #F49A1F;
					      color:#ffffff;;
					      padding: 10px;
			      
			    } 
	 .scrollable
		{
			height:400px;
			overflow:scroll;
		}
		.scrollable1
		{
			height:350px;
			overflow:scroll;
		}
		.bgimg
		{
			background-image: url('jars.jpg');
			height : 100%;
			width : 100 %;
			opacity: 0.4;
		}
		  
		  .badge1 {
   					position:relative;
			}
		.badge1[data-badge]:after {
		   content:attr(data-badge);
		   position:absolute;
		   top:5px;
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
       </style> 
       <script type="text/javascript">
       $(document).ready(function() {
    	    $('#OrderTable').DataTable();
    	} );
       
       function editRecord(id){
           var f=document.form;
           f.method="post";
           f.action='orderedit.jsp?id='+id;
           f.submit();
       }
       function deleteRecord(id){
           var f=document.form;
           f.method="post";
           f.action='orderdelete.jsp?id='+id;
           f.submit();
       }
       function viewOrder(id){
           var f=document.form;
           f.method="post";
           f.action='ViewOrder1.jsp?id='+id;
           f.submit();
       }

       function  viewInvoiceRecord(id) {
    	   var f=document.form;
           f.method="post";
           f.action='InvoiceNew.jsp?id='+id;
           //f.action = 'DynamicInvoice.jsp?id='+id;
           f.submit();
	}
       
       /* function viewProductList(id){
    	   var f = document.form;
    	   f.method = "post";
    	   f.action = 'OrderProductList.jsp?id='+id;
    	   f.submit();
       } */
       
      /*  function viewProductImage(id){
    	   var f = document.form;
    	   f.method = "post";
    	   f.action = 'OrderProductImage.jsp?id='+id;
    	   f.submit();
       } */
       
       function createorder() {
    	   
    	   var number = document.getElementById("mobile").value;
    	   var f=document.form;
           f.method="post";
    	   if(number == 0)
    		   {
    		   	alert("Please Enter Mobile Number");
    		   	f.action='NewHomePage.jsp';
    		   }
    	   else
    		   {
    		   	var con = confirm("Are You Sure to Create Order For : "+number);
    		   	if(con == true)
    		   		{
		    		   	f.action='AddOrderInfo.jsp';
    		   		}
    		   	else
    		   		{
    		   			f.action='NewHomePage.jsp';
    		   		}
    		   }
           
           f.submit();
	}
       
       function  UpdateOrderStatusHome(id) {
		var f = document.form;
		f.method = "post";
		f.action = "EditOrderStatusHome.jsp?id="+id;
		f.submit();
	}
       
       function  viewAndroidProductList(id) {

    	   var f = document.form;
    	   f.method = "post";
    	   f.action = "ShowAndroidList.jsp?id="+id;
    	   f.submit();
	}
       
      /*  var auto_refresh = setInterval(
    	        function ()
    	        {
    	        $('#load_me').load('NewHomePage.jsp').fadeIn("slow");
    	        }, 2000); // autorefresh the content of the div after
    	                   //every 1000 milliseconds(1sec)  
        */
      
        //13-02-18
       setTimeout(function(){
            /* location.reload(); */
    	   window.location = window.location
        },60000); // 60000 milliseconds means 60 seconds.
        
       </script>
</head>
<body>

<!--16-11 <form action="CreateOrder.jsp" method="post" name="form"> -->
<form action="AddOrderInfo.jsp" method="post" name="form">

   <nav class="navbar navbar-default">
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
          			<li><a href="CreateOrder.jsp">New Order</a></li>
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
      		<%
	      		Connection con = null;
	    		String mobile = null;
	    		String newordercount = null;
	    		String expressordercount = null;
	    		String completeordercount = null;
	    		String currentorderscount = null;
	    		int sumcount = 0;
	    		int count = 0;
	    		
	    		Statement st;
	    		try {
	    			MyConnection basecon = new MyConnection();
	    			con= MyConnection.getConnection();
	    			if(con != null)
	    			{
	    				out.print("Connected");
	    			}
	      			String sql6 = "SELECT count(order_id) from jars_order where order_status = 'ORDER TAKING IN PROGRESS' and order_deleted = 0";
	      			PreparedStatement pstm6 = con.prepareStatement(sql6);
	      			ResultSet rs6 = pstm6.executeQuery();
	      			while(rs6.next())
	      			{
	      				newordercount = rs6.getString(1);
	      			}
      		%>
      		
      		<li><a href="#" style="color:white;" class="badge1" data-badge="<%=newordercount%>">New Orders</a>
      		</li>
      		
      		<%
	      		String sql7 = "SELECT count(order_id) from jars_order where order_status = 'ORDER TAKING IN PROGRESS' and order_deleted = 0 and order_slot like '%Express Delivery%'";
	  			PreparedStatement pstm7 = con.prepareStatement(sql7);
	  			ResultSet rs7 = pstm7.executeQuery();
	  			while(rs7.next())
	  			{
	  				expressordercount = rs7.getString(1);
	  			}
      		%>
      		
      		<li><a href="#ExpressOrders" style="color:white;" data-toggle="modal" runat="server" class="badge1" data-badge="<%=expressordercount%>">Express Orders</a>
        		
      		</li>
      		
      		 <li><a href="ConfirmedOrdersProductsList.jsp" style="color:white">Collate Orders</a></li>
    	
          
       	<%-- <ul class="nav navbar-nav navbar-right">
        	<li><a href="Logout.jsp" style="color: white"><span class="glyphicon glyphicon-user"></span ><%=UserName+"("+UserRole+")"%></a></li>
      	</ul>    
      	 --%>
      	 
      	 <li class="dropdown  navbar-right" style="padding-left : 250px"><a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color: white">Sign out<span class="caret"></span></a>
        		<ul class="dropdown-menu">
         			 <!-- <li><a href="registration.jsp">New User</a></li> -->
         			 <li><a href="ChangePassword.jsp">Change Password</a></li>
         			 <li><a href="Logout.jsp">Sign out</a></li>
        		</ul>
      		</li>
      	</ul>    
  </div>
</nav>


<div class="row">
<br>
		<div class="col-sm-6">
		&nbsp;&nbsp;&nbsp;&nbsp;
		 Enter Customer Mobile Number : <input id="mobile" type="text" name="SearchMobile" />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <!-- <button type="submit" class="btn btn1" style="padding:15px;">Create Order</button> -->
	    <button type="button" class="btn btn1" style="padding:15px;" onclick="createorder()">Create Order</button>
	    <br>
		</div>
		<div class="col-sm-6" align="center">
				<%-- <%
		 						PreparedStatement pstm1 = null;
					  	     String sql1 = "SELECT count(order_id) from jars_order where order_status = 'completed'";
		    		         pstm1 = con.prepareStatement(sql1);
					         ResultSet rs1 = pstm1.executeQuery();
					            while(rs1.next())
					            {
					            	completeordercount = rs1.getString(1);
					            }
				%>
				<h4 style="color:#F49A1F;"><a ID="lnkdetail" href="#CompleteOrders" data-toggle="modal" runat="server">Total Completed Orders : <%=completeordercount%></a></h4> --%>
		</div>
</div>   
<br>
  	<div class="row content">
	    <div class="col-sm-6 sidenav">
	   <%
	    
	   /*  Connection con = null;
		String mobile = null; 
		int sumcount = 0;
		int count = 0;
		Statement st;
		try {
			BaseConnection basecon = new BaseConnection();
			con= basecon.getConnection(); */
			PreparedStatement pstm3 = null;
	         String sql3 = "SELECT count(order_id) from jars_order where order_status <> 'completed' and order_status <> 'Order Cancelled' and order_deleted = 0";
	         pstm3 = con.prepareStatement(sql3);
	         ResultSet rs3 = pstm3.executeQuery();
	            while(rs3.next())
	            {
	    %>
	    <div align="center">
	      <h4 style="color:#F49A1F;">Current Orders : <%=rs3.getInt(1) %></h4>
	      </div>
	      	  <%} %>
	      <!-- <div class="scrollable">
	      <table border="1" id="OrderTable" width="10%"
			class="table table-hover table-striped table-bordered table-condensed display">
			 -->
			<div class="scrollable1" align="center">
	      	<table border="1" width="10%"
			class="table table-hover table-striped table-bordered table-condensed display">
			<tr class="info">
				<!-- <th>CustID</th> -->
				<th>Name</th>
				<th>OrderID</th>
				<th>Contact No</th>
				<th>OrderStatus</th>
				<th>View </th>
			</tr>
			
			<%
				
					PreparedStatement pstm = null;
			        String sql = "select customer_id, customer_name, order_id, customer_phone, order_status from jars_customer join jars_order ON jars_customer.customer_id = jars_order.cust_id where order_status <> 'completed' and order_status <> 'Order Cancelled' and order_deleted = 0 order by order_id DESC";
			        pstm = con.prepareStatement(sql);
			        ResultSet rs = pstm.executeQuery();
					while (rs.next()) 
					{
						String status = rs.getString(5);
			%>
			<tr>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				
				<td>
					<select name="orderstatus<%=rs.getString(3)%>" id="orderstatus" onchange="UpdateOrderStatusHome(<%=rs.getString(3)%>)">
					
					<%if(status.equalsIgnoreCase("ORDER TAKING IN PROGRESS"))
					{%>
					  <option value=<%=status%>><%=status%></option>
					  <option value="Order Confirmed">Order Confirmed</option>
					  <option value="Order Placed">Order Placed (To Store)</option>
					  <option value="Order Ready for Procurement">Order Ready for Procurement</option>
					  <option value="Order ready for Delivery">Order ready for Delivery</option>
					  <option value="Order Out for Delivery">Order Out for Delivery</option> 
					  <option value="completed">Order Delivered</option>
					  <option value="Order Cancelled">Order Cancelled</option>
					  <% }%>
					
					<%if(status.equalsIgnoreCase("Order Confirmed"))
					{%>
					  <option value=<%=status%>><%=status%></option>
					  <option value="Order Confirmed" disabled>Order Confirmed</option>
					  <option value="Order Placed">Order Placed (To Store)</option>
					  <option value="Order Ready for Procurement">Order Ready for Procurement</option>
					  <option value="Order ready for Delivery">Order ready for Delivery</option>
					  <option value="Order Out for Delivery">Order Out for Delivery</option>
					  <option value="completed">Order Delivered</option>
					  <option value="Order Cancelled">Order Cancelled</option>
					  <% }%>
					  
					  <%if(status.equalsIgnoreCase("Order Placed"))
					{%>
					  <option value=<%=status%>><%=status%></option>
					  <option value="Order Confirmed" disabled>Order Confirmed</option>
					  <option value="Order Placed" disabled>Order Placed (To Store)</option>
					  <option value="Order Ready for Procurement">Order Ready for Procurement</option>
					  <option value="Order ready for Delivery">Order ready for Delivery</option>
					  <option value="Order Out for Delivery">Order Out for Delivery</option>
					  <option value="completed">Order Delivered</option>
					  <option value="Order Cancelled">Order Cancelled</option>
					  <% }%>
					  
					  <%if(status.equalsIgnoreCase("Order Ready for Procurement"))
					{%>
					  <option value=<%=status%>><%=status%></option>
					  <option value="Order Confirmed" disabled>Order Confirmed</option>
					  <option value="Order Placed" disabled>Order Placed (To Store)</option>
					  <option value="Order Ready for Procurement" disabled>Order Ready for Procurement</option>
					  <option value="Order ready for Delivery">Order ready for Delivery</option>
					  <option value="Order Out for Delivery">Order Out for Delivery</option>
					  <option value="completed">Order Delivered</option>
					  <option value="Order Cancelled">Order Cancelled</option>
					  <% }%>
					  
					  <%if(status.equalsIgnoreCase("Order ready for Delivery"))
					{%>
					  <option value=<%=status%>><%=status%></option>
					  <option value="Order Confirmed" disabled>Order Confirmed</option>
					  <option value="Order Placed" disabled>Order Placed (To Store)</option>
					  <option value="Order Ready for Procurement" disabled>Order Ready for Procurement</option>
					  <option value="Order ready for Delivery" disabled>Order ready for Delivery</option>
					  <option value="Order Out for Delivery">Order Out for Delivery</option>
					  <option value="completed">Order Delivered</option>
					  <option value="Order Cancelled">Order Cancelled</option>
					  <% }%>
					  
					  <%if(status.equalsIgnoreCase("Order Out for Delivery"))
					{%>
					  <option value=<%=status%>><%=status%></option>
					  <option value="Order Confirmed" disabled>Order Confirmed</option>
					  <option value="Order Placed" disabled>Order Placed (To Store)</option>
					  <option value="Order Ready for Procurement" disabled>Order Ready for Procurement</option>
					  <option value="Order ready for Delivery" disabled>Order ready for Delivery</option>
					  <option value="Order Out for Delivery" disabled>Order Out for Delivery</option>
					  <option value="completed">Order Delivered</option>
					  <option value="Order Cancelled">Order Cancelled</option>
					  <% }%>
					  
					  <%if(status.equalsIgnoreCase("Order Cancelled"))
					{%>
					  <option value=<%=status%>><%=status%></option>
					  <option value="ORDER TAKING IN PROGRESS">ORDER TAKING IN PROGRESS</option>
					  <option value="Order Confirmed">Order Confirmed</option>
					  <option value="Order Placed">Order Placed (To Store)</option>
					  <option value="Order Ready for Procurement">Order Ready for Procurement</option>
					  <option value="Order ready for Delivery">Order ready for Delivery</option>
					  <option value="Order Out for Delivery">Order Out for Delivery</option> 
					  <option value="completed">Order Delivered</option>
					  <option value="Order Cancelled">Order Cancelled</option>
					  <% }%>
					  
					</select>
				</td>
				
				<%-- <td><input type="button" name="addprod" value="Add Products"
					class="btn btn-primary demo1" onclick="addProducts(<%=rs.getString(3)%>);"></td>
				
				<td><input type="button" name="edit" value="Edit"
					class="btn btn-danger demo1" onclick="editRecord(<%=rs.getString(3)%>);"></td>
				<td><input type="button" name="delete" value="Delete"
					class="btn btn-success demo1"
					onclick="deleteRecord(<%=rs.getString(1)%>);"></td>  --%>
				<td><input type="button" name="view" value="View"
					class="btn btn-info demo1"
					onclick="viewOrder(<%=rs.getString(3)%>);"></td>	
				<%} %>
			</tr>
			</tbody>
			
		</table>
		</div>
	    </div>
	    <!-- <div class="col-sm-6 text-left">  -->
	    <div class="col-sm-6 sidenav">
	   
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
	    
	    <%
	    			String ordermethod = "";
					PreparedStatement pstm5 = null;
			        //String sql5 = "select order_id, order_method, products from jars_android_order order by order_id Desc";
			        String sql5 = "select jars_android_order.order_id, order_method, products from jars_android_order join jars_order on jars_android_order.order_id = jars_order.order_id where order_status <> 'completed' order by order_id Desc";
			        pstm5 = con.prepareStatement(sql5);
			        ResultSet rs5 = pstm5.executeQuery();
					while (rs5.next()) 
					{
						//String order_method = rs5.getString(2);
						 ordermethod = rs5.getString(2);
		%>
	    
	    <tr>
	    <td><%=rs5.getString(1) %></td>
	    <td><%=rs5.getString(2) %></td>
	    
	    <td align="center"><input type="button" value="View" name = "view" class="btn btn-info" onclick="viewAndroidProductList(<%=rs5.getString(1)%>)"></td>
	     <%-- <%
	    	if(ordermethod.equalsIgnoreCase("List"))
	    	{
	    %>
	    	<td align="center"><input type="button" value="View" name = "view" class="btn btn-info" onclick="viewProductList(<%=rs5.getString(1)%>)"></td>
	    
	    <%
	    	}
	    if(ordermethod.equalsIgnoreCase("Image"))
	    {
	    	%>
	    	<td align="center"><input type="button" value="View" name = "view" class="btn btn-info" onclick="viewProductImage(<%=rs5.getString(1)%>)"></td>
	    	</tr>
	    	<%
	    } --%>
	    <%
	    	}
					
		%>
	    	
	    	
	    </table>
	    </div>
	    <br>
	    </div>
	    
		</div>
		
		 <!-- popup of Express orders	 -->
<div id="ExpressOrders" class="modal fade">  
 <div class="modal-dialog">  
                <div class="modal-content">  
                    <div class="modal-header">  
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button> 
	    	<h4>Express Orders</h4>
	    	<div class="scrollable">
	      <table border="1" id="OrderTable"
			class="table table-hover table-striped table-bordered table-condensed display">
			
			<tr class="info">
				<th>CustID</th>
				<th>Name</th>
				<th>OrderID</th>
				<th>Order Status</th>
				<th>Contact No</th>
				<!-- <th>OrderStatus</th> -->
				<th>View </th>
			</tr> 
			
			<%
					PreparedStatement pstm4 = null;
			        String sql4 = "select customer_id, customer_name, order_id, customer_phone, order_status from jars_customer join jars_order ON jars_customer.customer_id = jars_order.cust_id where order_status <> 'completed' and order_slot like '%Express Delivery%' order by order_id DESC";
			        pstm4 = con.prepareStatement(sql4);
			        ResultSet rs4 = pstm4.executeQuery();
			        
					while (rs4.next()) 
					{
			%>
			<tr>
				<td><%=rs4.getString(1)%></td>
				<td><%=rs4.getString(2)%></td>
				<td><%=rs4.getString(3)%></td>
				<td><%=rs4.getString(5)%></td>
				<td><%=rs4.getString(4)%></td>
				
				 <td><input type="button" name="view" value="View"
					class="btn btn-info demo1"
					onclick="viewOrder(<%=rs4.getString(3)%>);"></td> 
			</tr>
			</tbody>
			<%} %>
		</table>
		</div>
		</div>
		</div>
		</div>
		</div>
	<!-- End of popup -->	
		
	    
	    <%
		
				} 
			            
			        catch (Exception e) 
			        {
						e.printStackTrace();
				    }
	    		
			%>
    </div>
   
    

<!-- <footer class="container-fluid bg-4 text-center">
  <p>jars24.in</p>
</footer> -->
</form>  
</body>  
</html>