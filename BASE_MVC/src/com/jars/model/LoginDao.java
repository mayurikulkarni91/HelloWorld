package com.jars.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.jars.bean.LoginBean;
import com.jars.connection.MyConnection;

public class LoginDao {
	public String authenticateUser(LoginBean loginBean)
	{
	 String userName = loginBean.getUserName();
	 String password = loginBean.getPassword();
	 
	 Connection con = null;
	 Statement statement = null;
	 ResultSet resultSet = null;
	 
	 String userNameDB = "";
	 String passwordDB = "";
	 String roleDB = "";
	 
	 try
	 {
	 con = MyConnection.getConnection();
	 statement = con.createStatement();
	 resultSet = statement.executeQuery("SELECT Username, Password, Userrole FROM users");
	 
	 while(resultSet.next())
	 {
	 userNameDB = resultSet.getString(1);
	 passwordDB = resultSet.getString(2);
	 roleDB = resultSet.getString(3);
	 
	 if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Admin"))
	 return "Admin_Role";
	 if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("SuperAdmin"))
	 return "SuperAdmin_Role";
	 }
	 }
	 catch(SQLException e)
	 {
	 e.printStackTrace();
	 }
	 return "Invalid user credentials";
	}
}
