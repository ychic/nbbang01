package com.kosmo.nbbang.park.service.impl;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.mysub.FolderDTO;

@Repository
public class FolderDAO {
	
	@Autowired
	private SqlSessionFactory sqlMapper;

	@Autowired
	private SqlSessionTemplate template;

	public int insert(Map map) {
		SqlSession session = sqlMapper.openSession();
		int affected = session.insert("folderInsert", map);
		session.commit();
		session.close();
		return affected;
	}

	public FolderDTO selectOne(Map map) {
		return template.selectOne("folderSelectOne",map);
	}
	
	
	
}
