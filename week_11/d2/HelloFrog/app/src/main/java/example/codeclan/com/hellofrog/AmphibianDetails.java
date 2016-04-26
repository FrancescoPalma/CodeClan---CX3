package example.codeclan.com.hellofrog;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

public class AmphibianDetails extends AppCompatActivity {
    TextView mNameText;
    TextView mSpeciesText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_details);
        mNameText = (TextView) findViewById(R.id.text_name);
        mSpeciesText = (TextView)findViewById(R.id.text_species);

        Intent intent = getIntent();
        Bundle extras = intent.getExtras();
        String name = extras.getString("name");
        String species = extras.getString("species");

        mNameText.setText("Hello " + name);
        mSpeciesText.setText("You are a " + species);
    }
}
