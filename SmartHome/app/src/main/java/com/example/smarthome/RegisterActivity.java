package com.example.smarthome;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;

import com.bumptech.glide.Glide;
import com.example.smarthome.DTO.PostNum;
import com.example.smarthome.DTO.WriteInfo;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.firestore.DocumentReference;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;
import com.google.firebase.storage.UploadTask;

import java.io.ByteArrayOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class RegisterActivity extends AppCompatActivity {

    private static int PICK_IMAGE_REQUEST = 1;
    // 로그에 사용할 TAG 변수 선언
    final private String TAG = getClass().getSimpleName();

    // 사용할 컴포넌트 선언
    String title_et, content_et;
    FirebaseUser user;
    Intent intent;
    String address;
    ArrayList<Bitmap> imgList = new ArrayList<Bitmap>();
    ImageView img1;
    ImageView img2;
    ImageView img3;
    ImageView img4;
    Button del1;
    Button del2;
    Button del3;
    Button del4;
    PostNum postNum;
    int num = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);
        user = FirebaseAuth.getInstance().getCurrentUser();
        intent = getIntent();
        address =  intent.getStringExtra("address");
        img1 = findViewById(R.id.registerImg1);
        img2 = findViewById(R.id.registerImg2);
        img3 = findViewById(R.id.registerImg3);
        img4 = findViewById(R.id.registerImg4);
        del1 = findViewById(R.id.delImage1);
        del2 = findViewById(R.id.delImage2);
        del3 = findViewById(R.id.delImage3);
        del4 = findViewById(R.id.delImage4);

// ListActivity 에서 넘긴 userid 를 변수로 받음
//        userid = getIntent().getStringExtra("userid");

// 컴포넌트 초기화
        findViewById(R.id.upload_button).setOnClickListener(onClickListener);
        findViewById(R.id.likeButton).setOnClickListener(onClickListener);
        del1.setOnClickListener(onClickListener);
        del2.setOnClickListener(onClickListener);
        del3.setOnClickListener(onClickListener);
        del4.setOnClickListener(onClickListener);
    }

    // 버튼 이벤트 추가
    View.OnClickListener onClickListener = new View.OnClickListener() {
        @Override
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.upload_button:
                    upload_post();
                    break;
                case R.id.likeButton:
                    if (imgList.size()==4) alert("","사진은 4장까지만 넣을 수 있습니다.");
                    else loadImagefromGallery(view);
                    break;
                case R.id.delImage1: delImg(1);break;
                case R.id.delImage2: delImg(2);break;
                case R.id.delImage3: delImg(3);break;
                case R.id.delImage4: delImg(4);break;
            }
        }
    };
    private void alert(String title,String message){
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(title).setMessage(message);
        AlertDialog alertDialog = builder.create();
        alertDialog.show();
    }
    public void upload_post() {
        title_et = ((EditText)findViewById(R.id.title_et)).getText().toString();
        content_et = ((EditText)findViewById(R.id.content_et)).getText().toString();
        if (title_et.length()==0)alert("","제목을 입력해주세요.");
        else if(content_et.length()==0)alert("","내용을 입력해주세요.");
        else{
            FirebaseFirestore db = FirebaseFirestore.getInstance();
            DocumentReference docRef = db.collection("check").document("posts");
            docRef.get().addOnSuccessListener(new OnSuccessListener<DocumentSnapshot>() {
                @Override
                public void onSuccess(DocumentSnapshot documentSnapshot) {
                    postNum = documentSnapshot.toObject(PostNum.class);
                    if (address.equals("board")){num=postNum.getBoard();postNum.setBoard(num+1);}
                    else if (address.equals("notice")){num=postNum.getNotice();postNum.setNotice(num+1);}
                    else if (address.equals("qna")){num=postNum.getQna();postNum.setQna(num+1);}
                    num+=1;
                    SimpleDateFormat format1 = new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss");
                    Date date = new Date();
                    String dateStr = format1.format(date);
                    WriteInfo writeInfo = new WriteInfo(num,title_et,user.getUid(),content_et, dateStr,null,null,imgList.size());
                    db.collection(address).document(address+num).set(writeInfo)
                            .addOnSuccessListener(new OnSuccessListener<Void>() {
                                @Override
                                public void onSuccess(Void aVoid) {
                                    db.collection("check").document("posts").set(postNum);
                                    startToast("글이 등록되었습니다.");
                                    addImg();
                                    startMyActivity(ActivityFragment.class);
                                }
                            });
                }
            });
        }
    }
    private void addImg(){
        FirebaseStorage storage = FirebaseStorage.getInstance();
        StorageReference storageRef = storage.getReference();

        FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();
        StorageReference ref;
        for(int i=0; i<imgList.size();i++) {
            ref = storageRef.child(address + "/" + address + num + "/" + i + ".jpg");

            Bitmap bitmap = imgList.get(i);
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, baos);
            byte[] data = baos.toByteArray();

            UploadTask uploadTask = ref.putBytes(data);
            uploadTask.addOnFailureListener(new OnFailureListener() {
                @Override
                public void onFailure(@NonNull Exception exception) {
                    Log.d("=======","사진 업로드 완료");
                }
            }).addOnSuccessListener(new OnSuccessListener<UploadTask.TaskSnapshot>() {
                @Override
                public void onSuccess(UploadTask.TaskSnapshot taskSnapshot) {
                    Log.d("=======","사진 업로드 실패");
                }
            });
        }
    }
    //로드버튼 클릭시 실행
    public void loadImagefromGallery(View view) {
        //Intent 생성
        Intent intent = new Intent(Intent.ACTION_GET_CONTENT); //ACTION_PIC과 차이점?
        intent.setType("image/*"); //이미지만 보이게
        //Intent 시작 - 갤러리앱을 열어서 원하는 이미지를 선택할 수 있다.
        startActivityForResult(Intent.createChooser(intent, "Select Picture"), PICK_IMAGE_REQUEST);
    }

    //이미지 선택작업을 후의 결과 처리
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        try {
            //이미지를 하나 골랐을때
            if (requestCode == PICK_IMAGE_REQUEST && resultCode == RESULT_OK && null != data) {
                if (imgList.size()==0) {
                    Glide.with(getApplicationContext()).load(data.getData()).override(500, 500).into(img1);
                }else if(imgList.size()==1){
                    Glide.with(getApplicationContext()).load(data.getData()).override(500, 500).into(img2);
                }else if(imgList.size()==2){
                    Glide.with(getApplicationContext()).load(data.getData()).override(500, 500).into(img3);
                }else{
                    Glide.with(getApplicationContext()).load(data.getData()).override(500, 500).into(img4);
                }
                Uri uri = data.getData();

                Bitmap bitmap = MediaStore.Images.Media.getBitmap(getContentResolver(),uri);
                //이미지가 한계이상(?) 크면 불러 오지 못하므로 사이즈를 줄여 준다.
                int nh = (int) (bitmap.getHeight() * (1024.0 / bitmap.getWidth()));
                Bitmap scaled = Bitmap.createScaledBitmap(bitmap, 1024, nh, true);
                imgList.add(scaled);
                setImgCard();
            } else {
                Toast.makeText(this, "취소 되었습니다.", Toast.LENGTH_LONG).show();
            }

        } catch (Exception e) {
            Toast.makeText(this, "로딩에 오류가 있습니다.", Toast.LENGTH_LONG).show();
            e.printStackTrace();
        }

    }
    private void delImg(int i){
        imgList.remove(i-1);
        setImg();
    }
    private void setImg(){
        if (imgList.size()>=1)img1.setImageBitmap(imgList.get(0));
        if (imgList.size()>=2)img2.setImageBitmap(imgList.get(1));
        if (imgList.size()>=3)img3.setImageBitmap(imgList.get(2));
        if (imgList.size()==4)img4.setImageBitmap(imgList.get(3));
        setImgCard();
    }
    private void setImgCard(){
        CardView imgCard=findViewById(R.id.imgCard);
        if (imgList.size()>=3){
            imgCard.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,1000));
        }else if(imgList.size()>=1){
            imgCard.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,500));
        }else{
            imgCard.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,0));
        }
        if (imgList.size()<=1){
            del2.setVisibility(View.INVISIBLE);
            img2.setVisibility(View.INVISIBLE);
        }else if(imgList.size()<=3){
            del2.setVisibility(View.VISIBLE);
            img2.setVisibility(View.VISIBLE);
            del4.setVisibility(View.INVISIBLE);
            img4.setVisibility(View.INVISIBLE);
        }else{
            del4.setVisibility(View.VISIBLE);
            img4.setVisibility(View.VISIBLE);
        }
    }
    private void startToast(String msg){
        Toast.makeText(this,msg,Toast.LENGTH_SHORT).show();
    }
    private void startMyActivity(Class cls){
        intent= new Intent(this, cls);
        intent.putExtra("address",address);
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        startActivity(intent);
    }
}


