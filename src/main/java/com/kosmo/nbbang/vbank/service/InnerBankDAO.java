package com.kosmo.nbbang.vbank.service;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class InnerBankDAO {
	
	@Autowired
	private SqlSessionTemplate template;

	public int insertAuth(Map map) {
		// TODO Auto-generated method stub
		
		return template.insert("insertAuth",map);
	}

	public Map selectAuth(Map map) {
		// TODO Auto-generated method stub
		return template.selectOne("selectAuth", map);
	}

	public int deleteToken(Map res) {
		// TODO Auto-generated method stub
		return template.delete("deleteToken",res);
	}
	
	

}
