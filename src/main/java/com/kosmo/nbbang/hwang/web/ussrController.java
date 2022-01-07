package com.kosmo.nbbang.hwang.web;

import java.util.Collection;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.nbbang.hwang.service.ListPagingData;
import com.kosmo.nbbang.hwang.service.ussrDTO;
import com.kosmo.nbbang.hwang.service.impl.ussrServiceImpl;

@Controller
public class ussrController {
	// 서비스 주입]
	@Resource(name = "ussrService")
	private ussrServiceImpl ussrService;

	// 목록 처리]
	@RequestMapping("recommandBbs.do")
	public String list(@RequestParam Map map,
 					   @RequestParam(required = false, defaultValue = "1") int nowPage,
					   HttpServletRequest req,
					   Model model) {
		// 서비스 호출]
		ListPagingData<ussrDTO> listPagingData = ussrService.selectList(map, req, nowPage);

		// 데이타 저장]
		model.addAttribute("listPagingData", listPagingData);
		// 뷰정보 반환]
		return "recommand/recommandBbs.tiles";
	}////////////////// list

	// 입력폼으로 이동]
	/*
	@RequestMapping(value = "Write.do", method = RequestMethod.GET)
	public String write(
			// @ModelAttribute("id") String id//(씨큐리티 미 사용시)세션영역에서 id가져오기
			Authentication auth// 씨큐리티 사용시(인증이 안된 사용자는 설정파일의 <security:form-login>태그의 login-page속성에 지정한 페이지로 바로
								// 리다이렉트 됨)
	) {
		UserDetails userDetails = (UserDetails) auth.getPrincipal();
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) userDetails.getAuthorities();
		for (GrantedAuthority authority : authorities) {
			System.out.println(authority.getAuthority());
		}

		// 뷰정보 반환]
		return "onememo10/bbs/Write.tiles";
	}
	*/
	
	// 입력처리]
	/*
	@RequestMapping(value = "Write.do", method = RequestMethod.POST)
	public String writeOk(
			// @ModelAttribute("id") String id,
			Authentication auth, @RequestParam Map map) throws Exception {
		// 서비스 호출]
		// map.put("id", id);//씨큐리티 미 사용시.호출전 아이디 맵에 저장
		map.put("id", ((UserDetails) auth.getPrincipal()).getUsername());// 씨큐리티 사용시
		memoService.insert(map);
		// 뷰정보 반환]목록으로 이동
		return "forward:/onememo/bbs/List.do";
	}
	*/
	
	// 상세보기]
	/*
	@RequestMapping("View.do")
	public String view(
			// @ModelAttribute("id") String id,//
			Authentication auth, @RequestParam Map map, Model model) {
		// 서비스 호출]
		OneMemoDTO record = memoService.selectOne(map);
		// 데이타 저장]
		// 줄바꿈 처리
		record.setContent(record.getContent().replace("\r\n", "<br/>"));
		model.addAttribute("record", record);
		/////////////////////////////////////////////
		// 뷰정보 반환]
		return "onememo10/bbs/View.tiles";
	}
	*/
	
	// 수정폼으로 이동 및 수정처리]
	/*
	@RequestMapping("Edit.do")
	public String edit(Authentication auth, @RequestParam Map map, HttpServletRequest req) {
		if (req.getMethod().equals("GET")) {
			// 서비스 호출]
			OneMemoDTO record = memoService.selectOne(map);
			// 데이타 저장]
			req.setAttribute("record", record);
			// 수정 폼으로 이동]
			return "onememo10/bbs/Edit.tiles";
		}
		// 수정처리후 상세보기로 이동
		// 서비스 호출
		memoService.update(map);
		// 뷰로 포워드
		return "forward:/onememo/bbs/View.do";
	}
	*/
	
	// 삭제처리]
	/*
	@RequestMapping("Delete.do")
	public String delete(Authentication auth, @RequestParam Map map) throws Exception {

		// 서비스 호출
		memoService.delete(map);
		// 뷰로 포워드
		return "forward:/onememo/bbs/List.do";

	}
	*/
}
