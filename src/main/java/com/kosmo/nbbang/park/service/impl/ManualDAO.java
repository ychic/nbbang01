package com.kosmo.nbbang.park.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.mysub.EditSubDTO;
import com.kosmo.nbbang.park.web.SubManualDTO;


@Repository
public class ManualDAO {
	@Autowired
	private SqlSessionFactory sqlMapper;

	@Autowired
	private SqlSessionTemplate template;
	
	public int manualInsert(SubManualDTO cmd) {
		SqlSession session = sqlMapper.openSession();
		int affected = session.insert("manualInsert",cmd);
		session.commit();
		session.close();
		return affected;
	}

	public List<Map> selectList(Map map) {
		return template.selectList("sfnoSelectList",map);
	}

	public int subUpdate(EditSubDTO cmdEdit) {
		return template.update("mysubUpdate",cmdEdit);
	}

	public int subDelete(Map map) {
		return template.delete("mysubDelete",map);
	}
	
	
	
	
}
