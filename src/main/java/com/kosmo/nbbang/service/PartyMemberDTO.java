package com.kosmo.nbbang.service;

public class PartyMemberDTO {
	
	private String pMNo;
	private String partyNo;
	private String pMMember;
	private String partyLeader;
	
	public PartyMemberDTO() {
	}

	public PartyMemberDTO(String pMNo, String partyNo, String pMMember, String partyLeader) {
		this.pMNo = pMNo;
		this.partyNo = partyNo;
		this.pMMember = pMMember;
		this.partyLeader = partyLeader;
	}

	public String getpMNo() {
		return pMNo;
	}

	public void setpMNo(String pMNo) {
		this.pMNo = pMNo;
	}

	public String getPartyNo() {
		return partyNo;
	}

	public void setPartyNo(String partyNo) {
		this.partyNo = partyNo;
	}

	public String getpMMember() {
		return pMMember;
	}

	public void setpMMember(String pMMember) {
		this.pMMember = pMMember;
	}

	public String getPartyLeader() {
		return partyLeader;
	}

	public void setPartyLeader(String partyLeader) {
		this.partyLeader = partyLeader;
	}
	
} // end PartyMemberDTO
