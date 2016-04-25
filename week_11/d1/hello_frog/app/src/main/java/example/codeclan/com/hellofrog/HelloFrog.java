package example.codeclan.com.hellofrog;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class HelloFrog extends AppCompatActivity {
    TextView mNameText;
    TextView mSpeciesText;
    EditText mNameEditText;
    EditText mSpeciesEditText;
    Button mSubmitButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        Log.d("HelloFrog:", "onCreate called");
        setContentView(R.layout.activity_main);
        super.onCreate(savedInstanceState);
        mNameText = (TextView) findViewById(R.id.text_name);
        mSpeciesText = (TextView) findViewById(R.id.text_species);
        mNameEditText = (EditText) findViewById(R.id.name_input);
        mSpeciesEditText = (EditText) findViewById(R.id.species_input);
        mSubmitButton = (Button) findViewById(R.id.submit_button);
        mSubmitButton.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View view) {
                Log.d("helloFrog:", "submit button clicked!");
                mNameText.setText("Hello " + mNameEditText.getText());
                mSpeciesText.setText("Hello " + mSpeciesEditText.getText());
            }
        });
    }

}
