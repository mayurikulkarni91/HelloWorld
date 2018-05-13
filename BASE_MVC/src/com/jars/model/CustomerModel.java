package com.jars.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jars.bean.CustomerBean;
import com.jars.connection.MyConnection;


public class CustomerModel {
	
	public static int saveCustomerDetails(CustomerBean customerBean) throws SQLException
	{
		int i = 0;
		
		Connection con = MyConnection.getConnection();
		if(con != null)
		{
			System.out.println("Connected");
		}
		String sql = "insert into jars_customer (customer_id, customer_name, customer_phone, alternate_phone, customer_email, customer_flat_no, customer_building, customer_society, customer_area, customer_city, customer_pincode) values(?,?,?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps = con.prepareStatement(sql);

		//System.out.println(customerBean.getCustomerid());
		ps.setString(1, customerBean.getCustomerid());
		ps.setString(2, customerBean.getCustomername());
		ps.setString(3, customerBean.getCustomerphone());
		ps.setString(4, customerBean.getAlternatephone());
		ps.setString(5, customerBean.getCustomeremail());
		ps.setString(6, customerBean.getCustomerflatno());
		ps.setString(7, customerBean.getCustomerbuilding());
		ps.setString(8, customerBean.getCustomersociety());
		ps.setString(9, customerBean.getCustomerarea());
		ps.setString(10, customerBean.getCustomercity());
		ps.setString(11, customerBean.getCustomerpincode());
		
		i=ps.executeUpdate();
		return i;
	}

	
	 public List<CustomerBean> list() throws SQLException {
	        List<CustomerBean> customers = new ArrayList<CustomerBean>();

	        try (
	            Connection connection = MyConnection.getConnection();
	            PreparedStatement statement = connection.prepareStatement("SELECT * FROM jars_customer where customer_id < 10");
	            ResultSet resultSet = statement.executeQuery();
	        ) {
	            while (resultSet.next()) {
	            	CustomerBean customer = new CustomerBean();
	            	customer.setCustomerid(resultSet.getString(1));
	                customer.setCustomername(resultSet.getString(2));
	                customers.add(customer);
	            }
	        }

	        return customers;
	    }
	
}
