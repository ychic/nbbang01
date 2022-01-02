package com.kosmo.nbbang.service.impl;

import java.io.IOException;
import java.io.Reader;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
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
}//MemberDAO