//    class RegBoard extends AsyncTask<String, Void, String> {
//
//        @Override
//        protected void onPreExecute() {
//            super.onPreExecute();
//
//            Log.d(TAG, "onPreExecute");
//        }
//
//
//        @Override
//        protected void onPostExecute(String result) {
//            super.onPostExecute(result);
//            Log.d(TAG, "onPostExecute, " + result);
//
//            if(result.equals("success")){
// 결과값이 success 이면
// 토스트 메시지를 뿌리고
// 이전 액티비티(ListActivity)로 이동,
// 이때 ListActivity 의 onResume() 함수 가 호출되며, 데이터를 새로 고침
//                Toast.makeText(RegisterActivity.this, "등록되었습니다.", Toast.LENGTH_SHORT).show();
//                finish();
//            }else
//            {
//                Toast.makeText(RegisterActivity.this, result, Toast.LENGTH_SHORT).show();
//            }
//
//        }


//        @Override
//        protected String doInBackground(String... params) {
//
//            String userid = params[0];
//            String title = params[1];
//            String content = params[2];
//
//            String server_url = "http://15.164.252.136/reg_board.php";
//
//
//            URL url;
//            String response = "";
//            try {
//                url = new URL(server_url);
//
//                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//                conn.setReadTimeout(15000);
//                conn.setConnectTimeout(15000);
//                conn.setRequestMethod("POST");
//                conn.setDoInput(true);
//                conn.setDoOutput(true);
//                Uri.Builder builder = new Uri.Builder()
//                        .appendQueryParameter("userid", userid)
//                        .appendQueryParameter("title", title)
//                        .appendQueryParameter("content", content);
//                String query = builder.build().getEncodedQuery();
//
//                OutputStream os = conn.getOutputStream();
//                BufferedWriter writer = new BufferedWriter(
//                        new OutputStreamWriter(os, "UTF-8"));
//                writer.write(query);
//                writer.flush();
//                writer.close();
//                os.close();
//
//                conn.connect();
//                int responseCode=conn.getResponseCode();
//
//                if (responseCode == HttpsURLConnection.HTTP_OK) {
//                    String line;
//                    BufferedReader br=new BufferedReader(new InputStreamReader(conn.getInputStream()));
//                    while ((line=br.readLine()) != null) {
//                        response+=line;
//                    }
//                }
//                else {
//                    response="";
//
//                }
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//
//            return response;
//        }

//}