package com.kosmo.nbbang.service.impl;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.service.MemberDTO;


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
	
}//MemberDAO
