package com.kosmo.nbbang.park.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.mysub.SecondFolderDTO;

@Repository(value = "secondFolderDAO")
public class SecondFolderDAO {
	
	@Autowired
	private SqlSessionFactory sqlMapper;

	@Autowired
	private SqlSessionTemplate template;
	
	public List<SecondFolderDTO> econdFolderDAO(Map map) {
		return template.selectList("secondFoldSelectList",map);
	}
}
