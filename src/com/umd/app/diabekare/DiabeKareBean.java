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
public class DiabeKareBean implements Serializable {

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
   
}
