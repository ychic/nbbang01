package com.kosmo.nbbang.partykang.service;

import lombok.Getter;
import lombok.Setter;

/*@Setter
@Getter*/
public class PartyChatDTO {
	private String chatno;
	private String partyno;	
	private String participant;
	private String bbswriter;
	
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
	public String getParticipant() {
		return participant;
	}
	public void setParticipant(String participant) {
		this.participant = participant;
	}
	public String getBbswriter() {
		return bbswriter;
	}
	public void setBbswriter(String bbswriter) {
		this.bbswriter = bbswriter;
	}	
	
}