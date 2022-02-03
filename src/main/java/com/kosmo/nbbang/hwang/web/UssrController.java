package com.kosmo.nbbang.hwang.web;

import java.util.Map;
import java.util.TreeMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kosmo.nbbang.hwang.service.ListPagingData;
import com.kosmo.nbbang.hwang.service.UssrDTO;
import com.kosmo.nbbang.hwang.service.impl.UssrServiceImpl;

@SessionAttributes("email")
@Controller
public class UssrController {

	@Resource(name = "UssrService")
	private UssrServiceImpl ussrService;

	@Autowired
	private ObjectMapper mapper;

	//추천게시판 리스트
	@RequestMapping("/recommandList.do")
	public String recommandList(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {
		System.out.println(map.get("ussrcategoryname"));
		ListPagingData<UssrDTO> recommandList = ussrService.recommandList(map, req, nowPage);
		model.addAttribute("recommandListPagingData", recommandList);
		return "recommand/RecommandList.tiles";
	}
	@RequestMapping("/recommandLikeSortList.do")
	public String recommandLikeSortList(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {
		ListPagingData<UssrDTO> recommandLikeSortListPaging = ussrService.recommandLikeSortList(map, req, nowPage);
		model.addAttribute("recommandListPagingData", recommandLikeSortListPaging);
		return "recommand/RecommandList.tiles";
	}
	@RequestMapping("/recommandServiceList.do")
	public String recommandServiceList(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {
		ListPagingData<UssrDTO> recommandServiceList = ussrService.recommandServiceList(map, req, nowPage);
		model.addAttribute("recommandListPagingData", recommandServiceList);
		return "recommand/RecommandList.tiles";
	}
	@RequestMapping("/recommandContentsList.do")
	public String recommandContentsList(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {
		ListPagingData<UssrDTO> recommandContentsList = ussrService.recommandContentsList(map, req, nowPage);
		model.addAttribute("recommandListPagingData", recommandContentsList);
		return "recommand/RecommandList.tiles";
	}
	@RequestMapping("/recommandTipsList.do")
	public String recommandTipsList(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {
		ListPagingData<UssrDTO> recommandTipsList = ussrService.recommandTipsList(map, req, nowPage);
		model.addAttribute("recommandListPagingData", recommandTipsList);
		return "recommand/RecommandList.tiles";
	}
	
	//자유게시판 리스트
	@RequestMapping("/freeList.do")
	public String freeList(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {
		ListPagingData<UssrDTO> freeList = ussrService.freeList(map, req, nowPage);
		model.addAttribute("freeListPagingData", freeList);
		return "recommand/FreeList.tiles";
	}
	@RequestMapping("/freeLikeSortList.do")
	public String freeLikeSortList(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {
		ListPagingData<UssrDTO> freeLikeSortList = ussrService.freeLikeSortList(map, req, nowPage);
		model.addAttribute("freeListPagingData", freeLikeSortList);
		return "recommand/FreeList.tiles";
	}
	@RequestMapping("/freeNormalList.do")
	public String freeNormalList(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {
		ListPagingData<UssrDTO> freeNormalList = ussrService.freeNormalList(map, req, nowPage);
		model.addAttribute("freeListPagingData", freeNormalList);
		return "recommand/FreeList.tiles";
	}
	@RequestMapping("/freeReviewList.do")
	public String freeReviewList(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {
		ListPagingData<UssrDTO> freeReviewList = ussrService.freeReviewList(map, req, nowPage);
		model.addAttribute("freeListPagingData", freeReviewList);
		return "recommand/FreeList.tiles";
	}
	@RequestMapping("/freeInfoList.do")
	public String freeInfoList(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {
		ListPagingData<UssrDTO> freeInfoList = ussrService.freeInfoList(map, req, nowPage);
		model.addAttribute("freeListPagingData", freeInfoList);
		return "recommand/FreeList.tiles";
	}

	@RequestMapping(value = "/ussrWrite.do", method = RequestMethod.GET)
	public String Write(@ModelAttribute("email") String email) {
		return "recommand/UssrWrite.tiles";
	}
	@RequestMapping(value = "/ussrWrite.do", method = RequestMethod.POST)
	public String WiteOk(@ModelAttribute("email") String email, @RequestParam Map map, HttpServletRequest req) throws Exception {
		map.put("email", email);
		String url = "forward:/recommandList.do";
		if(!map.get("ussrcategoryname").equals("recommand")) {
			url = "forward:/freeList.do";
		}
		ussrService.insert(map);
		return url;
	}

	// 상세보기
	@RequestMapping("/ussrView.do")
	public String view(@ModelAttribute("email") String email, @RequestParam Map map, Model model, HttpServletRequest req) {
		String referer = req.getHeader("referer");
		System.out.println("이전 URL:"+referer);
		UssrDTO record = ussrService.selectOne(map);
		record.setUssrcontent(record.getUssrcontent().replace("\r\n", "<br/>"));
		model.addAttribute("record", record);
		return "recommand/UssrView.tiles";
	}

	//수정폼으로 이동 및 수정처리
	@RequestMapping("/ussrEdit.do")
	public String edit(@ModelAttribute("email") String email, @RequestParam Map map, HttpServletRequest req) {
		if (req.getMethod().equals("GET")) {
			UssrDTO record = ussrService.selectOne(map);
			req.setAttribute("record", record);
			return "recommand/UssrEdit.tiles";
		}
		ussrService.update(map);
		return "forward:/ussrView.do";
	}

	//삭제처리
	@RequestMapping("/recommandDelete.do")
	public String delete(@ModelAttribute("email") String email, @RequestParam Map map) throws Exception {
		ussrService.delete(map);
		return "forward:/recommandList.do";
	}

	// 카테고리 옵션처리
	@RequestMapping(value = "/categoryChange.do", produces = "application/json; charset=UTF-8")
	public @ResponseBody String ajaxCourse(@RequestParam String ussrcategoryname) throws JsonProcessingException {
		Map map = new TreeMap();
		switch (ussrcategoryname) {
		case "recommand":
			map.put("recommandService", "구독서비스 추천");
			map.put("recommandContents", "컨텐츠 추천");
			map.put("recommandTips", "꿀팁 추천");
			break;
		default:
			map.put("freeNormal", "일반");
			map.put("freeReview", "리뷰");
			map.put("freeInfo", "정보");
		}
		return mapper.writeValueAsString(map);
	}
	
	@RequestMapping(value = "/likeInsert.do", method = RequestMethod.POST, produces = "text/plain; charset=UTF-8")
	public @ResponseBody String likeInsert(@RequestParam Map map) throws Exception {
		int affected = ussrService.likeCount(map);
		if(affected==0) {
			ussrService.likeInsert(map);
			return "추천하셨습니다.";
		}else {
			return "이미 추천하셨습니다.";
		}
	}
	
}