package com.codeclan.fp;

import org.junit.*;
import static org.junit.Assert.*;

public class CarParkTest {

	@Test
		public void testExitCarSuccess() {
		Vehicle v = new Car("A12 3DFF");
		CarPark cp = new CarPark();
		cp.park(v);
		assertTrue(cp.getCarPark().size()==1);
		boolean hasExited = false;
		try {
			hasExited = cp.exit(v);
		} catch (VehicleNotFoundException e) {
			System.err.println(e.getMessage());
			fail("Vehicle not found!");
		}
		assertTrue(hasExited);
	}
	
	@Test
	public void testExitUnsuccessful() {
		Vehicle v = new Car("AB3 4GH");
		CarPark cp = new CarPark();
		boolean hasExited = false;
		try {
			cp.exit(v);
			fail("Exception wasn't thrown");
		}
	}	
}
