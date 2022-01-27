package com.kosmo.nbbang.mysub;

public class EditSubDTO {
	private String subservice;
	private java.sql.Date paymentday;
	private int money;
	private int sfno;
	private String orisubname;
	private java.sql.Date oripayday;
	private int	orimoney;
	private int orisfno;
	//
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
	public String getOrisubname() {
		return orisubname;
	}
	public void setOrisubname(String orisubname) {
		this.orisubname = orisubname;
	}
	public java.sql.Date getOripayday() {
		return oripayday;
	}
	public void setOripayday(java.sql.Date oripayday) {
		this.oripayday = oripayday;
	}
	public int getOrimoney() {
		return orimoney;
	}
	public void setOrimoney(int orimoney) {
		this.orimoney = orimoney;
	}
	public int getOrisfno() {
		return orisfno;
	}
	public void setOrisfno(int orisfno) {
		this.orisfno = orisfno;
	}
	

}
