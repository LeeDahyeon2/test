package com.smarthome.www.Dto;

import java.util.ArrayList;

public class Order {
	private String orderDate;
	private ArrayList<String> itemCode;
	private ArrayList count;
	private ArrayList price;
	private int totalPrice;
	private String member;
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public ArrayList<String> getItemCode() {
		return itemCode;
	}
	public void setItemCode(ArrayList<String> itemCode) {
		this.itemCode = itemCode;
	}
	public ArrayList getCount() {
		return count;
	}
	public void setCount(ArrayList count) {
		this.count = count;
	}
	public ArrayList getPrice() {
		return price;
	}
	public void setPrice(ArrayList price) {
		this.price = price;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getMember() {
		return member;
	}
	public void setMember(String member) {
		this.member = member;
	}

}
