package com.ncu.model;

public class firstmodel {
private String amount;

public firstmodel(String amount) {
	super();
	this.amount = amount;
}

public firstmodel() {
	// TODO Auto-generated constructor stub
	super();
}

public String getAmount() {
	return amount;
}

public void setAmount(String amount) {
	this.amount = amount;
}
private String phn;
private String name;
private String blood;
public String getPhn() {
	return phn;
}
public void setPhn(String phn) {
	this.phn = phn;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getBlood() {
	return blood;
}
public void setBlood(String blood) {
	this.blood = blood;
}
@Override
public String toString() {
	return "firstmodel [phn=" + phn + ", name=" + name + ", blood=" + blood + "]";
}
}
