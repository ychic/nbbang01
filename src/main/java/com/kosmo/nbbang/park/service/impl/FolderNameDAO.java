package com.kosmo.nbbang.park.service.impl;

import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.mysub.FolderNameDTO;
import com.kosmo.nbbang.park.service.FolderNameService;

@Repository(value = "folderNameDAO")
public class FolderNameDAO {
	@Autowired
	private SqlSessionFactory sqlMapper;

	@Autowired
	private SqlSessionTemplate template;

	public FolderNameDTO selectOne(Map map) {
		return template.selectOne("folderNameSlecOne",map);
	}
	
	
}
