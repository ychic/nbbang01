package com.kosmo.nbbang.partybbs.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.partybbs.service.PartyBbsDTO;

@Repository
public class PartyBbsDAO {

	@Autowired
	private SqlSessionFactory sqlMapper;

	@Autowired
	private SqlSessionTemplate template;

	public List<PartyBbsDTO> selectList(Map map) {
		SqlSession session = sqlMapper.openSession();
		List<PartyBbsDTO> lists = session.selectList("partyBbsSelectList", map);
		session.close();		
		return lists;
	}
	
	public int getTotalRowCount(Map map) {
		SqlSession session = sqlMapper.openSession();
		int total = session.selectOne("partyBbsTotalRowCount", map);
		session.close();
		return total;
	}
	
	public int insert(Map map) {
		SqlSession session = sqlMapper.openSession();
		int affected = session.insert("partyBbsInsert", map);
		session.commit();
		session.close();
		return affected;
	}

	public PartyBbsDTO partySelectOne(Map map) {
		return template.selectOne("partybbsSelectOne", map);
	}
} // end PartyBbsDAO 