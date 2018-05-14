package com.jars.connection;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class MyConnection {

	public static Connection getConnection() {
		/*
		 Properties prop = new Properties();
		 System.out.println(new File(".").getAbsolutePath());
		 try 
		 {
			 FileInputStream fis = new FileInputStream("D:/Software_JARS/Eclipse-Kepler-SR1-win32/db.proprties");
			 prop.load(fis);
		 } 
		 catch (Exception e1) 
		 {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		 }
		 
		 Connection con = null;
		 String driver = prop.getProperty("driver");
		 String url = prop.getProperty("url");
		 String username = prop.getProperty("username");
		 String password = prop.getProperty("password");*/
		Connection con = null;
		   try 
		   {
			   	Class.forName("com.mysql.jdbc.Driver");
			   	con =  (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/avenjars","root","root");
		   } 
		   catch (Exception e) 
		   {
			   	e.printStackTrace();
		   }
		   return con;
		 }
}
