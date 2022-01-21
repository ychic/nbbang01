package com.kosmo.nbbang.partykang.service;

import java.util.List;

import com.kosmo.nbbang.partybbs.service.PartyBbsDTO;

public interface PartyService {

	List<PartyChatDTO> getMyChat(String email);
	String getNickName(String chatpartnerid);
	PartyBbsDTO getPartyBbs(String partyNo);
}