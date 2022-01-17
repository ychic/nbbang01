package com.kosmo.nbbang.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.nbbang.service.ReportService;

@Service("reportService")
public class ReportServiceImpl implements ReportService {
	
	@Resource(name = "reportDAO")
	private ReportDAO dao;

	@Override
	public int insert(Map map) {
		// TODO Auto-generated method stub
		return dao.insert(map);
	}

}
