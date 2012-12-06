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
 * @date  11-30-2012
 * @function insertAirBubble
 * @purpose To simulate the insertion of Air bubble
 * @return null
 * @exception SQL Exception & Class Not Found Exception
 * @version 1.0
 *
 *
 *
 *
 */

public boolean insertAirBubble ()
{
	Connection con = dbConnection();
	   Boolean flag = false;
	
	   try {
	            PreparedStatement pr = con.prepareStatement("UPDATE current_state SET air_bubble= '1' WHERE state_id='1' ");
	            log.debug("DiabeKareBean.update current_state ==========UPDATE current_state SET air_bubble = 1 Air Bubble Present");
	            rs1 = pr.executeUpdate();
	            flag = true;
	        } catch (SQLException sqle) {
	            System.out.println("SQL Error :" + sqle);
	        }

	        return flag;
	}


/**
 *	
 * @author Girish 
 * @date  11-30-2012
 * @function removeAirBubble
 * @purpose To simulate the removal of Air bubble
 * @return null
 * @exception SQL Exception & Class Not Found Exception
 * @version 1.0
 *
 *
 *
 *
 */

public boolean removeAirBubble ()
{
	Connection con = dbConnection();
	   Boolean flag = false;
	
	   try {
	            PreparedStatement pr = con.prepareStatement(" UPDATE current_state SET air_bubble='0' WHERE state_id='1' ");
	           
	            log.debug("DiabeKareBean.update current_state ==========UPDATE current_state SET air_bubble = 0 Air Bubble Present");
	            rs1 = pr.executeUpdate();
	            flag = true;
	            
	        } catch (SQLException sqle) {
	            System.out.println("SQL Error :" + sqle);
	        }

	        return flag;
	}


/**
 *	
 * @author Girish 
 * @date  11-30-2012
 * @function testAirBubble
 * @purpose To test the presence of Air bubble
 * @return null
 * @exception SQL Exception & Class Not Found Exception
 * @version 1.0
 *
 *
 *
 *
 */

public int testAirBubble ()
{
	Connection con = dbConnection();
	   int ab_status = 0;
	   
	   try {
		   PreparedStatement pst = con.prepareStatement("SELECT air_bubble FROM current_state LIMIT 1");     
           
           rs = pst.executeQuery();
           while (rs.next()) {		                
               	ab_status = rs.getInt(1);   	                
           }
           log.debug("DiabeKareBean testAirBubble: "+ab_status);
                   		            
	        } catch (SQLException sqle) {
	            System.out.println("SQL Error :" + sqle);
	        }

	        return ab_status;
	}



/**
 *	
 * @author Girish 
 * @date  11-30-2012
 * @function getCurrentBP
 * @purpose To get the current basal  profile selected
 * @return null
 * @exception SQL Exception & Class Not Found Exception
 * @version 1.0
 *
 *
 *
 *
 */

public int getCurrentBP()
{
	Connection con = dbConnection();
	   int current_bp = 0;
	   
	   try {
		   PreparedStatement pst = con.prepareStatement("SELECT current_basal_profile FROM current_state");     
           
           rs = pst.executeQuery();
           while (rs.next()) {		                
               	current_bp = rs.getInt(1);   	                
           }
           log.debug("DiabeKareBean current_basal_profile read : "+current_bp);
                   		            
	        } catch (SQLException sqle) {
	            System.out.println("SQL Error :" + sqle);
	        }

	        return current_bp;
	}

/**
 *	
 * @author Girish 
 * @date  11-25-2012
 * @function insertBasalProfile
 * @purpose inserts a new basal profile
 * @return null
 * @exception SQL Exception & Class Not Found Exception
 * @version 1.0
 *
 *
 *
 *
 */

