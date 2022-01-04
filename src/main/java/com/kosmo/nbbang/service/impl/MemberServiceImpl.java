package com.kosmo.nbbang.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.w3c.dom.ls.LSOutput;

import com.kosmo.nbbang.service.MemberService;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Resource(name = "memberDAO")
	private MemberDAO dao;
	
	@Override
	public int isLogin(Map map) {		
		return dao.isLogin(map);
	}//isLogin

	public String findEmail(Map map) {
		return dao.findEmail(map);
	}

	
	
}
