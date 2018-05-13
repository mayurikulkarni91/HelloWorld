<%@page import="java.util.List"%>
<%@page import="com.jars.model.CustomerModel"%>
<%@page import="com.jars.bean.CustomerBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%-- <jsp:forward page="/CustomerController" /> --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CustomerList</title>
</head>
<body>
<form action="CustomerController" method="post" name = "form">
Customer List
<table>
    <c:forEach items="${Customers}" var="customers">
        <tr>
            <td><c:out value="${customers.customerid}"/></td>
            <td><c:out value="${customers.customername}" /></td>
        </tr>
    </c:forEach> 
<%-- <%
	String uname = session.getAttribute("Admin").toString();
	List<CustomerBean> custlist;
	CustomerModel customerModel = new CustomerModel();
	custlist = customerModel.list();
	
	for(CustomerBean s : custlist)
	{
%>   --%>
	<%-- <tr>
		User : <%=uname %>
	</tr> --%>
	<%-- <tr>
            <td><%=s.getCustomerid() %></td>
            <td><%=s.getCustomername() %></td>
    </tr> --%>
<%-- <%} %>   --%>
</table>
<input type="submit" value="Show" /> 
</form>
</body>
</html>