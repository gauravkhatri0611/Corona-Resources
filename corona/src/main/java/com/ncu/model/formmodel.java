package com.ncu.model;

public class formmodel {
 private String name;
 private String state;
 private String resource;
 private String email;
	 private int quantity;
	 private String pno;
	 private String address;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getResource() {
	return resource;
}
public void setResource(String resource) {
	this.resource = resource;
}
public formmodel(String name, String state, String resource) {
	super();
	this.name = name;
	this.state = state;
	this.resource = resource;
}
@Override
public String toString() {
	return "formmodel [name=" + name + ", state=" + state + ", resource=" + resource + "]";
}
public formmodel() {
	super();
	// TODO Auto-generated constructor stub
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public String getPno() {
	return pno;
}
public void setPno(String pno) {
	this.pno = pno;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
}
