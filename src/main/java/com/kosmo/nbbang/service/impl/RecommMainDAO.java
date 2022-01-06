package com.kosmo.nbbang.service.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RecommMainDAO {
	
	@Autowired
	private SqlSessionTemplate template;

	public List<String> getUserSubService() {
		return template.selectList("getUserSubService");
	}

}
