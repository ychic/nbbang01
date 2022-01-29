package com.kosmo.nbbang.park.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.nbbang.mysub.AllCostDTO;
import com.kosmo.nbbang.park.service.AllCostService;

@Service(value = "allCostService")
public class AllCostServiceImpl implements AllCostService{
	
	@Resource(name = "allCostDAO")
	private AllCostDAO dao;

	@Override
	public AllCostDTO selectOne(Map map) {
		return dao.selectOne(map);
	}

	
	
	
}
