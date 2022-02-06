package com.kosmo.nbbang.service;

public class AdminChatDTO {

	private String chatno;
	private String partyno;
	private String partytitle;
	private String participant;
	private String bbswriter;
	private String match;
	private String maxcapacity;
	private int confirm;
	
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
	public String getPartytitle() {
		return partytitle;
	}
	public void setPartytitle(String partytitle) {
		this.partytitle = partytitle;
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
	public String getMatch() {
		return match;
	}
	public void setMatch(String match) {
		this.match = match;
	}	
	public String getMaxcapacity() {
		return maxcapacity;
	}
	public void setMaxcapacity(String maxcapacity) {
		this.maxcapacity = maxcapacity;
	}
	public int getConfirm() {
		return confirm;
	}
	public void setConfirm(int confirm) {
		this.confirm = confirm;
	}	
	
}
