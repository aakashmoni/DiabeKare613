package com.umd.app.diabekare;

import java.sql.*;
import java.io.*;
import java.util.ArrayList;

import org.apache.log4j.Logger;

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
	private Logger log = Logger.getLogger("DiabeKarelogger");

   Connection conn = null;
   ResultSet rs;
   int rs1;

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
	
	/**
	   *
	   * @author Girish 
	   * @date  11-25-2012
	   * @function insertCurrentState
	   * @purpose insert current state
	   * @return null
	   * @exception SQL Exception & Class Not Found Exception
	   * @version 1.0
	   *
	   *
	   *
	   *
	   */
	   
	
public boolean insertCurrentState(String state_id, String current_battery, String current_insulin, String current_basal_profile) {
		
		boolean flag = false;

		try {
			Connection connection = dbConnection();
			Statement statement = connection.createStatement();
			statement.executeUpdate(" insert into current_state (state_id,current_battery,current_insulin,current_basal_profile) values ('"+ state_id + "','"+ current_battery + "','" + current_insulin + "','" + current_basal_profile + "') ");
			flag = true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return flag;
	}
	
	/**
	 *	
	 * @author Girish 
	 * @date  11-25-2012
	 * @function insertBasalProfile
	 * @purpose insert basal profile
	 * @return null
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */

	public boolean insertBasalProfile(String basal_id, String hour, String basal_rate ) {
		
		boolean flag = false;

		try {
		
			Connection connection = dbConnection();
			Statement statement = connection.createStatement();			
			statement.executeUpdate("insert into basal_profile(basal_id,hour,basal_rate) values('"+ basal_id+ "','"+ hour+ "','"+ basal_rate+ "')" );
			flag = true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return flag;
	}
	
	/**
	   *
	   * @author Girish 
	   * @date  11-25-2012
	   * @function insertBolusFoodConversionTable
	   * @purpose insert bolus food conversion table
	   * @return null
	   * @exception SQL Exception & Class Not Found Exception
	   * @version 1.0
	   *
	   *
	   *
	   *
	   */
	
	public boolean insertBolusFoodConversionTable(String item_id, String food_item, String carbohydrates) {
		
		boolean flag = false;

		try {
		
			Connection connection = dbConnection();
			Statement statement = connection.createStatement();
			
			statement.executeUpdate("insert into bolus_food_conversion_table(item_id,food_item,carbohydrates) values('"+ item_id+ "','"+ food_item+ "','"+ carbohydrates+ "')");
			flag = true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return flag;
	}
	
	
	/**
	   *
	   * @author Aakash Moni
	   * @date  11-19-2012
	   * @function login
	   * @purpose check username and password exits in DB
	   * @return null
	   * @exception SQL Exception & Class Not Found Exception
	   * @version 1.0
	   *
	   *
	   *
	   *
	   */
	
	public boolean login(String username, String password)
	{
	   Connection con = dbConnection();
	   Boolean flag = false;
	   try {
	            PreparedStatement pr = con.prepareStatement("select * from user_details where username='"+username+"' and password='"+password+"'");
	            System.out.println("==========select * from user_details where username='"+username+"' and password='"+password+"'");
	            log.debug("DiabeKareBean.login==========select * from user_details where username='"+username+"' and password='"+password+"'");
	            rs = pr.executeQuery();
	            if(rs.next())
	            {
	            	flag = true;
	            }

	        } catch (SQLException sqle) {
	            System.out.println("SQL Error :" + sqle);
	        }

	        return flag;
	}
	
	/**
	 *	
	 * @author Kunvar/Girish 
	 * @date  11-25-2012
	 * @function insertBasalProfile
	 * @purpose insert basal profile
	 * @return null
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public ArrayList getBasalProfiles() {
        Connection con = dbConnection();
        ArrayList al = new ArrayList();
        try {
            PreparedStatement pst = con.prepareStatement("select * from basal_profile1");
            rs = pst.executeQuery();
            while (rs.next()) {
                String value[] = new String[5];
                value[0] = rs.getString(1);
                value[1] = rs.getString(2);
                value[2] = rs.getString(3);
                value[3] = rs.getString(4);

                al.add(value);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return al;
    }
	

	public boolean selectBasalProfile(String basalid)
	{
	   Connection con = dbConnection();
	   Boolean flag = false;
	
	   try {
	            PreparedStatement pr = con.prepareStatement("UPDATE current_state SET current_basal_profile='"+basalid+"' WHERE state_id='1' ");
	            System.out.println("==========UPDATE current_state SET current_basal_profile="+basalid+" WHERE state_id=1");
	            log.debug("DiabeKareBean.update basal profile==========UPDATE current_state SET current_basal_profile="+basalid+" WHERE state_id=1");
	            rs1 = pr.executeUpdate();
	            /*if(rs.next())
	            {
	            	flag = true;
	            }*/

	        } catch (SQLException sqle) {
	            System.out.println("SQL Error :" + sqle);
	        }

	        return flag;
	}
	
	public boolean deleteBasalProfile(String basalid)
	{
	   Connection con = dbConnection();
	   Boolean flag = false;
	
	   try {
	            PreparedStatement pr = con.prepareStatement("DELETE FROM basal_profile1 WHERE profile_id='"+basalid+"'");
	            System.out.println("=========DELETE FROM basal_profile1 WHERE profile_id='"+basalid+"'");
	            log.debug("DiabeKareBean.Delete basal profile==========DELETE FROM basal_profile1 WHERE profile_id='"+basalid+"'");
	            rs1 = pr.executeUpdate();
	            /*if(rs.next())
	            {
	            	flag = true;
	            }*/

	        } catch (SQLException sqle) {
	            System.out.println("SQL Error :" + sqle);
	        }

	        return flag;
	}
	
	
	public ArrayList getSelectedBasalProfile(String basalid) {
        Connection con = dbConnection();
        ArrayList al = new ArrayList();
        try {
            PreparedStatement pst = con.prepareStatement("select * from basal_profile1 WHERE profile_id='"+basalid+"'");
            rs = pst.executeQuery();
            while (rs.next()) {
                String value[] = new String[5];
                value[0] = rs.getString(1);
                value[1] = rs.getString(2);
                value[2] = rs.getString(3);
                value[3] = rs.getString(4);

                al.add(value);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return al;
    }
	
	
	
}



