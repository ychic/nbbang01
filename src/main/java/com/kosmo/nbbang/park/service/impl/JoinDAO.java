package com.kosmo.nbbang.park.service.impl;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.service.MemberDTO;

@Repository
public class JoinDAO {
	
	@Autowired
	private SqlSessionFactory sqlMapper;

	@Autowired
	private SqlSessionTemplate template;

	public int memberInsert(Map map) {
		SqlSession session = sqlMapper.openSession();
		int affected = session.insert("memberInsert", map);
		session.commit();
		session.close();
		return affected;
	}

	public MemberDTO selectOneMember(Map map) {
		// TODO Auto-generated method stub
		return template.selectOne("selectmemberInfo", map);
	}

}
