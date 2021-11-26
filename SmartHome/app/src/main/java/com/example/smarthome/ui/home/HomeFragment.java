package com.example.smarthome.ui.home;

import java.util.List;
import java.util.concurrent.Executors;//추가~총5줄

import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import android.content.Context;
import android.graphics.Color;
import android.location.Address;
import android.location.Geocoder;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.Switch;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;

import com.example.smarthome.DTO.IoTInfo;
import com.example.smarthome.R;
import com.example.smarthome.apiTest;
import com.example.smarthome.databinding.FragmentHomeBinding;
import com.github.dhaval2404.colorpicker.ColorPickerDialog;
import com.github.dhaval2404.colorpicker.listener.ColorListener;
import com.github.dhaval2404.colorpicker.model.ColorShape;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.firestore.DocumentReference;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.FirebaseFirestore;

public class HomeFragment extends Fragment implements View.OnClickListener{

    private HomeViewModel homeViewModel;
    private FragmentHomeBinding binding;
    View root;
    Context context;
    IoTInfo iotInfo = new IoTInfo();
    int[] ret = new int[3];
    FirebaseFirestore db = FirebaseFirestore.getInstance();
    DocumentReference docRef = db.collection("RaspberryPi").document("RaspberryPi");

    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        homeViewModel =
                new ViewModelProvider(this).get(HomeViewModel.class);

        binding = FragmentHomeBinding.inflate(inflater, container, false);
        context = container.getContext();
        root = binding.getRoot();
        root.findViewById(R.id.btnOut).setOnClickListener(this);
        root.findViewById(R.id.btnIn).setOnClickListener(this);
        root.findViewById(R.id.btnSleep).setOnClickListener(this);
        root.findViewById(R.id.btn_chooseLight1).setOnClickListener(this);
        root.findViewById(R.id.btn_chooseLight2).setOnClickListener(this);
        getIoTInfo();
        
        final apiTest at = new apiTest();//추가
        Executors.newSingleThreadExecutor().execute(new Runnable() {
            @Override
            public void run() {
                try {
                    //System의 현재 시간(년,월,일,시,분,초까지)가져오고 Date로 객체화함
                    long now = System.currentTimeMillis();
                    Date date = new Date(now);

                    //년, 월, 일 형식으로. 시,분,초 형식으로 객체화하여 String에 형식대로 넣음
                    SimpleDateFormat simpleDateFormatDay = new SimpleDateFormat("yyyyMMdd");
                    SimpleDateFormat simpleDateFormatTime = new SimpleDateFormat("HHmm");
                    String ndate = simpleDateFormatDay.format(date);
                    String ntime = simpleDateFormatTime.format(date);

                    //주소->좌표 변환
                    double x = 0;
                    double y = 0;
                    final Geocoder geocoder = new Geocoder(context.getApplicationContext());
                    String value = "주소입력받기";
                    List<Address> list = null;
                    String str = value;
                    try {
                        list = geocoder.getFromLocationName(str, 1);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    if (list != null) {
                        if (list.size() == 0) {
                        } else {
                            Address adr = list.get(0);
                            x = adr.getLatitude();//위도
                            y = adr.getLongitude();//경도
                        }
                    }

                    //시간, 좌표 넣어서 날씨 불러오기
                    at.func(ndate, ntime, x, y);
                } catch (IOException | JSONException e) {
                    e.printStackTrace();
                }
            }
        });//추가끝

        return root;
    }

