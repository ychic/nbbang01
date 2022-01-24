package com.kosmo.nbbang.park.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.nbbang.mysub.FolderNameDTO;
import com.kosmo.nbbang.park.service.FolderNameService;

@Service("folderNameService")
public class FolderNameServiceImpl implements FolderNameService{
	@Resource(name = "folderNameDAO")
	private FolderNameDAO dao;
	
	@Override
	public FolderNameDTO selectOne(Map map) {
		return dao.selectOne(map);
	}

	
	
}
