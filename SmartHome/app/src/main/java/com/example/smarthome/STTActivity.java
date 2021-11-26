package com.example.smarthome;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.speech.RecognitionListener;
import android.speech.RecognizerIntent;
import android.speech.SpeechRecognizer;
import android.speech.tts.TextToSpeech;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.Switch;
import android.widget.Toast;
import android.widget.ToggleButton;

import com.example.smarthome.DTO.IoTInfo;
import com.example.smarthome.ui.home.HomeFragment;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.firestore.DocumentReference;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.FirebaseFirestore;

import java.util.ArrayList;
import java.util.Locale;

public class STTActivity extends AppCompatActivity {

    Context cThis;//context 설정
    String LogTT="[STT]";//LOG타이틀
    //음성 인식용
    Intent SttIntent;
    SpeechRecognizer mRecognizer;
    //음성 출력용
    TextToSpeech tts;
    Context context;
    //final int PERMISSION = 1;

    // 화면 처리용
    ImageButton btnSttStart;
    EditText txtInMsg;
    EditText txtSystem;

    IoTInfo iotInfo = new IoTInfo();
    FirebaseFirestore db = FirebaseFirestore.getInstance();
    DocumentReference docRef = db.collection("RaspberryPi").document("RaspberryPi");
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        cThis=this;
        super.onCreate(savedInstanceState);
        setContentView(R.layout.content_stt);

//        if ( Build.VERSION.SDK_INT >= 23 ){
//            // 퍼미션 체크
//            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.INTERNET,
//                    Manifest.permission.RECORD_AUDIO},PERMISSION);
//        }

