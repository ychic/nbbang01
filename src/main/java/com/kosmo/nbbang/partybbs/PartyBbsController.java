package com.kosmo.nbbang.partybbs;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.nbbang.partybbs.service.PartyBbsListPagingData;
import com.kosmo.nbbang.partybbs.service.PartyBbsDTO;
import com.kosmo.nbbang.partybbs.service.impl.PartyBbsServiceImpl;

@SessionAttributes("email")
@Controller
public class PartyBbsController {

	// 서비스 주입
	@Autowired
	private PartyBbsServiceImpl partyBbsService;

	// 파티원 게시판
	@RequestMapping("/partyBbs.do")
	public String partyBbs(@ModelAttribute("email") String id, @RequestParam Map map,
			@RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {

		// 서비스 호출
		PartyBbsListPagingData<PartyBbsDTO> partyBbsListPagingData = partyBbsService.selectList(map, req, nowPage);
		
		// 데이터 저장
		model.addAttribute("partyBbsListPagingData", partyBbsListPagingData);
		return "party/PartyBbs.tiles";
	}

	// 파티원 게시판 글 작성으로 이동
	@RequestMapping(value = "/partyBbsWrite.do", method = RequestMethod.GET)
	public String partyBbsWrite(@ModelAttribute("email") String email) {
		return "party/PartyBbsWrite.tiles";
	}

	// 파티원 게시판 글 작성 처리
	@RequestMapping(value = "/partyBbsWrite.do", method = RequestMethod.POST)
	public String partyBbsWriteOk(@ModelAttribute("email") String email, @RequestParam Map map) throws Exception {
		map.put("email", email);
		partyBbsService.insert(map);
		return "forward:/partyBbs.do";
	}

} // end PartyBbsController
