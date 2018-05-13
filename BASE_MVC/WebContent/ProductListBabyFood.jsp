<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.jars.connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ProductListBabyFood</title>
</head>
<body>

<%
	String productlist = null;
	String productprice = null;
	Connection con = MyConnection.getConnection();
	String query = "SELECT product_name, product_sp, product_category FROM jars_product where product_category = 'Baby Food'";
	PreparedStatement pstm = con.prepareStatement(query);
	ResultSet rs = pstm.executeQuery();
	while(rs.next())
	{
		productlist = rs.getString(1)+",";
		productprice = rs.getString(2)+",";
%>
	
	<p><%=productlist%>
	<%=productprice%></p>
	
<%		
	}
%>

</body>
</html>