package com.umd.app.diabekare;

public class BatteryTest
{

  /**
   * @param args
   */
  public static void main(String[] args)
  {
    // Make a battery with a life of 10 minutes
    Battery b = new Battery(10); 
    System.out.println("should be alive: " + b.isAlive());
    
    // Use it for 5 minutes, should still be alive
    b.use(5);
    System.out.println("should be alive: " + b.isAlive());
    int remaining =  b.batteryLife();
    System.out.println(remaining);
    // Use it for 20 minutes, should be dead now
    b.use(20);
    System.out.println("should be dead: " + b.isAlive());
    
    // Make another battery
    b = new Battery(10); // ten minutes
    System.out.println("should be alive: " + b.isAlive());
    
    // Use it for 9 minutes, should still be alive
    b.use(9);
   
    System.out.println("should be alive: " + b.isAlive());
    
    // Use it for one minute more, should now be dead
    b.use(1);
    System.out.println("should be dead: " + b.isAlive());
  }

}