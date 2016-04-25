package example.codeclan.com.hellofrog;

import org.junit.Test;
import static org.junit.Assert.*;

public class AmphibianTest {

    @Test
    public void haveNameAndSpecies() {
        Amphibian amphibian = new Amphibian("Kermit", "Bullfrog");
        assertEquals("Kermit", amphibian.getName());
        assertEquals("Bullfrog", amphibian.getSpecies());
    }

    @Test
    public void frogPresentation() {
        Amphibian amphibian = new Amphibian("Kermit", "Bullfrog");
        assertEquals("Hello my name is Kermit and I am a Bullfrog", amphibian.presentYourself());
    }

}
