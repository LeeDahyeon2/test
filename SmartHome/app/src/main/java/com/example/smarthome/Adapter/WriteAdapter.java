package com.example.smarthome.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.example.smarthome.DTO.WriteInfo;
import com.example.smarthome.R;

import java.util.ArrayList;

public class WriteAdapter extends BaseAdapter  {

    Context mContext = null;
    LayoutInflater mLayoutInflater = null;
    ArrayList<WriteInfo> board;
    int num=0;

    public WriteAdapter(Context context, ArrayList<WriteInfo> data) {
        mContext = context;
        board = data;
        mLayoutInflater = LayoutInflater.from(mContext);
    }
    public int getNum(){
        return num;
    }

    @Override
    public int getCount() {
        return board.size();
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View converView, ViewGroup parent) {
        View view = mLayoutInflater.inflate(R.layout.fragment_board_adapter, null);

        TextView title = (TextView)view.findViewById(R.id.post_title);
        TextView date = (TextView)view.findViewById(R.id.post_date);
        TextView contents = (TextView)view.findViewById(R.id.post_contents);
        TextView like = (TextView)view.findViewById(R.id.likeNum);
        TextView comment = (TextView)view.findViewById(R.id.commentNum);
        title.setText(board.get(position).getTitle());
        contents.setText(board.get(position).getContents());
        date.setText(board.get(position).getCreateDate());
        if (board.get(position).getLikeList()!=null)like.setText(Integer.toString(board.get(position).getLikeList().size()));
        if (board.get(position).getReply()!=null)comment.setText(Integer.toString(board.get(position).getReply().size()));
        num=board.get(position).getNum();
        return view;
    }

    @Override
    public WriteInfo getItem(int position) {
        return board.get(position);
    }

}
