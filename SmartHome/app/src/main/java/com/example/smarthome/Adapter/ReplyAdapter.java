package com.example.smarthome.Adapter;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;

import com.bumptech.glide.Glide;
import com.example.smarthome.DTO.ReplyInfo;
import com.example.smarthome.DTO.WriteInfo;
import com.example.smarthome.R;
import com.example.smarthome.RegisterActivity;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.firestore.DocumentReference;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;

import java.util.ArrayList;

public class ReplyAdapter extends BaseAdapter {

    Context mContext = null;
    LayoutInflater mLayoutInflater = null;
    ArrayList<ReplyInfo> reply;
    ImageButton like;
    TextView likeReplyNum;
    FirebaseFirestore db = FirebaseFirestore.getInstance();
    DocumentReference docRef;
    FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();
    String uId = user.getUid();
    ReplyInfo replyInfo;
    String address;
    int num;
    ReplyAdapter adapter = this;

    public ReplyAdapter(Context context, ArrayList<ReplyInfo> data,String address1, int num1) {
        mContext = context;
        reply = data;
        mLayoutInflater = LayoutInflater.from(mContext);
        address = address1;
        num = num1;
    }

    @Override
    public int getCount() {
        return reply.size();
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View converView, ViewGroup parent) {
        replyInfo=reply.get(position);
        View view = mLayoutInflater.inflate(R.layout.reply_adapter, null,false);
        like = (ImageButton)view.findViewById(R.id.likeReplyButton);
        like.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String msg = pressLike(position);
                Log.d("===========",address+num+"_"+position);
                Toast.makeText(view.getContext(),msg,Toast.LENGTH_SHORT).show();
                adapter.notifyDataSetChanged();
            }
        });

        likeReplyNum = view.findViewById(R.id.likeReplyNum);
        ImageView profile = (ImageView)view.findViewById(R.id.replyProfile);
        FirebaseStorage storage = FirebaseStorage.getInstance("gs://smarthome-85e30.appspot.com/");
        StorageReference storageRef;
        storageRef = storage.getReference();
        storageRef.child("user/"+reply.get(position).getPublisher()+"/profile.jpg").getDownloadUrl().addOnSuccessListener(new OnSuccessListener<Uri>() {
            @Override
            public void onSuccess(Uri uri) {
                Glide.with(mContext.getApplicationContext()).load(uri).into(profile);
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(@NonNull Exception e) {
                profile.setImageResource(R.drawable.user);
            }
        });
        if(btnLike())like.setImageResource(R.drawable.like_already);
        else like.setImageResource(R.drawable.like);
        TextView title = (TextView)view.findViewById(R.id.reply_nic);
        TextView date = (TextView)view.findViewById(R.id.reply_date);
        TextView contents = (TextView)view.findViewById(R.id.reply_contents);
        TextView like = (TextView)view.findViewById(R.id.likeReplyNum);
        title.setText(reply.get(position).getNic());
        contents.setText(reply.get(position).getContents());
        date.setText(reply.get(position).getCreateDate());
        if (reply.get(position).getLikeList()!=null)like.setText(Integer.toString(reply.get(position).getLikeList().size()));
        return view;
    }

    @Override
    public ReplyInfo getItem(int position) {
        return reply.get(position);
    }

    private void InitData(int position){
        docRef = db.collection(address+"Reply").document(address+num+"_"+position);
        docRef.get().addOnSuccessListener(new OnSuccessListener<DocumentSnapshot>() {
            @Override
            public void onSuccess(DocumentSnapshot documentSnapshot) {
                replyInfo = documentSnapshot.toObject(ReplyInfo.class);
            }
        });
    }
    private boolean btnLike(){
        if(replyInfo.getLikeList()!=null){
            for(int i=0;i<replyInfo.getLikeList().size();i++){
                if(replyInfo.getLikeList().get(i).equals(uId))return true;
            }
        };
        return false;
    }
    private String pressLike(int position){
        replyInfo = reply.get(position);
        Log.d("===========",replyInfo.getContents());
        boolean result = btnLike();
        String msg;
        if(result){
            replyInfo.getLikeList().remove(uId);
//            like.setImageResource(R.drawable.like);
            msg="좋아요를 취소했습니다.";
        }
        else {
            if(replyInfo.getLikeList()==null){
                replyInfo.setLikeList(new ArrayList<String>());
            }
            replyInfo.getLikeList().add(uId);
//            like.setImageResource(R.drawable.like_already);
            msg="좋아요를 눌렀습니다.";
        }
        db.collection(address+"Reply").document(address+num+"_"+position).set(replyInfo)
                .addOnSuccessListener(new OnSuccessListener<Void>() {
                    @Override
                    public void onSuccess(Void aVoid) {
                        likeReplyNum.setText(Integer.toString(replyInfo.getLikeList().size()));
                    }
                });
        return msg;
    }
}
