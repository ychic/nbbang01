package com.kosmo.nbbang.park.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.nbbang.mysub.FolderCostDTO;
import com.kosmo.nbbang.park.service.FolderCostService;

@Service(value = "folderCostService")
public class FolderCostServiceImpl implements FolderCostService{
	
	@Resource(name = "folderCostDAO")
	private FolderCostDAO dao;
	
	@Override
	public FolderCostDTO selectOne(Map map) {
		return dao.selectOne(map);
	}
	
	
}
