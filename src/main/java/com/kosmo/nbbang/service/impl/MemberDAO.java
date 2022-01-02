package com.kosmo.nbbang.service.impl;

import java.io.IOException;
import java.io.Reader;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	
	
	private static SqlSessionFactory sqlMapper;
	static {
		try {
			
			String resource = "nbbang/mybatis/configuration.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}//static
	
	
	
	
	
	public boolean isLogin(Map map) {
		//스프링 지원 마이바티스 api 미사용시
		SqlSession session = sqlMapper.openSession();
		int count = session.selectOne("memberIsLogin", map);
		session.close();
		
		return count==1?true:false;
	}//isLogin
}//MemberDAO
