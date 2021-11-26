package com.EazyHome.www.Dto;
import java.util.ArrayList;

public class Cart {
	private ArrayList<String> itemCode;
	private ArrayList count;
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
}
