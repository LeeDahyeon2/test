package com.example.smarthome;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

import androidx.appcompat.app.AppCompatActivity;

import com.example.smarthome.DTO.ModeInfo;

public class ModeActivity extends AppCompatActivity implements View.OnClickListener {
    String mode;
    Intent intent;
    ModeInfo modeInfo;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_mode);
        intent = getIntent();
        mode = intent.getStringExtra("mode");
        setTitle(mode+"모드 설정");
        findViewById(R.id.btnModeCheck).setOnClickListener(this);
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btnModeCheck:
                startMyActivity(ActivityFragment.class,"nowhome");
                break;

        }
    }
    private void getModeInfo(){

    }
    private void startMyActivity(Class cls, String msg){
        intent = new Intent(this, cls);
        intent.putExtra("address",msg);
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        startActivity(intent);
    }
}
