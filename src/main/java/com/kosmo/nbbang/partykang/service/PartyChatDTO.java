package com.kosmo.nbbang.partykang.service;

import lombok.Getter;
import lombok.Setter;

/*@Setter
@Getter*/
public class PartyChatDTO {
	private String chatno;
	private String partyno;
	private String chatpartnerid;
	private String email;
	
	public String getChatno() {
		return chatno;
	}
	public void setChatno(String chatno) {
		this.chatno = chatno;
	}
	
	public String getPartyno() {
		return partyno;
	}
	public void setPartyno(String partyno) {
		this.partyno = partyno;
	}
	
	public String getChatpartnerid() {
		return chatpartnerid;
	}
	public void setChatpartnerid(String chatpartnerid) {
		this.chatpartnerid = chatpartnerid;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}	
	
}
