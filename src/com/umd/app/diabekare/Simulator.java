package com.umd.app.diabekare;

import java.util.*;
import java.io.*;
import java.lang.*;

public class Simulator extends Thread
{
	public synchronized void run()
	{
		String bloodSugarLevel = "";
		String tempBloodSugarLevel = "m";
		boolean prevMenu = false;
		int newBloodSugarLevel = 0;

		//Marker denoting current simulator state
		boolean reservoirPresent = true;
		boolean needlePresent = true;
		boolean batteryOK = true;
		boolean pumpOK = true;
		boolean sensorOK = true;
		boolean deliveryOK = true;

		String reservoirMessage = "";
		String needleMessage = "";
		String batteryMessage = "";
		String pumpMessage = "";
		String sensorMessage = "";
		String deliveryMessage = "";

		BufferedReader input = new BufferedReader(new InputStreamReader(System.in));
		BufferedReader bloodInput = new BufferedReader(new InputStreamReader(System.in));
		BufferedReader hardwareInput = new BufferedReader(new InputStreamReader(System.in));
		BufferedReader alarmInput = new BufferedReader(new InputStreamReader(System.in));
		BufferedReader readingInput = new BufferedReader(new InputStreamReader(System.in));

		try
		{
			// Output menu system to the user
			System.err.println("******************************************************************");
			System.err.println("********************INSULIN PUMP SIMULATOR************************");
			System.err.println("");
			System.err.println("Please input the interval (in seconds) at which you wish the following actions to be performed");
			System.err.print  ("Testing of the blood sugar level: ");
			//Read in the users input
			System.err.flush();
			String tempBloodTest = bloodInput.readLine().trim();
			int bloodTest = Integer.parseInt(tempBloodTest);

			System.err.print  ("Testing of the hardware: ");
			//Read in the users input
			System.err.flush();
			String tempHardwareTest = hardwareInput.readLine().trim();
			int hardwareTest = Integer.parseInt(tempHardwareTest);

			System.err.print  ("Testing of the alarm status: ");
			//Read in the users input
			System.err.flush();
			String tempAlarmTest = alarmInput.readLine().trim();
			int alarmTest = Integer.parseInt(tempAlarmTest);

			//Start the clock with the new periodic test interval values set
			Controller.startClock(bloodTest, hardwareTest, alarmTest);

			// Boolean variable to store whether the user wishes to use the algorithm again.
			boolean contLoop = true;
			int userChoice = 0;

			// Loop while the user wishes to keep the program running
			while (contLoop == true)
			{ 
				//Develop output message
				if (reservoirPresent == true)
				{
					reservoirMessage = ("Remove Insulin Reservoir");
				}
				else
				{
					reservoirMessage = ("Replace Insulin Reservoir");
				}

				if (needlePresent == true)
				{
					needleMessage = ("Remove Needle");
				}
				else
				{
					needleMessage = ("Replace Needle");
				}

				if (batteryOK == true)
				{
					batteryMessage = ("Simulate Low Battery");
				}
				else
				{
					batteryMessage = ("Replace Battery");
				}

				if (sensorOK == true)
				{
					sensorMessage = ("Simulate Sensor Failure");
				}
				else
				{
					sensorMessage = ("Repair Sensor");
				}

				if (pumpOK == true)
				{
					pumpMessage = ("Simulate Pump Failure");
				}
				else
				{
					pumpMessage = ("Repair Pump");
				}

				if (deliveryOK == true)
				{
					deliveryMessage = ("Simulate Delivery Failure");
				}
				else
				{
					deliveryMessage = ("Ensure Delivery");
				}

				prevMenu = false;

				System.err.println("******************************************************************");
				System.err.println("************************SIMULATOR OPTIONS*************************");
				System.err.println("");
				System.err.println("Please select one of the following numbers to simulate the corresponding action:");
				System.err.println("Type 1 To " + reservoirMessage);
				System.err.println("Type 2 To " + needleMessage);
				System.err.println("Type 3 To " + batteryMessage);
				System.err.println("Type 4 To " + sensorMessage);
				System.err.println("Type 5 To " + pumpMessage);
				System.err.println("Type 6 To " + deliveryMessage);
				System.err.println("Type 7 To Enter a new blood sugar reading");
				System.err.println("Type 8 To exit the program");
				System.err.print ("Option Chosen: ");

				System.err.flush();
				String userInput = input.readLine().trim();

				userChoice = Integer.parseInt(userInput);
				switch (userChoice)
				{
				case 1 :
				{
					if (reservoirPresent == true)
					{
						//Simulate the reservoir being removed
						InsulinReservoir.removeInsulin();
						reservoirPresent = false;
					}
					else
					{
						//Simulate the reservoir being replaced
						InsulinReservoir.replaceInsulin();
						reservoirPresent = true;
					}
					break;
				}
				case 2 :
				{
					if (needlePresent == true)
					{
						//Simulate the needle being removed
						NeedleAssembly.setNeedlePresent(false);
						needlePresent = false;
					}
					else
					{
						//Simulate the needle being replaced
						NeedleAssembly.setNeedlePresent(true);
						needlePresent = true;
					}
					break;
				}
				case 3 :
				{
					if (batteryOK == true)
					{
						//Simulate the battery running low
						PowerSupply.setBatteryLevel(false);
						batteryOK = false;
					}
					else
					{
						//Simulate the battery being replaced
						PowerSupply.setBatteryLevel(true);
						batteryOK = true;
					}
					break;
				}
				case 4 :
				{
					if (sensorOK == true)
					{
						//Simulate sensor failure
						Sensor.setSensorWorking(false);
						sensorOK = false;
					}
					else
					{
						//Simulate the sensor being fixed
						Sensor.setSensorWorking(true);
						sensorOK = true;
					}
					break;
				}
				case 5 :
				{
					if (pumpOK == true)
					{
						//Simulate pump failure
						InsulinPump.setPumpWorking(false);
						pumpOK = false;
					}
					else
					{
						//Simulate the pump being fixed
						InsulinPump.setPumpWorking(true);
						pumpOK = true;
					}
					break;
				}
				case 6 :
				{
					if (deliveryOK == true)
					{
						//Simulate delivery failure
						Controller.setDeliveryWorking(false);
						deliveryOK = false;
					}
					else
					{
						//Simulate delivery being fixed
						Controller.setDeliveryWorking(true);
						deliveryOK = true;
					}
					break;
				}
				case 7 :
				{
					while (prevMenu == false)
					{
						System.err.println("");
						System.err.println("Please enter the blood sugar reading to be simulated next");
						System.err.println("Type m to return to previous menu");
						System.err.print("New Blood Sugar Level: ");

						System.err.flush();
						bloodSugarLevel = readingInput.readLine().trim();

						if (bloodSugarLevel.equals("m") || bloodSugarLevel.equals("M"))
						{
							prevMenu = true;
						}
						else
						{
							newBloodSugarLevel = Integer.parseInt(bloodSugarLevel);

							Sensor.setReading(newBloodSugarLevel);
						}

						System.err.println("");
					}
					break;
				}
				case 8 :
				{
					System.err.println("***************INSULIN PUMP SIMULATOR STOPPED*****************");
					contLoop = false;

					break;
				}
				}
			}
		}
		catch(IOException e)
		{
			System.err.println("Error occurred when inoutting a value");
		}
	}
}
