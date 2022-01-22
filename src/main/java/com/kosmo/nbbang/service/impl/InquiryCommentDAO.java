package com.kosmo.nbbang.service.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class InquiryCommentDAO {
	
	@Autowired
	private SqlSessionTemplate template;
	
	public int insert(Map map) {
		template.insert("inqCommentInsert",map);
		System.out.println(map.get("comno").toString());
		return Integer.parseInt(map.get("comno").toString());
	}
	
	public String findNicknameByEmail(String email) {	
		return template.selectOne("inqFindNicknameByEmail",email);
	}

	public List<Map> selectList(Map map) {
		return template.selectList("inqCommentListsUsingCollection",map);
	}

	public int delete(Map map) {
		return template.delete("inqCommentDelete",map);
	}

	public int update(Map map) {
		return template.update("inqCommentUpdate",map);
	}

}
