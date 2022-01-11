package com.kosmo.nbbang.hwang.service;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ussrDTO {
	
	private String ussrno;
	private String ussrtitle;
	private String ussrcontent;
	private java.sql.Date ussrpostDate;
	private String ussroriginfilenames;
	private String ussrrealfilenames;
	private String ussrcategoryname;
	private String email;
	
	//각 글에 따른 댓글 총수 저장용
	//private String commentCount;
			
	//no에 따른 모든 한줄 댓글 목록 저장용
	//마이바티스의 ResultMap 태그의 collection태그 적용용
	//List<ussrCommentDTO> comments;
	
	//lombok 미사용시 getter,setter
	/*
	public String getUssrno() {
		return ussrno;
	}
	public void setUssrno(String ussrno) {
		this.ussrno = ussrno;
	}
	public String getUssrtitle() {
		return ussrtitle;
	}
	public void setUssrtitle(String ussrtitle) {
		this.ussrtitle = ussrtitle;
	}
	public String getUssrcontent() {
		return ussrcontent;
	}
	public void setUssrcontent(String ussrcontent) {
		this.ussrcontent = ussrcontent;
	}
	public java.sql.Date getUssrpostDate() {
		return ussrpostDate;
	}
	public void setUssrpostDate(java.sql.Date ussrpostDate) {
		this.ussrpostDate = ussrpostDate;
	}
	public String getUssroriginfilenames() {
		return ussroriginfilenames;
	}
	public void setUssroriginfilenames(String ussroriginfilenames) {
		this.ussroriginfilenames = ussroriginfilenames;
	}
	public String getUssrrealfilenames() {
		return ussrrealfilenames;
	}
	public void setUssrrealfilenames(String ussrrealfilenames) {
		this.ussrrealfilenames = ussrrealfilenames;
	}
	public String getUssrcategoryname() {
		return ussrcategoryname;
	}
	public void setUssrcategoryname(String ussrcategoryname) {
		this.ussrcategoryname = ussrcategoryname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	*/
	
}