        //음성인식
        SttIntent=new Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH);
        //SttIntent.putExtra(RecognizerIntent.EXTRA_CALLING_PACKAGE,getApplicationContext().getPackageName());
        SttIntent.putExtra(RecognizerIntent.EXTRA_LANGUAGE,"ko-KR");//한국어 사용
        mRecognizer=SpeechRecognizer.createSpeechRecognizer(cThis);
        mRecognizer.setRecognitionListener(listener);
        getIoTInfo();
        //음성출력 생성, 리스너 초기화
        tts=new TextToSpeech(cThis, new TextToSpeech.OnInitListener() {
            @Override
            public void onInit(int status) {
                if(status!=android.speech.tts.TextToSpeech.ERROR){
                    tts.setLanguage(Locale.KOREAN);
                }
            }
        });
        //버튼설정
        btnSttStart=(ImageButton)findViewById(R.id.btn_stt_start);
        btnSttStart.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                System.out.println("음성인식 버튼 클릭");
                if(ContextCompat.checkSelfPermission(cThis, Manifest.permission.RECORD_AUDIO)!= PackageManager.PERMISSION_GRANTED){
                    ActivityCompat.requestPermissions(STTActivity.this,new String[]{Manifest.permission.RECORD_AUDIO},1);
                    //권한을 허용하지 않는 경우
                }else{
                    //권한을 허용한 경우
                    try {
                        mRecognizer.startListening(SttIntent);
                    }catch (SecurityException e){e.printStackTrace();}
                }
            }
        });
        txtInMsg=(EditText)findViewById(R.id.txtInMsg);
        txtSystem=(EditText)findViewById(R.id.txtSystem);

        //어플이 실행되면 자동으로 1초뒤에 음성 인식 시작
        new android.os.Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                txtSystem.setText("어플 실행됨--자동 실행-----------"+"\r\n"+txtSystem.getText());
                btnSttStart.performClick();
            }
        },1000);//바로 실행을 원하지 않으면 지워주시면 됩니다
    }
    private RecognitionListener listener=new RecognitionListener() {
        @Override
        public void onReadyForSpeech(Bundle bundle) {
            txtSystem.setText("onReadyForSpeech..........."+"\r\n"+txtSystem.getText());
        }

        @Override
        public void onBeginningOfSpeech() {
            txtSystem.setText("지금부터 말을 해주세요..........."+"\r\n"+txtSystem.getText());
        }

        @Override
        public void onRmsChanged(float v) {

        }

        @Override
        public void onBufferReceived(byte[] bytes) {
            txtSystem.setText("onBufferReceived..........."+"\r\n"+txtSystem.getText());
        }

        @Override
        public void onEndOfSpeech() {
            txtSystem.setText("onEndOfSpeech..........."+"\r\n"+txtSystem.getText());
        }

        @Override
        public void onError(int i) {
            txtSystem.setText("천천히 다시 말해 주세요..........."+"\r\n"+txtSystem.getText());
        }

        @Override
        public void onResults(Bundle results) {  //음성인식 텍스트화
            Log.d("======================","onResults 시작");
            String key= "";
            key = SpeechRecognizer.RESULTS_RECOGNITION;
            ArrayList<String> mResult =results.getStringArrayList(key);
            String[] rs = new String[mResult.size()];
            mResult.toArray(rs);
            txtInMsg.setText(rs[0]+"\r\n"+txtInMsg.getText());
            FuncVoiceOrderCheck(rs[0]);
            mRecognizer.startListening(SttIntent);

        }

        @Override
        public void onPartialResults(Bundle bundle) {
            txtSystem.setText("onPartialResults..........."+"\r\n"+txtSystem.getText());
        }

        @Override
        public void onEvent(int i, Bundle bundle) {
            txtSystem.setText("onEvent..........."+"\r\n"+txtSystem.getText());
        }
    };

    private void setSwitchDB(String str) {
        Log.d("======================","setSwitchDB 시작");
        db.collection("RaspberryPi").document("RaspberryPi").set(iotInfo)
                .addOnSuccessListener(new OnSuccessListener<Void>() {

                    @Override

                    public void onSuccess(Void aVoid) {
                        Log.d("======================","onSuccess");
                        startToast(str);
                    }
                });
        Log.d("======================","setSwitchDB 완료");
    }

    private void startToast(String msg){
        Toast.makeText(this,msg,Toast.LENGTH_SHORT).show();
    }

    public void getIoTInfo(){
        Log.d("======================","onResults getIoTInfo");
        docRef.get().addOnSuccessListener(new OnSuccessListener<DocumentSnapshot>() {
            @Override
            public void onSuccess(DocumentSnapshot documentSnapshot) {
                iotInfo = documentSnapshot.toObject(IoTInfo.class);
                Log.d("======================","getIoTInfo 함수 onSuccess");
            }
        });
    }


    //입력된 음성 메세지 확인 후 동작 처리
    private void FuncVoiceOrderCheck(String VoiceMsg){
        //String senser;
        Log.d("======================","onResults FuncVoiceOrderCheck");
        if(VoiceMsg.length()<1)return;

        VoiceMsg=VoiceMsg.replace(" ","");//공백제거

        //조명1
        if(VoiceMsg.indexOf("불켜")>-1 || VoiceMsg.indexOf("조명켜")>-1) {
            Log.d("======================","text인식");
//            Intent launchIntent = getPackageManager().getLaunchIntentForPackage("com.kakao.talk");
//            startActivity(launchIntent);
//            onDestroy();
            //getIoTInfo();
            Log.d("======================","getIntInfo");
            iotInfo.setFlag_light1(1);
            Log.d("======================","setFlag_light1(1)");
            iotInfo.setApp_light1(1);
            Log.d("======================","setApp_light1");
            setSwitchDB("조명1 켜졌습니다.");
            Log.d("======================","setSwitchDB");
        }

        if(VoiceMsg.indexOf("첫번째조명꺼")>-1 || VoiceMsg.indexOf("조명일꺼")>-1){
            //getIoTInfo();
            iotInfo.setFlag_light1(0);
            iotInfo.setApp_light1(0);
            setSwitchDB("조명1 꺼졌습니다.");
        }
        //조명2
        if(VoiceMsg.indexOf("두번째조명켜")>-1 || VoiceMsg.indexOf("조명이켜")>-1){
            //getIoTInfo();
            iotInfo.setFlag_light2(1);
            iotInfo.setApp_light2(1);
            setSwitchDB("조명2 켜졌습니다.");
        }
        if(VoiceMsg.indexOf("두번째조명꺼")>-1 || VoiceMsg.indexOf("조명이꺼")>-1){
            //getIoTInfo();
            iotInfo.setFlag_light2(0);
            iotInfo.setApp_light2(0);
            setSwitchDB("조명2 꺼졌습니다.");
        }
        //선풍기
        if(VoiceMsg.indexOf("선풍기켜")>-1 || VoiceMsg.indexOf("선풍기켜")>-1){
            getIoTInfo();
            Log.d("======================","선풍기켜 인식");
            iotInfo.setFlag_fan(1);
            iotInfo.setApp_fan(1);
            setSwitchDB("선풍기가 켜졌습니다.");
        }
        if(VoiceMsg.indexOf("선풍기꺼")>-1 || VoiceMsg.indexOf("선풍기꺼")>-1){
            //getIoTInfo();
            iotInfo.setFlag_fan(0);
            iotInfo.setApp_fan(0);
            setSwitchDB("선풍기가 꺼졌습니다.");
        }
        //현관문
        if(VoiceMsg.indexOf("문열어")>-1 || VoiceMsg.indexOf("현관문열어")>-1){
            //getIoTInfo();
            iotInfo.setFlag_door(1);
            iotInfo.setApp_door(1);
            setSwitchDB("현관문이 열렸습니다.");
        }
        if(VoiceMsg.indexOf("문닫아")>-1 || VoiceMsg.indexOf("현관문닫아")>-1) {
            //getIoTInfo();
            iotInfo.setFlag_door(0);
            iotInfo.setApp_door(0);
            setSwitchDB("현관문이 닫혔습니다.");
        }
        //창문
        if(VoiceMsg.indexOf("창문열어")>-1 || VoiceMsg.indexOf("창문열기")>-1){
            //getIoTInfo();
            iotInfo.setFlag_window(1);
            iotInfo.setApp_window(1);
            setSwitchDB("창문이 열렸습니다.");
        }
        if(VoiceMsg.indexOf("창문닫아")>-1 || VoiceMsg.indexOf("창문닫기")>-1){
            //getIoTInfo();
            iotInfo.setFlag_window(0);
            iotInfo.setApp_window(0);
            setSwitchDB("창문이 닫혔습니다.");
        }

        //cctv(현관)
        if((VoiceMsg.indexOf("현관씨씨티비켜")>-1 || VoiceMsg.indexOf("현관카메라켜")>-1)
                || VoiceMsg.indexOf("밖씨씨티비켜")>-1|| VoiceMsg.indexOf("밖카메라켜")>-1){
            //getIoTInfo();
            iotInfo.setFlag_cctv1(1);
            iotInfo.setApp_cctv1(1);
            setSwitchDB("현관cctv가 켜졌습니다.");
        }
        if((VoiceMsg.indexOf("현관씨씨티비꺼")>-1 || VoiceMsg.indexOf("현관카메라꺼")>-1)
                || VoiceMsg.indexOf("밖씨씨티비꺼")>-1|| VoiceMsg.indexOf("밖카메라꺼")>-1){
            //getIoTInfo();
            iotInfo.setFlag_cctv1(0);
            iotInfo.setApp_cctv1(0);
            setSwitchDB("현관cctv가 꺼졌습니다.");
        }
        //cctv(실내)
        if((VoiceMsg.indexOf("집씨씨티비켜")>-1 || VoiceMsg.indexOf("집카메라켜")>-1)||
                VoiceMsg.indexOf("실내씨씨티비켜")>-1|| VoiceMsg.indexOf("실내카메라켜")>-1){
            //getIoTInfo();
            iotInfo.setFlag_cctv2(1);
            iotInfo.setApp_cctv2(1);
            setSwitchDB("실내cctv가 켜졌습니다.");
        }
        if((VoiceMsg.indexOf("집씨씨티비꺼")>-1 || VoiceMsg.indexOf("집카메라꺼")>-1)||
                VoiceMsg.indexOf("실내씨씨티비꺼")>-1|| VoiceMsg.indexOf("실내카메라꺼")>-1){
            //getIoTInfo();
            iotInfo.setFlag_cctv2(0);
            iotInfo.setApp_cctv2(0);
            setSwitchDB("실내cctv가 꺼졌습니다.");
        }
        Log.d("======================","보이스인식 완료");
        //onDestroy();
        startMyActivity(MainActivity.class);

    }
    private void startMyActivity(Class cls){
        Intent intent = new Intent(this, cls);
        startActivity(intent);
    }
    //음성 메세지 출력용
//    private void FuncVoiceOut(String OutMsg){
//        if(OutMsg.length()<1)return;
//
//        tts.setPitch(1.0f);//목소리 톤1.0
//        tts.setSpeechRate(1.0f);//목소리 속도
//        tts.speak(OutMsg,TextToSpeech.QUEUE_FLUSH,null);
//
//        //어플이 종료할때는 완전히 제거
//
//    }
    //카톡으로 이동을 했는데 음성인식 어플이 종료되지 않아 계속 실행되는 경우를 막기위해 어플 종료 함수
//    @Override
//    protected void onDestroy() {
//        super.onDestroy();
//        if(tts!=null){
//            tts.stop();
//            tts.shutdown();
//            tts=null;
//        }
//        if(mRecognizer!=null){
//            mRecognizer.destroy();
//            mRecognizer.cancel();
//            mRecognizer=null;
//        }
//    }
}