    private void setSwitch() {
        Switch switchFan = (Switch)root.findViewById(R.id.switchFan);
        if(iotInfo.getFlag_fan()==0)switchFan.setChecked(false);
        else switchFan.setChecked(true);
        switchFan.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean isChecked) {
                if(isChecked){
                    iotInfo.setFlag_fan(1);
                    iotInfo.setApp_fan(1);
                    setSwitchDB("선풍기가 켜졌습니다.");
                }else{
                    iotInfo.setFlag_fan(0);
                    iotInfo.setApp_fan(0);
                    setSwitchDB("선풍기가 꺼졌습니다.");
                }
            }
        });
        Switch switchLight1 = (Switch)root.findViewById(R.id.switchLight1);
        if(iotInfo.getFlag_light1()==0)switchLight1.setChecked(false);
        else switchLight1.setChecked(true);
        switchLight1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean isChecked) {
                if(isChecked){
                    iotInfo.setFlag_light1(1);
                    iotInfo.setApp_light1(1);
                    setSwitchDB("조명1이 켜졌습니다.");
                }else{
                    iotInfo.setFlag_light1(0);
                    iotInfo.setApp_light1(0);
                    setSwitchDB("조명1이 꺼졌습니다.");
                }
            }
        });
        Switch switchLight2 = (Switch)root.findViewById(R.id.switchLight2);
        if(iotInfo.getFlag_light2()==0)switchLight2.setChecked(false);
        else switchLight2.setChecked(true);
        switchLight2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean isChecked) {
                if(isChecked){
                    iotInfo.setFlag_light2(1);
                    iotInfo.setApp_light2(1);
                    setSwitchDB("조명2가 켜졌습니다.");
                }else{
                    iotInfo.setFlag_light2(0);
                    iotInfo.setApp_light2(0);
                    setSwitchDB("조명2가 꺼졌습니다.");
                }
            }
        });
        Switch switchDoor = (Switch)root.findViewById(R.id.switchDoor);
        if(iotInfo.getFlag_door()==0)switchDoor.setChecked(false);
        else switchDoor.setChecked(true);
        switchDoor.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean isChecked) {
                if(isChecked){
                    iotInfo.setFlag_door(1);
                    iotInfo.setApp_door(1);
                    setSwitchDB("문이 열렸습니다.");
                }else{
                    iotInfo.setFlag_door(0);
                    iotInfo.setApp_door(0);
                    setSwitchDB("문이 닫혔습니다.");
                }
            }
        });
        Switch switchWindow = (Switch)root.findViewById(R.id.switchWindow);
        if(iotInfo.getFlag_window()==0)switchWindow.setChecked(false);
        else switchWindow.setChecked(true);
        switchWindow.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean isChecked) {
                if(isChecked){
                    iotInfo.setFlag_window(1);
                    iotInfo.setApp_window(1);
                    setSwitchDB("창문이 열렸습니다.");
                }else{
                    iotInfo.setFlag_window(0);
                    iotInfo.setApp_window(0);
                    setSwitchDB("창문이 닫혔습니다.");
                }
            }
        });
        Switch switchCCTV1 = (Switch)root.findViewById(R.id.switchCCTV1);
        if(iotInfo.getFlag_cctv1()==0)switchCCTV1.setChecked(false);
        else switchCCTV1.setChecked(true);
        switchCCTV1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean isChecked) {
                if(isChecked){
                    iotInfo.setFlag_cctv1(1);
                    iotInfo.setApp_cctv1(1);
                    setSwitchDB("cctv1 녹화를 시작합니다.");
                }else{
                    iotInfo.setFlag_cctv1(0);
                    iotInfo.setApp_cctv1(0);
                    setSwitchDB("cctv1 녹화를 끝냅니다.");
                }
            }
        });
        Switch switchCCTV2 = (Switch)root.findViewById(R.id.switchCCTV2);
        if(iotInfo.getFlag_cctv2()==0)switchCCTV2.setChecked(false);
        else switchCCTV2.setChecked(true);
        switchCCTV2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean isChecked) {
                if(isChecked){
                    iotInfo.setFlag_cctv2(1);
                    iotInfo.setApp_cctv2(1);
                    setSwitchDB("cctv2 녹화를 시작합니다.");
                }else{
                    iotInfo.setFlag_cctv2(0);
                    iotInfo.setApp_cctv2(0);
                    setSwitchDB("cctv2 녹화를 끝냅니다.");
                }
            }
        });
    }

    private void setSwitchDB(String str) {
        db.collection("RaspberryPi").document("RaspberryPi").set(iotInfo)
                .addOnSuccessListener(new OnSuccessListener<Void>() {
                    @Override
                    public void onSuccess(Void aVoid) {
                        startToast(str);
                    }
                });
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }

    @Override
    public void onClick(View view) {
        Button btnIn = (Button) root.findViewById(R.id.btnIn);
        Button btnOut = (Button) root.findViewById(R.id.btnOut);
        Button btnSleep = (Button) root.findViewById(R.id.btnSleep);
        switch (view.getId()) {
            case R.id.btnIn:
                btnIn.setBackground(ContextCompat.getDrawable(context,R.drawable.btn_shape_able));
                btnIn.setTextColor(Color.BLACK);

                btnOut.setBackground(ContextCompat.getDrawable(context,R.drawable.btn_shape_unable));
                btnOut.setTextColor(Color.WHITE);

                btnSleep.setBackground(ContextCompat.getDrawable(context,R.drawable.btn_shape_unable));
                btnSleep.setTextColor(Color.WHITE);
                break;
            case R.id.btnOut:
                btnOut.setBackground(ContextCompat.getDrawable(context,R.drawable.btn_shape_able));
                btnOut.setTextColor(Color.BLACK);

                btnIn.setBackground(ContextCompat.getDrawable(context,R.drawable.btn_shape_unable));
                btnIn.setTextColor(Color.WHITE);

                btnSleep.setBackground(ContextCompat.getDrawable(context,R.drawable.btn_shape_unable));
                btnSleep.setTextColor(Color.WHITE);
                break;
            case R.id.btnSleep:
                btnSleep.setBackground(ContextCompat.getDrawable(context,R.drawable.btn_shape_able));
                btnSleep.setTextColor(Color.BLACK);

                btnOut.setBackground(ContextCompat.getDrawable(context,R.drawable.btn_shape_unable));
                btnOut.setTextColor(Color.WHITE);

                btnIn.setBackground(ContextCompat.getDrawable(context,R.drawable.btn_shape_unable));
                btnIn.setTextColor(Color.WHITE);
                break;
            case R.id.btn_chooseLight1:
                chooseColor("light1");
                break;
            case R.id.btn_chooseLight2:
                chooseColor("light2");
                break;
        }
    }
    public void chooseColor(String light){
        String colorHex;
        if(light.equals("light1")){
            colorHex = iotInfo.getColorHex1();
        }else colorHex = iotInfo.getColorHex2();
        if (colorHex==null)colorHex="#FFFFFF";
        new ColorPickerDialog
                .Builder(context)
                .setTitle("조명 색상")
                .setColorShape(ColorShape.SQAURE)
                .setDefaultColor(colorHex)
                .setColorListener(new ColorListener() {
                    @Override
                    public void onColorSelected(int color, @NotNull String colorHex) {
                        // Handle Color Selection
                        colorHex=colorHex.substring(1);
                        Log.d("================","hex"+colorHex);
                        for (int i = 0; i < 3; i++)
                        {
                            ret[i] = Integer.parseInt(colorHex.substring(i * 2, i * 2 + 2), 16);
                        }
                        Log.d("================","r:"+ret[0]);
                        Log.d("================","g:"+ret[1]);
                        Log.d("================","b:"+ret[2]);
                        for(int i=0; i<3; i++){
                            ret[i]=Math.round(((float)ret[i])/255*100);
//                            ret[i]=((float)ret[i])/255*100;
                        }
                        Log.d("================","r:"+ret[0]);
                        Log.d("================","g:"+ret[1]);
                        Log.d("================","b:"+ret[2]);
                        changeColor(light,colorHex);
                    }
                })
                .show();
    }
    public void getIoTInfo(){
        docRef.get().addOnSuccessListener(new OnSuccessListener<DocumentSnapshot>() {
            @Override
            public void onSuccess(DocumentSnapshot documentSnapshot) {
                iotInfo = documentSnapshot.toObject(IoTInfo.class);
                setSwitch();
            }
        });
    }
    public void changeColor(String light, String colorHex){
        if (light.equals("light1")){
            Log.d("============","light1");
            iotInfo.setLight1_r(ret[0]);
            iotInfo.setLight1_g(ret[1]);
            iotInfo.setLight1_b(ret[2]);
            iotInfo.setColorHex1("#"+colorHex);
        }else{
            Log.d("============","light2");
            iotInfo.setLight2_r(ret[0]);
            iotInfo.setLight2_g(ret[1]);
            iotInfo.setLight2_b(ret[2]);
            iotInfo.setColorHex2("#"+colorHex);
        }
        db.collection("RaspberryPi").document("RaspberryPi").set(iotInfo)
                .addOnSuccessListener(new OnSuccessListener<Void>() {
                    @Override
                    public void onSuccess(Void aVoid) {
                        startToast("조명의 색상을 변경하였습니다.");
                    }
                });
    }
    private void startToast(String msg){
        Toast.makeText(context,msg,Toast.LENGTH_SHORT).show();
    }
}