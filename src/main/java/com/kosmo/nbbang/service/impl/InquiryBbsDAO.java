package com.kosmo.nbbang.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.hwang.service.UssrDTO;
import com.kosmo.nbbang.service.InquiryBbsDTO;

@Repository
public class InquiryBbsDAO {
	
	@Autowired
	private SqlSessionFactory sqlMapper;
	@Autowired
	private SqlSessionTemplate template;
	
	public int insert(Map map) {	
		
		SqlSession session = sqlMapper.openSession();
		System.out.println("======================이메일확인"+map.containsKey("email"));
		int affected = session.insert("inquiryBbsInsert", map);
		
		session.commit();
		session.close();
		
		return affected;
		//return template.insert("inquiryBbsInsert", map);
		
	}//insert
	
	public List<InquiryBbsDTO> selectList(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<InquiryBbsDTO> lists = session.selectList("inquirySelectList", map);
		session.close();
		
		return lists;
	}

	public int getTotalRowCount(Map map) {
		SqlSession session = sqlMapper.openSession();
		int total = session.selectOne("inquiryTotalRowCount",map);
		session.close();
		
		return total;
	}

	public InquiryBbsDTO inqSelectOne(Map map) {
		
		return template.selectOne("inquirySelectOne", map);
	}

	public int delete(Map map) {
		
		return template.delete("inquiryDelete",map);
	}

	public int update(Map map) {
		
		return template.update("inquiryUpdate",map);
	}
	
	
	
	
}
