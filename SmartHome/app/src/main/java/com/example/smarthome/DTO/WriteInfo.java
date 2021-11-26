package com.example.smarthome.DTO;

import java.util.ArrayList;

public class WriteInfo {
    //    private String num; // 게시물 + 랜덤 99999 그외 시간 기준 방법 등등
    private int num;
    private String title;        //글 제목
    private String publisher ;    //글 작성자 (유저데이터 테이블 = User.usersName)
    private String contents;      //글 내용
    private String createDate; //글 작성 날짜, 작성 시간
    private ArrayList<String> reply;     //댓글.
    private ArrayList<String> likeList; //좋아요
    private int imgList;    // 이미지 url 링크들

    public WriteInfo(){}
    public WriteInfo( int num,String title,  String publisher, String contents, String createDate,
                      ArrayList<String> reply, ArrayList<String> likeList,int imgList){
        this.num = num;
        this.title = title;
        this.publisher = publisher;
        this.contents = contents;
        this.createDate = createDate;
        this.reply = reply;
        this.likeList = likeList;
        this.imgList = imgList;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public ArrayList<String> getReply() {
        return reply;
    }

    public void setReply(ArrayList<String> reply) {
        this.reply = reply;
    }

    public ArrayList<String> getLikeList() {
        return likeList;
    }

    public void setLikeList(ArrayList<String> likeList) {
        this.likeList = likeList;
    }

    public int getImgList() {
        return imgList;
    }

    public void setImgList(int imgList) {
        this.imgList = imgList;
    }

}

