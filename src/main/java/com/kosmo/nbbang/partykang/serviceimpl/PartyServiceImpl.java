package com.kosmo.nbbang.partykang.serviceimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.nbbang.partybbs.service.PartyBbsDTO;
import com.kosmo.nbbang.partykang.service.PartyChatDTO;
import com.kosmo.nbbang.partykang.service.PartyService;

@Service
public class PartyServiceImpl implements PartyService{
	
	@Autowired
	private PartyChatDAO dao;

	@Override
	public List<PartyChatDTO> getMyChatList(String email) {
		return dao.getMyChatList(email);
	}

	public String getNickName(String email) {
		return dao.getNickName(email);
	}

	@Override
	public PartyBbsDTO getPartyBbs(String partyNo) {		
		return dao.getPartyBbs(partyNo);
	}

	@Override
	public String quitRoom(Map map) {
		dao.quitRoom(map);
		int affected = dao.checkNull(map); 
		if(affected == 1) {
			dao.deleteChat(map);
			return "delete";
		}else {
			return "keep";
		}		 
	}

	@Override
	public PartyChatDTO getMyChat(String roomNo) {
		return dao.getMyChat(roomNo);
	}
	
	@Override
	public String addMember(Map map) {
		int memberCount = dao.getMemberCount(map.get("partyNo").toString());
		int bbsMemberCount = dao.getBbsMemberCount(map.get("partyNo").toString());
		if(memberCount != bbsMemberCount) {			
			dao.addMember(map);
			return "멤버추가.";
		}
		else
			return "추가 가능한 멤버수를 이미 채워 추가할 수 없습니다.";
	}
	@Override
	public String getMember(String partyNo, String partnerId) {
		int isMember = dao.getMember(partyNo, partnerId);
		if(isMember == 1)
			return "disabled";
		else
			return "abled";
	}

}
