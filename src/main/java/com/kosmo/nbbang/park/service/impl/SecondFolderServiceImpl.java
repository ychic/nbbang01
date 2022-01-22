package com.kosmo.nbbang.park.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.nbbang.mysub.SecondFolderDTO;
import com.kosmo.nbbang.park.service.secondFolderService;

@Service(value = "secondFolderService")
public class SecondFolderServiceImpl implements secondFolderService{
	
	@Resource(name = "secondFolderDAO")
	private SecondFolderDAO dao;

	@Override
	public List<SecondFolderDTO> secondFoldSelectList(Map map) {
		return dao.econdFolderDAO(map);
	}
	

}
