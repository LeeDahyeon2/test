package com.example.smarthome;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;

import com.bumptech.glide.Glide;
import com.example.smarthome.Adapter.ReplyAdapter;
import com.example.smarthome.Adapter.WriteAdapter;
import com.example.smarthome.DTO.MemberInfo;
import com.example.smarthome.DTO.ReplyInfo;
import com.example.smarthome.DTO.WriteInfo;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.UserInfo;
import com.google.firebase.firestore.CollectionReference;
import com.google.firebase.firestore.DocumentReference;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.Query;
import com.google.firebase.firestore.QueryDocumentSnapshot;
import com.google.firebase.firestore.QuerySnapshot;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class DetailActivity extends AppCompatActivity {

    // 로그에 사용할 TAG
    final private String TAG = getClass().getSimpleName();
    Intent intent;
    String address;
    int num;
    int imgNum=0;
    Context context = this;

    FirebaseFirestore db = FirebaseFirestore.getInstance();
    DocumentReference docRef;
    WriteInfo writeInfo;
    MemberInfo memberInfo;
    ReplyInfo replyInfo;

    // 사용할 컴포넌트 선언
    TextView title_tv, content_tv, nicText, dateText,like,comment,reply0;
    ImageView profile, detailImg1, detailImg2,detailImg3, detailImg4;
    EditText comment_et;
    ImageButton replyButton,likeButton;


    ArrayList<ReplyInfo> replyDataList;
    ListView listView;
    ReplyAdapter myAdapter;

    // 선택한 게시물의 번호
    String board_seq = "";

    FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();
    String uId = user.getUid();
    FirebaseStorage storage = FirebaseStorage.getInstance("gs://smarthome-85e30.appspot.com/");
    StorageReference storageRef;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail);
        intent=getIntent();
        address = intent.getStringExtra("address");
        num = intent.getIntExtra("num",0);

// 컴포넌트 초기화
        title_tv = findViewById(R.id.title_tv);
        content_tv = findViewById(R.id.content_tv);
        nicText = findViewById(R.id.nicText);
        dateText = findViewById(R.id.dateText);
        comment_et = findViewById(R.id.comment_et);
        replyButton = (ImageButton)findViewById(R.id.replyButton);
        profile = findViewById(R.id.profile);
        like = findViewById(R.id.DlikeNum);
        comment = findViewById(R.id.DcommentNum);
        detailImg1 = findViewById(R.id.detailImg1);
        detailImg2 = findViewById(R.id.detailImg2);
        detailImg3 = findViewById(R.id.detailImg3);
        detailImg4 = findViewById(R.id.detailImg4);
        reply0 = findViewById(R.id.reply0);
        likeButton = (ImageButton)findViewById(R.id.likeButton);

        listView = (ListView)findViewById(R.id.listViewReply);
        ScrollView sv = (ScrollView)findViewById(R.id.scrollDetail);
//        listView.setOnTouchListener(new View.OnTouchListener() { //리스트뷰 터취 리스너
//            @Override public boolean onTouch(View v, MotionEvent event) {
//                sv.requestDisallowInterceptTouchEvent(true); // 리스트뷰에서 터취가되면 스크롤뷰만 움직이게
//                return false; } });


        likeButton.setOnClickListener(onClickListener);
        replyButton.setOnClickListener(onClickListener);

