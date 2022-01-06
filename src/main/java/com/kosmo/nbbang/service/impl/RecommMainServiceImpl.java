package com.kosmo.nbbang.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.nbbang.service.RecommMainService;

@Service
public class RecommMainServiceImpl implements RecommMainService{
	
	@Autowired
	private RecommMainDAO dao;

	@Override
	public List<String> getUserSubService() {
		return dao.getUserSubService();
	}

}
