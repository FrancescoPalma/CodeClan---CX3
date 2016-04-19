package com.codeclan.fp;

import org.junit.Test;
import static org.junit.Assert.*;

public class BicycleTest 
{
	@Test
	public void testBicycle() {
		Bicycle bikey = new Bicycle();
		assertTrue(bikey.getCurrentSpeed()==0);
	}
	
	@Test
	public void testSpeedUp() {
		Bicycle bikr = new Bicycle();
		int newSpeed = 10;
		bikr.speedUp(newSpeed);
		assertTrue(bikr.getCurrentSpeed()==newSpeed);
	}
	
	@Test
	public void testDisplayBicycle() {
		Bicycle bikify = new Bicycle();
		System.out.println(bikify);
	}
}
