package com.kosmo.nbbang.park.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.park.join.DefWatchDTO;

@Repository
public class DefWatchDAO {
	
	@Autowired
	private SqlSessionFactory sqlMapper;

	@Autowired
	private SqlSessionTemplate template;
	
	public int defWatchInsert(DefWatchDTO dfcmd2) {
		SqlSession session = sqlMapper.openSession();
		int affected = session.insert("defWatchInsert",dfcmd2);
		session.commit();
		session.close();
		return affected;
	}
}
