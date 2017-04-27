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
public class EmployeeDao {
    
    DBConnect conn = new DBConnect ();
	private Statement statement = null;
        private PreparedStatement stmt=null;
    
    public ResultSet getEmployee(String exp_id) throws Exception {
		ResultSet emp = null;
		try {
                        System.out.println("Loging dao mai aaya");
			statement = conn.getConnection().createStatement();
			String qr = "select * from employees where employeeid='"+exp_id+"' ";
			emp = statement.executeQuery(qr);
                        System.out.print(emp);
			//statement.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return emp;
		
	} 
    public ResultSet getEmployeeAll() throws Exception {
		ResultSet emp = null;
		try {
                        System.out.println("Loging dao mai aaya");
			statement = conn.getConnection().createStatement();
			String qr = "select * from employees ";
			emp = statement.executeQuery(qr);
                        System.out.print(emp);
			//statement.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return emp;
		
	} 
    
    
}
