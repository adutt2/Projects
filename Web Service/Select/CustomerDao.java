/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Connection.DBConnect;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Zeshan
 */
public class CustomerDao {
    
     DBConnect conn = new DBConnect ();
	private Statement statement = null;
        private PreparedStatement stmt=null;
    
    public ResultSet getCustomer(String cust_id, String cust_city ) throws Exception {
		ResultSet cust = null;
		try {
                        System.out.println("Customer dao mai aaya");
			statement = conn.getConnection().createStatement();
			String qr = "select * from customers where customerid='"+cust_id+"'  and city='"+cust_city+"'";
			cust = statement.executeQuery(qr);
                        System.out.print(cust.getString(qr));
			//statement.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return cust;
		
	} 
      public ResultSet getCustomerAll() throws Exception {
		ResultSet cust = null;
		try {
                        System.out.println("Customer dao mai aaya");
			statement = conn.getConnection().createStatement();
			String qr = "select * from customers";
			cust = statement.executeQuery(qr);
                        System.out.print(cust.getString(qr));
			//statement.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return cust;
		
	} 
    
    
}
