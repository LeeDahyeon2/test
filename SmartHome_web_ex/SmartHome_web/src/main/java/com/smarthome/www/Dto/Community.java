package com.smarthome.www.Dto;

import java.util.ArrayList;

public class Community {
	private String title;
	private String createDate;
	private String contents;
	private String publisher;
	private int img;
	private ArrayList<String> likeList;
	private ArrayList<String> reply;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public int getImg() {
		return img;
	}
	public void setImg(int img) {
		this.img = img;
	}
	public ArrayList<String> getLikeList() {
		return likeList;
	}
	public void setLikeList(ArrayList<String> likeList) {
		this.likeList = likeList;
	}
	public ArrayList<String> getReply() {
		return reply;
	}
	public void setReply(ArrayList<String> reply) {
		this.reply = reply;
	}
	
}
