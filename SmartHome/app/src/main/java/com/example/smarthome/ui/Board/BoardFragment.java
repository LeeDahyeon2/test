package com.example.smarthome.ui.Board;

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
import com.example.smarthome.DetailActivity;
import com.example.smarthome.R;
import com.example.smarthome.RegisterActivity;
import com.example.smarthome.Adapter.WriteAdapter;
import com.example.smarthome.DTO.WriteInfo;
import com.example.smarthome.databinding.FragmentBoardBinding;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.firestore.CollectionReference;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.Query;
import com.google.firebase.firestore.QueryDocumentSnapshot;
import com.google.firebase.firestore.QuerySnapshot;
import java.util.ArrayList;

public class BoardFragment extends Fragment implements View.OnClickListener {

    private BoardViewModel boardViewModel;
    private FragmentBoardBinding binding;
    View root;
    Context context;
    ArrayList<WriteInfo> boardDataList;
    ListView listView;
    WriteAdapter myAdapter;

    public void InitializeMovieData()
    {
        boardDataList = new ArrayList<WriteInfo>();
        FirebaseFirestore db = FirebaseFirestore.getInstance();
        CollectionReference productRef = db.collection("board");
        //get()을 통해서 해당 컬렉션의 정보를 가져온다.
        productRef.orderBy("createDate", Query.Direction.DESCENDING).get().addOnCompleteListener(new OnCompleteListener<QuerySnapshot>() {
            @Override
            public void onComplete(@NonNull Task<QuerySnapshot> task) {
                if (task.isSuccessful()) {
                    for (QueryDocumentSnapshot document : task.getResult()) {
                        //document.getData() or document.getId() 등등 여러 방법으로
                        //데이터를 가져올 수 있다.
                        WriteInfo writeInfo = new WriteInfo();
                        writeInfo = document.toObject(WriteInfo.class);
                        String[] lines = document.getString("contents").split(System.getProperty("line.separator"));
                        if ( lines[0].length() < 10 ) {
                            writeInfo.setContents(lines[0]+ "...more");
                        } else {
                            writeInfo.setContents(lines[0].substring(0, 10)+"...more");
                        }
                        boardDataList.add(writeInfo);
                    }
                    myAdapter = new WriteAdapter(context,boardDataList);
                    listView.setAdapter(myAdapter);
                    listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                        @Override
                        public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                            int num = ((WriteInfo)myAdapter.getItem(position)).getNum();
                            startMyActivity(DetailActivity.class,num);
                        }
                    });
                } else {

                }
            }
        });
    }

    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
//        FragmentTransaction ft = getFragmentManager().beginTransaction();
//        ft.detach(this).attach(this).commit();
        boardViewModel =
                new ViewModelProvider(this).get(BoardViewModel.class);

        binding = FragmentBoardBinding.inflate(inflater, container, false);
        context = container.getContext();
        root = binding.getRoot();
        //root.findViewById(R.id.btnLogout).setOnClickListener(this);
        //root.findViewById(R.id.floatingActionButton).setOnClickListener(this);
        root.findViewById(R.id.reg_button).setOnClickListener(this);
        listView = (ListView)root.findViewById(R.id.listView);
        this.InitializeMovieData();

        return root;
    }
    private void startToast(String msg){
        Toast.makeText(context,msg,Toast.LENGTH_SHORT).show();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }

    @Override
    public void onClick(View view) {
        switch(view.getId()){
            case R.id.reg_button:  //글 쓰기 버튼
                startMyActivity(RegisterActivity.class);
                break;
            case R.id.postcard:  //글 클릭
                startMyActivity(DetailActivity.class);
                break;
        }
    }
    private void startMyActivity(Class cls){
        Intent intent = new Intent(context, cls);
        intent.putExtra("address","board");
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        startActivity(intent);
    }
    private void startMyActivity(Class cls,int i){
        Intent intent = new Intent(context, cls);
        intent.putExtra("address","board");
        intent.putExtra("num",i);
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        startActivity(intent);
    }
}