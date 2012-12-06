package com.umd.app.diabekare;

/**
 * Simple model of a Insulin reservoir that has a 
 * given lifetime in minutes.
 */
public class Insulin
{
  /**
   * Remaining life in this Insulin reservoir.
   */
  private int life;
  
  /**
   * Constructs a new Insulin reservoir with the given
   * number of minutes in its initial lifetime.
   * @param givenLife
   *    initial life of this Insulin reservoir
   */
  public void givenInsulinLife(int givenLife)
  {
    life = givenLife;
  }
  
  
  /**
   * Simulates using the Insulin reservoir for the
   * given number of minutes.
   * @param minutes
   *   number of minutes the Insulin reservoir is being used
   */
  public void use(int minutes)
  {
    life = life - minutes;
  }
  
  /**
   * returns the life of the Insulin reservoir
   * 
   *
   *  
   */
  public int insulinLife()
  {
    
    return life;
  }
  /**
   * Determines whether this Insulin reservoir is dead.
   * @return
   *    true if the Insulin reservoir is still alive, false
   *    otherwise
   */
  public boolean isAlive()
  {
    return life > 0;
  }
}