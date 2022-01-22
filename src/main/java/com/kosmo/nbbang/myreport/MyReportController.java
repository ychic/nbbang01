package com.kosmo.nbbang.myreport;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.nbbang.myreport.service.MyReportDTO;
import com.kosmo.nbbang.myreport.service.impl.MyReportServiceImpl;


@SessionAttributes({"email","password"})
@Controller
public class MyReportController {
	
	@Autowired
	private MyReportServiceImpl myReportService;

	//MY 리포트
	@RequestMapping("/myReport.do")
	public String myReport(Model model) {
		System.out.println("테스트1111");
		List<MyReportDTO> myReportList = myReportService.getMyReport();
		
		for(MyReportDTO dto : myReportList) {
			
			System.out.println("########################");
			System.out.println(dto.getSubno());
			System.out.println(dto.getSubservice());
			System.out.println(dto.getPaymentday());
			System.out.println(dto.getMoney());
			System.out.println(dto.getSfno());
			System.out.println(dto.getPaymentmon());
			System.out.println("########################");

		}
		model.addAttribute("myReportList", myReportList);
		return "schedule/MyReport.tiles"; 
		//schedule/MyReport.tiles
	}
}
