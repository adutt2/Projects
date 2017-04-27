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
public class OrderDao {
    
    DBConnect conn = new DBConnect ();
	private Statement statement = null;
        private PreparedStatement stmt=null;
    
    public ResultSet getOrder(String order_id) throws Exception {
        
		ResultSet ord = null;
		try {
                        System.out.println("Loging dao mai aaya");
			statement = conn.getConnection().createStatement();
			String qr = "select * from orders where orderid='"+order_id+"'";
			ord = statement.executeQuery(qr);
                        System.out.print(ord);
			//statement.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return ord;
		
	} 
     public ResultSet getOrderAll() throws Exception {
        
		ResultSet ord = null;
		try {
                        System.out.println("Loging dao mai aaya");
			statement = conn.getConnection().createStatement();
			String qr = "select * from orders";
			ord = statement.executeQuery(qr);
                        System.out.print(ord);
			//statement.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return ord;
		
	} 
    
    
}
