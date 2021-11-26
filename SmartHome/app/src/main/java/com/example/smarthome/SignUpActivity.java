package com.example.smarthome;

import android.content.Intent;
import android.os.Bundle;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.example.smarthome.DTO.MemberInfo;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.UserProfileChangeRequest;
import com.google.firebase.firestore.FirebaseFirestore;

public class SignUpActivity extends AppCompatActivity {
    private static final String TAG = "SignUpActivity";
    private static final String mTAG="MemberInitActivity;";
    private FirebaseAuth mAuth;
    DatePicker datepicker;
    public static String yy,mm,dd;
    public static boolean check=false;
    String birth;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("회원가입");
        setContentView(R.layout.activity_sign_up);
        // Initialize Firebase Auth
        mAuth = FirebaseAuth.getInstance();

        findViewById(R.id.signUpButton).setOnClickListener(onClickListener);
        findViewById(R.id.gotoLoginButton).setOnClickListener(onClickListener);
        EditText brand_phone = (EditText) findViewById(R.id.phoneEditText);
        brand_phone.addTextChangedListener(new PhoneNumberFormattingTextWatcher());
        datepicker = findViewById(R.id.birthEdit);
        datepicker.init(datepicker.getYear(), datepicker.getMonth(), datepicker.getDayOfMonth(),
                new DatePicker.OnDateChangedListener() {
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
    }

    View.OnClickListener onClickListener = new View.OnClickListener(){
       @Override
       public void onClick(View v){
           switch(v.getId()){
               case R.id.signUpButton:
                   signUp();
                   break;
               case R.id.gotoLoginButton:
                   startMyActivity(LoginActivity.class);
                   break;
           }
       }
    };

    public void signUp(){
        String email = ((EditText)findViewById(R.id.emailEditText)).getText().toString();
        String password = ((EditText)findViewById(R.id.passwordEditText)).getText().toString();
        String passwordCheck = ((EditText)findViewById(R.id.passwordCheckEditText)).getText().toString();
        String nic = ((EditText)findViewById(R.id.nicEditText)).getText().toString();
        String name= ((EditText)findViewById(R.id.nameEditText)).getText().toString();
        String phone= ((EditText)findViewById(R.id.phoneEditText)).getText().toString();
        String address= ((EditText)findViewById(R.id.addressEditText)).getText().toString();

        if(email.length()>0&&password.length()>0&&passwordCheck.length()>0&&name.length()>0&&phone.length()==13
            && address.length()>0 && nic.length()>0) {
            if (password.equals(passwordCheck)) {
                mAuth.createUserWithEmailAndPassword(email, password)
                        .addOnCompleteListener(this, new OnCompleteListener<AuthResult>() {
                            @Override
                            public void onComplete(@NonNull Task<AuthResult> task) {
                                if (task.isSuccessful()) {
                                    FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();

                                    UserProfileChangeRequest profileUpdates = new UserProfileChangeRequest.Builder()
                                            .setDisplayName(nic)
                                            .build();
                                    if(user!=null) {
                                        user.updateProfile(profileUpdates)
                                                .addOnCompleteListener(new OnCompleteListener<Void>() {
                                                    @Override
                                                    public void onComplete(@NonNull Task<Void> task) {
                                                        if (task.isSuccessful()) {
                                                            FirebaseFirestore db = FirebaseFirestore.getInstance();
                                                            MemberInfo memberInfo = new MemberInfo(email,nic,name,phone,address,birth);
                                                            db.collection("users").document(user.getUid()).set(memberInfo)
                                                                    .addOnSuccessListener(new OnSuccessListener<Void>() {
                                                                        @Override
                                                                        public void onSuccess(Void aVoid) {
                                                                            startToast("회원가입에 성공하였습니다.");
                                                                            startMyActivity(MainActivity.class);
                                                                        }
                                                                    })
                                                                    .addOnFailureListener(new OnFailureListener() {
                                                                        @Override
                                                                        public void onFailure(@NonNull Exception e) {
                                                                            startToast("회원가입에 실패하였습니다.");
                                                                            Log.w(mTAG, "Error adding document", e);
                                                                        }
                                                                    });
                                                        }
                                                    }
                                                });
                                    }
                                } else {
                                    if (task.getException() != null) {
                                        // If sign in fails, display a message to the user.
                                        startToast(task.getException().toString());
                                    }
                                }
                            }
                        });
            } else {
                startToast("비밀번호가 일치하지 않습니다.");
            }
        }else{
            startToast("입력되지 않은 항목이 있습니다."+phone.length());
        }
    }

    public void onBackPressed(){}
    private void startToast(String msg){
        Toast.makeText(this,msg,Toast.LENGTH_SHORT).show();
    }
    private void startMyActivity(Class cls){
        Intent intent = new Intent(this, cls);
        startActivity(intent);
    }
}
