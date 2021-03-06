package com.umd.app.diabekare;
import javax.servlet.*;

import org.apache.log4j.PropertyConfigurator;

public class ApplicationServletContextListener implements ServletContextListener
{
 public void contextInitialized(ServletContextEvent event) 
 {
     ServletContext ctx = event.getServletContext();
     BatteryManager batterymanager = new BatteryManager();
  String prefix =  ctx.getRealPath("/");    
  String file = "src"+System.getProperty("file.separator")+"log4j.properties";
           
     if(file != null) {
       PropertyConfigurator.configure(prefix+file);
       System.out.println("Log4J Logging started for application: " + prefix+file);
     }
     else
     {
      System.out.println("Log4J Is not configured for application Application: " + prefix+file);
     }
        
      
 }
 
 public void contextDestroyed(ServletContextEvent event)
 {
   
 }
 
}