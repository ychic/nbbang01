package com.kosmo.nbbang.hwang.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

import com.kosmo.nbbang.hwang.service.UssrCommentService;

@Service("ussrCommentService")
public class UssrCommentServiceImpl implements UssrCommentService {

	@Autowired
	private UssrCommentDAO dao;
	
	@Override
	public List<Map> selectList(Map map) {	
		return dao.selectList(map);
	}
	
	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}
	
	@Override
	public int delete(Map map){
		return dao.delete(map);
	}

	@Override
	public int update(Map map) {
		return dao.update(map);
	}

}