// 해당 게시물의 데이터 불러오기
        InitData("init");
    }
    View.OnClickListener onClickListener = new View.OnClickListener() {
        @Override
        public void onClick(View view) {
            switch (view.getId()){
                case R.id.likeButton:
                    pressLike();
                    break;
                case R.id.replyButton:
                    btnReply();
                    break;
            }
        }
    };
    private void btnReply(){
        String nic = "";
        for (UserInfo profile : user.getProviderData()) {
            nic = profile.getDisplayName();
        }
        InitData("reply");
        replyInfo = new ReplyInfo();
        replyInfo.setContents(comment_et.getText().toString());
        replyInfo.setReplyList(null);
        SimpleDateFormat format1 = new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        String dateStr = format1.format(date);
        replyInfo.setCreateDate(dateStr);
        replyInfo.setReference(address+num);
        replyInfo.setPublisher(uId);
        replyInfo.setLikeList(null);
        replyInfo.setNic(nic);

        int replySize = 0;
        if (writeInfo.getReply()!=null)replySize=writeInfo.getReply().size();
        String title = address+num+"_"+replySize;

        db.collection(address+"Reply").document(title).set(replyInfo)
                .addOnSuccessListener(new OnSuccessListener<Void>() {
                    @Override
                    public void onSuccess(Void aVoid) {
                        if(writeInfo.getReply()==null)writeInfo.setReply(new ArrayList<String>());
                        writeInfo.getReply().add(title);
                        comment.setText(Integer.toString(writeInfo.getReply().size()));
                        comment_et.setText("");
                        db.collection(address).document(address+num).set(writeInfo);
                        InitializeMovieData();
                    }
                });
    }
    private boolean btnLike(String flag){
        if(!flag.equals("init"))InitData("like");
        if(writeInfo.getLikeList()!=null){
            for(int i=0;i<writeInfo.getLikeList().size();i++){
                if(writeInfo.getLikeList().get(i).equals(uId))return true;
            }
        };
        return false;
    }
    private void pressLike(){
        boolean result = btnLike("like");
        if(result){
            writeInfo.getLikeList().remove(uId);
            likeButton.setImageResource(R.drawable.like);
            startToast("좋아요를 취소했습니다.");
        }
        else {
            if(writeInfo.getLikeList()==null){
                writeInfo.setLikeList(new ArrayList<String>());
            }
            writeInfo.getLikeList().add(uId);
            likeButton.setImageResource(R.drawable.like_already);
            startToast("좋아요를 눌렀습니다.");
        }
        db.collection(address).document(address+num).set(writeInfo)
                .addOnSuccessListener(new OnSuccessListener<Void>() {
                    @Override
                    public void onSuccess(Void aVoid) {
                        setText("like");
                    }
                });
    }

    private void InitData(String flag){
        docRef = db.collection(address).document(address+num);
        docRef.get().addOnSuccessListener(new OnSuccessListener<DocumentSnapshot>() {
            @Override
            public void onSuccess(DocumentSnapshot documentSnapshot) {
                writeInfo = documentSnapshot.toObject(WriteInfo.class);
                if(flag.equals("init")){
                    getMemInfo(writeInfo.getPublisher(),"init");
                    if(writeInfo.getReply()!=null)InitializeMovieData();
                }
                imgNum=writeInfo.getImgList();
            }
        });
    }
    private void getMemInfo(String uId,String flag){
        DocumentReference docRef = db.collection("users").document(uId);
        docRef.get().addOnSuccessListener(new OnSuccessListener<DocumentSnapshot>() {
            @Override
            public void onSuccess(DocumentSnapshot documentSnapshot) {
                memberInfo = documentSnapshot.toObject(MemberInfo.class);
                if (flag.equals("init"))setText("init");
            }
        });
    }
    private void setText(String flag){
        Boolean likeResult = btnLike("init");
        if (likeResult)likeButton.setImageResource(R.drawable.like_already);
        title_tv.setText(writeInfo.getTitle());
        content_tv.setText(writeInfo.getContents());
        nicText.setText(memberInfo.getNic());
        dateText.setText(writeInfo.getCreateDate());
        if(writeInfo.getReply()!=null)comment.setText(Integer.toString(writeInfo.getReply().size()));
        if(writeInfo.getLikeList()!=null)like.setText(Integer.toString(writeInfo.getLikeList().size()));
        if(flag.equals("init"))profile_init("init");
        if(writeInfo.getReply()==null)reply0.setVisibility(View.GONE);
    }
    public void profile_init(String flag){
        storageRef = storage.getReference();
        storageRef.child("user/"+writeInfo.getPublisher()+"/profile.jpg").getDownloadUrl().addOnSuccessListener(new OnSuccessListener<Uri>() {
            @Override
            public void onSuccess(Uri uri) {
                Glide.with(getApplicationContext()).load(uri).into(profile);
                if(flag.equals("init"))getImg("init");
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(@NonNull Exception exception) {
                //이미지 로드 실패시
                Log.e("실패","실패");
            }
        });
    }
    public void getImg(String flag){
        int i=0;
        storageRef = storage.getReference();
        for (i=0;i< writeInfo.getImgList();i++) {
            int finalI = i;
            storageRef.child(address+"/" + address + num +"/"+i+ ".jpg").getDownloadUrl().addOnSuccessListener(new OnSuccessListener<Uri>() {
                @Override
                public void onSuccess(Uri uri) {
                    if (finalI ==0)Glide.with(getApplicationContext()).load(uri).into(detailImg1);
                    else if (finalI ==1)Glide.with(getApplicationContext()).load(uri).into(detailImg2);
                    else if (finalI ==2)Glide.with(getApplicationContext()).load(uri).into(detailImg3);
                    else Glide.with(getApplicationContext()).load(uri).into(detailImg4);

                    if (finalI==imgNum-1)if (flag.equals("init"))setImgCard();
                }
            }).addOnFailureListener(new OnFailureListener() {
                @Override
                public void onFailure(@NonNull Exception exception) {
                    //이미지 로드 실패시
                    Log.e("실패", "실패");
                }
            });
        }
    }
    private void setImgCard(){
        CardView imgCard=findViewById(R.id.detailImgCard);
        if(imgNum!=0)imgCard.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,400));
        if (imgNum<4){
            findViewById(R.id.dImgCard4).setVisibility(View.GONE);
        }if(imgNum<3){
            findViewById(R.id.dImgCard3).setVisibility(View.GONE);
        }if(imgNum<2){
            findViewById(R.id.dImgCard2).setVisibility(View.GONE);
        }if(imgNum<1){
            findViewById(R.id.dImgCard1).setVisibility(View.GONE);
        }
    }
    public void InitializeMovieData()
    {
        replyDataList = new ArrayList<ReplyInfo>();
        FirebaseFirestore db = FirebaseFirestore.getInstance();
        CollectionReference productRef = db.collection(address+"Reply");
        //get()을 통해서 해당 컬렉션의 정보를 가져온다.//whereEqualTo("reference",address+num).
        String reference = address+num;
        productRef.whereEqualTo("reference",reference).get().addOnCompleteListener(new OnCompleteListener<QuerySnapshot>() {
            @Override
            public void onComplete(@NonNull Task<QuerySnapshot> task) {
                if (task.isSuccessful()) {
                    for (QueryDocumentSnapshot document : task.getResult()) {
                        //document.getData() or document.getId() 등등 여러 방법으로
                        //데이터를 가져올 수 있다.
                        ReplyInfo replyInfo2 = new ReplyInfo();
                        replyInfo2 = document.toObject(ReplyInfo.class);

                        replyDataList.add(replyInfo2);
                    }
                    myAdapter = new ReplyAdapter(context,replyDataList,address,num);
                    listView.setAdapter(myAdapter);
                    setListViewHeight(myAdapter,listView);
                } else {

                }
            }
        });
    }

    public void setListViewHeight(ReplyAdapter adpater, ListView listView) {
//        startToast(""+listView.getCount()+" "+writeInfo.getReply());
        int totalHeight = 0;
        int desiredWidth = View.MeasureSpec.makeMeasureSpec(listView.getWidth(), View.MeasureSpec.AT_MOST);

        for (int size = 0; size < listView.getCount(); size++) {
            View listItem = adpater.getView(size, null, listView);
            listItem.measure(desiredWidth, View.MeasureSpec.UNSPECIFIED);
            totalHeight += listItem.getMeasuredHeight();
            if (size==listView.getCount()-1){
                ViewGroup.LayoutParams params = listView.getLayoutParams();
                params.height = totalHeight + (listView.getDividerHeight() * (listView.getCount() - 1));
                listView.setLayoutParams(params);
                listView.requestLayout();
            }
        }
    }

    private void startToast(String msg){
        Toast.makeText(this,msg,Toast.LENGTH_SHORT).show();
    }
}
