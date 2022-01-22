package com.kosmo.nbbang.myreport.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.nbbang.myreport.service.MyReportDTO;
import com.kosmo.nbbang.myreport.service.MyReportService;

@Service
public class MyReportServiceImpl implements MyReportService{
	
	@Autowired
	private MyReportDAO dao;

	@Override
	public List<MyReportDTO> getMyReport() {
		return dao.getMyReport();
	}


}
