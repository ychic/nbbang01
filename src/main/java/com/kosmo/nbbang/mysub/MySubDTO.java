package com.kosmo.nbbang.mysub;


import java.text.SimpleDateFormat;

public class MySubDTO {

	private int subno;
	private String subservice;
	private java.sql.Date paymentday;
	private int money;
	private int sfno;
	//
	public int getSubno() {
		return subno;
	}
	public void setSubno(int subno) {
		this.subno = subno;
	}
	public String getSubservice() {
		return subservice;
	}
	public void setSubservice(String subservice) {
		this.subservice = subservice;
	}
	public java.sql.Date getPaymentday() {
		return paymentday;
	}
	public void setPaymentday(java.sql.Date paymentday) {
		this.paymentday = paymentday;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public int getSfno() {
		return sfno;
	}
	public void setSfno(int sfno) {
		this.sfno = sfno;
	}
	
	
	
	
	
	
	
}
