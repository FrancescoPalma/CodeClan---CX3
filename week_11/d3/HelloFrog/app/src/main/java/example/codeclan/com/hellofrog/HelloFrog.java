package example.codeclan.com.hellofrog;


import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;

import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.JsonHttpResponseHandler;

import org.json.JSONArray;
import org.json.JSONObject;

public class HelloFrog extends AppCompatActivity {
    private static final String API_URL = "http://cc-amphibian-api.herokuapp.com/";

    EditText mNameEditText;
    EditText mSpeciesEditText;
    Button mSubmitButton;
    ListView mListView;

    JSONAdapter mJSONAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        Log.d("HelloFrog:", "onCreate called");
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_main);

        mNameEditText = (EditText) findViewById(R.id.name_input);
        mSpeciesEditText = (EditText) findViewById(R.id.species_input);
        mSubmitButton = (Button) findViewById(R.id.submit_button);
        mListView = (ListView) findViewById(R.id.amphibian_list_view);

        mJSONAdapter = new JSONAdapter(this, getLayoutInflater());

        fetchAmphibians();

        mListView.setAdapter(mJSONAdapter);

        mListView.setOnItemClickListener(new AdapterView.OnItemClickListener(){
           @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
               JSONObject jsonObject =(JSONObject) mJSONAdapter.getItem(position);
               Log.d("Hello Frog: ", jsonObject.toString());
           }
        });

        mSubmitButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.d("HelloFrog:", "submit button clicked!");
                Intent intent = new Intent(HelloFrog.this, AmphibianDetails.class);
                intent.putExtra("name", mNameEditText.getText().toString());
                intent.putExtra("species", mSpeciesEditText.getText().toString());
                startActivity(intent);
            }
        });
    }

    private void fetchAmphibians() {
        AsyncHttpClient client = new AsyncHttpClient();
        client.get(API_URL, new JsonHttpResponseHandler() {
            @Override
            public void onSuccess(JSONObject jsonObject) {
                Log.d("HelloFrog: ", jsonObject.toString());
                JSONArray data = jsonObject.optJSONArray("Amphibians");
                if (data != null) {
                    mJSONAdapter.updateData(data);
                } else {
                    Log.e("HelloFrog: ", "No data found");
                }
            }
            @Override
            public void onFailure(int statusCode, Throwable throwable, JSONObject error) {
                Log.e("HelloFrog: ", "Failure: " + statusCode + " " + throwable.getMessage());
            }
        });
    }
}
