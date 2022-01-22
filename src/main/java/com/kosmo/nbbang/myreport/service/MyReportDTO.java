package com.kosmo.nbbang.myreport.service;

import java.math.BigDecimal;
import java.util.Date;

import lombok.Getter;
import lombok.Setter;

/*@Setter
@Getter*/
public class MyReportDTO {
	
	
	private int subno;
	private String subservice;
	private Date paymentday;
	private BigDecimal money;
	private int sfno;
	private String paymentmon;
	private int mondata;
	
	
	
	public int getSubno() {
		return subno;
	}
	
	public void setChatno(int subno) {
		this.subno = subno;
	}	
	
	public String getSubservice() {
		return subservice;
	}
	public void setSubservice(String subservice) {
		this.subservice = subservice;
	}
	
	public Date getPaymentday() {
	    return paymentday;
	}

	public void setPaymentday(Date paymentday) {
	    this.paymentday = paymentday;
	}
	
	public BigDecimal getMoney() {
	    return money;
	}

	public void setMoney(BigDecimal money) {
	    this.money = money;
	}
	
	public int getSfno() {
		return sfno;
	}
	
	public void setSfno(int sfno) {
		this.sfno = sfno;
	}	
	
	public String getPaymentmon() {
		return paymentmon;
	}
	public void setPaymentmon(String paymentmon) {
		this.paymentmon = paymentmon;
	}
	
	public int getMondata() {
		return mondata;
	}
	
	public void setMondata(int mondata) {
		this.mondata = mondata;
	}		
}
