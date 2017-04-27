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
public class TrucksDao {
    
    DBConnect conn = new DBConnect ();
	private Statement statement = null;
        private PreparedStatement stmt=null;
    
    public ResultSet getTrucks(String truck_id) throws Exception {
		ResultSet truck = null;
		try {
                        System.out.println("Loging dao mai aaya");
			statement = conn.getConnection().createStatement();
			String qr = "select * from trucks where truckno='"+truck_id+"'";
			truck = statement.executeQuery(qr);
                        System.out.print(truck);
			//statement.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return truck;
		
	} 
     public ResultSet getTrucksAll() throws Exception {
		ResultSet truck = null;
		try {
                        System.out.println("Loging dao mai aaya");
			statement = conn.getConnection().createStatement();
			String qr = "select * from trucks";
			truck = statement.executeQuery(qr);
                        System.out.print(truck);
			//statement.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return truck;
		
	} 
    
}
