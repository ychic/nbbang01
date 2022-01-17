package com.kosmo.nbbang.park.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.park.join.DefLifeDTO;

@Repository
public class DefLifeDAO {
	
	@Autowired
	private SqlSessionFactory sqlMapper;

	@Autowired
	private SqlSessionTemplate template;
	
	public int defLifeInsert(DefLifeDTO dfcmd3) {
		SqlSession session = sqlMapper.openSession();
		int affected = session.insert("defLifeInsert",dfcmd3);
		session.commit();
		session.close();
		return affected;
	}
}
