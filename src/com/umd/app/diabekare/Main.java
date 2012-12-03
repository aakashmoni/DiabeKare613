package com.umd.app.diabekare;


import java.awt.Toolkit;
import java.util.Timer;
import java.util.TimerTask;
import org.apache.log4j.Logger;


public class Main {
	Toolkit toolkit;
	Timer timer;
	Logger log;   
    private DiabeKareBean dkBean = new DiabeKareBean();	  
    int current_battery = dkBean.getCurrentBatteryStatus();
    
    
   // System.out.print("I'm alive.new current.."+current_battery);
    private Battery battery = new Battery(current_battery);
	public Main() {
		toolkit = Toolkit.getDefaultToolkit();
		timer = new Timer();
		log =  Logger.getLogger("DiabeKarelogger");  
		log.debug("current battery from constructor "+current_battery);		
        timer.scheduleAtFixedRate(new batteryProcess(), 0, 10000);
        
	}
	
	   
		
	    
	    
	    
	    class batteryProcess extends TimerTask {
	    	public void run() {	    		
		    	battery.use(1);
		    	int new_current_battery = battery.batteryLife();
		        dkBean.setCurrentBatteryStatus(new_current_battery);
		        if(new_current_battery == 20 || new_current_battery == 10 ){
		        	toolkit.beep();
		        }
		        System.out.println("I'm alive.new current battery.."+dkBean.getCurrentBatteryStatus());
		        if(new_current_battery <= 0){
					System.out.println("current battery is 0");			    	
					//timer.cancel();
					System.exit(0);
					System.out.println("I'm dead!! Please recharge me");
			    }
		        
		            
		            
		    	}
	    }			
	    
	            /*public static void main(String args[]) {
	                new Main();
	                System.out.format("Task scheduled.%n");
	            
	        }*/
	    }

		

