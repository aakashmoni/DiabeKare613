package com.umd.app.diabekare;

import java.sql.*;
import java.io.*;
import java.util.ArrayList;

/**
*
* @author Aakash Moni
* @date  11-17-2012
* @function dBConnection
* @purpose Database Connection
* @return Connection object
* @exception SQL Exception & Class Not Found Exception
* @version 1.0
*
*
*
*
*/
public class DiabeKareBean  {

   Connection conn = null;
   ResultSet rs;

   public Connection dbConnection() {
       try {
           Class.forName("com.mysql.jdbc.Driver");
           conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/diabekare", "root", "root123");
       } catch (SQLException e) {
           e.printStackTrace();
       } catch (ClassNotFoundException e) {
           e.printStackTrace();
       }

       return conn;
   }
   
   /**
   *
   * @author Aakash Moni
   * @date  11-18-2012
   * @function insertUserDetails
   * @purpose insert user details
   * @return null
   * @exception SQL Exception & Class Not Found Exception
   * @version 1.0
   *
   *
   *
   *
   */
   
	public boolean insertUserDetails(String fname, String lname, String uname,
			String pass, String age, String sex) {
		boolean flag = false;

		try {
			Connection connection = dbConnection();
			Statement statement = connection.createStatement();

			statement.executeUpdate("insert into user_details(first_name,last_name,username,password,age,sex) values('"+ fname+ "','"+ lname+ "','"+ uname+ "','"+ pass + "'," + age + ",'" + sex + "')");
			flag = true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return flag;
	}
}
