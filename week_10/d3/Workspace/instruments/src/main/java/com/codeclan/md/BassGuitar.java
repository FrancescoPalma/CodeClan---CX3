package com.codeclan.md;

public class BassGuitar extends Instrument  {

	private String name;
	private int numberOfStrings;
	
	public BassGuitar() {
		name = "BassGuitar";
		numberOfStrings = 4;
	}
	
	@Override
	public String play() {
		return "I am a " + name + " and I have " + numberOfStrings + " strings.";
	}
	
}