package com.kosmo.nbbang.mysub;

public class SecondFolderDTO {
	/*subno	subservice	payamentday	money	sfno
	32		유튜브프리미엄	22/01/29	10000	98
	33		핀즐			22/05/19	20000	98
	34		런드리고		22/01/08	65000	98*/
	
	private String subservice;
	private java.sql.Date paymentday;
	private int money;
	private int sfno;
	private int subno;
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
	public int getSubno() {
		return subno;
	}
	public void setSubno(int subno) {
		this.subno = subno;
	}
	
	
	
	
	
}
