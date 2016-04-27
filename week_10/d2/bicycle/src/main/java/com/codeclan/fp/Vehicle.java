package com.codeclan.fp;

public abstract class Vehicle {
	
	protected int numberOfWheels;
	protected String model;
	protected String registration;
	protected int maxSpeed;
	protected int maxOccupancy;
	protected int speed;
	protected Ringable ringer;
	
	protected Vehicle() {
		speed = 0;
	}
	
	protected Vehicle(Ringable ringer) {
		this.ringer = ringer;
	}
	
	public String giveWarning() {
		return ringer.makeSound();
	}

	public int getNumberOfWheels() {
		return numberOfWheels;
	}

	public void setNumberOfWheels(int numberOfWheels) {
		this.numberOfWheels = numberOfWheels;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getRegistration() {
		return registration;
	}

	public void setRegistration(String registration) {
		this.registration = registration;
	}

	public int getMaxSpeed() {
		return maxSpeed;
	}

	public void setMaxSpeed(int maxSpeed) {
		this.maxSpeed = maxSpeed;
	}

	public int getMaxOccupancy() {
		return maxOccupancy;
	}

	public void setMaxOccupancy(int maxOccupancy) {
		this.maxOccupancy = maxOccupancy;
	}
	
	public String toString() {
		return "Vehicle {Registration: " + registration + ", Model: " + model + "}";
	}
	
}