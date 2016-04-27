package com.codeclan.fp;

public class Bicycle  {
	
	private int id;
	private int currentSpeed;
	private int numberOfWheels;
	private String name;
	private int currentGear;
	private int gears;
	private String colour;
	private Bell bell;
	
	public Bicycle() {
		this(new Bell());
		gears = 21;
		colour = "Tomato";
		numberOfWheels = 2;
	}
	
	public Bicycle(Ringable ringer) {
		super(ringer);
	}
	
	public Bicycle(String colour) {
		this(); //calls the constructor
		this.colour = colour;
	}
	
	public int getId() {
		return id;
	}
	
	protected void setId(int id) {
		this.id = id;
	}
	
	public String getColour() {
		return colour;
	}

	public void setColour(String colour) {
		this.colour = colour;
	}

	public int getCurrentSpeed() {
		return currentSpeed;
	}
	
	public void setCurrentSpeed(int speed) {
		currentSpeed = speed;
	}

	public int getNumberOfWheels() {
		return numberOfWheels;
	}

	public void setNumberOfWheels(int numberOfWheels) {
		this.numberOfWheels = numberOfWheels;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getCurrentGear() {
		return currentGear;
	}

	public void setCurrentGear(int currentGear) {
		this.currentGear = currentGear;
	}

	public int getGears() {
		return gears;
	}

	public void setGears(int gears) {
		this.gears = gears;
	}

	public void speedUp(int newSpeed) {
		currentSpeed += newSpeed;
	}
	
	@Override
	public String toString() {
		return "Bicycle: {Colour: " + colour + ", Gears: " + gears +"}";
	}
	
}