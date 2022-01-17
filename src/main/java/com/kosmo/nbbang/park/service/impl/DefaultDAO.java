package com.kosmo.nbbang.park.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.park.join.DefaultDTO;

@Repository
public class DefaultDAO {
	
	@Autowired
	private SqlSessionFactory sqlMapper;

	@Autowired
	private SqlSessionTemplate template;

	public int defaultInsert(DefaultDTO dfcmd) {
		SqlSession session = sqlMapper.openSession();
		int affected = session.insert("defaultInsert", dfcmd);
		session.commit();
		session.close();
		return affected;
	}

}
