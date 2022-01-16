package com.kosmo.nbbang.park.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.nbbang.park.join.DefaultDTO;
import com.kosmo.nbbang.park.service.DefaultService;


@Service("defaultService")
public class DefaultServiceImpl implements DefaultService {
	@Resource(name="defaultDAO")
	private DefaultDAO dao;

	@Override
	public int defaultInsert(DefaultDTO dfcmd) {
		return dao.defaultInsert(dfcmd);
	}
	
}
