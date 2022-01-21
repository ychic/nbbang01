package com.kosmo.nbbang.hwang.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.Vector;

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

	// 목록 처리
	@RequestMapping("/recommandList.do")
	public String list(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage,
			HttpServletRequest req, Model model) {
		ListPagingData<UssrDTO> listPagingData = ussrService.selectList(map, req, nowPage);
		model.addAttribute("listPagingData", listPagingData);
		return "recommand/RecommandList.tiles";
	}

	@RequestMapping(value = "/recommandWrite.do", method = RequestMethod.GET)
	public String write(@ModelAttribute("email") String email) {
		return "recommand/RecommandWrite.tiles";
	}

	// 입력처리
	@RequestMapping(value = "/recommandWrite.do", method = RequestMethod.POST)
	public String writeOk(@ModelAttribute("email") String email, @RequestParam Map map) throws Exception {
		map.put("email", email);
		Set<String> keys = map.keySet();
		for(String key : keys) {
			System.out.println(key);
			System.out.println(map.get(key).toString());
		}
		ussrService.insert(map);
		return "forward:/recommandList.do";
	}

	// 상세보기
	@RequestMapping("/recommandView.do")
	public String view(@ModelAttribute("email") String email, @RequestParam Map map, Model model) {
		UssrDTO record = ussrService.selectOne(map);
		record.setUssrcontent(record.getUssrcontent().replace("\r\n", "<br/>"));
		model.addAttribute("record", record);
		return "recommand/RecommandView.tiles";
	}

	// 수정폼으로 이동 및 수정처리
	@RequestMapping("/recommandEdit.do")
	public String edit(@ModelAttribute("email") String email, @RequestParam Map map, HttpServletRequest req) {
		if (req.getMethod().equals("GET")) {
			UssrDTO record = ussrService.selectOne(map);
			req.setAttribute("record", record);
			return "recommand/RecommandEdit.tiles";
		}
		ussrService.update(map);
		return "forward:/recommandView.do";
	}

	// 삭제처리
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
	
	
	
}