package com.codeclan.fp;

public class Car extends Vehicle {

	private int numberOfDoors;
	private Horn horn;
	
	public Car() {
		super();
		numberOfDoors = 5;
	}
	
	public Car(String registration) {
		this.registration = registration;
	}
	
}
