package com.kosmo.nbbang.admin.serviceimpl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class AdminMemberDAO {
	
	@Autowired
	private SqlSessionTemplate template;

	public int getTotalRowCount(Map map) {		
		return template.selectOne("getTotalRowCount", map);
	}

	public List selectAllMember(Map map) {		
		return template.selectList("selectAllMember", map);
	}

	
}
