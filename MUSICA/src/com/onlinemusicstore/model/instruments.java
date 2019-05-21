package com.onlinemusicstore.model;

import java.sql.Blob;

public class instruments {
	
	private int id;
	private String name;
	private String itemcode;
	private double price;
	private String warranty;
	private Blob image;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getItemcode() {
		return itemcode;
	}
	public void setItemcode(String itemcode) {
		this.itemcode = itemcode;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getWarrenty() {
		return warranty;
	}
	public void setWarrenty(String warrenty) {
		this.warranty = warrenty;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	
}
