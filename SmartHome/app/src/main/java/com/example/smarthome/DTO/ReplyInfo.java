package com.example.smarthome.DTO;

import java.util.ArrayList;

public class ReplyInfo {
    private String publisher;
    private String contents;
    private String createDate;
    private ArrayList<String> likeList;
    private ArrayList<String> replyList;
    private String reference;
    private String nic;
    private String replyMem;

    public String getReplyMem() {
        return replyMem;
    }

    public void setReplyMem(String replyMem) {
        this.replyMem = replyMem;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
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

    public ArrayList<String> getLikeList() {
        return likeList;
    }

    public void setLikeList(ArrayList<String> likeList) {
        this.likeList = likeList;
    }

    public ArrayList<String> getReplyList() {
        return replyList;
    }

    public void setReplyList(ArrayList<String> replyList) {
        this.replyList = replyList;
    }

    public String getReference() {
        return reference;
    }

    public void setReference(String reference) {
        this.reference = reference;
    }
}
