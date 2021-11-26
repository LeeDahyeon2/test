package com.example.smarthome;

import static com.example.smarthome.GalleryCheck.TAG;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.Menu;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.bumptech.glide.Glide;
import com.example.smarthome.Adapter.SearchAdapter;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.navigation.NavigationView;

import androidx.annotation.NonNull;
import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.appcompat.app.AppCompatActivity;

import com.example.smarthome.databinding.ActivityMainBinding;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.UserInfo;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;

public class MainActivity extends AppCompatActivity {

    private AppBarConfiguration mAppBarConfiguration;
    private ActivityMainBinding binding;
    private FirebaseAuth mAuth;
    private ImageView imgProfile;
    private String nic;
    private String email;
    private TextView textNic;
    private TextView textEmail;
    private Button logoutButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityMainBinding.inflate(getLayoutInflater());
        FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();
        setContentView(binding.getRoot());
        if(user==null){
            startMyActivity(SignUpActivity.class);
        }else{
            for (UserInfo profile : user.getProviderData()) {
                nic = profile.getDisplayName();
                email = profile.getEmail();
            }
        }

        setSupportActionBar(binding.appBarMain.toolbar);

        DrawerLayout drawer = binding.drawerLayout;
        NavigationView navigationView = binding.navView;
        // Passing each menu ID as a set of Ids because each
        // menu should be considered as top level destinations.

        View headView = navigationView.getHeaderView(0);
        imgProfile = headView.findViewById(R.id.imageView);
        logoutButton = headView.findViewById(R.id.logoutButton);
        setImage();
        imgProfile.setOnClickListener(onClickListener);
        logoutButton.setOnClickListener(onClickListener);
        textNic = headView.findViewById(R.id.headerNic);
        textEmail = headView.findViewById(R.id.headerEmail);
        textNic.setText(nic);
        textEmail.setText(email);

        mAuth = FirebaseAuth.getInstance();

        mAppBarConfiguration = new AppBarConfiguration.Builder(
                R.id.nav_home,R.id.nav_notice, R.id.nav_alarm,R.id.nav_nowhome, R.id.nav_board,R.id.nav_qna)
                .setOpenableLayout(drawer)
                .build();
        NavController navController = Navigation.findNavController(this, R.id.nav_host_fragment_content_main);
        NavigationUI.setupActionBarWithNavController(this, navController, mAppBarConfiguration);
        NavigationUI.setupWithNavController(navigationView, navController);

        FirebaseMessaging.getInstance().subscribeToTopic("smartHome")
                .addOnCompleteListener(new OnCompleteListener<Void>() {
                    @Override
                    public void onComplete(@NonNull Task<Void> task) {
                        String msg = "성공";
                        if (!task.isSuccessful()) {
                            msg = "실패";
                        }
                        Log.d(TAG, msg);
                    }
                });

    }
    public void setImage(){
        FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();
        FirebaseStorage storage = FirebaseStorage.getInstance("gs://smarthome-85e30.appspot.com/");
        StorageReference storageRef = storage.getReference();
        storageRef.child("user/"+user.getUid()+"/profile.jpg").getDownloadUrl().addOnSuccessListener(new OnSuccessListener<Uri>() {
            @Override
            public void onSuccess(Uri uri) {
                Glide.with(getApplicationContext()).load(uri).into(imgProfile);
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(@NonNull Exception exception) {
                //이미지 로드 실패시
                Log.e("실패","실패");
                profile_init();
            }
        });
    }
    View.OnClickListener onClickListener = new View.OnClickListener(){
        @Override
        public void onClick(View v){
            switch(v.getId()){
                case R.id.imageView:
                    startMyActivity(ProfileActivity.class);
                    break;
                case R.id.logoutButton:
                    FirebaseAuth.getInstance().signOut();
                    startMyActivity(SignUpActivity.class);
                    break;
                case R.id.action_voice:
                    startMyActivity(STTActivity.class);
                    break;
                case R.id.action_search:
                    startMyActivity(SearchAdapter.class);
                    break;
            }
        }
    };
    public void profile_init(){
        FirebaseStorage storage = FirebaseStorage.getInstance("gs://smarthome-85e30.appspot.com/");
        StorageReference storageRef = storage.getReference();
        storageRef.child("basic/user.png").getDownloadUrl().addOnSuccessListener(new OnSuccessListener<Uri>() {
            @Override
            public void onSuccess(Uri uri) {
                Glide.with(getApplicationContext()).load(uri).into(imgProfile);
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(@NonNull Exception exception) {
                //이미지 로드 실패시
                Log.e("실패","실패");
            }
        });
    }
    private void startToast(String msg){
        Toast.makeText(this,msg,Toast.LENGTH_SHORT).show();
    }

    private void startMyActivity(Class cls){
        Intent intent = new Intent(this, cls);
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        startActivity(intent);
    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu, menu);
        return true;
    }

    @Override
    public boolean onSupportNavigateUp() {
        NavController navController = Navigation.findNavController(this, R.id.nav_host_fragment_content_main);
        return NavigationUI.navigateUp(navController, mAppBarConfiguration)
                || super.onSupportNavigateUp();
    }
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.

//        int id = item.getItemId();
//        //noinspection SimplifiableIfStatement
//        if (id == R.id.action_voice) {
//            Toast.makeText(this,"음성인식 클릭",Toast.LENGTH_SHORT).show();
//            return true;
//        }
//
//        return super.onOptionsItemSelected(item);

        switch (item.getItemId())
        {
            case R.id.action_voice:
                Toast.makeText(this, "음성인식 클릭", Toast.LENGTH_SHORT).show();
                //Intent intent = new Intent(this, VtTActivity.class);
                startMyActivity(STTActivity.class);
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

}