public boolean insertBasalProfile(String name, String r1, String r2, String r3, String r4, String r5, String r6, String r7, String r8, String r9, String r10, String r11, String r12, String r13, String r14, String r15, String r16, String r17, String r18, String r19, String r20, String r21, String r22, String r23, String r24 ) {
	
	boolean flag = false;

	try {
	
		Connection connection = dbConnection();
		Statement statement = connection.createStatement();		
		System.out.println("=========Create in basal_profile1 WHERE profile_id='"+name+"'");
        log.debug("DiabeKareBean.create basal profile==========create in basal_profile1 WHERE profile_name='"+name+"'");
		
        statement.executeUpdate("insert into basal_profile1(name,rate0,rate1,rate2,rate3,rate4,rate5,rate6,rate7,rate8,rate9,rate10,rate11,rate12,rate13,rate14,rate15,rate16,rate17,rate18,rate19,rate20,rate21,rate22,rate23) values('"+ name+ "','"+ r1+ "','"+ r2+ "','"+ r3+ "','"+ r4+ "','"+ r5+ "','"+ r6+ "','"+ r7+ "','"+ r8+ "','"+ r9+ "','"+ r10+ "','"+ r11+ "','"+ r12+ "','"+ r13+ "','"+ r14+ "','"+ r15+ "','"+ r16+ "','"+ r17+ "','"+ r18+ "','"+ r19+ "','"+ r20+ "','"+ r21+ "','"+ r22+ "','"+ r23+ "','"+ r24+ "')" );
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
	
	public boolean insertBolusFoodConversionTable(String food_item, String carbohydrates) {
		
		boolean flag = false;

		try {
		
			Connection connection = dbConnection();
			Statement statement = connection.createStatement();
			log.debug("insertBolusFoodConversionTable");
			statement.executeUpdate("insert into bolus_food_conversion_table(food_item,carbohydrates) values('"+ food_item+ "','"+ carbohydrates+ "')");
			flag = true;
		} catch (Exception e) {
			System.out.println(e);
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
         //     value[2] = rs.getString(3);
         //     value[3] = rs.getString(4);
                
                al.add(value);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return al;
    }
	
	
	/**
	 *	
	 * @author Girish 
	 * @date  11-25-2012
	 * @function restoreCurrentBasalProfile
	 * @purpose After Soft-Reset, next time the user logs-in, basal profile is restored..
	 * @return null
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public ArrayList getCurrentState() {
		//public ArrayList restoreCurrentBasalProfile() {
        Connection con = dbConnection();
        ArrayList all = new ArrayList();
        try {
            PreparedStatement pst = con.prepareStatement("select * from current_state");
            rs = pst.executeQuery();
            while (rs.next()) {
                String value[] = new String[5];
                value[0] = rs.getString(1);//current_state id
                value[1] = rs.getString(2);//current_battery
                value[2] = rs.getString(3);//current_insulin
                value[3] = rs.getString(4);//current_basal_profile
                
                all.add(value);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return all;
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
	 * @author Arun 
	 * @date  11-27-2012
	 * @function insertintoFoodConversionDatabase
	 * @purpose insertintoFoodConversionDatabase
	 * @return null
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public ArrayList getBolusFoodConversionTable() {
        Connection con = dbConnection();
        ArrayList al = new ArrayList();
        try {
            PreparedStatement pst = con.prepareStatement("select * from bolus_food_conversion_table");
            rs = pst.executeQuery();
            while (rs.next()) {
                String value[] = new String[5];
                value[0] = rs.getString(1);
                value[1] = rs.getString(2);
                value[2] = rs.getString(3);
                
                al.add(value);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return al;
    }
	
	/**
	*
	* @author Kunvar
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
	public boolean selectBasalProfile(String basalid)
	{
	   Connection con = dbConnection();
	   Boolean flag = true;
	
	   try {
	            PreparedStatement pr = con.prepareStatement("UPDATE current_state SET current_basal_profile='"+basalid+"' WHERE state_id='1' ");
	            System.out.println("==========UPDATE current_state SET current_basal_profile="+basalid+" WHERE state_id=1");
	            log.debug("DiabeKareBean.update basal profile==========UPDATE current_state SET current_basal_profile="+basalid+" WHERE state_id=1");
	            rs1 = pr.executeUpdate();
//	            if(rs.next())
//	            {
//	            	flag = true;
//	            }

	        } catch (SQLException sqle) {
	            System.out.println("SQL Error :" + sqle);
	        }

	        return flag;
	}
	
	
	
	/**
	 *	
	 * @author Arun 
	 * @date  11-28-2012
	 * @function submitBolus
	 * @purpose submitBolus
	 * @return null
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public String submitBolus(String fooditem_id)
	{
		   Connection con = dbConnection();
	        String a = "";
	        try {
	            PreparedStatement pst = con.prepareStatement("select * from bolus_food_conversion_table WHERE item_id='"+fooditem_id+"'");
	            log.debug("DiabeKareBean.submitBolus==========select * from bolus_food_conversion_table WHERE item_id='"+fooditem_id+"'");
	            rs = pst.executeQuery();
	            while (rs.next()) {
	                String value[] = new String[3];
	                for(int i = 0; i<3;i++){
	                	value[i] = rs.getString(i+1);        
	                }
	                a =  value[2];
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return a;
	}
	
	/**
	*
	* @author Kunvar
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
	
	public boolean deleteBasalProfile(String basalid)
	{
	   Connection con = dbConnection();
	   Boolean flag = false;
	
	   try {
	            PreparedStatement pr = con.prepareStatement("DELETE FROM basal_profile1 WHERE profile_id='"+basalid+"'");
	            System.out.println("=========DELETE FROM basal_profile1 WHERE profile_id='"+basalid+"'");
	            log.debug("DiabeKareBean.Delete basal profile==========DELETE FROM basal_profile1 WHERE profile_id='"+basalid+"'");
	            rs1 = pr.executeUpdate();
	            flag = true;
	            /*if(rs.next())
	            {
	            	flag = true;
	            }*/

	        } catch (SQLException sqle) {
	            System.out.println("SQL Error :" + sqle);
	        }

	        return flag;
	}
	
	/**
	 *	
	 * @author Arun 
	 * @date  11-28-2012
	 * @function Delete Bolus Table Item
	 * @purpose Delete Bolus Table Item
	 * @return null
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public boolean deleteBolusTableItem(String fooditemID)
	{
	   Connection con = dbConnection();
	   Boolean flag = false;
	
	   try {
	            PreparedStatement pr = con.prepareStatement("DELETE FROM bolus_food_conversion_table WHERE item_id='"+fooditemID+"'");
	            System.out.println("=========DELETE FROM bolus_food_conversion_table WHERE item_id='"+fooditemID+"'");
	            log.debug("DiabeKareBean.Delete =========DELETE FROM bolus_food_conversion_table WHERE item_id='"+fooditemID+"'");
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
	
	/**
	*
	* @author Kunvar
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
	public ArrayList getSelectedBasalProfile(String basalid) {
        Connection con = dbConnection();
        ArrayList al = new ArrayList();
        try {
            PreparedStatement pst = con.prepareStatement("select * from basal_profile1 WHERE profile_id='"+basalid+"'");
            rs = pst.executeQuery();
            while (rs.next()) {
                String value[] = new String[26];
                for(int i = 0; i<26;i++){
                	value[i] = rs.getString(i+1);        
                }
                al.add(value);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return al;
    }

	
	/**
	 *	
	 * @author Arun 
	 * @date  11-28-2012
	 * @function Get Selected Bolus Table Item
	 * @purpose Get Selected Bolus Table Item
	 * @return null
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	public ArrayList getSelectedBolusTableItem(String fooditem_id) {
        Connection con = dbConnection();
        ArrayList al = new ArrayList();
        try {
            PreparedStatement pst = con.prepareStatement("select * from bolus_food_conversion_table WHERE item_id='"+fooditem_id+"'");
            rs = pst.executeQuery();
            while (rs.next()) {
                String value[] = new String[3];
                for(int i = 0; i<3;i++){
                	value[i] = rs.getString(i+1);        
                }
                al.add(value);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return al;
    }
	

	/**
	*
	* @author Kunvar
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
	public boolean UpdateBasalProfile(String id, String name, String r0,String r1, String r2, String r3, String r4, String r5, String r6, String r7, String r8, String r9, String r10, String r11, String r12, String r13, String r14, String r15, String r16, String r17, String r18, String r19, String r20, String r21, String r22, String r23 ) {
		
		boolean flag = false;

		try {
		
			Connection connection = dbConnection();
			Statement statement = connection.createStatement();			
			statement.executeUpdate("UPDATE basal_profile1 SET name='"+name+"',rate0= '"+r0+"',rate1='"+r1+"',rate2='"+r2+"',rate3='"+r3+"',rate4='"+r4+"',rate5='"+r5+"',rate6='"+r6+"',rate7='"+r7+"',rate8='"+r8+"',rate9='"+r9+"',rate10='"+r10+"',rate11='"+r11+"',rate12='"+r12+"',rate13='"+r13+"',rate14='"+r14+"',rate15='"+r15+"',rate16='"+r16+"',rate17='"+r17+"',rate18='"+r18+"',rate19='"+r19+"',rate20='"+r20+"',rate21='"+r21+"',rate22='"+r22+"',rate23='"+r23+"' WHERE profile_id="+id+"");
			 log.debug("DiabeKareBean.UPDATE basal_profile1 SET name='"+name+"',rate0= '"+r0+"',rate1='"+r1+"',rate2='"+r2+"',rate3='"+r3+"',rate4='"+r4+"',rate5='"+r5+"',rate6='"+r6+"',rate7='"+r7+"',rate8='"+r8+"',rate9='"+r9+"',rate10='"+r10+"',rate11='"+r11+"',rate12='"+r12+"',rate13='"+r13+"',rate14='"+r14+"',rate15='"+r15+"',rate16='"+r16+"',rate17='"+r17+"',rate18='"+r18+"',rate19='"+r19+"',rate20='"+r20+"',rate21='"+r21+"',rate22='"+r22+"',rate23='"+r23+"' WHERE profile_id="+id);
			flag = true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return flag;
	}

	/**
	*
	* @author Kunvar
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
	public ArrayList getUserDetails() {
        Connection con = dbConnection();
        ArrayList al = new ArrayList();
        try {
            PreparedStatement pst = con.prepareStatement("select * from user_details WHERE user_id=1");
            rs = pst.executeQuery();
            while (rs.next()) {
                String value[] = new String[7];
                for(int i = 0; i<7;i++){
                	value[i] = rs.getString(i+1);        
                }
                al.add(value);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return al;
    }
	
	/**
	*
	* @author Kunvar
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
	public boolean UpdateUserDetails(String id, String fn, String ln,String un, String pwd, String age, String sex) {
		
		boolean flag = false;

		try {
		
			Connection connection = dbConnection();
			Statement statement = connection.createStatement();			
			statement.executeUpdate("UPDATE user_details SET first_name='"+fn+"',last_name= '"+ln+"',username='"+un+"',password='"+pwd+"',age='"+age+"',sex='"+sex+"'");
			 log.debug("DiabeKareBean.UPDATE user_details SET first_name='"+fn+"',last_name= '"+ln+"',username='"+un+"',password='"+pwd+"',age='"+age+"',sex='"+sex+"'");
			flag = true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return flag;
	}
	
	/**
	 *	
	 * @author Arun 
	 * @date  11-30-2012
	 * @function Make Clock Fail
	 * @purpose Make Clock Fail
	 * @return null
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public boolean makeClockFail ()
	{
		Connection con = dbConnection();
		   Boolean flag = true;
		
		   try {
		            PreparedStatement pr = con.prepareStatement("UPDATE current_state SET clock_status= 0");
		            log.debug("DiabeKareBean.update current_state ==========UPDATE current_state SET clock_status= 0 Clock Fail");
		            rs1 = pr.executeUpdate();
		            

		        } catch (SQLException sqle) {
		            System.out.println("SQL Error :" + sqle);
		        }

		        return flag;
		}
	
	/**
	 *	
	 * @author Arun 
	 * @date  11-30-2012
	 * @function Make Clock Pass
	 * @purpose Make Clock Pass
	 * @return null
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public boolean makeClockPass ()
	{
		Connection con = dbConnection();
		   Boolean flag = true;
		
		   try {
		            PreparedStatement pr = con.prepareStatement("UPDATE current_state SET clock_status= 1");
		            log.debug("DiabeKareBean.update current_state ==========UPDATE current_state SET clock_status= 1 Clock Pass");
		            rs1 = pr.executeUpdate();
		            

		        } catch (SQLException sqle) {
		            System.out.println("SQL Error :" + sqle);
		        }

		        return flag;
		}
	
	/**
	 *	
	 * @author Arun 
	 * @date  11-30-2012
	 * @function Get Clock Status
	 * @purpose Get Clock Status
	 * @return null
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public int clockstatus ()
	{
		Connection con = dbConnection();
		   Boolean flag = false;
		   int clock_state = 0;
		
		   try {
		            PreparedStatement pr = con.prepareStatement("SELECT clock_status FROM current_state LIMIT 1");
		            rs = pr.executeQuery();
		            while (rs.next()) {		                
		            	clock_state = rs.getInt(1);   	                
		            }
		            log.debug("DiabeKareBean clockstatus: "+clock_state);
		            		            
		        } catch (SQLException sqle) {
		            System.out.println("SQL Error :" + sqle);
		        }

		        return clock_state;
		}
	
	/**
	 *	
	 * @author Arun 
	 * @date  11-30-2012
	 * @function Make ECU Fail
	 * @purpose Make ECU Fail
	 * @return null
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public boolean makeECUFail ()
	{
		Connection con = dbConnection();
		   Boolean flag = true;
		
		   try {
		            PreparedStatement pr = con.prepareStatement("UPDATE current_state SET ecu_status= 0");
		            log.debug("DiabeKareBean.update current_state ==========UPDATE current_state SET ecu_status= 0 Clock Fail");
		            rs1 = pr.executeUpdate();
		            

		        } catch (SQLException sqle) {
		            System.out.println("SQL Error :" + sqle);
		        }

		        return flag;
		}
	
	/**
	 *	
	 * @author Arun 
	 * @date  11-30-2012
	 * @function Make ECU pass
	 * @purpose Make ECU pass
	 * @return null
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public boolean makeECUPass ()
	{
		Connection con = dbConnection();
		   Boolean flag = false;
		
		   try {
		            PreparedStatement pr = con.prepareStatement("UPDATE current_state SET ecu_status= 1");
		            log.debug("DiabeKareBean.update current_state ==========UPDATE current_state SET ecu_status= 1 ECU Pass");
		            rs1 = pr.executeUpdate();
		            flag = true;
		            

		        } catch (SQLException sqle) {
		            System.out.println("SQL Error :" + sqle);
		        }

		        return flag;
		}
	
	/**
	 *	
	 * @author Arun 
	 * @date  11-30-2012
	 * @function Get ECU Status
	 * @purpose Get ECU Status
	 * @return null
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public int ecustatus ()
	{
		Connection con = dbConnection();
		   Boolean flag = false;
		   int ecu_state = 0;
		
		   try {
		            PreparedStatement pr = con.prepareStatement("SELECT ecu_status FROM current_state LIMIT 1");
		            rs = pr.executeQuery();
		            while (rs.next()) {		                
		            	ecu_state = rs.getInt(1);   	                
		            }
		            log.debug("DiabeKareBean ecustatus: "+ecu_state);
		            		            
		        } catch (SQLException sqle) {
		            System.out.println("SQL Error :" + sqle);
		        }

		        return ecu_state;
		}
	
	/**
	 *	
	 * @author Arun 
	 * @date  11-30-2012
	 * @function Make Hardware Fail
	 * @purpose Make Hardware Fail
	 * @return null
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public boolean makeHardwareFail ()
	{
		Connection con = dbConnection();
		   Boolean flag = false;
		
		   try {
		            PreparedStatement pr = con.prepareStatement("UPDATE current_state SET hardware_status= 0");
		            log.debug("DiabeKareBean.update current_state ==========UPDATE current_state SET hardware_status= 0 Hardware Fail");
		            rs1 = pr.executeUpdate();
		            

		        } catch (SQLException sqle) {
		            System.out.println("SQL Error :" + sqle);
		        }

		        return flag;
		}
	
	/**
	 *	
	 * @author Arun 
	 * @date  11-30-2012
	 * @function Make Hardware Pass
	 * @purpose Make Hardware Pass
	 * @return null
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public boolean makeHardwarePass ()
	{
		Connection con = dbConnection();
		   Boolean flag = false;
		
		   try {
		            PreparedStatement pr = con.prepareStatement("UPDATE current_state SET hardware_status= 1");
		            log.debug("DiabeKareBean.update current_state ==========UPDATE current_state SET hardware_status= 1 Hardware Pass");
		            rs1 = pr.executeUpdate();
		            

		        } catch (SQLException sqle) {
		            System.out.println("SQL Error :" + sqle);
		        }

		        return flag;
		}
	
	/**
	 *	
	 * @author Arun 
	 * @date  11-30-2012
	 * @function Get ECU Status
	 * @purpose Get ECU Status
	 * @return null
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public int hardwarestatus ()
	{
		Connection con = dbConnection();
		   Boolean flag = false;
		   int hardware_state = 0;
		
		   try {
		            PreparedStatement pr = con.prepareStatement("SELECT hardware_status FROM current_state LIMIT 1");
		            rs = pr.executeQuery();
		            while (rs.next()) {		                
		            	hardware_state = rs.getInt(1);   	                
		            }
		            log.debug("DiabeKareBean hardwarestatus: "+hardware_state);
		            		            
		        } catch (SQLException sqle) {
		            System.out.println("SQL Error :" + sqle);
		        }

		        return hardware_state;
		}
	
	/**
	 *	
	 * @author Aakash Moni 
	 * @date  12-01-2012
	 * @function getCurrentBatteryStatus
	 * @purpose Get Curent Battery status
	 * @return int
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public int getCurrentBatteryStatus ()
	{
		Connection con = dbConnection();		   
		   int current_battery = 0;
		
		   try {
		            PreparedStatement pst = con.prepareStatement("SELECT current_battery FROM current_state LIMIT 1");     
		           
		            rs = pst.executeQuery();
		            while (rs.next()) {		                
		                	current_battery = rs.getInt(1);   	                
		            }
		            log.debug("DiabeKareBean getCurrentBatteryStatus: "+current_battery);
		        } catch (SQLException sqle) {
		            System.out.println("SQL Error :" + sqle);
		        }

		        return current_battery;
		}
	/**
	 *	
	 * @author Aakash Moni 
	 * @date  12-01-2012
	 * @function setCurrentBatteryStatus
	 * @purpose set current Battery status
	 * @return void
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public void setCurrentBatteryStatus (int battery_status)
	{
		Connection con = dbConnection();
		   
		
		   try {
		            PreparedStatement pr = con.prepareStatement("update  current_state set current_battery = '"+battery_status+"'");     
		           
		            pr.executeUpdate();
		            log.debug("DiabeKareBean setCurrentBatteryStatus: "+battery_status);
		        } catch (SQLException sqle) {
		            System.out.println("SQL Error :" + sqle);
		        }

		        
		}
	
	/**
	 *	
	 * @author Aakash Moni 
	 * @date  12-01-2012
	 * @function getCurrentBatteryStatus
	 * @purpose Get Curent Battery status
	 * @return int
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public int getCurrentInsulinLevel()
	{
		Connection con = dbConnection();		   
		   int current_insulin = 0;
		
		   try {
		            PreparedStatement pst = con.prepareStatement("SELECT current_insulin FROM current_state LIMIT 1");     
		           
		            rs = pst.executeQuery();
		            while (rs.next()) {		                
		            	current_insulin = rs.getInt(1);   	                
		            }
		            log.debug("DiabeKareBean getCurrentBatteryStatus: "+current_insulin);
		        } catch (SQLException sqle) {
		            System.out.println("SQL Error :" + sqle);
		        }

		        return current_insulin;
		}
	/**
	 *	
	 * @author Aakash Moni 
	 * @date  12-01-2012
	 * @function setCurrentBatteryStatus
	 * @purpose set current Battery status
	 * @return void
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public void setCurrentInsulinLevel(int insulin_level)
	{
		Connection con = dbConnection();
		   
		
		   try {
		            PreparedStatement pr = con.prepareStatement("update  current_state set current_insulin = '"+insulin_level+"'");     
		           
		            pr.executeUpdate();
		            log.debug("DiabeKareBean setCurrentBatteryStatus: "+insulin_level);
		        } catch (SQLException sqle) {
		            System.out.println("SQL Error :" + sqle);
		        }

		        
		}
	/**
	 *	
	 * @author Aakash Moni 
	 * @date  12-01-2012
	 * @function getCurrentBatteryStatus
	 * @purpose Get Curent Battery status
	 * @return int
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public float getCurrentBasalRate(String hour)
	{
		Connection con = dbConnection(); 		   
		   float current_basal_rate = 0;
		
		   try {
		            PreparedStatement pst = con.prepareStatement("SELECT rate"+hour+" FROM basal_profile1 a,current_state b WHERE b.current_basal_profile = a.profile_id");     
		            log.debug("SELECT rate"+hour+" FROM basal_profile1 a,current_state b WHERE b.current_basal_profile = a.profile_id");
		            rs = pst.executeQuery();
		            while (rs.next()) {		                
		            	current_basal_rate = rs.getInt(1);   	                
		            }
		            log.debug("DiabeKareBean getCurrentBasalRate: "+current_basal_rate);
		        } catch (SQLException sqle) {
		            System.out.println("SQL Error :" + sqle);
		        }

		        return current_basal_rate;
		}
	
	/**
	 *	
	 * @author Aakash Moni 
	 * @date  12-01-2012
	 * @function getCurrentBatteryStatus
	 * @purpose Get Curent Battery status
	 * @return int
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public int getBatteryPause()
	{
		Connection con = dbConnection();		   
		   int current_insulin = 0;
		
		   try {
		            PreparedStatement pst = con.prepareStatement("SELECT battery_pause FROM current_state LIMIT 1");     
		           
		            rs = pst.executeQuery();
		            while (rs.next()) {		                
		            	current_insulin = rs.getInt(1);   	                
		            }
		            log.debug("DiabeKareBean getBatteryPause: "+current_insulin);
		        } catch (SQLException sqle) {
		            System.out.println("SQL Error :" + sqle);
		        }

		        return current_insulin;
		}
	/**
	 *	
	 * @author Aakash Moni 
	 * @date  12-01-2012
	 * @function setCurrentBatteryStatus
	 * @purpose set current Battery status
	 * @return void
	 * @exception SQL Exception & Class Not Found Exception
	 * @version 1.0
	 *
	 *
	 *
	 *
	 */
	
	public void setBatteryPause(int insulin_level)
	{
		Connection con = dbConnection();
		   
		
		   try {
		            PreparedStatement pr = con.prepareStatement("update  current_state set battery_pause = '"+insulin_level+"'");     
		           
		            pr.executeUpdate();
		            log.debug("DiabeKareBean setBatteryPause: "+insulin_level);
		        } catch (SQLException sqle) {
		            System.out.println("SQL Error :" + sqle);
		        }

		        
		}
	
		
	
	
}



