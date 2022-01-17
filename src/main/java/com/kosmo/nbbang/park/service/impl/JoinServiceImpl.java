package com.kosmo.nbbang.park.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.nbbang.park.service.JoinService;

@Service("joinService")
public class JoinServiceImpl implements JoinService {
	@Resource(name="joinDAO")
	private JoinDAO dao;

	@Override
	public int memberInsert(Map map) {
		return dao.memberInsert(map);
	}
	
}
