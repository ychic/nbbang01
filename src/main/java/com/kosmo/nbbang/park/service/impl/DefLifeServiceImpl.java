package com.kosmo.nbbang.park.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.nbbang.park.join.DefLifeDTO;
import com.kosmo.nbbang.park.service.DefLifeService;

@Service("defLifeService")
public class DefLifeServiceImpl implements DefLifeService{
	@Resource(name = "defLifeDAO")
	private DefLifeDAO dao;

	@Override
	public int defLifeInsert(DefLifeDTO dfcmd3) {
		return dao.defLifeInsert(dfcmd3);
	}
	
}
