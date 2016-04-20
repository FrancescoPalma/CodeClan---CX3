package com.codeclan.md;

import org.junit.*;
import static org.junit.Assert.*;

public class InstrumentTest {
	
	@Test
	public void testInstrument() {
		Instrument myBassGuitar = new BassGuitar();
		assertTrue(myBassGuitar.play().equals("I am a BassGuitar and I have 4 strings."));
	}

}
