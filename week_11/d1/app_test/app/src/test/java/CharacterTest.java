import org.junit.Test;
import static org.junit.Assert.*;

public class CharacterTest {
    @Test
    public void hasNameAndSpecies() {
        Character c = new Character("Francesco", "Human");
        assertEquals("Francesco", c.getName());
        assertEquals("Human", c.getSpecies());
    }

    @Test
    public void setsNewName() {
        Character c = new Character("Palma", "Elf");
        c.setName("Palma");
        assertTrue(c.getName() == "Palma");
        c.setSpecies("Elf");
        assertTrue(c.getSpecies() == "Elf");
    }

    @Test
    public void characterPresentation() {
        Character c = new Character("Francesco", "Human");
        assertEquals("My name is Francesco and I am Human", c.welcome());
    }
}
