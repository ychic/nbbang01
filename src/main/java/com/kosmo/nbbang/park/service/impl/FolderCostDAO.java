package com.kosmo.nbbang.park.service.impl;

import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.mysub.FolderCostDTO;

@Repository(value = "folderCostDAO")
public class FolderCostDAO {
	@Autowired
	private SqlSessionFactory sqlMapper;
	@Autowired
	private SqlSessionTemplate template;

	public FolderCostDTO selectOne(Map map) {
		return template.selectOne("folderCostSlecOne",map);
	}
	
	
	
}
