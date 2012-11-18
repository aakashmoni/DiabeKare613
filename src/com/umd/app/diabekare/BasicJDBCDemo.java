package com.umd.app.diabekare;

import java.sql.*;

public class BasicJDBCDemo
{
  Connection conn;

  public static void main(String[] args)
  {
    new BasicJDBCDemo();
  }
 
  public BasicJDBCDemo()
  {
    try
    {
    	Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/diabekare", "root", "root123");
   
      doTests();
      conn.close();
    }
    catch (ClassNotFoundException ex) {System.err.println(ex.getMessage());}
    
    catch (SQLException ex)           {System.err.println(ex.getMessage());}
  }

  private void doTests()
  {
   // doSelectTest();

    //doInsertTest();  //doSelectTest();
    //doUpdateTest(); // doSelectTest();
    doDeleteTest(); // doSelectTest();
  }

  private void doSelectTest()
  {
    System.out.println("[OUTPUT FROM SELECT]");
    String query = "SELECT username, password FROM user_details";
    try
    {
      Statement st = conn.createStatement();
      ResultSet rs = st.executeQuery(query);
      while (rs.next())
      {
        String s = rs.getString("username");
        String n = rs.getString("password");
        System.out.println(s + "   " + n);
      }
    }
    catch (SQLException ex)
    {
      System.err.println(ex.getMessage());
    }
  }

  private void doInsertTest()
  {
    System.out.print("\n[Performing INSERT] ... ");
    try
    {
      Statement st = conn.createStatement();
      st.executeUpdate("INSERT INTO user_details " +
                       "VALUES ('008','arun','bond','james','987','29','male')");
    }
    catch (SQLException ex)
    {
      System.err.println(ex.getMessage());
    }
  }

  private void doUpdateTest()
  {
    System.out.print("\n[Performing UPDATE] ... ");
    try
    {
      Statement st = conn.createStatement();
      st.executeUpdate("UPDATE COFFEES SET PRICE=4.99 WHERE COF_NAME='BREAKFAST BLEND'");
    }
    catch (SQLException ex)
    {
      System.err.println(ex.getMessage());
    }
  }

  private void doDeleteTest()
  {
    System.out.print("\n[Performing DELETE] ... ");
    try
    {
      Statement st = conn.createStatement();
      st.executeUpdate("DELETE FROM user_details WHERE first_name='arun'");
    }
    catch (SQLException ex)
    {
      System.err.println(ex.getMessage());
    }
  }
}
