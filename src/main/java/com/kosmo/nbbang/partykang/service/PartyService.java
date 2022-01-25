package com.kosmo.nbbang.partykang.service;

import java.util.List;
import java.util.Map;

import com.kosmo.nbbang.partybbs.service.PartyBbsDTO;

public interface PartyService {

	List<PartyChatDTO> getMyChatList(String email);
	String getNickName(String email);
	PartyBbsDTO getPartyBbs(String partyNo);
	String quitRoom(Map map);
	PartyChatDTO getMyChat(String roomNo);
	public String addMember(Map map);
	String getMember(String partyNo, String partnerId);
	void createChat(Map map);
}