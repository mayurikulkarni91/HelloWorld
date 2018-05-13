package com.jars.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.jars.bean.CustomerBean;
import com.jars.bean.OrderBean;
import com.jars.connection.MyConnection;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

public class HomeModel {
	
	public List<CustomerBean> viewCurrentOrders() throws SQLException 
	{
		List<CustomerBean> currentorders = new ArrayList<CustomerBean>();
		Connection con = MyConnection.getConnection();
		if(con != null){
		System.out.println("Connected");
		}
		String sql ="select customer_id, customer_name, order_id, customer_phone, order_status from jars_customer join jars_order ON jars_customer.customer_id = jars_order.cust_id where order_status <> 'completed' and order_deleted = 0 order by order_id DESC";
		
		
		Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery(sql);
		
		while (rs.next()) {
			CustomerBean customerBean = new CustomerBean();
			customerBean.setCustomerid(rs.getString(1));
			customerBean.setCustomername(rs.getString(2));
			customerBean.setOrder_id(rs.getString(3));
			customerBean.setCustomerphone(rs.getString(4));
			customerBean.setOrder_status(rs.getString(5));
			currentorders.add(customerBean);
		}
		
		return currentorders;
	}
	

}
