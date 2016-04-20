package com.codeclan.md;

public class Drums extends Instrument {
	
	private String name;
	
	public Drums() {
		name = "Drums";
	}
	
	public String play() {
		return "I'm a " + name + ".";
	}

}
