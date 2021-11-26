package com.example.smarthome.ui.alarm;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.example.smarthome.DTO.Alarm;
import com.example.smarthome.R;

import java.util.ArrayList;

public class AlarmAdapter extends BaseAdapter {

    Context mContext = null;
    LayoutInflater mLayoutInflater = null;
    ArrayList<Alarm> alarm;

    public AlarmAdapter(Context context, ArrayList<Alarm> data) {
        mContext = context;
        alarm = data;
        mLayoutInflater = LayoutInflater.from(mContext);
    }

    @Override
    public int getCount() {
        return alarm.size();
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View converView, ViewGroup parent) {
        View view = mLayoutInflater.inflate(R.layout.fragment_alarm_adapter, null);

        ImageView imageView = (ImageView)view.findViewById(R.id.alarm_logo);
        TextView title = (TextView)view.findViewById(R.id.alarm_title);
        TextView date = (TextView)view.findViewById(R.id.alarm_date);
        TextView message = (TextView)view.findViewById(R.id.alarm_message);
//        SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//
//        String dateStr = fm.format(alarm.get(position).getDate());
        if (alarm.get(position).getCheck().equals("fire")) imageView.setImageResource(R.drawable.fire);
        title.setText(alarm.get(position).getTitle());
        message.setText(alarm.get(position).getMessage());

        date.setText(alarm.get(position).getDate());

        return view;
    }

    @Override
    public Alarm getItem(int position) {
        return alarm.get(position);
    }
}
