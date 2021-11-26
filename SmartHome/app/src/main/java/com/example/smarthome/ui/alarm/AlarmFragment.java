package com.example.smarthome.ui.alarm;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;

import com.example.smarthome.DTO.Alarm;
import com.example.smarthome.R;
import com.example.smarthome.databinding.FragmentAlarmBinding;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.firestore.CollectionReference;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.Query;
import com.google.firebase.firestore.QueryDocumentSnapshot;
import com.google.firebase.firestore.QuerySnapshot;

import java.util.ArrayList;

public class AlarmFragment extends Fragment implements View.OnClickListener {

    private AlarmViewModel alarmViewModel;
    private FragmentAlarmBinding binding;
    View root;
    Context context;
    ArrayList<Alarm> alarmDataList;
    ListView listView;

//    @Override
//    protected void onCreate(Bundle savedInstanceState) {
//        super.onCreate(savedInstanceState);
//        setContentView(R.layout.activity_main);
//
//
//
//    }

    public void InitializeMovieData()
    {
        alarmDataList = new ArrayList<Alarm>();
        FirebaseFirestore db = FirebaseFirestore.getInstance();
        CollectionReference productRef = db.collection("Alarm");
        //get()을 통해서 해당 컬렉션의 정보를 가져온다.
        productRef.orderBy("date", Query.Direction.DESCENDING).get().addOnCompleteListener(new OnCompleteListener<QuerySnapshot>() {
            @Override
            public void onComplete(@NonNull Task<QuerySnapshot> task) {
                if (task.isSuccessful()) {
                    for (QueryDocumentSnapshot document : task.getResult()) {
                        //document.getData() or document.getId() 등등 여러 방법으로
                        //데이터를 가져올 수 있다.
                        Alarm alarm = new Alarm();
                        alarm.setTitle(document.getString("title"));
                        alarm.setMessage(document.getString("message"));
//                        String dateStr = document.getString("date");
//                        SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//                        Date date = new Date();
//                        try {
//                            date = fm.parse(dateStr);
//                        } catch (ParseException e) {
//                            e.printStackTrace();
//                        }
//                        alarm.setDate(date);
                        alarm.setDate(document.getString("date"));
                        alarm.setCheck(document.getString("check"));
                        alarmDataList.add(alarm);
                    }
                    final AlarmAdapter myAdapter = new AlarmAdapter(context,alarmDataList);

                    listView.setOnItemClickListener(new AdapterView.OnItemClickListener(){
                        @Override
                        public void onItemClick(AdapterView parent, View v, int position, long id){
                        }
                    });
                    listView.setAdapter(myAdapter);
                } else {

                }
            }
        });
    }

    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        alarmViewModel =
                new ViewModelProvider(this).get(AlarmViewModel.class);
        binding = FragmentAlarmBinding.inflate(inflater, container, false);
        context = container.getContext();
        root = binding.getRoot();
        listView = (ListView)root.findViewById(R.id.listView);
        //root.findViewById(R.id.btnLogout).setOnClickListener(this);
        this.InitializeMovieData();

        return root;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }

    @Override
    public void onClick(View view) {
        /*switch (view.getId()) {
            case R.id.btnLogout:
                FirebaseAuth.getInstance().signOut();
                startMyActivity(SignUpActivity.class);
                break;
        }*/
    }
    private void startMyActivity(Class cls){
        Intent intent = new Intent(context, cls);
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        startActivity(intent);
    }
    private void startToast(String msg){
        Toast.makeText(context,msg,Toast.LENGTH_SHORT).show();
    }
}