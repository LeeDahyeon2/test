package com.example.smarthome;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.DatePicker;
import android.widget.EditText;
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

public class ProfileModifyActivity extends AppCompatActivity {
    ImageView imgView;
    MemberInfo memberInfo = new MemberInfo();
    FirebaseUser user;
    DatePicker datepicker;
    public static String yy,mm,dd;
    public static boolean check=false;
    String birth;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("회원 정보 수정");
        setContentView(R.layout.activity_profile_modify);
        user = FirebaseAuth.getInstance().getCurrentUser();

        imgView = (ImageView)findViewById(R.id.profileModiImage);
        setImage();
        getMemInfo();
        findViewById(R.id.cameraButton).setOnClickListener(onClickListener);
        findViewById(R.id.pictureButton).setOnClickListener(onClickListener);
        findViewById(R.id.gotoProfileButton).setOnClickListener(onClickListener);
        EditText brand_phone = (EditText) findViewById(R.id.phoneModifyText);
        brand_phone.addTextChangedListener(new PhoneNumberFormattingTextWatcher());
    }
    View.OnClickListener onClickListener = new View.OnClickListener() {
        @Override
        public void onClick(View view) {
            switch (view.getId()){
                case R.id.cameraButton:
                    myCameraActivity();
                    break;
                case R.id.pictureButton:
                    myStartActivity(GalleryCheck.class);
                    break;
                case R.id.gotoProfileButton:
                    modiMemInfo();
                    myStartActivity(ProfileActivity.class);
                    break;
            }
        }
    };
    @Override
    public void onRequestPermissionsResult(int requestCode,String[] permissions,int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        switch (requestCode) {
            case 1:
                if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                    myStartActivity(GalleryActivity.class);
                } else {
                    startToast("권한을 허용해 주세요.");
                }
        }
    }
    public void onBackPressed(){
        myStartActivity(ProfileActivity.class);
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
                Log.d("==============",""+memberInfo.getNic());
                printMemInfo();
            }
        });
    }
    private void printMemInfo(){
        String birthInit = memberInfo.getBirth();
        Log.d("==============","print");
        int yearInit = Integer.parseInt(birthInit.substring(0,4));
        int monthInit = Integer.parseInt(birthInit.substring(5,7))-1;
        int dayInit = Integer.parseInt(birthInit.substring(8));
        datepicker = findViewById(R.id.birthModi);
        datepicker.init(yearInit, monthInit, dayInit
                ,new DatePicker.OnDateChangedListener() {
                    @Override
                    public void onDateChanged(DatePicker view, int year, int monthOfYear, int dayOfMonth) {
                        yy=Integer.toString(year);
                        mm=Integer.toString(monthOfYear+1);
                        dd=Integer.toString(dayOfMonth);
                        check=true;
                        birth=yy+"-";
                        if(monthOfYear<10)birth+="0";
                        birth+=mm+"-";
                        if(dayOfMonth<10)birth+="0";
                        else birth+=dd;
                    }
                });
        TextView email = findViewById(R.id.emailModifyText);
        TextView name = findViewById(R.id.nameModifyText);
        TextView nic = findViewById(R.id.nicModiText);
        TextView phone = findViewById(R.id.phoneModifyText);
        TextView address = findViewById(R.id.addressModifyText);

        email.setText(memberInfo.getEmail());
        name.setText(memberInfo.getName());
        nic.setText(memberInfo.getNic());
        phone.setText(memberInfo.getPhone());
        address.setText(memberInfo.getAddress());
    }
    private void modiMemInfo() {
        String email = ((TextView)findViewById(R.id.emailModifyText)).getText().toString();
        String nic = ((EditText)findViewById(R.id.nicModiText)).getText().toString();
        String name= ((EditText)findViewById(R.id.nameModifyText)).getText().toString();
        String phone= ((EditText)findViewById(R.id.phoneModifyText)).getText().toString();
        String address= ((EditText)findViewById(R.id.addressModifyText)).getText().toString();

        FirebaseFirestore db = FirebaseFirestore.getInstance();
        MemberInfo memberInfo = new MemberInfo(email, nic, name, phone, address, birth);
        db.collection("users").document(user.getUid()).set(memberInfo)
                .addOnSuccessListener(new OnSuccessListener<Void>() {
                    @Override
                    public void onSuccess(Void aVoid) {
                        startToast("회원정보 수정에 성공하였습니다.");
                    }
                });
    }
    private void myStartActivity(Class cls){
        Intent intent = new Intent(this, cls);
        startActivity(intent);
    }

    private void startToast(String msg){
        Toast.makeText(this,msg,Toast.LENGTH_SHORT).show();
    }
    private void myCameraActivity(){
        Intent intent = new Intent(this, CameraActivity.class);
        startActivityForResult(intent,0);
    }
}
