package com.kosmo.nbbang.web.auth;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kosmo.nbbang.service.impl.MemberServiceImpl;


@SessionAttributes({"email"})
@Controller
public class LoginNoutController {
	
	@Resource(name = "memberService")
	private MemberServiceImpl memberService;
	
	
	@RequestMapping("/memberlogin.do")
	public String process(@RequestParam Map map, Model model,SessionStatus status) {
		
		boolean flag = memberService.isLogin(map);
		
		model.addAttribute("email",map.get("email"));
		
		if(!flag) {
			//회원이 아닐경우 저장된 데이터 삭제
			status.setComplete();
			model.addAttribute("NotMember","아이디와 비밀번호가 일치하지 않습니다.");
			return "auth/login/Login";
		}
		return "index";
	}
	//로그아웃 처리]
	@RequestMapping("/memberlogout.do")
	public String logout(SessionStatus status){
		
		status.setComplete();
		
		return "first";
	}
	
	
	
	
	
	/*
	//로그인 처리
	@RequestMapping("/memberlogin.do")
	public String login(@RequestParam Map map,Model model) {
		if("KIM".equals(map.get("email")) && "1234".equals(map.get("password"))) {
			model.addAllAttributes(map);
			model.addAttribute("isLoginMessage", map.get("email")+"님 환영합니다 :)");
			return "index";	
		} else if("admin".equals(map.get("email")) && "1234".equals(map.get("password"))) {
			model.addAllAttributes(map);
			return "admin/AdminMain";	
		}
		else {
			model.addAttribute("errorMessage", "이메일과 비밀번호가 일치하지 않습니다.");
			return "auth/login/Login";	
		}
	}
	
	//로그아웃
	@RequestMapping("/memberlogout.do")
	public String logout(SessionStatus status) {
		
		status.setComplete();
		
		return "first";
	}
	
	
	*/
	
	
}
