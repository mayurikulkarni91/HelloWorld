package com.jars.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jars.bean.LoginBean;
import com.jars.model.CustomerModel;
import com.jars.model.LoginDao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CustomerModel customerModel;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("username");
		 String password = request.getParameter("password");
		 
		 LoginBean loginBean = new LoginBean();
		 
		 loginBean.setUserName(userName);
		 loginBean.setPassword(password);
		 
		 LoginDao loginDao = new LoginDao();
		 
		 try
		 {
		 String userValidate = loginDao.authenticateUser(loginBean);
		 
		 if(userValidate.equals("Admin_Role"))
		 {
		 System.out.println("Admin's Home");
		 
		 HttpSession session = request.getSession(); //Creating a session
		 session.setAttribute("Admin", userName); //setting session attribute
		 request.setAttribute("userName", userName);
		 
		 customerModel=new CustomerModel();
		 request.setAttribute("Customers", customerModel.list());
		 
		 request.getRequestDispatcher("customers.jsp").forward(request, response);
		 }
		 else if(userValidate.equals("SuperAdmin_Role"))
		 {
		 System.out.println("SuperAdmin's Home");
		 
		 HttpSession session = request.getSession();
		 session.setAttribute("Editor", userName);
		 request.setAttribute("userName", userName);
		 
		 request.getRequestDispatcher("HomePage.jsp").forward(request, response);
		 }
		 else
		 {
		 System.out.println("Error message = "+userValidate);
		 request.setAttribute("errMessage", userValidate);
		 
		 request.getRequestDispatcher("Login.jsp").forward(request, response);
		 }
		 }
		 catch (IOException e1)
		 {
		 e1.printStackTrace();
		 }
		 catch (Exception e2)
		 {
		 e2.printStackTrace();
		 }
		}
	}

