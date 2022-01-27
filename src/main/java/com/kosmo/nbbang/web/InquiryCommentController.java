package com.kosmo.nbbang.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.annotation.RequestScope;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.kosmo.nbbang.service.impl.InquiryBbsServiceImpl;
import com.kosmo.nbbang.service.impl.InquiryCommentServiceImpl;

@SessionAttributes({"email"})
@RestController
public class InquiryCommentController {
	
	@Autowired
	private InquiryCommentServiceImpl commentService;
	
	@PostMapping(value="/inqcommentList.do",produces = "application/json; charset=UTF-8")	
	public List<Map> list(@ModelAttribute("email") String email, @RequestParam Map map) throws JsonProcessingException {
		
		List<Map> lists= commentService.selectList(map);
		
		for(Map comment:lists) {
			comment.put("COMPOSTDATE", comment.get("COMPOSTDATE").toString().substring(0, 10));
		}
		
		return lists;
	}
	
	//코멘트 입력처리]
	@PostMapping(value = "/inqCommentWrite.do", produces = "text/plain; charset=UTF-8")
	public String inqCommentWrite(@ModelAttribute("comcontent") String comcontent,@ModelAttribute("email") String email, @RequestParam Map map) {
		System.out.println("코멘트comcontent:"+comcontent);
		System.out.println("코멘트no:"+map.get("comno"));
		map.put("email", email);
		String nickname = commentService.getnickname(map);
		String commentInfo = commentService.insert(map);
		
		System.out.println("nickname:"+nickname);
		System.out.println("코멘트insert/commentInfo:"+commentInfo);
		System.out.println("코멘트comcontent:"+comcontent);
		
		return String.valueOf(commentInfo);
	}
	
	//코멘트 수정처리]
	@PostMapping(value = "/inqCommentEdit.do", produces = "text/plain; charset=UTF-8")
	public String update(@ModelAttribute("email") String email, @RequestParam Map map) {
		
		int affected = commentService.update(map);
		System.out.println("코멘트수정:"+affected);
		
		return map.get("comno").toString();
	}

	// 코멘트 삭제처리]
	@RequestMapping("/inqCommentDelete.do")
	public String delete(@ModelAttribute("email") String email, @RequestParam Map map) {
		
		int affected = commentService.delete(map);
		System.out.println("코멘트삭제:"+affected);
		
		return String.valueOf(affected);
	}

}
