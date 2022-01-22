package com.kosmo.nbbang.park.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.nbbang.park.service.ManualService;
import com.kosmo.nbbang.park.web.SfnoDTO;
import com.kosmo.nbbang.park.web.SubManualDTO;

@Service("manualService")
public class ManualServiceImpl implements ManualService{
	@Resource(name = "manualDAO")
	private ManualDAO dao;

	@Override
	public int manualInsert(SubManualDTO cmd) {
		return dao.manualInsert(cmd);
	}

	@Override
	public List<Map> selectList(Map map) {
		return dao.selectList(map);
	}

	



}
