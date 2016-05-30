/**
 * Created by user on 30/05/2016.
 */
public class Character {
    private String mName;
    private String mSpecies;

    public Character(String name, String species) {
        mName = name;
        mSpecies = species;
    }

    public String getName() {
        return mName;
    }

    public void setName(String name) {
        mName = name;
    }

    public String getSpecies() {
        return mSpecies;
    }

    public void setSpecies(String species) {
        mSpecies = species;
    }

    public String welcome() {
        return "My name is " + mName + " and I am " + mSpecies;
    }
}
