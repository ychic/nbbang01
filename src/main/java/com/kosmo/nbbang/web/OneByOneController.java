package com.kosmo.nbbang.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.nbbang.hwang.service.ListPagingData;
import com.kosmo.nbbang.hwang.service.UssrDTO;
import com.kosmo.nbbang.service.InquiryBbsDTO;
import com.kosmo.nbbang.service.InquiryBbsService;
import com.kosmo.nbbang.service.MemberDTO;
import com.kosmo.nbbang.service.MemberListPaging;
import com.kosmo.nbbang.service.impl.MemberServiceImpl;
import com.kosmo.nbbang.service.ReportService;

@SessionAttributes({"email"})
@Controller
public class OneByOneController {
	
	@Autowired
	private InquiryBbsService inquiryBbsService;
	
	@Autowired
	private ReportService reportService;	
	
	//문의 작성
	@RequestMapping("/saveOBO.do")
	public String writeOk(@ModelAttribute("email") String email,@RequestParam Map map,Model model) {
		map.put("email", email);
		int affected = inquiryBbsService.insert(map);
		return "forward:/OBOList.do";
	}
	
	//신고 list 출력(프론트)
	@RequestMapping("/OBOList.do")
	public String OBOlist(@RequestParam Map map, @ModelAttribute("email") String email,
						  @RequestParam(required = false, defaultValue = "1") int nowPage,
						  HttpServletRequest req,
						  Model model) {
		
		map.put("email", email);
		ListPagingData<InquiryBbsDTO> listPagingData = inquiryBbsService.selectList(map, req, nowPage);
		model.addAttribute("listPagingData", listPagingData);
		System.out.println("==============------------------===================="+map.get("email"));
		
		return "guide/onebyoneqna/OneByOneBbsList.tiles";
	}
	
	//문의 list 출력 관리자페이지
	@RequestMapping("/adminOneByOne.do")
	public String adminOBOlist(@RequestParam Map map,
							   @RequestParam(required = false, defaultValue = "1") int nowPage,
							   HttpServletRequest req,
							   Model model) {
		
		ListPagingData<InquiryBbsDTO> listPagingData = inquiryBbsService.selectList(map, req, nowPage);
		model.addAttribute("listPagingData", listPagingData);
		
		return "admin/AdminOneByOne";
	}
	
	//상세보기]
	@RequestMapping("/oneByOneBbsView.do")
	public String OBOview(@ModelAttribute("email") String email, @RequestParam Map map, Model model) {
		InquiryBbsDTO record = inquiryBbsService.inqSelectOne(map);
		record.setInqcontent(record.getInqcontent().replace("\r\n", "<br/>"));
		model.addAttribute("record", record);
		
		return "guide/onebyoneqna/OneByOneBbsView.tiles";
	}
	
	//삭제
	@RequestMapping("/OBODelete.do")
	public String OBODelete(@RequestParam Map map) {
		inquiryBbsService.delete(map);
		
		return "forward:/OBOList.do";
	}
	
	//수정
	@RequestMapping("/OBOupdate.do")
	public String OBOupdate(@ModelAttribute("email") String email,@RequestParam Map map,Model model,HttpServletRequest req) {
		if(req.getMethod().equals("GET")) {
			InquiryBbsDTO record = inquiryBbsService.inqSelectOne(map);
			record.setInqcontent(record.getInqcontent().replace("\r\n", "<br/>"));
			model.addAttribute("record", record);
			return "guide/onebyoneqna/OneByOneBbsModify.tiles";
		}
		inquiryBbsService.update(map);

		return "forward:/oneByOneBbsView.do";
	}
	
	
	
	
}//OneByOneController
