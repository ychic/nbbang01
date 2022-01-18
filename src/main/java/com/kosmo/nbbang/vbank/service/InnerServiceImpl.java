package com.kosmo.nbbang.vbank.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("innerService")
public class InnerServiceImpl implements InnerService {

	@Autowired
	InnerBankDAO dao;
	
	@Override
	public int setAuth(Map map) {
		// TODO Auto-generated method stub
		
		
		return dao.insertAuth(map);
	}

	@Override
	public Map getAuth(Map map) {
		// TODO Auto-generated method stub
		return dao.selectAuth(map);
	}
	

}
