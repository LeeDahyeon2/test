package com.example.smarthome.ui.nowhome;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Switch;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;

import com.example.smarthome.CCTVActivity;
import com.example.smarthome.ModeActivity;
import com.example.smarthome.R;
import com.example.smarthome.databinding.FragmentNowhomeBinding;

public class NowhomeFragment extends Fragment implements View.OnClickListener {

    private NowhomeViewModel nowhomeViewModel;
    private FragmentNowhomeBinding binding;
    View root;
    Context context;
    Switch switchInLight1, switchInLight2, switchInFan, switchInDoor, switchInWindow,switchInCCTV;
    Switch switchOutLight1, switchOutLight2, switchOutFan, switchOutDoor, switchOutWindow,switchOutCCTV;
    Switch switchSleepLight1, switchSleepLight2, switchSleepFan, switchSleepDoor, switchSleepWindow,switchSleepCCTV;

    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        nowhomeViewModel =
                new ViewModelProvider(this).get(NowhomeViewModel.class);

        binding = FragmentNowhomeBinding.inflate(inflater, container, false);
        context = container.getContext();
        root = binding.getRoot();
        root.findViewById(R.id.gotoCCTV).setOnClickListener(this);
        root.findViewById(R.id.gotoSwitchIn) .setOnClickListener(this);
        root.findViewById(R.id.gotoSwitchOut) .setOnClickListener(this);
        root.findViewById(R.id.gotoSwitchSleep) .setOnClickListener(this);

        switchInLight1 = (Switch)root.findViewById(R.id.switchInLight1);
        switchInLight2 = (Switch)root.findViewById(R.id.switchInLight2);
        switchInFan = (Switch)root.findViewById(R.id.switchInFan);
        switchInDoor = (Switch)root.findViewById(R.id.switchInDoor);
        switchInWindow = (Switch)root.findViewById(R.id.switchInWindow);
        switchInCCTV = (Switch)root.findViewById(R.id.switchInCCTV1);

        switchOutLight1 = (Switch)root.findViewById(R.id.switchOutLight1);
        switchOutLight2 = (Switch)root.findViewById(R.id.switchOutLight2);
        switchOutFan = (Switch)root.findViewById(R.id.switchOutFan);
        switchOutDoor = (Switch)root.findViewById(R.id.switchOutDoor);
        switchOutWindow = (Switch)root.findViewById(R.id.switchOutWindow);
        switchOutCCTV = (Switch)root.findViewById(R.id.switchOutCCTV1);

        switchSleepLight1 = (Switch)root.findViewById(R.id.switchSleepLight1);
        switchSleepLight2 = (Switch)root.findViewById(R.id.switchSleepLight2);
        switchSleepFan = (Switch)root.findViewById(R.id.switchSleepFan);
        switchSleepDoor = (Switch)root.findViewById(R.id.switchSleepDoor);
        switchSleepWindow = (Switch)root.findViewById(R.id.switchSleepWindow);
        switchSleepCCTV = (Switch)root.findViewById(R.id.switchSleepCCTV1);
        return root;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.gotoCCTV:
                startMyActivity(CCTVActivity.class);
                break;
            case R.id.gotoSwitchIn:
                startMyActivity(ModeActivity.class, "재실");
                break;
            case R.id.gotoSwitchOut:
                startMyActivity(ModeActivity.class, "외출");
                break;
            case R.id.gotoSwitchSleep:
                startMyActivity(ModeActivity.class, "취침");
                break;
        }
    }
    private void startMyActivity(Class cls){
        Intent intent = new Intent(context, cls);
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        startActivity(intent);
    }
    private void startMyActivity(Class cls, String msg){
        Intent intent = new Intent(context, cls);
        intent.putExtra("mode",msg);
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        startActivity(intent);
    }
}