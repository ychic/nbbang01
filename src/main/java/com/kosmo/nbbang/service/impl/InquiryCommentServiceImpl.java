package com.kosmo.nbbang.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.nbbang.service.InquiryCommentService;

@Service("inquiryCommentService")
public class InquiryCommentServiceImpl implements InquiryCommentService {
	
	@Autowired
	private InquiryCommentDAO dao;
	
	public int insert(Map map) {
		return dao.insert(map);
	}

	public List<Map> selectList(Map map) {
		return dao.selectList(map);
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
