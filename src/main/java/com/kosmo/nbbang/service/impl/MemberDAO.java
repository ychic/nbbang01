package com.kosmo.nbbang.service.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDAO {	
	
	
	@Autowired
	private SqlSessionTemplate template;
	
	public int isLogin(Map map) {		
		return template.selectOne("memberIsLogin", map);
	}//isLogin
	public String getNickname(Map map) {
		return template.selectOne("getNickname", map);
	}

	public String findEmail(Map map) {
		return template.selectOne("findEmail", map);
	}

	public int getTotalRowCount(Map map) {		
		return template.selectOne("getTotalRowCount", map);
	}

	public List selectAllMember(Map map) {		
		return template.selectList("selectAllMember", map);
	}
	public int delete(Map map) {
		return template.delete("memberDelete", map);
	}
	public String blackMember(Map map) {
		return template.selectOne("getBlackMember", map);
	}
	public int setBlackMember(Map map) {
		return template.update("setBlackMember", map);
	}
	public String authorityByEmail(Map map) {
		return template.selectOne("getAuthorityByEmail", map);
	}
	public int socialLogin(Map map) {
		return template.selectOne("socialLogin", map);
	}
	
}//MemberDAO
