package com.kosmo.nbbang.web;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.nbbang.service.ReportService;

@Controller
public class ReportController {
	
	@Autowired
	private ReportService reportService;
	
	@RequestMapping("/reportInsert.do")
	public String reportInsert(@RequestParam Map<String,String> map) {
		for(Map.Entry<String, String> entry : map.entrySet()) {
	         System.out.println(entry.getKey()+"-"+entry.getValue());
	    }
		int affected = reportService.insert(map);
		System.out.println("신고affected:"+affected);
		
		return "report/ReportOk.tiles";
	}

}
