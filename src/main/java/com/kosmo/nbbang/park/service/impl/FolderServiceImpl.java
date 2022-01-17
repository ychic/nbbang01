package com.kosmo.nbbang.park.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.nbbang.park.service.FolderService;

@Service("folderService")
public class FolderServiceImpl implements FolderService {
	@Resource(name="folderDAO")
	private FolderDAO dao;

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}
	
	
}
