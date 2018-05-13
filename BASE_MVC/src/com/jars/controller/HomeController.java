package com.jars.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jars.bean.CustomerBean;
import com.jars.bean.OrderBean;
import com.jars.model.CustomerModel;
import com.jars.model.HomeModel;


@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	HomeModel homeModel = new HomeModel();
	CustomerBean customerBean;
	OrderBean orderBean;
	private static String LIST_USER = "/HomePage.jsp";
   
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String forward="";
	        String action = request.getParameter("action");
		
		try 
		{
			if (action.equalsIgnoreCase("listUser")){
	            forward = LIST_USER;
			request.setAttribute("currentorders", homeModel.viewCurrentOrders());
		} }
		
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	

}
