package com.kosmo.nbbang;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminMemberDAO {
	
	@Autowired
	private SqlSessionTemplate template;

	public List<AdminMemberDTO> selectAllMember() {
		return template.selectList("selectAllMember");
	}

	
}
