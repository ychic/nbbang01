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
	
	@Override
	public String insert(Map map) {
		int comno = dao.insert(map);
		String nickname = dao.findNicknameByEmail(map.get("email").toString());
		return String.format("%s:%s",comno,nickname);
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
	//댓글작성자 닉네임얻기
	public String getnickname(Map map) {
		return dao.getNickname(map);
	}

}
