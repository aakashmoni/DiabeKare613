package com.umd.app.diabekare;

/**
 * Simple model of a battery that has a 
 * given lifetime in minutes.
 */
public class Battery
{
  /**
   * Remaining life in this battery.
   */
  private int life;
  
  /**
   * Constructs a new battery with the given
   * number of minutes in its initial lifetime.
   * @param givenLife
   *    initial life of this battery
   */
  public Battery(int givenLife)
  {
    life = givenLife;
  }
  
  /**
   * Simulates using the battery for the
   * given number of minutes.
   * @param minutes
   *   number of minutes the battery is being used
   */
  public void use(int minutes)
  {
    life = life - minutes;
  }
  
  /**
   * returns the life of the battery
   * 
   *
   *  
   */
  public int batteryLife()
  {
    
    return life;
  }
  /**
   * Determines whether this battery is dead.
   * @return
   *    true if the battery is still alive, false
   *    otherwise
   */
  public boolean isAlive()
  {
    return life > 0;
  }
}