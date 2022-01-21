package com.kosmo.nbbang.service;

import java.sql.Date;

/*
@Getter
@Setter
*/
public class InquiryCommentDTO {
/*
 * comno number NOT NULL,
	comcontent nvarchar2(1000) NOT NULL,
	compostdate date DEFAULT SYSDATE NOT NULL,
	comoriginfilename nvarchar2(50),
	comfilename nvarchar2(60),
	inqno number NOT NULL,
	email varchar2(40) NOT NULL,
	PRIMARY KEY (comno)
 * 
 * */
	
	private String comno;
	private String comcontent;
	private java.sql.Date compostDate;
	private String comoriginfilename;
	private String comfilename;
	private String inqno;
	private String email;
	
	
	public InquiryCommentDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public InquiryCommentDTO(String comno, String comcontent, Date compostDate, String comoriginfilename,
			String comfilename, String inqno, String email) {
		super();
		this.comno = comno;
		this.comcontent = comcontent;
		this.compostDate = compostDate;
		this.comoriginfilename = comoriginfilename;
		this.comfilename = comfilename;
		this.inqno = inqno;
		this.email = email;
	}



	public String getComno() {
		return comno;
	}
	public void setComno(String comno) {
		this.comno = comno;
	}
	public String getComcontent() {
		return comcontent;
	}
	public void setComcontent(String comcontent) {
		this.comcontent = comcontent;
	}
	public java.sql.Date getCompostDate() {
		return compostDate;
	}
	public void setCompostDate(java.sql.Date compostDate) {
		this.compostDate = compostDate;
	}
	public String getComoriginfilename() {
		return comoriginfilename;
	}
	public void setComoriginfilename(String comoriginfilename) {
		this.comoriginfilename = comoriginfilename;
	}
	public String getComfilename() {
		return comfilename;
	}
	public void setComfilename(String comfilename) {
		this.comfilename = comfilename;
	}
	public String getInqno() {
		return inqno;
	}
	public void setInqno(String inqno) {
		this.inqno = inqno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
