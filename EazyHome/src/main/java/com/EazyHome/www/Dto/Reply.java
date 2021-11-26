package com.EazyHome.www.Dto;

import java.util.ArrayList;

public class Reply {
	private String contents;
	private String createDate;
	private String publisher;
	private ArrayList<String> likeList;
	private ArrayList<String> reply;
	private String reference;
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
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
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
	public String getReference() {
		return reference;
	}
	public void setReference(String reference) {
		this.reference = reference;
	}
	
}
