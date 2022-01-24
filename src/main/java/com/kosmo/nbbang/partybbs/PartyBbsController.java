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
import com.kosmo.nbbang.service.impl.PartyMemberServiceImpl;

@SessionAttributes("email")
@Controller
public class PartyBbsController {

	// 서비스 주입
	@Autowired
	private PartyBbsServiceImpl partyBbsService;

	@Autowired
	private PartyMemberServiceImpl partyMemberService;

	// 파티원 게시판
	@RequestMapping("/partyBbs.do")
	public String partyBbs(@ModelAttribute("email") String email, @RequestParam Map map,
			@RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {

		// 서비스 호출
		PartyBbsListPagingData<PartyBbsDTO> partyBbsListPagingData = partyBbsService.selectList(map, req, nowPage);
		
		// 데이터 저장
		model.addAttribute("partyBbsListPagingData", partyBbsListPagingData);
		return "party/PartyBbs.tiles";
	}

	// 파티원 게시판-넷플릭스
	@RequestMapping("/netplixList.do")
	public String partyBbsNetplix(@ModelAttribute("email") String email, @RequestParam Map map,
			@RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {

		// 서비스 호출
		PartyBbsListPagingData<PartyBbsDTO> partyBbsListPagingData = partyBbsService.netplixList(map, req,
				nowPage);

		// 데이터 저장
		model.addAttribute("partyBbsListPagingData", partyBbsListPagingData);
		return "party/PartyBbs.tiles";
	}
	
	// 파티원 게시판-왓챠
	@RequestMapping("/whatchaList.do")
	public String partyBbsWhatcha(@ModelAttribute("email") String email, @RequestParam Map map,
			@RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {

		// 서비스 호출
		PartyBbsListPagingData<PartyBbsDTO> partyBbsListPagingData = partyBbsService.whatchaList(map, req,
				nowPage);

		// 데이터 저장
		model.addAttribute("partyBbsListPagingData", partyBbsListPagingData);
		return "party/PartyBbs.tiles";
	}
	
	// 파티원 게시판-디즈니
	@RequestMapping("/disneyList.do")
	public String partyBbsDisney(@ModelAttribute("email") String email, @RequestParam Map map,
			@RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {

		// 서비스 호출
		PartyBbsListPagingData<PartyBbsDTO> partyBbsListPagingData = partyBbsService.disneyList(map, req,
				nowPage);

		// 데이터 저장
		model.addAttribute("partyBbsListPagingData", partyBbsListPagingData);
		return "party/PartyBbs.tiles";
	}

	// 파티원 게시판-라프텔
	@RequestMapping("/laftelList.do")
	public String partyBbsLaftel(@ModelAttribute("email") String email, @RequestParam Map map,
			@RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {

		// 서비스 호출
		PartyBbsListPagingData<PartyBbsDTO> partyBbsListPagingData = partyBbsService.laftelList(map, req,
				nowPage);

//		
//		partyBbsListPagingData.setContent(partyBbsListPagingData.getLists();
//		model.addAttribute("partyBbsListPagingData", partyBbsListPagingData);
//		
		// 데이터 저장
		model.addAttribute("partyBbsListPagingData", partyBbsListPagingData);
		return "party/PartyBbs.tiles";
	}

	// 파티원 게시판-티빙
	@RequestMapping("/tvingList.do")
	public String partyBbsTving(@ModelAttribute("email") String email, @RequestParam Map map,
			@RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {

		// 서비스 호출
		PartyBbsListPagingData<PartyBbsDTO> partyBbsListPagingData = partyBbsService.tvingList(map, req,
				nowPage);

		// 데이터 저장
		model.addAttribute("partyBbsListPagingData", partyBbsListPagingData);
		return "party/PartyBbs.tiles";
	}
	
	// 파티원 게시판-웨이브
	@RequestMapping("/wavveList.do")
	public String partyBbsWavve(@ModelAttribute("email") String email, @RequestParam Map map,
			@RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {

		// 서비스 호출
		PartyBbsListPagingData<PartyBbsDTO> partyBbsListPagingData = partyBbsService.wavveList(map, req,
				nowPage);

		// 데이터 저장
		model.addAttribute("partyBbsListPagingData", partyBbsListPagingData);
		return "party/PartyBbs.tiles";
	}
	
	// 파티원 게시판 글 작성으로 이동
	@RequestMapping(value = "/partyBbsWrite.do", method = RequestMethod.GET)
	public String partyBbsWrite(@ModelAttribute("email") String email) {
		return "party/PartyBbsWrite.tiles";
	}

	// 파티원 게시판 글 작성, 파티멤버 등록
	@RequestMapping(value = "/partyBbsWrite.do", method = RequestMethod.POST)
	public String partyBbsWriteOk(@ModelAttribute("email") String email, @RequestParam Map map) throws Exception {
		map.put("email", email);
		partyBbsService.insert(map);
		partyMemberService.insert(map);
		return "forward:/partyBbs.do";
	}

	// 삭제처리]
	@RequestMapping("/partyBbsDelete.do")
	public String delete(@ModelAttribute("email") String email, @RequestParam Map map) throws Exception {
		partyBbsService.delete(map);
		return "forward:/partyBbs.do";
	}

	// 신고를 위한 뷰페이지
	// 상세보기]
	@RequestMapping("/partyBbsView.do")
	public String partyBbsView(@ModelAttribute("email") String email, @RequestParam Map map, Model model) {
		PartyBbsDTO record = partyBbsService.partySelectOne(map);

		record.setPartyContent(record.getPartyContent().replace("\r\n", "<br/>"));
		model.addAttribute("record", record);

		return "party/PartyBbsViewForReport.tiles";
	}

} // end PartyBbsController
