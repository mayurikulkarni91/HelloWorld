package com.jars.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jars.bean.CustomerBean;
import com.jars.model.CustomerModel;

@WebServlet("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private CustomerModel customerModel;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
			//List<CustomerBean> customers = customerModel.list();
			customerModel=new CustomerModel();
			request.setAttribute("Customers", customerModel.list());
			request.getRequestDispatcher("/customers.jsp").forward(request, response);
		}
		catch (SQLException e) 
		{
            throw new ServletException("Cannot obtain products from DB", e);
        }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter out = response.getWriter();
		
		String customerid= request.getParameter("customerid");
		
		String customername=request.getParameter("customername");
	
		String customerphone=request.getParameter("customerphone");
	
		String alternatephone = request.getParameter("alternatephone");
	
		String customeremail=request.getParameter("customeremail");
	
		String customerflatno=request.getParameter("customerflatno");
	
		String customerbuilding=request.getParameter("customerbuilding");
	
		String customersociety=request.getParameter("customersociety");
	
		String customerarea=request.getParameter("customerarea");
	
		String customercity=request.getParameter("customercity");
	
		String customerpincode=request.getParameter("customerpincode");
	
		CustomerBean customerBean = new CustomerBean();
		
		customerBean.setCustomerid(customerid);
		customerBean.setCustomername(customername);
		customerBean.setCustomerphone(customerphone);
		customerBean.setAlternatephone(alternatephone);
		customerBean.setCustomeremail(customeremail);
		customerBean.setCustomerflatno(customerflatno);
		customerBean.setCustomerbuilding(customerbuilding);
		customerBean.setCustomersociety(customersociety);
		customerBean.setCustomerarea(customerarea);
		customerBean.setCustomercity(customercity);
		customerBean.setCustomerpincode(customerpincode);
		
		int i = 0;
		try {
			 i = CustomerModel.saveCustomerDetails(customerBean);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(i>0)
		{
			out.println("Customer Added Successfully");
			RequestDispatcher requestDispatcher=request.getRequestDispatcher("/NewCustomer.jsp");
			requestDispatcher.forward(request, response);
		}
		else
		{
			out.println("Not Added");
		}
		}

}
