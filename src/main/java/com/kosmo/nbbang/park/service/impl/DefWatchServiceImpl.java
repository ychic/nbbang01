package com.kosmo.nbbang.park.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.nbbang.park.join.DefWatchDTO;
import com.kosmo.nbbang.park.service.DefWatchService;


@Service("defWatchService")
public class DefWatchServiceImpl implements DefWatchService{
	@Resource(name="defWatchDAO")
	private DefWatchDAO dao;

	@Override
	public int defWatchInsert(DefWatchDTO dfcmd2) {
		return dao.defWatchInsert(dfcmd2);
	}
	
}
