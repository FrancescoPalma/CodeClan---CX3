package com.codeclan.fp;

public class VehicleNotFoundException extends Exception {
	
	public VehicleNotFoundException() {
		super("There was a problem locating the vehicle.");
	}
	
	public VehicleNotFoundException(Vehicle v) {
		super("There was a problem locating the vehicle; " + v);
	}
	
}
