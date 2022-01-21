package com.kosmo.nbbang.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.nbbang.hwang.service.ListPagingData;
import com.kosmo.nbbang.partybbs.service.PartyBbsDTO;
import com.kosmo.nbbang.partybbs.service.impl.PartyBbsServiceImpl;
import com.kosmo.nbbang.service.InquiryBbsDTO;
import com.kosmo.nbbang.service.InquiryBbsService;
import com.kosmo.nbbang.service.ReportDTO;
import com.kosmo.nbbang.service.ReportService;

@Controller
public class ReportController {
	
	@Autowired
	private ReportService reportService;
	@Autowired
	private InquiryBbsService inquiryBbsService;
	@Autowired
	private PartyBbsServiceImpl partyBbsService;
	
	
	@RequestMapping("/reportInsert.do")
	public String reportInsert(@RequestParam Map map) {
		int affected = reportService.insert(map);
		
		return "report/ReportOk.tiles";
	}
	
	//신고 list 출력 관리자페이지
	@RequestMapping("/adminReport.do")
	public String adminReportlist(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage,
								   HttpServletRequest req,Model model) {
	
		ListPagingData<ReportDTO> listPagingData = reportService.selectList(map, req, nowPage);
		model.addAttribute("listPagingData", listPagingData);
	
	return "admin/AdminWarning";
	}
	
	//문의 게시판 신고받아오기
	@RequestMapping("/oboReport.do")
	public String OBOreport(@ModelAttribute("email") String email,@RequestParam Map map,Model model){
		
		InquiryBbsDTO record = inquiryBbsService.inqSelectOne(map);
		model.addAttribute("record", record);
		

		return "guide/onebyoneqna/Report.tiles";
	}
	//문의 게시판 신고처리 
	@RequestMapping("/oboReportOk.do")
	public String OBOreportOk(@ModelAttribute("inqno") String inqno,@RequestParam Map<String,String> map,Model model){
		
		
		int affected = reportService.insert(map);
		model.addAttribute("inqno:"+inqno);
		
		System.out.println("inqno:"+inqno);
		System.out.println("신고affected:"+affected);
		
		return "report/ReportOk.tiles";
	}
	
	//파티원 게시판 신고받아오기
	@RequestMapping("/partyReport.do")
	public String partyReport(@ModelAttribute("email") String email, @RequestParam Map map, Model model) {

		PartyBbsDTO record = partyBbsService.partySelectOne(map);
		model.addAttribute("record", record);

		return "party/Report.tiles";
	}

	//파티원 게시판 신고처리
	@RequestMapping("/partyReportOk.do")
	public String partyReportOk(@ModelAttribute("partyNo") String partyNo, @RequestParam Map map,Model model) {
		//report.xml에 컬럼 추가, dto수정, db실제에도 컬럼 추가
		//신고테이블에 insert
		
		int affected = reportService.insertParty(map);
		model.addAttribute("partyNo:" + partyNo);

		System.out.println("partyNo:" + partyNo);
		System.out.println("파티affected:" + affected);

		return "report/ReportOk.tiles";
	}
		
	
	
	//관리자에서 클릭시 해당 신고물로 넘어가기 
	@RequestMapping("/findReport.do")
	public String findReport(@ModelAttribute("reportbbs") String reportbbs,@ModelAttribute("inqno") String inqno,
			@ModelAttribute("partyNo") String partyNo,@RequestParam Map map,Model model) {
		
		
		//넘어오는 게시판 키값 받기
		System.out.println("게시판키값: "+reportbbs);
		model.addAttribute("reportbbs:"+reportbbs);
		model.addAttribute("inqno:"+inqno);
		model.addAttribute("partyNo:"+partyNo);
		System.out.println("inqno:"+inqno);
		
		//문의게시판
		if(reportbbs.equals("문의게시판")) {
			String url = "forward:/oneByOneBbsView.do?inqno="+inqno;
			return url;
		} else if(reportbbs.equals("파티원게시판")) {
			String url = "forward:/partyBbsView.do?partyNo="+partyNo;
			return url;
		}
		
		return "admin/AdminWarning";
	}

}
