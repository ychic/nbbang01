package com.kosmo.nbbang.myreport.service.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.myreport.service.MyReportDTO;

@Repository
public class MyReportDAO {

	@Autowired
	private SqlSessionTemplate template;

	public List<MyReportDTO> getMyReport() {
		return template.selectList("selectMyReport");
	}
	
}
