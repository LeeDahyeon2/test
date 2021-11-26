package com.example.smarthome;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.Image;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.widget.Toast;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;

import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MyFirebaseMessagingService extends FirebaseMessagingService {

    private static final String TAG = "mFbMsgSer";

    @Override
    public void onMessageReceived(RemoteMessage remoteMessage) {
        if (remoteMessage != null && remoteMessage.getData().size() > 0) {
            sendNotification(remoteMessage);
        }
    }

    private void sendNotification(RemoteMessage remoteMessage) {
//        Alarm alarm = new Alarm();
//        Date date = new Date();
        String check = remoteMessage.getData().get("check");;
        String title = "";
        String message = "";
//        String receiver = "";
//        String date = "";
        String clickAction = "";
//        SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        try {
//            date = fm.parse(dateStr);
//        }catch(ParseException ex){
//            ex.printStackTrace();
//        }
//
//        alarm.setCheck(check);
//        alarm.setDate(date);
//        alarm.setReceiver(receiver);

        final String CHANNEL_ID = "ChannerID";
        NotificationManager mManager = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            final String CHANNEL_NAME = "ChannerName";
            final String CHANNEL_DESCRIPTION = "ChannerDescription";
            final int importance = NotificationManager.IMPORTANCE_HIGH;

            // add in API level 26
            NotificationChannel mChannel = new NotificationChannel(CHANNEL_ID, CHANNEL_NAME, importance);
            mChannel.setDescription(CHANNEL_DESCRIPTION);
            mChannel.enableLights(true);
            mChannel.enableVibration(true);
            mChannel.setVibrationPattern(new long[]{100, 200, 100, 200});
            mChannel.setLockscreenVisibility(Notification.VISIBILITY_PRIVATE);
            mManager.createNotificationChannel(mChannel);
        }
        Intent intent = new Intent(this, MainActivity.class);;
        if (clickAction.equals("MainActivity")) {
            intent = new Intent(this, MainActivity.class);
            intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        }
        PendingIntent pendingIntent = PendingIntent.getActivity(this, 0 /* Request code */, intent,
                PendingIntent.FLAG_ONE_SHOT);

        Uri defaultSoundUri= RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION);
        Bitmap alert_bitmap = BitmapFactory.decodeResource(this.getResources(), R.drawable.ic_push_alert);

        NotificationCompat.Builder builder = new NotificationCompat.Builder(this, CHANNEL_ID);
        builder.setSmallIcon(R.drawable.ic_launcher_background);
        builder.setAutoCancel(true);
        builder.setDefaults(Notification.DEFAULT_ALL);
        builder.setWhen(System.currentTimeMillis());
        if (check.equals("fire")){
//            title = "긴급!";
//            message = "화재가 발생했습니다.";
            title = remoteMessage.getData().get("title");
            message = remoteMessage.getData().get("message");
//            receiver = remoteMessage.getData().get("receiver");
//            date = remoteMessage.getData().get("date");
            clickAction = remoteMessage.getData().get("clickAction");
//            alarm.setMessage(message);
//            alarm.setTitle(title);
            builder.setSmallIcon(R.drawable.ic_push_alert);
            builder.setLargeIcon(alert_bitmap);
        }else {
            builder.setSmallIcon(R.mipmap.ic_launcher);
        }
        Log.d("=============",clickAction);
        builder.setContentTitle(title);
        builder.setContentText(message);
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) {
            builder.setContentTitle(title);
            builder.setContentText(message);
            builder.setVibrate(new long[]{500, 500});
        }
        builder.setContentIntent(pendingIntent);
//        insertAlarm(alarm);
        mManager.notify(0, builder.build());
    }

    @Override
    public void onNewToken(String s) {
        super.onNewToken(s);
//        Log.d(TAG, "new Token: $token");
//
//        // 토큰 값을 따로 저장해둔다.
//        Object pref = this.getSharedPreferences("token", Context.MODE_PRIVATE);
//        Object editor = ((SharedPreferences) pref).edit();
//        ((SharedPreferences.Editor) editor).putString("token", s).apply();
//        ((SharedPreferences.Editor) editor).commit();
//        System.out.println(s);
//
//        Log.i("로그: ", "성공적으로 토큰을 저장함");
    }
//    private void insertAlarm(Alarm alarm){
//        SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        String dateStr = fm.format(alarm.getDate());
//        FirebaseFirestore db = FirebaseFirestore.getInstance();
//        db.collection("Alarm").document(dateStr).set(alarm)
//                .addOnSuccessListener(new OnSuccessListener<Void>() {
//                    @Override
//                    public void onSuccess(Void aVoid) {
//                    }
//                })
//                .addOnFailureListener(new OnFailureListener() {
//                    @Override
//                    public void onFailure(@NonNull Exception e) {
//                        Log.w("push", "Error adding document", e);
//                    }
//                });
//    }
    private void startToast(String msg){
        Toast.makeText(this,msg,Toast.LENGTH_SHORT).show();
    }
}