package example.codeclan.com.hellofrog;

public class Amphibian {
    private String mName;
    private String mSpecies;

    public Amphibian(String name, String species) {
        mName = name;
        mSpecies = species;
    }

    public String getName() {
        return mName;
    }

    public void setName(String nName) {
        mName = nName; // not a convention!
    }

    public String getSpecies() {
        return mSpecies;
    }

    public void setSpecies(String nSpecies) {
        mName = nSpecies; // not a convention!
    }

    public String presentYourself() {
        return "Hello my name is " + mName + " and I am a " + mSpecies;
    }

}
