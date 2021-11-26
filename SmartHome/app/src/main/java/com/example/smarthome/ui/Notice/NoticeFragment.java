package com.example.smarthome.ui.Notice;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;

import com.example.smarthome.databinding.FragmentNoticeBinding;

public class NoticeFragment extends Fragment implements View.OnClickListener {

    private NoticeViewModel galleryViewModel;
    private FragmentNoticeBinding binding;
    View root;
    Context context;

    private RecyclerView recyclerView;
    private RecyclerView.Adapter mAdapter;
    private RecyclerView.LayoutManager layoutManager;



    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        galleryViewModel =
                new ViewModelProvider(this).get(NoticeViewModel.class);

        binding = FragmentNoticeBinding.inflate(inflater, container, false);
        context = container.getContext();
        root = binding.getRoot();
        //root.findViewById(R.id.btnLogout).setOnClickListener(this);
//        root.findViewById(R.id.floatingActionButton).setOnClickListener(this);

        return root;
    }

    View.OnClickListener onClickListener = new View.OnClickListener(){
        @Override
        public void onClick(View v){

        }
    };
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
}