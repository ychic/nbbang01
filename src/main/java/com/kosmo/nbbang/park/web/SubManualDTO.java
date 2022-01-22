package com.kosmo.nbbang.park.web;

public class SubManualDTO {
	//private int subno; //시퀀스 자동생성: SEQ_SUBSCRIPTION_SUBNO
	private String subservice;
	private String paymentday;
	private int money;
	private int sfno;	//test계정: 97,98,99 (각각 All,Watch,Life)
	//
	public String getSubservice() {
		return subservice;
	}
	public void setSubservice(String subservice) {
		this.subservice = subservice;
	}
	public String getPaymentday() {
		return paymentday;
	}
	public void setPaymentday(String paymentday) {
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
