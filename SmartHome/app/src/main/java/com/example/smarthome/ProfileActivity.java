package com.example.smarthome;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.bumptech.glide.Glide;
import com.example.smarthome.DTO.MemberInfo;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.firestore.DocumentReference;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;

public class ProfileActivity extends AppCompatActivity {
    ImageView imgView;
    FirebaseUser user;
    MemberInfo memberInfo = new MemberInfo();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("회원정보");
        setContentView(R.layout.activity_profile);
        user = FirebaseAuth.getInstance().getCurrentUser();
        imgView = (ImageView)findViewById(R.id.profileInfoImage);
        setImage();
        getMemInfo();

        if(user==null){
            myStartActivity(SignUpActivity.class);
        }
        findViewById(R.id.gotoProfileModifyButton).setOnClickListener(onClickListener);
    }
    @Override
    public void onBackPressed(){
        myStartActivity(MainActivity.class);
    }

    public void setImage(){
        FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();
        FirebaseStorage storage = FirebaseStorage.getInstance("gs://smarthome-85e30.appspot.com/");
        StorageReference storageRef = storage.getReference();
        storageRef.child("user/"+user.getUid()+"/profile.jpg").getDownloadUrl().addOnSuccessListener(new OnSuccessListener<Uri>() {
            @Override
            public void onSuccess(Uri uri) {
                Glide.with(getApplicationContext()).load(uri).into(imgView);
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

    View.OnClickListener onClickListener = new View.OnClickListener() {
        @Override
        public void onClick(View view) {
            switch (view.getId()){
                case R.id.gotoProfileModifyButton:
                    myStartActivity(ProfileModifyActivity.class);
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
                Glide.with(getApplicationContext()).load(uri).into(imgView);
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(@NonNull Exception exception) {
                //이미지 로드 실패시
                Log.e("실패","실패");
            }
        });
    }

    private void getMemInfo(){
        FirebaseFirestore db = FirebaseFirestore.getInstance();
        DocumentReference docRef = db.collection("users").document(user.getUid());
        docRef.get().addOnSuccessListener(new OnSuccessListener<DocumentSnapshot>() {
            @Override
            public void onSuccess(DocumentSnapshot documentSnapshot) {
                memberInfo = documentSnapshot.toObject(MemberInfo.class);
                printMemInfo();
            }
        });
    }
    private void printMemInfo(){
        TextView email = findViewById(R.id.EmailText);
        TextView name = findViewById(R.id.NameText);
        TextView nic = findViewById(R.id.NicText);
        TextView phone = findViewById(R.id.PhoneText);
        TextView birth = findViewById(R.id.birthText);
        TextView address = findViewById(R.id.addressText);

        email.setText(memberInfo.getEmail());
        name.setText(memberInfo.getName());
        nic.setText(memberInfo.getNic());
        phone.setText(memberInfo.getPhone());
        birth.setText(memberInfo.getBirth());
        address.setText(memberInfo.getAddress());
    }
    private void startToast(String msg){
        Toast.makeText(this,msg,Toast.LENGTH_SHORT).show();
    }
    private void myStartActivity(Class cls){
        Intent intent = new Intent(this, cls);
        startActivity(intent);
    }
}
