package com.kosmo.nbbang.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.nbbang.service.PartyMemberService;

@Service
public class PartyMemberServiceImpl implements PartyMemberService {

	@Autowired
	private PartyMemberDAO dao;

	@Override
	public int insert(Map map) {
		int affected = 0;
		try {
			affected = dao.insert(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return affected;
	}

}
