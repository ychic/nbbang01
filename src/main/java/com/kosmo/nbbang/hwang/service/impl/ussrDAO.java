package com.kosmo.nbbang.hwang.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;

import com.kosmo.nbbang.hwang.service.ussrDTO;

public class ussrDAO {
	
	@Resource(name = "sqlSessionFactory")
	private SqlSessionFactory sqlMapper;
		
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	public List<ussrDTO> selectList(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<ussrDTO> lists=session.selectList("ussrSelectList", map);
		session.close();
		return lists;
	}//selectList
	
	public int getTotalRowCount(Map map) {
		SqlSession session= sqlMapper.openSession();
		int total=session.selectOne("memoTotalRowCount",map);
		session.close();
		return total;
	}//getTotalRowCount
	
	public int insert(Map map) {
		SqlSession session= sqlMapper.openSession();
		int affected=session.insert("ussrInsert", map);
		session.commit();
		session.close();
		return affected;
	}//insert

	public ussrDTO selectOne(Map map) {		
		return template.selectOne("ussrSelectOne",map);
	}//selectOne
	
	public int update(Map map) {
		return template.update("ussrUpdate", map);
	}//update
	
	public void delete(Map map) {
		template.delete("ussrDelete", map);		
	}//delete
	
}
