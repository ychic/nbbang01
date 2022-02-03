package com.kosmo.nbbang.partykang.serviceimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.partybbs.service.PartyBbsDTO;
import com.kosmo.nbbang.partykang.service.PartyChatDTO;

@Repository
public class PartyChatDAO {

	@Autowired
	private SqlSessionTemplate template;

	public List<PartyChatDTO> getMyChatList(String email) {
		return template.selectList("getMyChatList", email);
	}

	public String getNickName(String email) {
		return template.selectOne("getNickName", email);
	}

	public PartyBbsDTO getPartyBbs(String partyNo) {
		return template.selectOne("getPartyBbs", partyNo);
	}

	public void quitRoom(Map map) {
		if(map.containsKey("bbswriter")) {
			template.update("b_quitRoom", map);
		}else {
			template.update("p_quitRoom", map);
		}				
	}

	public int checkNull(Map map) {		
		return template.selectOne("checkNull", map);
	}

	public void deleteChat(Map map) {
		template.selectOne("deleteChat", map);
	}

	public PartyChatDTO getMyChat(String roomNo) {
		return template.selectOne("getMyChat", roomNo);
	}

	public void addMember(Map map) {
		template.selectOne("addMember", map);
	}

	public int getMemberCount(String partyNo) {
		return template.selectOne("getMemberCount", partyNo);
	}

	public int getBbsMemberCount(String partyNo) {
		return template.selectOne("getBbsMemberCount", partyNo);
	}

	public String getMember(String partyNo, String partnerId) {
		Map map = new HashMap();
		map.put("partnerId", partnerId);
		map.put("partyNo", partyNo);
		System.out.println(partyNo);
		return template.selectOne("getMember", map);
	}

	public void createChat(Map map) {
		template.insert("createChat", map);
	}

	public void matchSuccess(String partyNo) {
		template.update("matchSuccess", partyNo);
	}

	public int chatExist(Map map) {
		return template.selectOne("chatExist", map);
	}
}
