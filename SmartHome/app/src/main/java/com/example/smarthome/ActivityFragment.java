package com.example.smarthome;

import android.content.Intent;
import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import com.example.smarthome.ui.Board.BoardFragment;
import com.example.smarthome.ui.Notice.NoticeFragment;
import com.example.smarthome.ui.QnA.QnAFragment;
import com.example.smarthome.ui.nowhome.NowhomeFragment;

public class ActivityFragment extends AppCompatActivity {
    Intent intent;
    String address;
    private Fragment fragment;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_fragment);
        intent = getIntent();
        address = intent.getStringExtra("address");

        if (address.equals("board")){
            fragment = new BoardFragment();
            setTitle("게시판");
        }
        else if(address.equals("qna")){
            fragment = new QnAFragment();
            setTitle("QnA");
        }
        else if(address.equals("notice")){
            fragment = new NoticeFragment();
            setTitle("공지사항");
        }
        else if(address.equals("nowhome")){
            fragment = new NowhomeFragment();
            setTitle("우리집");
        }
        replaceFragment();
    }
    public void replaceFragment() {
        FragmentManager fragmentManager = getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        fragmentTransaction.replace(R.id.fragment_container, fragment);
        fragmentTransaction.commit();
    }
}
