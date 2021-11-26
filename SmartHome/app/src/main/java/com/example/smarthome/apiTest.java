package com.example.smarthome;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class apiTest extends Thread{
    public void func(String ndate, String ntime, double mx, double my) throws IOException, JSONException {
        String endPoint =  "http://apis.data.go.kr/1360000/VilageFcstInfoService/";
        String serviceKey = "pYYxwiQaFW%2BT0hxRvKkXev6yqPHyFRC3tYcZW9koZ%2B6bkGzoL37rbeFo7rLFupPAeWHItp8g6mp5ijxbAbEfTg%3D%3D";
        String pageNo = "1";
        String numOfRows = "10";
        String baseDate = ndate; //현재날짜
        String baseTime = ntime; //현재시간
        String nx = Double.toString(mx); //위도
        String ny = Double.toString(my); //경도

        String s = endPoint+"getVilageFcst?serviceKey="+serviceKey
                +"&pageNo=" + pageNo
                +"&numOfRows=" + numOfRows
                +"+&dataType=JSON"
                + "&base_date=" + baseDate
                +"&base_time="+baseTime
                +"&nx="+nx
                +"&ny="+ny;

        URL url = new URL(s);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");

        BufferedReader bufferedReader = null;
        if(conn.getResponseCode() == 200) {
            bufferedReader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        }else{
            System.out.println("Connection Error! Try again.");
        }
        StringBuilder stringBuilder = new StringBuilder();
        String line;
        while ((line = bufferedReader.readLine()) != null) {
            stringBuilder.append(line);
        }
        bufferedReader.close();
        conn.disconnect();
        String result= stringBuilder.toString();
        //System.out.println("결과: " + result);<-중간확인용출력
        //JSON파싱↓
        JSONObject mainObject = new JSONObject(result);
        JSONArray itemArray = mainObject.getJSONObject("response").getJSONObject("body").getJSONObject("items").getJSONArray("item");
        for(int i=0; i<itemArray.length(); i++){
            JSONObject item = itemArray.getJSONObject(i);
            String category = item.getString("category");
            String value = item.getString("fcstValue");
            switch (category) {
                case "T1H":
                    category = "기온";
                    value = value + "℃";
                    break;
                case "RN1":
                    category = "1시간 강수량";
                    value = value + "mm";
                    break;
                case "REH":
                    category = "습도";
                    value = value + "%";
                    break;
                case "WSD":
                    category = "풍속";
                    value = value + "m/s";
                    break;
                default:
                    break;
            }
            System.out.println(category+" : "+value);
        }
    }
}